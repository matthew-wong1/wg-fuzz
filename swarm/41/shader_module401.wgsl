struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(2522u, 33052u, 4294967295u, 63226u, 4294967295u, 4294967295u, 11410u, 0u, 4294967295u, 1u, 1u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(550f))))));
    global0 = array<u32, 11>();
    var_0 = -307f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1961f, 1542f, arg_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(111f + -1332f) - -1296f))))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1246f, 1284f))));
    return ~_wgslsmith_clamp_vec3_i32(u_input.c.yyx, max(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.yyx, vec3<i32>(2147483647i, arg_2.a, u_input.c.x)), u_input.c.yzy, -u_input.c.zyw), _wgslsmith_add_vec3_i32(u_input.c.xxz, _wgslsmith_div_vec3_i32(u_input.c.yxz, u_input.c.wyw))), u_input.c.xxz);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    let var_0 = Struct_1(~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.wxx, vec3<i32>(-48997i, u_input.c.x, arg_2.a) ^ u_input.c.xwy), func_3(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false), global0[_wgslsmith_index_u32(~122729u, 11u)], arg_2, max(u_input.d.x, u_input.a))));
    let var_1 = _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.a, 1i), u_input.c.yx);
    global0 = array<u32, 11>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(532f, -1000f) * vec2<f32>(1000f, 169f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(100f, -1043f))) * vec2<f32>(1000f, 970f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-753f, _wgslsmith_f_op_f32(698f + -1073f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(658f, -616f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-578f, -1248f) * vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(481f, -757f)), all(vec4<bool>(true, true, true, true)))))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c.x, u_input.b), u_input.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(459f, -1000f)) * _wgslsmith_f_op_vec2_f32(func_2(u_input.c, vec4<u32>(45750u, u_input.a, 31258u, 74817u), Struct_1(24094i))))))));
    var var_2 = vec2<bool>(arg_0.x, all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), !(!vec4<bool>(arg_0.x, true, true, arg_0.x)), all(select(vec2<bool>(arg_0.x, true), arg_0.yz, arg_0.x)))));
    var var_3 = _wgslsmith_f_op_f32(round(339f));
    let var_4 = u_input.c.xww;
    return Struct_1(_wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(var_4.yx, u_input.c.xy), var_4.x));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = ~reverseBits(_wgslsmith_dot_vec2_u32(u_input.d.yx, ~u_input.d.yz) ^ ~_wgslsmith_div_u32(0u, 1u));
    let var_2 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 11u)], 11u)];
    var var_3 = func_1(!(!(!(!vec3<bool>(arg_1, false, false)))));
    var_0 = func_1(select(vec3<bool>(!all(vec2<bool>(true, arg_0)), all(!vec2<bool>(arg_0, true)), arg_1), vec3<bool>(any(vec3<bool>(true, arg_1, arg_1)), arg_0, !(47217i < var_0.a)), !select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, false, arg_0), vec3<bool>(arg_1, arg_0, false)), !vec3<bool>(arg_1, arg_1, false), arg_1)));
    return Struct_1(i32(-1i) * -36494i);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = Struct_1(2147483647i);
    let var_1 = all(vec2<bool>(!(_wgslsmith_f_op_f32(trunc(-1652f)) >= _wgslsmith_f_op_f32(f32(-1f) * -2949f)), arg_2.a > arg_2.a));
    global0 = array<u32, 11>();
    var var_2 = arg_1;
    let var_3 = vec2<u32>(~(~11711u), min(_wgslsmith_mult_u32(u_input.d.x, 26986u), ~1u)) ^ arg_0;
    return _wgslsmith_div_u32(~(~u_input.d.x), ~0u);
}

fn func_6(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(arg_0.x, 0i), i32(-1i) * -32704i, 1i, arg_0.x);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1521f + -366f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1176f, 1148f)))))) - arg_3), -1128f, arg_3);
    var var_2 = func_1(select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, false, true), true));
    var_2 = Struct_1(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(21991i, -11989i, arg_0.x, arg_0.x), u_input.c)), firstLeadingBit(arg_2.a ^ 0i)) >> (firstLeadingBit(arg_1) % 32u));
    let var_3 = arg_2;
    return func_4(!(!all(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), all(vec4<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(false, true, true, false)), true, _wgslsmith_f_op_f32(-1046f * var_1.x) > _wgslsmith_f_op_f32(arg_3 - var_1.x))), _wgslsmith_dot_vec2_u32(max(~(~vec2<u32>(71600u, 2920u)), countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], u_input.d.x))), vec2<u32>(27954u, 0u)), Struct_1(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    let var_0 = func_6(vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b) >> (~global0[_wgslsmith_index_u32(53960u, 11u)] % 32u), select(u_input.b, 31626i, true) | -u_input.b) ^ u_input.c.xx, func_5(~firstTrailingBit(select(u_input.d.xy, u_input.d.zz, false)), Struct_1(u_input.c.x), func_4(false, !any(vec2<bool>(true, false)), 0u, func_1(vec3<bool>(true, true, true))), _wgslsmith_clamp_u32(~(~global0[_wgslsmith_index_u32(0u, 11u)]), 1u, 0u)), Struct_1(17685i), 1000f);
    var var_1 = Struct_1(max(u_input.b, (_wgslsmith_dot_vec4_i32(vec4<i32>(53486i, 26298i, 2147483647i, -1i), vec4<i32>(2147483647i, u_input.b, var_0.a, 2147483647i)) & -54580i) & ~func_4(true, false, u_input.d.x, Struct_1(8398i)).a));
    let var_2 = -(~_wgslsmith_mult_i32(-5633i, _wgslsmith_mod_i32(~var_1.a, _wgslsmith_mod_i32(2147483647i, u_input.b))));
    var var_3 = vec2<i32>(-60592i, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(11517i, -u_input.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -789f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-177f - 1316f) - _wgslsmith_f_op_f32(f32(-1f) * -413f))))), u_input.c.zx << (u_input.d.xy % vec2<u32>(32u)), -753f, vec2<i32>(_wgslsmith_sub_i32(select(func_1(vec3<bool>(false, false, true)).a, min(var_2, 30209i), select(true, false, false)), firstTrailingBit(select(var_0.a, -25961i, true))), -2147483647i));
}

