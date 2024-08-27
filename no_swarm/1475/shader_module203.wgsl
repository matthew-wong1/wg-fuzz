struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = Struct_4(vec4<i32>(reverseBits(_wgslsmith_mod_i32(-1i, u_input.c.x)), -1i, _wgslsmith_mult_i32(-1i, u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.d.x) ^ vec3<i32>(0i, 1i, 0i), -vec3<i32>(u_input.a, u_input.d.x, -2147483647i))) >> (~(min(vec4<u32>(u_input.e.x, u_input.e.x, 11048u, u_input.e.x), vec4<u32>(12911u, 1u, 33239u, 0u)) & ~vec4<u32>(4294967295u, u_input.e.x, 4294967295u, 48123u)) % vec4<u32>(32u)), vec3<bool>(true, any(vec4<bool>(true, true, false, select(true, false, true))), false));
    var var_1 = 4294967295u;
    var_1 = ~4294967295u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * -651f));
    var var_3 = u_input.e.x;
    return -18816i;
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<bool>(true, false);
    let var_1 = ~(~reverseBits(u_input.e.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1f, _wgslsmith_f_op_f32(min(-1150f, _wgslsmith_div_f32(583f, 114f))))), -291f, 4015u);
    var var_3 = Struct_4(vec4<i32>(abs(_wgslsmith_div_i32(func_3(), u_input.d.x & u_input.a)), -abs(_wgslsmith_mod_i32(u_input.d.x, 1i)), 1i, ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x, 1i, u_input.d.x), 2147483647i)), select(!vec3<bool>(true, var_0.x | var_0.x, false), !vec3<bool>(any(vec3<bool>(var_0.x, var_0.x, true)), var_2.b == var_2.a.x, any(vec4<bool>(false, true, false, var_0.x))), true));
    var var_4 = var_3.a.x;
    return Struct_2(vec4<i32>(u_input.c.x, u_input.a, var_3.a.x, var_3.a.x | _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_dot_vec3_i32(var_3.a.wxz, vec3<i32>(0i, 0i, var_3.a.x)))), var_2, var_3.a.x, var_2);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(select(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, arg_0.b.c), -arg_0.c.x, u_input.d.x, i32(-1i) * -1i), vec4<i32>(firstLeadingBit(arg_0.c.x), 1i, -arg_0.c.x, select(arg_0.b.c, u_input.d.x, false))), vec4<i32>(~(~24576i), min(_wgslsmith_mod_i32(arg_0.c.x, u_input.b), u_input.a), ~u_input.b >> (0u % 32u), arg_0.b.a.x), vec4<bool>(true, true || arg_0.e, true, arg_0.e)), func_2().d, -_wgslsmith_div_i32(u_input.b, 12631i), arg_0.a);
    var var_1 = arg_2;
    let var_2 = arg_0.b;
    var var_3 = var_0.b.c;
    var var_4 = select(!(!vec3<bool>(true, arg_2, any(vec4<bool>(arg_2, arg_2, arg_2, arg_2)))), vec3<bool>(true, !all(vec3<bool>(arg_2, true, arg_2)), any(vec3<bool>(true, arg_0.e || true, !arg_0.e))), !(!(arg_0.e && arg_2)) != arg_0.e);
    return var_0.d;
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-258f, 440f, 628f) - vec3<f32>(-487f, 110f, 414f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, -767f, 2255f) + vec3<f32>(-786f, 167f, -521f)))), -423f, _wgslsmith_sub_u32(52256u, _wgslsmith_clamp_u32(1u, 0u, 0u))), func_2(), _wgslsmith_add_vec4_i32(~(~vec4<i32>(-1i, -19331i, u_input.a, -21222i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.c.x, 13056i), vec4<i32>(-2147483647i, 7941i, u_input.b, u_input.c.x))), firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(16387u, 1u), u_input.e.x >> (u_input.e.x % 32u), ~u_input.e.x, ~95933u)), !(u_input.e.x >= 1u)), abs(vec4<u32>(min(u_input.e.x, 127473u), _wgslsmith_div_u32(u_input.e.x, ~4294967295u), abs(u_input.e.x) ^ ~u_input.e.x, ~16583u & u_input.e.x)), any(vec2<bool>(true, any(vec4<bool>(false, false, false, true)))));
    var var_1 = -1i;
    var_1 = u_input.d.x;
    var_1 = 48296i;
    let var_2 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.e.x, u_input.e.x, var_0.c, u_input.e.x), vec4<u32>(u_input.e.x, var_0.c, u_input.e.x, var_0.c), vec4<bool>(true, false, true, true)), vec4<u32>(var_0.c, 20986u, var_0.c, 0u)) | max(~vec4<u32>(u_input.e.x, var_0.c, u_input.e.x, var_0.c), vec4<u32>(u_input.e.x, var_0.c, 1u, var_0.c)), vec4<u32>(129845u, _wgslsmith_add_u32(u_input.e.x, func_2().d.c), ~func_2().d.c, ~13966u), vec4<u32>(~select(u_input.e.x, 1u, true), (u_input.e.x & var_0.c) | 1u, func_2().b.c, _wgslsmith_sub_u32(var_0.c, ~var_0.c))), _wgslsmith_mod_vec4_u32(reverseBits(reverseBits(vec4<u32>(1u, u_input.e.x, u_input.e.x, 4294967295u) & vec4<u32>(4294967295u, var_0.c, 0u, 0u))), vec4<u32>(4294967295u, reverseBits(var_0.c), u_input.e.x, 1u)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), false, true, true), vec4<bool>(true, true, true, true)));
    return Struct_2(-(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.d.x, u_input.b, 11737i, 8844i), vec4<i32>(26046i, u_input.c.x, u_input.d.x, u_input.b)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 0u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.e.x, 4294967295u, 0u, 45133u)) % vec4<u32>(32u)))), func_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(1022f, 889f, var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_mod_u32(39036u, 4294967295u)), func_2(), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(42294i, u_input.d.x, -53539i, 0i), vec4<i32>(2147483647i, u_input.a, u_input.b, -40597i)), vec4<i32>(-4472i, u_input.b, u_input.d.x, -1i) | vec4<i32>(-24002i, u_input.a, -12070i, -2147483647i)), select(vec4<u32>(65162u, 0u, 99637u, var_2.x), var_2, true) << (vec4<u32>(26577u, var_2.x, 4294967295u, 4294967295u) % vec4<u32>(32u)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), vec4<u32>(~reverseBits(4294967295u), ~min(5750u, var_2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.x) & var_2.zw, reverseBits(var_2.yz)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u) | vec2<u32>(u_input.e.x, var_2.x), u_input.e)), (max(37244u, var_0.c) << (countOneBits(var_0.c) % 32u)) <= _wgslsmith_clamp_u32(1u, var_0.c, 4294967295u)), u_input.c.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_4(Struct_3(var_0, Struct_2(vec4<i32>(-1i, u_input.d.x, 11217i, u_input.b), var_0, u_input.c.x, Struct_1(vec3<f32>(var_0.b, var_0.a.x, var_0.a.x), var_0.b, 0u)), vec4<i32>(65517i, u_input.c.x, u_input.a, 4779i), vec4<u32>(var_0.c, u_input.e.x, 1u, u_input.e.x), true), var_2, false).a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x), reverseBits(var_2.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = func_1();
    let var_1 = select(!arg_0.zx, arg_0.zz, select(!arg_0.zz, vec2<bool>(false, any(arg_0.zx)), select(select(arg_0.xz, vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x)), !vec2<bool>(arg_0.x, false), vec2<bool>(true, !arg_0.x))));
    var var_2 = reverseBits(~(~abs(~vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, arg_1.d.c))));
    var_0 = func_2();
    let var_3 = select(max(arg_1.a, var_0.a), arg_1.a, false);
    return Struct_4(var_3 | vec4<i32>(u_input.c.x, _wgslsmith_clamp_i32(var_0.a.x ^ u_input.d.x, arg_1.a.x ^ -1i, arg_1.a.x), _wgslsmith_mod_i32(-33925i << (var_0.b.c % 32u), arg_1.c), var_0.c), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(~vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, u_input.a), vec3<i32>(-2147483647i, u_input.d.x, u_input.c.x)), select(~1084i, -u_input.a, true), -25658i, 2147483647i), vec3<bool>(false, !(!any(vec4<bool>(true, true, true, false))), true));
    var_0 = func_5(vec3<bool>(var_0.b.x == var_0.b.x, var_0.b.x, !(4294967295u <= u_input.e.x)), func_1());
    var_0 = func_5(var_0.b, Struct_2(-firstTrailingBit(select(vec4<i32>(var_0.a.x, 0i, 2147483647i, var_0.a.x), vec4<i32>(16857i, u_input.a, u_input.d.x, -47379i), var_0.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(726f, 1676f, -1709f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(114f, -532f, 1000f) * vec3<f32>(-538f, 399f, 444f)))), _wgslsmith_f_op_f32(-410f - _wgslsmith_f_op_f32(445f - 1137f)), 1u >> ((u_input.e.x & 18001u) % 32u)), ~max(i32(-1i) * -1i, -2147483647i), func_1().b));
    var var_1 = vec4<i32>(~(-1i), var_0.a.x, -23411i, var_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(func_4(Struct_3(Struct_1(vec3<f32>(399f, -506f, -1455f), -1000f, 1u), Struct_2(var_0.a, Struct_1(vec3<f32>(-879f, 1091f, -948f), 872f, 26937u), var_0.a.x, Struct_1(vec3<f32>(2514f, -377f, -1146f), -911f, u_input.e.x)), vec4<i32>(var_0.a.x, var_0.a.x, -26696i, 27869i), max(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 7840u), vec4<u32>(1u, 89945u, u_input.e.x, u_input.e.x)), true), vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.e.x), u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 16498u), vec3<u32>(43322u, 58173u, u_input.e.x)), ~u_input.e.x), any(vec2<bool>(true, var_0.b.x))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f - 438f))))));
    var var_3 = vec4<bool>(var_0.b.x, all(!var_0.b.zy), true, true);
    var var_4 = Struct_4(-_wgslsmith_mult_vec4_i32(firstLeadingBit(var_0.a << (vec4<u32>(u_input.e.x, u_input.e.x, 62871u, 1015u) % vec4<u32>(32u))), func_5(vec3<bool>(var_0.b.x, true, false), Struct_2(var_0.a, Struct_1(vec3<f32>(var_2, 104f, var_2), 503f, u_input.e.x), var_1.x, Struct_1(vec3<f32>(1606f, var_2, -868f), var_2, 1u))).a & _wgslsmith_sub_vec4_i32(vec4<i32>(-12073i, -14910i, 29783i, -36815i), var_0.a)), var_0.b);
    var_0 = Struct_4(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_sub_i32(-8677i, u_input.c.x), u_input.b, func_1().c), -(~vec4<i32>(-63684i, var_1.x, var_0.a.x, var_4.a.x))), var_4.a), select(func_5(var_3.yxx, func_2()).b, vec3<bool>(var_4.b.x, false, any(vec2<bool>(var_0.b.x, var_4.b.x))), var_0.b));
    let var_5 = vec3<bool>(var_4.b.x, false, true);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.wyy);
}

