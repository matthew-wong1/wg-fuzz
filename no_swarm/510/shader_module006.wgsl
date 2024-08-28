struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(386f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * arg_2.b) - arg_2.b) * arg_2.b), arg_1.c.x | arg_1.e.x)), arg_2.b, _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(1763f + arg_2.b)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-609f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b, arg_2.b, true)) - _wgslsmith_f_op_f32(113f * var_0.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, -1000f)), _wgslsmith_f_op_f32(var_0.x - 596f)), 485f)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(2066f)), var_0.x, _wgslsmith_f_op_f32(sign(358f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -375f, var_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, -866f, var_0.x)))))));
    let var_1 = arg_3 ^ -(vec2<i32>(-1i) * -(~arg_1.a));
    let var_2 = Struct_1(arg_2.a, -2082f, _wgslsmith_add_u32(127239u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.d, arg_1.d), _wgslsmith_clamp_vec2_u32(arg_0.wy, arg_0.yw | vec2<u32>(37305u, 24569u), arg_0.xz))));
    let var_3 = ~(1u | arg_2.c) << (14240u % 32u);
    return vec2<u32>(firstTrailingBit(~(~0u) | _wgslsmith_mod_u32(arg_1.d, firstLeadingBit(var_2.c))), arg_0.x);
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = arg_0;
    let var_1 = max(abs(vec2<u32>(~83655u, 1u)), ~(countOneBits(vec2<u32>(0u, arg_0.d)) & (~vec2<u32>(var_0.d, 4294967295u) << (vec2<u32>(1281u, var_0.d) % vec2<u32>(32u)))));
    var var_2 = abs(-select(~(~var_0.a.x), -arg_0.b, false));
    var var_3 = vec4<u32>(arg_0.d, select(~var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x ^ arg_0.d, 1u, ~0u), ~abs(vec3<u32>(15079u, 24168u, var_0.d))), _wgslsmith_f_op_f32(trunc(523f)) == _wgslsmith_f_op_f32(f32(-1f) * -362f)), 22478u, firstTrailingBit(~4294967295u));
    var var_4 = Struct_1(~firstLeadingBit(var_0.b), -919f, _wgslsmith_sub_u32(max(arg_0.d, ~var_0.d), var_0.d));
    return !select(var_0.c, vec4<bool>(!(arg_0.e.x == false), true, all(!arg_0.c.xwz), any(select(var_0.e, arg_0.e, var_0.c.x))), false);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = min(-(u_input.a.zx ^ max(vec2<i32>(u_input.a.x, arg_0.a), firstLeadingBit(vec2<i32>(arg_0.a, arg_0.a)))), _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.a.zx << (vec2<u32>(arg_0.c, arg_0.c) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_i32(max(u_input.a.xz, u_input.a.zw), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, arg_0.a), vec2<i32>(arg_0.a, arg_0.a))), firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, -29577i))));
    var var_1 = func_4(Struct_2(u_input.a.xx >> (func_3(vec4<u32>(arg_0.c, 1u, 1u, 4294967295u) | vec4<u32>(10530u, arg_0.c, arg_0.c, arg_0.c), Struct_2(var_0, u_input.a.x, vec4<bool>(false, false, false, false), 0u, vec3<bool>(false, false, true)), Struct_1(var_0.x, -140f, 46403u), vec2<i32>(var_0.x, var_0.x)) % vec2<u32>(32u)), u_input.a.x, !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true), 0u & arg_0.c, !vec3<bool>(any(vec2<bool>(false, false)), true, true)));
    var var_2 = arg_0;
    var_1 = !(!vec4<bool>(var_1.x, var_1.x, var_1.x, !(var_1.x && false)));
    let var_3 = func_4(Struct_2(~(~u_input.a.zz << (~vec2<u32>(1u, 72566u) % vec2<u32>(32u))), 2147483647i, !vec4<bool>(all(vec4<bool>(false, true, var_1.x, true)), true, arg_0.a != var_2.a, false), ~arg_0.c, !vec3<bool>(false, all(var_1.ww), !var_1.x))).ywz;
    return Struct_2(vec2<i32>(~select(var_2.a, -2147483647i, true) << (_wgslsmith_mult_u32(41564u, 0u) % 32u), 14168i), 27191i >> (_wgslsmith_mult_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(13302u, var_2.c, var_2.c, var_2.c), vec4<u32>(4294967295u, 1u, 1u, arg_0.c)), 33032u, select(var_3.x, var_3.x, var_1.x)), _wgslsmith_sub_u32(~var_2.c, ~var_2.c)) % 32u), !func_4(Struct_2(-vec2<i32>(-257i, -12246i), _wgslsmith_mult_i32(2147483647i, var_2.a), vec4<bool>(false, var_3.x, var_1.x, false), func_3(vec4<u32>(23769u, var_2.c, var_2.c, arg_0.c), Struct_2(vec2<i32>(u_input.a.x, -2147483647i), 10724i, vec4<bool>(true, false, var_1.x, var_1.x), 4294967295u, vec3<bool>(true, var_3.x, var_3.x)), arg_0, vec2<i32>(90965i, var_2.a)).x, !var_1.xwx)), 2204u, !vec3<bool>(!(true & var_1.x), var_3.x, func_4(Struct_2(vec2<i32>(var_2.a, -13515i), arg_0.a, vec4<bool>(var_1.x, false, true, true), 1u, vec3<bool>(var_1.x, var_1.x, var_3.x))).x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_2(arg_0);
    let var_1 = !any(var_0.c);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b * arg_0.b)))))))));
    var var_3 = arg_0;
    let var_4 = Struct_1(_wgslsmith_mod_i32(u_input.a.x, var_0.b), -1142f, _wgslsmith_div_u32(~(~var_0.d), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d ^ 77827u, 1u, ~26047u), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0.c, arg_1.d), vec3<u32>(arg_0.c, var_0.d, 19341u))))));
    return Struct_1(var_4.a, _wgslsmith_f_op_f32(var_4.b * _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-658f - var_3.b)))), var_0.d);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = -1i;
    var_0 = Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -(_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(var_0.a, var_1)) << (abs(62225u) % 32u)), var_1), 201f, 0u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))), -811f);
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = ~vec2<i32>(_wgslsmith_clamp_i32(arg_3 ^ -25152i, 26258i, -40841i), -(countOneBits(u_input.a.x) | arg_3));
    var var_1 = 4294967295u;
    var var_2 = 45612i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(862f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f - -176f)), -1489f, _wgslsmith_f_op_f32(func_5(!vec3<bool>(var_0, var_0, var_0), func_1(Struct_1(u_input.a.x, 1000f, 49914u), Struct_2(u_input.a.yw, 52648i, vec4<bool>(var_0, var_0, var_0, var_0), 17507u, vec3<bool>(false, var_0, false))))), u_input.a.x)), 280f));
    var var_2 = abs(u_input.a.xyy);
    var var_3 = select(23880u, reverseBits(1u), true);
    let var_4 = reverseBits(~4294967295u);
    var var_5 = _wgslsmith_div_i32(2147483647i, -u_input.a.x);
    var var_6 = ~38983u;
    var var_7 = func_2(func_1(func_1(func_1(Struct_1(u_input.a.x, -111f, var_4), Struct_2(var_2.yz, u_input.a.x, vec4<bool>(false, var_0, var_0, var_0), 37351u, vec3<bool>(false, true, var_0))), Struct_2(countOneBits(vec2<i32>(u_input.a.x, var_2.x)), 0i, select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, false, true, true), vec4<bool>(false, false, false, var_0)), 103698u, func_4(Struct_2(vec2<i32>(37651i, var_2.x), 1i, vec4<bool>(var_0, var_0, var_0, true), 24290u, vec3<bool>(true, true, true))).yyx)), func_2(func_1(func_1(Struct_1(33929i, var_1, 1u), Struct_2(vec2<i32>(13517i, 17133i), -35696i, vec4<bool>(var_0, false, var_0, false), var_4, vec3<bool>(var_0, var_0, var_0))), Struct_2(vec2<i32>(1i, u_input.a.x), -1455i, vec4<bool>(var_0, false, false, var_0), 4294967295u, vec3<bool>(var_0, var_0, var_0))))));
    var var_8 = ~_wgslsmith_mod_vec2_u32(max(~(~vec2<u32>(var_4, var_4)), select(vec2<u32>(var_4, var_4) | vec2<u32>(var_4, var_7.d), _wgslsmith_mult_vec2_u32(vec2<u32>(var_4, 241u), vec2<u32>(var_7.d, 1u)), var_7.e.yy)), max(select(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(var_4, var_4), any(var_7.c)), select(vec2<u32>(var_7.d, 12375u), _wgslsmith_mod_vec2_u32(vec2<u32>(7641u, var_7.d), vec2<u32>(10062u, 1u)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(~(~var_2.yx), ~var_7.a)), i32(-1i) * -var_7.a.x);
}

