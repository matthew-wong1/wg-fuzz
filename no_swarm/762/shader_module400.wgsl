struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(0i), Struct_1(-1i), Struct_1(33760i), Struct_1(i32(-2147483648)), Struct_1(-16457i), Struct_1(8512i), Struct_1(1i), Struct_1(28455i), Struct_1(0i), Struct_1(-110i), Struct_1(-44077i), Struct_1(-23947i), Struct_1(1i), Struct_1(0i), Struct_1(-62256i), Struct_1(i32(-2147483648)), Struct_1(32256i));

var<private> global1: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(1u, 22598u, 14031u, 4294967295u), vec4<u32>(3010u, 8302u, 35473u, 56505u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: vec3<bool>) -> bool {
    global0 = array<Struct_1, 17>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32((~vec3<u32>(u_input.a.x, u_input.a.x, 0u) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a)) & vec3<u32>(u_input.a.x, 50695u, 109893u), countOneBits(u_input.a)), ~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 0u), u_input.a.x | u_input.a.x, 1u)), 54125u);
    let var_1 = var_0.x;
    global1 = array<vec4<u32>, 2>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2139f, arg_1) - 1f);
    return false;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5) -> f32 {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(-arg_0.a, vec4<i32>(1i, abs(arg_0.a.x ^ arg_1.d), arg_1.d, 12724i << (firstTrailingBit(4294967295u) % 32u))), _wgslsmith_f_op_vec2_f32(-arg_1.b.ww), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], select(select(!vec4<bool>(arg_1.c.x, false, arg_1.a, arg_1.c.x), select(vec4<bool>(arg_1.c.x, false, true, false), vec4<bool>(false, true, false, arg_1.c.x), true), true), vec4<bool>(true, arg_1.b.x != -180f, any(vec4<bool>(arg_1.a, false, arg_1.c.x, false)), arg_1.c.x), select(vec4<bool>(true, arg_1.c.x, true, true), vec4<bool>(false, true, arg_1.c.x, true), !arg_1.a))), u_input.a.x >> (reverseBits(~_wgslsmith_sub_u32(u_input.a.x, 4294967295u)) % 32u));
    var_0 = Struct_3(-2147483647i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, vec2<f32>(-1000f, -1718f))))), Struct_2(var_0.c.a, vec4<bool>(arg_1.a, arg_1.a, arg_1.c.x && (-1i > arg_0.a.x), true)), u_input.a.x);
    global1 = array<vec4<u32>, 2>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.x))));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = -vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(~arg_1), -vec2<i32>(-26918i, -52590i)), ~arg_1.x, -29798i << (_wgslsmith_div_u32(firstLeadingBit(u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 9975u)) % 32u), firstTrailingBit(abs(-arg_1.x)));
    var var_1 = !(arg_0.a | false);
    var_1 = true;
    var var_2 = 631f;
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec4<i32>(-13852i, _wgslsmith_div_i32(arg_0.d, -16536i), arg_0.d, ~(-15858i))), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), func_1(Struct_5(true, vec4<f32>(-650f, 1411f, -199f, -1362f), vec2<bool>(true, true), ~48558i), _wgslsmith_f_op_f32(ceil(-765f)), vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(true, false, false))));
    let var_1 = Struct_4(~firstTrailingBit(min(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(1i, -98172i, -24593i, -2147483647i))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_5(var_0.x, vec4<f32>(562f, 2766f, 202f, -1293f), var_0.zy, var_1.a.x), var_1.a.wz, u_input.a.x, 1267f)) * 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-276f, 1553f), vec2<f32>(-136f, -243f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2118f, -410f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1320f * -1995f), _wgslsmith_f_op_f32(-696f + 1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1476f, -1000f), vec2<f32>(252f, 1000f), vec2<bool>(var_0.x, false))), vec2<f32>(115f, 1277f), vec2<bool>(var_0.x, true))))));
    global1 = array<vec4<u32>, 2>();
    let var_3 = Struct_5(func_1(Struct_5(!var_0.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1524f, var_2.x, var_2.x, -1306f), vec4<f32>(var_2.x, var_2.x, 805f, -208f), false)))), var_0.xw, 1i | _wgslsmith_clamp_i32(var_1.a.x, 1i, var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + -1376f) * 185f), !(!select(var_0.wxx, vec3<bool>(false, var_0.x, var_0.x), true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, -261f, var_2.x, var_2.x)))))), select(select(var_0.yw, var_0.xy, var_0.ww), var_0.yx, var_0.x), ~var_1.a.x);
    var_2 = var_3.b.wy;
    var var_4 = -705f;
    global0 = array<Struct_1, 17>();
    var var_5 = select(vec4<bool>(true, true, var_1.a.x > -1i, true), select(vec4<bool>(var_0.x, var_0.x, select(true, true, true), any(vec3<bool>(false, true, true))), !(!(!var_0)), false & !all(vec2<bool>(true, false))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a.yz, -firstLeadingBit(var_1.a.x), var_3.d, ~1u, var_1.a.xx);
}

