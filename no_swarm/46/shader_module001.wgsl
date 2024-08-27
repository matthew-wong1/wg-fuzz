struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: bool;

var<private> global2: array<bool, 16> = array<bool, 16>(true, false, false, true, true, false, true, false, false, false, false, true, true, true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    global1 = true;
    global0 = array<Struct_3, 8>();
    global1 = global2[_wgslsmith_index_u32(72179u, 16u)];
    var var_0 = ~(~vec2<u32>(16798u, 1u));
    global0 = array<Struct_3, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f))) - _wgslsmith_f_op_f32(f32(-1f) * -1447f)));
}

fn func_2() -> vec2<i32> {
    global2 = array<bool, 16>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -277f);
    let var_1 = !any(vec2<bool>(1u < ~u_input.c, 1000f <= _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.c, 1u, u_input.c, 35304u), false))));
    return ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(30460i, -32065i) & -vec2<i32>(-1i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.d, -15785i)) | select(vec2<i32>(-16011i, u_input.b), vec2<i32>(u_input.b, -12267i), var_1)));
}

fn func_1() -> u32 {
    global2 = array<bool, 16>();
    global2 = array<bool, 16>();
    let var_0 = func_2();
    global0 = array<Struct_3, 8>();
    global2 = array<bool, 16>();
    return _wgslsmith_div_u32(~u_input.a, 30812u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -612f);
    var var_1 = 4294967295u;
    global2 = array<bool, 16>();
    var var_2 = Struct_1(vec3<bool>(all(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], false, global2[_wgslsmith_index_u32(u_input.e.x, 16u)])), any(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 16u)], true, global2[_wgslsmith_index_u32(u_input.e.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(82565u, 16u)], global2[_wgslsmith_index_u32(50994u, 16u)]), false)) | global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 95937u), 16u)], !(~u_input.a <= firstTrailingBit(u_input.c))), global2[_wgslsmith_index_u32(func_1(), 16u)] && any(vec3<bool>(true, true, true)));
    let var_3 = ~(~func_1());
    let var_4 = Struct_1(var_2.a, true);
    var var_5 = 1399i;
    global2 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-(vec2<i32>(-1i, u_input.d) | vec2<i32>(-2147483647i, 1i)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(558f, 1052f) * -750f), 754f, var_0), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))))), vec4<f32>(-918f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-510f, 1000f))), -3342f, -866f), select(firstLeadingBit(vec2<i32>(reverseBits(2147483647i), firstTrailingBit(0i))), abs(max(vec2<i32>(u_input.d, u_input.d), vec2<i32>(-2147483647i, 2147483647i))), !(~29840i < u_input.d)));
}

