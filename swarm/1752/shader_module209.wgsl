struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = global0.a;
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))));
    let var_1 = Struct_2(Struct_1(((global0.a.a & 0u) << (var_0.a % 32u)) & firstLeadingBit(min(1u, global0.a.a))), -1000f);
    global0 = Struct_2(Struct_1(var_1.a.a), _wgslsmith_f_op_f32(round(-939f)));
    global0 = var_1;
    return -862f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    let var_0 = ~1i;
    global0 = Struct_2(arg_1.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + 310f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_2.a.b)))) - _wgslsmith_f_op_f32(func_2()))));
    let var_1 = global0.b;
    global0 = arg_2.a;
    global0 = arg_1.b;
    return -1007f;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    let var_0 = vec3<bool>(true, arg_3, !select(false, arg_3, !arg_3 & arg_3));
    var var_1 = ~abs(select(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.a, global0.a.a, 0u, global0.a.a), vec4<u32>(1u, 1u, global0.a.a, 52743u)), firstTrailingBit(~vec4<u32>(u_input.d, 29596u, 31379u, 48335u)), false));
    var var_2 = Struct_4(select(var_0.yy, !var_0.yx, var_0.zx), arg_2, vec4<bool>(!(!var_0.x), false, true, !(!all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), Struct_3(arg_2, arg_2.a));
    var var_3 = var_2.d;
    var_1 = ~vec4<u32>(var_3.a.a.a, _wgslsmith_add_u32(u_input.d, ~(~0u)), ~(var_1.x >> (var_3.a.a.a % 32u)), arg_2.a.a);
    return var_2.b.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> Struct_3 {
    global0 = Struct_2(arg_1, global0.b);
    let var_0 = abs(~vec4<u32>(~0u, abs(35337u), _wgslsmith_mult_u32(u_input.d, arg_0.a), ~19372u) ^ abs(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.x, u_input.d, global0.a.a, 29229u), vec4<u32>(arg_0.a, 1u, u_input.d, arg_1.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a, u_input.d, 10173u, 1353u), vec4<u32>(arg_0.a, 74040u, 1u, 1u)))));
    global0 = Struct_2(arg_0, 1140f);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, _wgslsmith_add_i32(u_input.c >> (0u % 32u), u_input.b), ~(-13594i) << (_wgslsmith_div_u32(var_0.x, arg_0.a) % 32u)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-669i, 2147483647i, -14843i, -1i), vec4<i32>(-43909i, u_input.e, u_input.b, 15388i), true), -vec4<i32>(u_input.c, u_input.e, u_input.c, -1i)) >> (vec4<u32>(select(42423u, arg_0.a, false), abs(var_0.x), abs(arg_3.x), 4294967295u) % vec4<u32>(32u))) & _wgslsmith_clamp_i32(-29172i, ~abs(reverseBits(u_input.e)), _wgslsmith_mod_i32(-12705i, u_input.b));
    var_1 = _wgslsmith_clamp_i32(~u_input.b, -u_input.a.x, abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(19525i, -1052i, 2147483647i), vec3<i32>(u_input.b, u_input.c, 22155i))), _wgslsmith_div_i32(15439i & u_input.a.x, ~u_input.b))));
    return Struct_3(Struct_2(Struct_1(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - arg_2) * _wgslsmith_f_op_f32(func_3(Struct_1(u_input.d), Struct_4(vec2<bool>(true, true), Struct_2(global0.a, 269f), vec4<bool>(false, true, false, true), Struct_3(Struct_2(Struct_1(1u), global0.b), arg_1)), Struct_3(Struct_2(global0.a, 865f), Struct_1(4294967295u))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(432f + global0.b))))), Struct_1(11349u));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> u32 {
    var var_0 = 287f;
    let var_1 = func_5(func_4(vec4<i32>(abs(u_input.c) ^ 20158i, u_input.c >> (abs(u_input.d) % 32u), u_input.b, firstLeadingBit(-38220i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), global0.b)), Struct_2(Struct_1(reverseBits(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.a, Struct_4(vec2<bool>(false, true), Struct_2(Struct_1(arg_1), global0.b), vec4<bool>(true, false, false, false), Struct_3(Struct_2(global0.a, 601f), global0.a)), Struct_3(Struct_2(Struct_1(4294967295u), global0.b), global0.a))))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, true)))), func_4(vec4<i32>(~u_input.c, -46808i, i32(-1i) * -23561i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(u_input.e, 1i, u_input.a.x, u_input.e))), _wgslsmith_f_op_f32(-global0.b), Struct_2(Struct_1(1u), -2740f), any(vec3<bool>(true, true, true))), 288f, max(arg_0, arg_0));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -261f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b * 1151f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(var_1.b, global0.a, 402f, arg_0).a.b)))));
    var var_2 = Struct_4(vec2<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), false), func_5(Struct_1(85689u), func_4(-(~vec4<i32>(1i, u_input.e, 2147483647i, u_input.a.x)), global0.b, var_1.a, !all(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(max(-394f, 684f)), firstLeadingBit(~vec3<u32>(global0.a.a, arg_0.x, 42802u)) << (~arg_0 % vec3<u32>(32u))).a, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), all(vec3<bool>(true, true, false)))), func_5(var_1.b, Struct_1(0u), 471f, vec3<u32>(arg_0.x, _wgslsmith_mod_u32(~global0.a.a, ~1u), _wgslsmith_div_u32(17923u, u_input.d) ^ ~56857u)));
    let var_3 = Struct_4(!var_2.c.xz, Struct_2(func_5(var_2.d.a.a, var_2.b.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b))), ~vec3<u32>(arg_1, global0.a.a, 1u)).a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.b), var_2.d.a.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -481f)))), vec4<bool>(all(!select(vec3<bool>(var_2.c.x, var_2.c.x, false), vec3<bool>(false, true, false), true)), any(var_2.c.zwx), (any(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, false)) || (var_2.a.x == true)) | (-1i != _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c), u_input.a)), !var_2.a.x | true), Struct_3(var_1.a, var_2.d.a.a));
    return max(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x >> (124560u % 32u), ~arg_0.x, select(6989u, var_2.b.a.a, false)), ~_wgslsmith_sub_vec3_u32(arg_0, arg_0) ^ (arg_0 >> ((arg_0 ^ arg_0) % vec3<u32>(32u)))), max(~arg_0.x, u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f * -603f)), _wgslsmith_div_f32(-655f, 1000f))) - global0.b)));
    let var_1 = vec3<u32>(firstTrailingBit(reverseBits(~8915u)), ~func_1(vec3<u32>(reverseBits(global0.a.a), 4294967295u, _wgslsmith_add_u32(u_input.d, 0u)), _wgslsmith_sub_u32(select(u_input.d, 4294967295u, false), 54538u)), 4294967295u);
    var var_2 = Struct_4(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), func_5(global0.a, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.a, Struct_4(vec2<bool>(true, false), Struct_2(global0.a, -1594f), vec4<bool>(false, false, false, true), Struct_3(Struct_2(global0.a, var_0), Struct_1(var_1.x))), Struct_3(Struct_2(Struct_1(0u), global0.b), global0.a)))), var_1).a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), false, true), select(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, false)))), func_5(func_4(firstTrailingBit(vec4<i32>(27070i, -1i, u_input.e, u_input.b)) << (vec4<u32>(4294967295u, var_1.x, 83136u, var_1.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(110f + _wgslsmith_f_op_f32(func_2())), Struct_2(Struct_1(u_input.d), var_0), select(all(vec4<bool>(true, false, false, true)), true, any(vec2<bool>(false, true)))), Struct_1(60765u), func_5(Struct_1(~4294967295u), Struct_1(~var_1.x), -1000f, reverseBits(~var_1)).a.b, _wgslsmith_sub_vec3_u32(vec3<u32>(~12840u, _wgslsmith_dot_vec2_u32(var_1.zz, var_1.zz), ~4294967295u), var_1)));
    var var_3 = var_2.a.x;
    var var_4 = vec3<f32>(223f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.b)), _wgslsmith_f_op_f32(-991f - _wgslsmith_f_op_f32(floor(var_0)))), var_2.d.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.x)) * _wgslsmith_f_op_f32(sign(var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1955f)), _wgslsmith_f_op_f32(-var_2.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1573f, _wgslsmith_f_op_f32(-var_2.b.b), _wgslsmith_div_f32(934f, var_4.x))), select(var_2.c.yxy, !select(var_2.c.wxy, var_2.c.zzz, vec3<bool>(var_2.a.x, false, var_2.a.x)), select(var_2.c.zxx, vec3<bool>(var_2.c.x, var_2.c.x, false), true)))), vec4<u32>(~0u, 1u, 4299u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, global0.a.a), func_5(var_2.d.a.a, Struct_1(0u), _wgslsmith_f_op_f32(step(var_0, -1200f)), vec3<u32>(34446u, 0u, 4294967295u)).a.a.a)), var_1 ^ ~abs(vec3<u32>(var_1.x, u_input.d, global0.a.a) | vec3<u32>(global0.a.a, u_input.d, 48312u)));
}

