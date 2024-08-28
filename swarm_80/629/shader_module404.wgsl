struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_1(vec4<u32>(arg_1.x, 14108u, ~arg_0.x, ~_wgslsmith_mod_u32(arg_1.x, _wgslsmith_div_u32(arg_0.x, 23435u))), false, firstTrailingBit(~arg_0.x), firstLeadingBit(-1i));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~firstLeadingBit(var_0.a.xx), vec2<u32>(~(~0u), ~var_0.c)), ~firstLeadingBit(~vec2<u32>(arg_1.x, arg_0.x)));
    var_0 = Struct_1(countOneBits(var_0.a), var_0.b, 26293u, u_input.a.x);
    let var_2 = Struct_2(_wgslsmith_mod_i32(i32(-1i) * -34027i, ~(~_wgslsmith_mod_i32(var_0.d, 0i))), Struct_1(arg_0, var_0.b, ~(~min(arg_0.x, 4294967295u)), -18104i), Struct_1(arg_0, all(select(vec3<bool>(false, false, true), vec3<bool>(var_0.b, true, false), var_0.b)) || !(!var_0.b), arg_0.x, -3691i), 590f, countOneBits(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a.x, -2147483647i, -9908i, var_0.d), vec4<i32>(u_input.a.x, 82i, u_input.a.x, -16658i)), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, var_0.d, -1i)))) > ((reverseBits(-1i) << (var_0.a.x % 32u)) & u_input.a.x));
    var_0 = Struct_1(~(~var_0.a | (vec4<u32>(0u, var_2.c.a.x, 0u, arg_1.x) << (vec4<u32>(var_1, var_0.c, var_2.b.a.x, arg_1.x) % vec4<u32>(32u)))), any(select(select(select(vec4<bool>(true, var_2.b.b, var_2.e, var_2.e), vec4<bool>(var_0.b, true, var_0.b, false), var_0.b), select(vec4<bool>(var_2.e, false, var_0.b, true), vec4<bool>(true, var_0.b, var_2.c.b, true), vec4<bool>(true, false, false, false)), var_2.c.b), vec4<bool>(select(var_2.b.b, var_2.b.b, false), var_2.e || true, var_2.c.b, true), !(var_1 > var_0.a.x))), 1u, max(11234i, u_input.a.x));
    return arg_0.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = Struct_2(~11692i, Struct_1(~arg_2.c.a, all(!vec2<bool>(arg_1.b.b, true)), func_3(vec4<u32>(28803u, 39357u, arg_1.c.a.x, arg_1.b.a.x), vec2<u32>(4294967295u, 0u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-469f, -1253f) + vec2<f32>(-404f, arg_2.d))) & 1u, -2147483647i), Struct_1(abs(_wgslsmith_div_vec4_u32(arg_1.c.a, vec4<u32>(arg_1.c.a.x, 32259u, arg_0.x, arg_2.b.a.x))), (10308i | arg_2.b.d) > -u_input.a.x, _wgslsmith_mod_u32(func_3(~vec4<u32>(arg_0.x, 45037u, 63112u, arg_0.x), ~vec2<u32>(arg_0.x, arg_2.b.c), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-528f, -749f)))), arg_1.c.c), arg_1.b.d), -850f, !arg_1.e);
    let var_1 = _wgslsmith_dot_vec3_i32(min(u_input.a, select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-15761i, 0i, 39782i), u_input.a), u_input.a), vec3<i32>(-arg_2.b.d, -1i, 10604i), !vec3<bool>(arg_1.c.b, var_0.c.b, var_0.b.b))), ~_wgslsmith_clamp_vec3_i32(abs(~u_input.a), u_input.a, ~min(vec3<i32>(-1i, 2147483647i, arg_2.a), u_input.a)));
    var var_2 = u_input.a;
    var var_3 = func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(63436u, arg_1.b.a.x, 0u, var_0.b.c), vec4<u32>(arg_0.x, ~0u, 4294967295u, arg_1.b.c) << (arg_1.c.a % vec4<u32>(32u))), vec2<u32>(arg_0.x, ~_wgslsmith_add_u32(firstTrailingBit(21578u), ~arg_2.b.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1858f, 520f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(562f, 606f), vec2<f32>(380f, 961f), vec2<bool>(arg_1.e, arg_2.c.b)))))))));
    var var_4 = Struct_2(-1i, arg_1.c, Struct_1(vec4<u32>(4294967295u, arg_0.x, arg_0.x, abs(1u)) | arg_2.b.a, false, var_0.c.c & ~_wgslsmith_clamp_u32(43220u, arg_2.b.a.x, 4294967295u), arg_1.b.d), 745f, any(vec4<bool>(arg_2.c.b, var_0.b.b, arg_1.b.b, arg_2.c.b)));
    return _wgslsmith_mult_vec2_i32(select(var_2.yx, select(var_2.yx, var_2.yy, !vec2<bool>(arg_1.b.b, var_0.b.b)) >> (arg_2.c.a.yy % vec2<u32>(32u)), !select(!vec2<bool>(var_4.c.b, false), vec2<bool>(var_4.b.b, true), vec2<bool>(arg_1.c.b, arg_2.e))), abs(var_2.xx ^ vec2<i32>(var_4.b.d, ~(-79899i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, 1036f, arg_1.d)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.d, 1268f, 470f), vec3<f32>(-1000f, 1055f, arg_1.d)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, 1856f, arg_1.d) - vec3<f32>(var_1.d, var_1.d, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, -1681f, var_1.d) * vec3<f32>(var_1.d, arg_1.d, 689f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1501f, -2107f, var_1.d))))), !select(select(vec3<bool>(false, true, arg_1.b.b), vec3<bool>(var_1.b.b, true, true), vec3<bool>(true, var_1.b.b, true)), select(vec3<bool>(var_1.c.b, var_1.c.b, true), vec3<bool>(var_1.e, arg_1.c.b, arg_1.c.b), vec3<bool>(arg_1.b.b, false, true)), select(vec3<bool>(false, arg_1.b.b, true), vec3<bool>(false, true, false), vec3<bool>(true, false, var_1.b.b))))));
    let var_3 = Struct_2(23259i, arg_1.b, var_1.b, _wgslsmith_f_op_f32(step(var_2.x, 529f)), any(vec2<bool>(false, true)));
    var var_4 = ~arg_1.b.c;
    return Struct_1(~(~(vec4<u32>(1u, 73962u, 48909u, var_3.b.c) >> (vec4<u32>(0u, 1u, 1u, 44641u) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(18752u, var_1.c.a.x, 34783u, 54676u), vec4<u32>(0u, 1u, arg_1.b.a.x, var_3.b.c)) % vec4<u32>(32u))), false, 4294967295u, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.d, _wgslsmith_div_i32(arg_1.c.d, reverseBits(-4478i)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.c.d), vec2<i32>(1i, 2147483647i)) ^ _wgslsmith_mult_i32(arg_1.b.d, var_0.x)), u_input.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(vec4<u32>(~(~(arg_0.x ^ arg_0.x)), func_3(arg_1.a, ~arg_0 ^ reverseBits(vec2<u32>(4294967295u, arg_1.a.x)), _wgslsmith_div_vec2_f32(vec2<f32>(699f, -682f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(354f, 3724f))))), ~arg_1.a.x, 0u), !arg_1.b, arg_0.x, arg_1.d);
    let var_1 = Struct_2(21116i, func_4(vec2<i32>(-1i) * -select(u_input.a.yx, u_input.a.zy, var_0.b), Struct_2(_wgslsmith_sub_i32(1i, firstTrailingBit(-1i)), Struct_1(_wgslsmith_div_vec4_u32(arg_1.a, vec4<u32>(1u, 0u, var_0.c, 464u)), true, select(4294967295u, arg_1.a.x, true), -936i ^ var_0.d), func_4(u_input.a.xx, Struct_2(var_0.d, arg_1, Struct_1(vec4<u32>(57625u, 48033u, arg_0.x, 1u), true, 4294967295u, u_input.a.x), -986f, var_0.b), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f)), false), u_input.a.x | -func_2(var_0.a.xy, Struct_2(0i, arg_1, Struct_1(arg_1.a, arg_1.b, arg_0.x, var_0.d), 849f, var_0.b), Struct_2(u_input.a.x, arg_1, arg_1, -247f, false)).x), arg_1, 1f, false);
    var_0 = var_1.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_div_f32(968f, -447f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2268f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-580f + var_1.d), -1053f))));
    var_2 = var_1.d;
    return Struct_2(9161i, Struct_1(_wgslsmith_clamp_vec4_u32(var_0.a, ~(~vec4<u32>(var_0.c, 354u, var_1.c.a.x, var_0.c)), var_0.a), !arg_1.b, firstTrailingBit(var_1.b.c), 2147483647i), arg_1, -658f, true);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = func_5(~(~arg_0.c.a.zy) & vec2<u32>(firstTrailingBit(1u) << (13042u % 32u), ~(~arg_0.b.c)), func_4(~abs(func_2(vec2<u32>(1u, arg_0.b.a.x), arg_0, Struct_2(23049i, Struct_1(vec4<u32>(arg_0.b.c, arg_0.c.c, arg_0.b.a.x, arg_0.c.c), true, 13111u, 1i), arg_0.b, arg_1, arg_0.b.b))), Struct_2(-17135i, Struct_1(abs(arg_0.b.a), u_input.a.x >= 2147483647i, ~arg_0.c.c, _wgslsmith_div_i32(1i, 9953i)), Struct_1(arg_0.c.a, true, _wgslsmith_dot_vec2_u32(arg_0.b.a.ww, vec2<u32>(0u, 0u)), arg_0.a << (arg_0.b.a.x % 32u)), -190f, all(!vec4<bool>(true, false, arg_0.b.b, false))), _wgslsmith_mult_i32(i32(-1i) * -arg_0.b.d, u_input.a.x)));
    var var_1 = func_5(var_0.b.a.xw, func_5(vec2<u32>(~var_0.c.c, min(_wgslsmith_dot_vec2_u32(var_0.c.a.yz, vec2<u32>(1u, 6307u)), arg_0.c.c)), arg_0.b).b).b;
    var var_2 = u_input.a.zz;
    var var_3 = ~firstLeadingBit(-u_input.a.x);
    var var_4 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(i32(-1i) * -52038i, -34976i), u_input.a.zx, true), u_input.a.yz) & -_wgslsmith_div_i32(0i, ~(-81055i));
    return _wgslsmith_f_op_f32(min(-631f, var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(-u_input.a.x, Struct_1(vec4<u32>(4294967295u, 29337u, 0u, 19217u), false, 1u, u_input.a.x), Struct_1(vec4<u32>(23122u, 43897u, 0u, 52938u), true, 1u, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -127f), false), -1000f))) * _wgslsmith_f_op_f32(-1228f + _wgslsmith_f_op_f32(f32(-1f) * -218f)));
    var var_1 = func_4(~u_input.a.yy, func_5(vec2<u32>(firstLeadingBit(1u), func_3(~vec4<u32>(0u, 1u, 85726u, 6268u), ~vec2<u32>(3027u, 51677u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 563f) - vec2<f32>(657f, 327f)))), Struct_1(vec4<u32>(1u, 1u, 1u, 1u), true, max(~34400u, ~4294967295u), -_wgslsmith_dot_vec3_i32(vec3<i32>(-30688i, -37688i, -62422i), u_input.a))), ~u_input.a.x);
    var var_2 = func_4(u_input.a.zz, Struct_2(func_2(vec2<u32>(~17912u, _wgslsmith_mod_u32(57412u, 19371u)), Struct_2(u_input.a.x, Struct_1(vec4<u32>(1u, 74011u, 30308u, 6235u), false, var_1.c, u_input.a.x), Struct_1(vec4<u32>(var_1.a.x, 4294967295u, 32879u, 74237u), true, var_1.a.x, var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -446f), true), Struct_2(-2147483647i, Struct_1(vec4<u32>(var_1.c, 5372u, var_1.c, var_1.a.x), false, var_1.a.x, -2147483647i), Struct_1(var_1.a, false, var_1.a.x, var_1.d), _wgslsmith_f_op_f32(-1865f + -1545f), true)).x, Struct_1(vec4<u32>(~var_1.c, 0u, func_5(var_1.a.zy, Struct_1(var_1.a, true, 18857u, -7134i)).c.a.x, ~9604u), !var_1.b && (true && var_1.b), var_1.c | _wgslsmith_clamp_u32(0u, 86728u, var_1.c), -2147483647i), func_5(var_1.a.wz, func_4(_wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(var_1.d, -1i)), func_5(var_1.a.xy, Struct_1(var_1.a, false, var_1.a.x, u_input.a.x)), _wgslsmith_sub_i32(var_1.d, -68966i))).c, 439f, func_5(vec2<u32>(1u, var_1.c), Struct_1(var_1.a >> (var_1.a % vec4<u32>(32u)), var_1.b, 1u, firstTrailingBit(var_1.d))).e), u_input.a.x);
    var var_3 = _wgslsmith_f_op_f32(sign(-171f));
    let var_4 = all(vec4<bool>(true, var_2.b, var_2.b, false));
    let var_5 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 29329u | min(60859u, func_3(vec4<u32>(var_1.a.x, 15046u, 45033u, 2371u), vec2<u32>(0u, var_1.a.x), vec2<f32>(var_0, -283f))), var_2.a.x, var_1.a.x), vec4<u32>(50015u << (1u % 32u), firstTrailingBit(~30637u ^ (1u | var_2.c)), var_1.a.x | 45627u, firstTrailingBit(~var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(max(25273u, ~47377u | ~var_2.a.x), ~func_5(vec2<u32>(var_1.c, var_5.x), func_4(u_input.a.zz, Struct_2(2147483647i, Struct_1(vec4<u32>(26336u, var_2.c, 21916u, var_5.x), var_4, 17228u, u_input.a.x), Struct_1(var_1.a, var_1.b, 30806u, -29123i), var_0, var_1.b), var_1.d)).b.c), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.c, var_1.c, var_2.c, var_5.x), var_2.a));
}

