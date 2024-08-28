struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(false, 1041f), Struct_2(false, 475f), Struct_2(true, 293f), Struct_2(true, 734f), Struct_2(false, 880f), Struct_2(true, 942f), Struct_2(false, 1056f), Struct_2(true, -1040f), Struct_2(true, 1011f), Struct_2(false, 567f), Struct_2(true, -480f));

var<private> global2: array<f32, 26> = array<f32, 26>(-1061f, -1551f, 985f, -119f, -794f, -103f, 274f, -437f, 277f, 341f, 1735f, 355f, -1999f, -568f, -253f, 278f, -1000f, -1420f, -129f, -980f, -1473f, 1000f, -737f, 1000f, -1239f, 687f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<bool> {
    let var_0 = ~abs(u_input.a);
    return vec2<bool>(true, any(vec3<bool>(true, arg_2.x, arg_2.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    global1 = array<Struct_2, 11>();
    let var_0 = Struct_1(-392f, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(arg_3.b + 316f))))));
    global2 = array<f32, 26>();
    let var_1 = arg_3;
    let var_2 = global1[_wgslsmith_index_u32(~13050u, 11u)];
    return var_0;
}

fn func_3(arg_0: u32) -> bool {
    global0 = ~_wgslsmith_div_vec3_u32(~max(vec3<u32>(u_input.a, 37658u, arg_0), vec3<u32>(4274u, u_input.a, 4294967295u) | vec3<u32>(arg_0, 35452u, 4294967295u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_0, u_input.a, 4294967295u) ^ vec3<u32>(u_input.a, 1912u, 1u), ~vec3<u32>(0u, 4294967295u, 4294967295u)));
    let var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(6262u, 11u)];
    let var_2 = Struct_2(57140u == _wgslsmith_clamp_u32(~reverseBits(arg_0), _wgslsmith_add_u32(min(u_input.a, global0.x), _wgslsmith_clamp_u32(0u, 0u, u_input.a)), 4409u | (global0.x ^ global0.x)), _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 26u)])))));
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(~u_input.a, 26u)] <= -1242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f + -1000f)));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 11>();
    var var_0 = !select(vec3<bool>(select(true, true, -875f <= global2[_wgslsmith_index_u32(u_input.a, 26u)]), !(global2[_wgslsmith_index_u32(global0.x, 26u)] >= global2[_wgslsmith_index_u32(u_input.a, 26u)]), true), vec3<bool>(any(func_1(vec3<u32>(global0.x, 41481u, 1u), Struct_1(global2[_wgslsmith_index_u32(17161u, 26u)], vec2<f32>(global2[_wgslsmith_index_u32(23337u, 26u)], -1173f)), vec2<bool>(false, false))), true, false), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    global0 = _wgslsmith_mod_vec3_u32(~(~abs(vec3<u32>(37598u, global0.x, 0u))), firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(~global0.x, u_input.a, ~global0.x), 54041u, _wgslsmith_div_u32(1u, u_input.a ^ global0.x))));
    global1 = array<Struct_2, 11>();
    let var_2 = func_2(~select(~(vec3<u32>(u_input.a, 1353u, 0u) & vec3<u32>(global0.x, 50162u, 0u)), ~min(vec3<u32>(u_input.a, 108483u, 21636u), vec3<u32>(4294967295u, global0.x, u_input.a)), select(vec3<bool>(false, var_0.x, false), select(vec3<bool>(var_0.x, var_1.a, var_1.a), vec3<bool>(true, var_1.a, var_1.a), true), all(vec3<bool>(true, var_1.a, false)))), vec4<bool>(!(!(!var_0.x)), !(!var_1.a), var_1.a, global2[_wgslsmith_index_u32(~0u, 26u)] > _wgslsmith_f_op_f32(f32(-1f) * -523f)), vec3<i32>(_wgslsmith_add_i32(abs(~0i), -63559i), -30886i, -26353i), global1[_wgslsmith_index_u32(~60197u, 11u)]);
    global1 = array<Struct_2, 11>();
    var var_3 = func_3(1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.b)))), -(~(-reverseBits(-2147483647i))));
}

