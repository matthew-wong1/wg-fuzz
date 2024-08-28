struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, -60396i);

var<private> global1: i32;

var<private> global2: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(18268u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 38214u, 4035u, 14264u), vec4<u32>(13350u, 65297u, 0u, 12556u), vec4<u32>(92814u, 16510u, 4294967295u, 16851u), vec4<u32>(36747u, 0u, 2506u, 23706u), vec4<u32>(61736u, 39348u, 4294967295u, 1u), vec4<u32>(5481u, 1u, 16019u, 1u), vec4<u32>(4294967295u, 15361u, 0u, 25259u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = -36604i;
    var var_0 = u_input.a;
    var var_1 = arg_0.a.xx;
    global0 = ~vec2<i32>(countOneBits(firstTrailingBit(~0i)), max(abs(_wgslsmith_add_i32(global0.x, global0.x)), -7830i));
    global1 = -(43605i & -(countOneBits(-25495i) ^ ~var_0.x));
    return arg_0.a.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<f32> {
    global1 = global0.x;
    global2 = array<vec4<u32>, 9>();
    var var_0 = arg_1;
    let var_1 = arg_1;
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1199f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1025f - var_0.b.x))))), -176f, 1383f, 831f);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> bool {
    let var_0 = Struct_1(vec4<bool>(true, false, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), true), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(941f, 1000f, arg_1.x, arg_1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1725f, 1000f, arg_1.x, arg_1.x) * vec4<f32>(965f, 287f, arg_1.x, -1518f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-463f, arg_1.x, arg_1.x, 577f), -1206f, false))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(select(733f, 848f, false)), arg_1.x, 318f)))), arg_1.x, false);
    var var_1 = 1197f;
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, 20688i, -40568i) & vec3<i32>(1i, countOneBits(2147483647i), ~1i), vec3<i32>(abs(u_input.a.x), -14750i, -27343i)) & ~firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -3632i, -23929i) >> (vec3<u32>(56150u, u_input.c.x, u_input.b.x) % vec3<u32>(32u)), abs(vec3<i32>(u_input.d, u_input.d, u_input.d))));
    global0 = vec2<i32>(u_input.d, countOneBits(-1i));
    global2 = array<vec4<u32>, 9>();
    return max(0u, firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, arg_0.x), _wgslsmith_add_u32(u_input.b.x, 57546u)))) == ~(~10496u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-1664f, _wgslsmith_f_op_f32(sign(1003f)), true)), 1154f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f), -223f), 438f))));
    let var_1 = !select(select(vec3<bool>(func_1(Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(var_0.x, 1746f, 734f, var_0.x), var_0.x, false)), func_2(vec3<u32>(u_input.b.x, 2980u, 0u), vec3<f32>(var_0.x, var_0.x, var_0.x)), func_2(vec3<u32>(u_input.b.x, u_input.c.x, 58937u), vec3<f32>(-3107f, 286f, var_0.x))), vec3<bool>(true, all(vec2<bool>(false, false)), true), vec3<bool>(true, true, true)), vec3<bool>(true, _wgslsmith_mod_u32(u_input.b.x, 22594u) > 1u, false), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, false, false)));
    global2 = array<vec4<u32>, 9>();
    var var_2 = Struct_1(vec4<bool>(var_1.x, ~_wgslsmith_mult_u32(u_input.b.x, u_input.c.x) < u_input.c.x, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-500f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * var_0.x))), var_0.x, -1609f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) * var_0.x), true);
    var var_3 = select(8107u, ~(~14935u), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_2.b), _wgslsmith_div_f32(var_2.b.x, var_2.b.x), ~_wgslsmith_div_vec4_i32(-min(vec4<i32>(0i, u_input.a.x, u_input.a.x, global0.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.d, -30280i)), vec4<i32>(0i, reverseBits(u_input.d), u_input.d, -1i)), ~_wgslsmith_sub_u32(reverseBits(0u), u_input.c.x), var_2.b.x);
}

