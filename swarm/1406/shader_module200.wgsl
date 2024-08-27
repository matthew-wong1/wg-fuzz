struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(531f, 1412f, -1571f), vec3<f32>(-590f, -1107f, -1906f), vec3<f32>(1053f, -2321f, 696f), vec3<f32>(-475f, 515f, -425f), vec3<f32>(1031f, -457f, 1362f), vec3<f32>(884f, -106f, 173f), vec3<f32>(210f, -213f, -1829f));

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    var var_0 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, u_input.e <= (28700i >> (u_input.a.x % 32u)), true), vec3<bool>(true, true, true)), true);
    let var_1 = select(all(select(select(vec2<bool>(false, false), var_0.zy, vec2<bool>(false, var_0.x)), select(var_0.xz, vec2<bool>(var_0.x, var_0.x), false), select(vec2<bool>(false, var_0.x), var_0.xz, vec2<bool>(true, false)))) && (_wgslsmith_mod_u32(0u, 55122u) < ~select(u_input.b, u_input.a.x, false)), var_0.x, var_0.x);
    var var_2 = -(~_wgslsmith_dot_vec3_i32(-vec3<i32>(-20156i, u_input.c, u_input.c), vec3<i32>(-1i, _wgslsmith_clamp_i32(u_input.e, -1490i, -2147483647i), ~1i)));
    var_2 = u_input.e;
    let var_3 = true;
    return !select(!vec3<bool>(true, !var_3, false), vec3<bool>(true, (u_input.e >= u_input.e) == (u_input.e > 42404i), all(select(vec4<bool>(var_1, var_3, true, var_3), vec4<bool>(true, false, true, true), vec4<bool>(var_0.x, false, var_1, true)))), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec4<bool>(true, false, all(!vec4<bool>(false, true, select(true, false, true), true)), true);
    global1 = array<Struct_1, 29>();
    let var_1 = select(select(var_0.ywx, select(vec3<bool>(true, var_0.x, arg_1.a <= arg_0.x), vec3<bool>(!var_0.x, !var_0.x, false), !(!var_0.zzy)), any(vec3<bool>(true, var_0.x, var_0.x)) | false), !(!(!select(var_0.wxw, vec3<bool>(var_0.x, false, false), var_0.yyz))), select(func_3(), select(!vec3<bool>(var_0.x, var_0.x, true), !func_3(), (var_0.x & var_0.x) & true), var_0.wzz));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_add_u32(~reverseBits(firstTrailingBit(32880u)), ~abs(arg_1.c << (u_input.b % 32u))) != 1u;
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-371f))))), 1414f, var_2.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    return countOneBits(0i);
}

fn func_1() -> f32 {
    var var_0 = func_4(select(vec2<bool>(true, all(vec4<bool>(false, false, true, true))), vec2<bool>(any(vec3<bool>(true, false, false)), true), select(false, false, true) != true), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1655f * 1039f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-828f)), _wgslsmith_f_op_f32(f32(-1f) * -213f)), 0u), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1525f, -724f))), global1[_wgslsmith_index_u32(~0u >> (_wgslsmith_add_u32(u_input.d, 52227u) % 32u), 29u)])) ^ u_input.e;
    global1 = array<Struct_1, 29>();
    let var_1 = global0[_wgslsmith_index_u32(~(~max(u_input.b, ~u_input.b)), 7u)];
    global1 = array<Struct_1, 29>();
    global0 = array<vec3<f32>, 7>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(floor(func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(763f, -602f)))), func_2(_wgslsmith_f_op_vec2_f32(sign(var_1.xx)), func_2(var_1.xz, Struct_1(623f, 109f, 1u)))).a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(abs(-974f));
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    let var_1 = Struct_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), u_input.b);
    global0 = array<vec3<f32>, 7>();
    let var_2 = func_2(vec2<f32>(1307f, _wgslsmith_f_op_f32(var_1.b * var_0)), Struct_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f + _wgslsmith_f_op_f32(min(var_0, 340f)))), 4294967295u));
    global1 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

