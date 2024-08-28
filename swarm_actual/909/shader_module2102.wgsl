struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(10278u), Struct_2(15197u));

var<private> global1: bool = false;

var<private> global2: array<vec2<f32>, 16>;

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(39675u), Struct_2(37300u), Struct_2(0u), Struct_2(1u), Struct_2(2548u), Struct_2(4294967295u), Struct_2(17278u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    global3 = array<Struct_2, 7>();
    let var_0 = vec4<i32>(0i, u_input.b.x, ~_wgslsmith_clamp_i32(-15799i, u_input.b.x, ~_wgslsmith_clamp_i32(14473i, 2147483647i, -2147483647i)), u_input.b.x);
    global2 = array<vec2<f32>, 16>();
    global0 = array<Struct_2, 2>();
    let var_1 = arg_1;
    return max(reverseBits(29271u), max(0u, ~1u));
}

fn func_2() -> vec2<f32> {
    var var_0 = countOneBits(vec4<u32>(u_input.a & (1u << (func_3(Struct_2(4294967295u), Struct_1(true), vec3<u32>(16327u, u_input.a, 0u)) % 32u)), func_3(global3[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(1u >> (u_input.a % 32u), 2u)], Struct_1(true), vec3<u32>(4294967295u, u_input.a, u_input.a)), 7u)], Struct_1(true), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(32101u, 29526u, u_input.a))), 0u, 3459u));
    global2 = array<vec2<f32>, 16>();
    global0 = array<Struct_2, 2>();
    var var_1 = true;
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)) * -589f), -1119f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_2(31630u);
    let var_1 = Struct_2(~(~(~(~5077u))));
    global3 = array<Struct_2, 7>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    var var_3 = select(vec4<bool>((arg_0.x >= _wgslsmith_f_op_f32(arg_0.x * 332f)) == (_wgslsmith_div_f32(arg_2.x, -2621f) <= _wgslsmith_f_op_f32(round(arg_2.x))), false, true, !(false || select(true, true, true))), vec4<bool>(any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false)), true, true, false), true);
    return Struct_1(!(~1u != _wgslsmith_add_u32(firstLeadingBit(var_1.a), ~arg_1.a)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(func_2()), global0[_wgslsmith_index_u32(u_input.a, 2u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(177f, 999f, 933f), vec3<f32>(-1252f, -204f, -1125f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-698f, 188f, -1000f) + vec3<f32>(1646f, 471f, 688f)), vec3<bool>(arg_1, arg_1, arg_1)))))));
    global3 = array<Struct_2, 7>();
    global1 = all(!(!vec3<bool>(any(vec3<bool>(true, arg_1, arg_1)), true, false)));
    return Struct_1(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    global3 = array<Struct_2, 7>();
    let var_1 = func_1(~(~_wgslsmith_clamp_u32(~42033u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), ~36411u)), true, ~vec2<i32>(u_input.b.x, abs(countOneBits(48154i))));
    global3 = array<Struct_2, 7>();
    var_0 = u_input.b.x;
    global0 = array<Struct_2, 2>();
    let var_2 = Struct_1(all(vec2<bool>(true, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f));
}

