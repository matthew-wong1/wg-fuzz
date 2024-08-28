struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4;

var<private> global2: array<vec2<u32>, 24>;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(true, 3844i), 0i, 45248u, Struct_1(false, -18181i), vec3<i32>(1i, 1i, i32(-2147483648))), Struct_2(Struct_1(true, 914i), -27371i, 4294967295u, Struct_1(false, 0i), vec3<i32>(2147483647i, 14733i, 7069i)), Struct_2(Struct_1(false, 1364i), i32(-2147483648), 4294967295u, Struct_1(false, 970i), vec3<i32>(-1i, 3390i, 0i)), Struct_2(Struct_1(false, -37399i), i32(-2147483648), 1u, Struct_1(false, -49031i), vec3<i32>(2836i, -68323i, -284i)), Struct_2(Struct_1(false, i32(-2147483648)), 62214i, 53498u, Struct_1(true, 23233i), vec3<i32>(2147483647i, -1i, -1i)), Struct_2(Struct_1(true, 0i), 5275i, 1u, Struct_1(true, 2147483647i), vec3<i32>(2147483647i, -1i, -1i)), Struct_2(Struct_1(true, 1i), -18214i, 4294967295u, Struct_1(true, 1i), vec3<i32>(2147483647i, -51131i, 2147483647i)), Struct_2(Struct_1(true, -30658i), i32(-2147483648), 27539u, Struct_1(false, -15210i), vec3<i32>(-2997i, 1i, 6031i)), Struct_2(Struct_1(true, -1i), 16982i, 37670u, Struct_1(true, 4464i), vec3<i32>(2147483647i, i32(-2147483648), 0i)), Struct_2(Struct_1(false, 15188i), 20246i, 5762u, Struct_1(false, -13069i), vec3<i32>(-38435i, -15757i, 55489i)), Struct_2(Struct_1(true, i32(-2147483648)), -1i, 23481u, Struct_1(true, 0i), vec3<i32>(-35467i, 2147483647i, 50997i)), Struct_2(Struct_1(true, -8687i), 0i, 60401u, Struct_1(true, 2147483647i), vec3<i32>(0i, -6641i, -66303i)));

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-18487i, 0i, 23274i), vec3<i32>(-1i, -6444i, 5319i)) | abs(-1i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-11440i, 12274i, 19643i), vec3<i32>(1i, -1i, -81536i))))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-26827i, -32844i, -2147483647i, -889i)), -abs(vec4<i32>(65526i, -27051i, 0i, 2147483647i))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.x + global0.a.x)));
    global3 = array<Struct_2, 12>();
    var var_2 = 2147483647i;
    var var_3 = Struct_4(u_input.b);
    return abs(vec3<u32>(global1.a, 0u, firstTrailingBit(_wgslsmith_div_u32(select(44984u, u_input.a, true), firstLeadingBit(global1.a)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_3) -> bool {
    let var_0 = arg_0.x;
    let var_1 = Struct_1(!arg_0.x, 35630i);
    let var_2 = func_3();
    var var_3 = !((var_0 & true) & (_wgslsmith_mod_i32(var_1.b, var_1.b) == countOneBits(select(var_1.b, -2147483647i, true))));
    var var_4 = var_1.b;
    return true;
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(sign(736f)))))))) + global0.a.x);
    global0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(global0.a.x - var_0), var_0));
    let var_1 = vec2<bool>(any(vec2<bool>(func_2(vec4<bool>(true, true, true, true), ~vec3<u32>(global1.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(abs(-838f)), Struct_3(global0.a)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false)))), !(true && (-628f == var_0)));
    global3 = array<Struct_2, 12>();
    var var_2 = var_1;
    return i32(-1i) * -_wgslsmith_mod_i32(-(~42967i), -33695i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a);
    global3 = array<Struct_2, 12>();
    global3 = array<Struct_2, 12>();
    var var_0 = Struct_4(1u);
    var var_1 = reverseBits(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(u_input.a, countOneBits(global1.a), global1.a)) << (0u % 32u), 24u)]);
    let var_2 = true;
    let var_3 = false;
    var var_4 = ~vec3<i32>(1i, abs(i32(-1i) * -1i), max(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 1i), func_1(vec4<i32>(0i, 0i, 2147483647i, -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-830f, 399f, global0.a.x) * _wgslsmith_div_vec3_f32(vec3<f32>(-2043f, 357f, 1255f), vec3<f32>(-441f, 597f, global0.a.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), -169f)));
}

