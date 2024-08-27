struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    var var_0 = u_input.a.zyz;
    var_0 = u_input.a.xww << (u_input.a.wyw % vec3<u32>(32u));
    let var_1 = !vec4<bool>(true & all(vec4<bool>(false, false, true, false)), 0u < ~_wgslsmith_dot_vec2_u32(var_0.yy, u_input.a.xx), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), true))), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)));
    var var_2 = 830f;
    let var_3 = reverseBits(35072u);
    return vec2<bool>(!(!(!var_1.x)), var_1.x);
}

fn func_2(arg_0: f32) -> vec4<f32> {
    var var_0 = Struct_1(u_input.a.xxw, 1i, ~u_input.c, vec2<u32>(11599u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, u_input.b), vec2<u32>(u_input.b, 57755u)), select(countOneBits(vec2<u32>(4294967295u, u_input.c.x)), ~u_input.a.yz, vec2<bool>(true, true)))));
    var var_1 = select(!vec2<bool>(true, !(var_0.d.x >= 4294967295u)), select(select(func_3(), func_3(), vec2<bool>(true, true)), func_3(), false), any(!vec4<bool>(any(vec2<bool>(false, true)), true, all(vec4<bool>(true, false, true, true)), 2147483647i < var_0.b)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1399f * -1028f) - _wgslsmith_f_op_f32(649f - -1943f)), arg_0, arg_0, _wgslsmith_f_op_f32(trunc(-223f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-878f, arg_0, 1145f, arg_0)))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(-209f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(103f * 304f))), _wgslsmith_f_op_f32(-171f * _wgslsmith_f_op_f32(ceil(147f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(923f, 179f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -897f)))))));
    var var_2 = vec2<bool>(true, (u_input.d.x != firstTrailingBit(u_input.b)) & true);
    var_2 = select(!select(!vec2<bool>(arg_0, arg_0), func_3(), select(vec2<bool>(true, true), vec2<bool>(arg_0, false), var_2.x)), !vec2<bool>(all(func_3()), !func_3().x), vec2<bool>(all(!vec4<bool>(var_2.x, var_2.x, false, arg_0)), arg_0));
    var var_3 = Struct_1(vec3<u32>(firstTrailingBit(u_input.b), ~u_input.a.x, 0u), 40584i, u_input.e, ~select(~vec2<u32>(4294967295u, 0u), u_input.e, true));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1343f)))), _wgslsmith_f_op_f32(round(-601f)), true))), -1332f);
    var var_1 = arg_2;
    var var_2 = -1729f;
    var_2 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(108f, -331f) * _wgslsmith_f_op_f32(f32(-1f) * -1752f))))));
    var_1 = Struct_1(var_1.a, firstLeadingBit(abs(_wgslsmith_add_i32(~arg_1.b, -1i))), u_input.c ^ var_1.d, arg_1.d);
    return !(!(!(!vec2<bool>(arg_0, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), !func_4(func_1(false), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 0u, 18349u), u_input.a.xww), -406i, ~u_input.c, vec2<u32>(21571u, u_input.a.x) ^ vec2<u32>(u_input.b, 0u)), Struct_1(~u_input.a.zxy, ~2147483647i, ~u_input.c, u_input.d), -_wgslsmith_dot_vec3_i32(vec3<i32>(8505i, 0i, -2147483647i), vec3<i32>(-57276i, 1i, 32354i))), _wgslsmith_f_op_f32(step(-1867f, _wgslsmith_f_op_f32(floor(-1645f)))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)))));
    let var_1 = _wgslsmith_f_op_f32(1f * -413f);
    var var_2 = -_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-25922i, 31837i, -2147483647i), vec3<i32>(0i, -19616i, 14143i))), _wgslsmith_dot_vec2_i32(-vec2<i32>(24158i, -40190i), ~vec2<i32>(-17229i, 27730i)), firstTrailingBit(i32(-1i) * -22800i), _wgslsmith_dot_vec3_i32(vec3<i32>(6767i, 194i, -69171i), select(vec3<i32>(-1i, 1i, 0i), vec3<i32>(-1i, -2147483647i, 1065i), false))), ~(-(vec4<i32>(-2147483647i, 24575i, 1i, 2147483647i) >> (u_input.a % vec4<u32>(32u)))));
    var_2 = -vec4<i32>(_wgslsmith_div_i32(~(-1i), 6155i), abs(-20604i), _wgslsmith_add_i32((i32(-1i) * -2147483647i) | (var_2.x & -2147483647i), ~var_2.x), -(~_wgslsmith_mult_i32(-2147483647i, var_2.x)));
    var_2 = firstTrailingBit(abs(vec4<i32>(abs(var_2.x), i32(-1i) * -10332i, -26625i, var_2.x))) >> (vec4<u32>(52838u, 4294967295u, ~u_input.b, 38300u) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -676f))), var_2.x, _wgslsmith_sub_vec3_u32(~max(u_input.a.zxz, u_input.a.zyy), vec3<u32>(4294967295u << (u_input.c.x % 32u), _wgslsmith_add_u32(4294967295u, u_input.a.x), u_input.c.x)) & u_input.a.wzx);
}

