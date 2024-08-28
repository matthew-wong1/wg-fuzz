struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-1669f, 1000f), Struct_1(-724f, -1000f), Struct_1(1194f, 506f), Struct_1(-1435f, 458f), Struct_1(-413f, -1000f), Struct_1(312f, -977f), Struct_1(771f, -1029f), Struct_1(-629f, 1204f), Struct_1(-660f, 1410f), Struct_1(1592f, -797f), Struct_1(-1582f, 226f), Struct_1(-368f, 1549f), Struct_1(421f, 389f), Struct_1(1028f, -1000f), Struct_1(-1035f, -1652f), Struct_1(558f, 669f), Struct_1(277f, -145f), Struct_1(-186f, -1000f), Struct_1(666f, 1004f), Struct_1(-2251f, -416f), Struct_1(-1594f, -546f), Struct_1(-614f, -948f), Struct_1(-486f, 350f), Struct_1(-213f, -139f), Struct_1(-638f, -1594f), Struct_1(105f, 873f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = abs(_wgslsmith_sub_i32(select(2147483647i, arg_0.x, !arg_1.d) | -33411i, ~0i));
    let var_1 = ~vec2<u32>(~min(0u, _wgslsmith_add_u32(40926u, 74083u)), 4294967295u);
    var var_2 = arg_1.a;
    var var_3 = 0u;
    global0 = array<Struct_1, 26>();
    return 1000f;
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<Struct_1, 26>();
    let var_0 = u_input.d;
    let var_1 = abs(u_input.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(1073f + _wgslsmith_f_op_f32(max(-712f, _wgslsmith_f_op_f32(func_3(~u_input.a.yy, Struct_3(false, vec3<u32>(44539u, u_input.c.x, 1u), u_input.e, false, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), Struct_1(1015f, arg_0), arg_0))))), _wgslsmith_f_op_f32(func_3(-u_input.a.yx >> ((_wgslsmith_sub_vec2_u32(u_input.c.wz, vec2<u32>(671u, 1u)) >> (u_input.c.zw % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_3(false, var_1.xxz, _wgslsmith_clamp_i32(-56333i, var_0, -2147483647i) ^ (i32(-1i) * -2147483647i), true, global0[_wgslsmith_index_u32(17110u, 26u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.c.x, var_1.x) | ~1u, ~1u, u_input.c.x | 17230u), 26u)], arg_0)));
    global0 = array<Struct_1, 26>();
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_1() -> StorageBuffer {
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(401f, -1357f))) - 1f), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1490f)) - -242f))));
    var_0 = Struct_1(230f, _wgslsmith_f_op_f32(var_0.a + var_0.a));
    var var_1 = ~u_input.c;
    var var_2 = vec3<i32>(~(-50259i & (8387i | u_input.d)), max(firstLeadingBit(~_wgslsmith_sub_i32(17201i, -3373i)), u_input.d), u_input.e);
    return StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.x, ~(u_input.b & u_input.b)), ~_wgslsmith_mod_u32(4294967295u, countOneBits(1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-900f, -856f, 434f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -994f, var_0.a)), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_0.a, -2024f)), var_0.a, var_0.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a, 1000f, 1435f, var_0.b))) - vec4<f32>(149f, 938f, -1835f, 815f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(-504f, var_0.b)), 1f, var_0.b, _wgslsmith_f_op_f32(trunc(736f)))))), ~vec2<u32>(73762u & _wgslsmith_mod_u32(u_input.c.x, 69835u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(41168u, 1u))), 26u)];
    global0 = array<Struct_1, 26>();
    var_0 = global0[_wgslsmith_index_u32(reverseBits(73792u), 26u)];
    var_0 = global0[_wgslsmith_index_u32(~u_input.c.x, 26u)];
    global0 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = func_1();
}

