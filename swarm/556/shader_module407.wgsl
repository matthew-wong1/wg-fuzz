struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<i32>(i32(-2147483648), 7642i, -80271i), vec2<u32>(47518u, 60518u)));

var<private> global1: array<bool, 11>;

var<private> global2: f32 = 1017f;

var<private> global3: vec3<i32> = vec3<i32>(-15882i, -47453i, -12785i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec3<u32>(1u | u_input.c.x, _wgslsmith_div_u32(countOneBits(50200u) ^ _wgslsmith_clamp_u32(35038u, u_input.a.x, u_input.b.x), u_input.c.x), _wgslsmith_dot_vec2_u32(u_input.b.ww, ~vec2<u32>(1u, 21934u)));
    global1 = array<bool, 11>();
    let var_1 = min(u_input.b.x, firstTrailingBit(~4294967295u ^ ~_wgslsmith_clamp_u32(724u, var_0.x, 21931u)));
    global1 = array<bool, 11>();
    global0 = array<Struct_1, 1>();
    return global0[_wgslsmith_index_u32(~(select(abs(38456u), ~(var_1 & 4294967295u), !global1[_wgslsmith_index_u32(abs(var_1), 11u)]) & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a, ~var_0), _wgslsmith_clamp_u32(~u_input.c.x, u_input.b.x, 1u))), 1u)];
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-919f, 715f), _wgslsmith_f_op_vec2_f32(vec2<f32>(131f, -1045f) - _wgslsmith_div_vec2_f32(vec2<f32>(-3438f, 276f), vec2<f32>(1668f, -270f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(370f + 220f)), -842f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-2861f, -1000f)), _wgslsmith_div_f32(-785f, 612f))))));
    let var_2 = ~func_1().a.x;
    return ~arg_0.a;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global3 = abs(arg_0.a);
    global3 = ~func_3(Struct_1(_wgslsmith_mod_vec3_i32(arg_0.a, arg_0.a) ^ firstLeadingBit(arg_0.a), _wgslsmith_div_vec2_u32(vec2<u32>(36072u, u_input.a.x), vec2<u32>(arg_0.b.x, u_input.c.x))));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f), 921f) + -130f))));
    global2 = -1029f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-565f - 875f))) * -425f)));
    return _wgslsmith_f_op_f32(sign(-465f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 11>();
    var var_0 = !(_wgslsmith_f_op_f32(-686f * -352f) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(func_1())), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(108f)), _wgslsmith_f_op_f32(sign(2924f)), 24612u <= u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, _wgslsmith_mod_vec2_i32(global3.xz, global3.xz), _wgslsmith_add_i32(global3.x, -1i), -14809i);
}

