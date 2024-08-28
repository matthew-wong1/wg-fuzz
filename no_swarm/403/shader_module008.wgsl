struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 11>;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1079f)))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-11644i, arg_0)), vec2<i32>(6861i, arg_0) | vec2<i32>(2147483647i, arg_0)), _wgslsmith_add_vec2_i32(min(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, -38219i)), vec2<i32>(arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1006f * 1000f), _wgslsmith_div_f32(-1024f, 964f), _wgslsmith_f_op_f32(f32(-1f) * -562f)))), reverseBits(vec4<u32>(~4294967295u, 14655u, 1u, _wgslsmith_mult_u32(1u, 0u))), -1905f));
    global0 = 9764i;
    global2 = !(global1[_wgslsmith_index_u32(reverseBits(~(~3793u)), 11u)] >= ~(~(~52551u)));
    var_0 = Struct_2(var_0.a);
    let var_1 = firstTrailingBit(4294967295u);
    return _wgslsmith_f_op_vec3_f32(var_0.a.a * vec3<f32>(-805f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1251f, var_0.a.c.x)) * 432f)), var_0.a.c.x));
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(countOneBits(2147483647i), 0u))), abs(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(7284i, 2147483647i) >> (vec2<u32>(19818u, global1[_wgslsmith_index_u32(0u, 11u)]) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, -1456f, -1311f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-812f, -150f, -105f) - vec3<f32>(1013f, 295f, -408f)))), abs(vec4<u32>(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(46718u, 11u)], 11u)], 43205u | u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3438u, 11u)], 11u)]), vec2<u32>(16173u, 35820u)), u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -442f)));
}

fn func_1() -> Struct_2 {
    let var_0 = -2147483647i;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    global2 = true;
    let var_0 = -161f;
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    let var_1 = arg_1.b.x;
    return Struct_3(arg_1.b & arg_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2147483647i;
    let var_0 = true;
    let var_1 = func_4(func_1(), func_2().a, ~(max(u_input.a, 1u) | _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 27420u, global1[_wgslsmith_index_u32(u_input.a, 11u)], u_input.a), vec4<u32>(u_input.a, 53175u, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 11u)]) << (vec4<u32>(u_input.a, 23044u, u_input.a, 6820u) % vec4<u32>(32u)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1279f - _wgslsmith_f_op_f32(679f - 359f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f - -160f)), -1000f), vec2<i32>(-9645i, 1i), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, -145f, -1127f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, 498f, 1618f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-335f, -821f, -276f), vec3<f32>(-608f, 838f, -641f)))))), ~_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], 84u, 0u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 4294967295u, 32808u, 13011u)) >> (select(~vec4<u32>(4294967295u, 37901u, 4294967295u, 61688u), countOneBits(vec4<u32>(0u, 0u, global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)])), vec4<bool>(false, var_0, true, var_0)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(func_2().a.e - -1000f)));
    global1 = array<u32, 11>();
    let var_2 = false;
    let var_3 = Struct_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), var_1.a, -var_1.a));
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-878f * 1f) - _wgslsmith_f_op_f32(f32(-1f) * -358f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f))))));
    let var_5 = vec2<i32>(-countOneBits(_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(2147483647i, -37969i))), ~_wgslsmith_clamp_i32(func_2().a.b.x, ~(-1i), var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(621f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, var_4, -1530f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, -1170f, var_4))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1386f, -991f, var_4) * vec3<f32>(1623f, var_4, var_4)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1150f, var_4, -300f))))), _wgslsmith_f_op_f32(var_4 * -1430f));
}

