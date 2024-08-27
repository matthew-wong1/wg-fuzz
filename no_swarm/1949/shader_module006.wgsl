struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(11377u, vec4<bool>(true, false, false, true)), Struct_1(0u, vec4<bool>(true, false, true, false)), Struct_1(0u, vec4<bool>(true, true, true, true)), Struct_1(4294967295u, vec4<bool>(false, false, false, true)), Struct_1(45759u, vec4<bool>(true, false, true, true)), Struct_1(4294967295u, vec4<bool>(true, true, true, true)), Struct_1(4294967295u, vec4<bool>(false, true, false, false)), Struct_1(4294967295u, vec4<bool>(true, false, true, true)), Struct_1(40840u, vec4<bool>(true, false, true, false)), Struct_1(0u, vec4<bool>(true, false, false, true)), Struct_1(49181u, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, vec4<bool>(true, true, false, false)), Struct_1(15332u, vec4<bool>(true, false, true, false)), Struct_1(37702u, vec4<bool>(false, false, true, false)), Struct_1(4294967295u, vec4<bool>(true, false, true, true)), Struct_1(18510u, vec4<bool>(false, true, false, false)), Struct_1(37130u, vec4<bool>(true, true, false, false)), Struct_1(24466u, vec4<bool>(true, false, false, false)), Struct_1(0u, vec4<bool>(true, true, true, true)), Struct_1(14678u, vec4<bool>(false, true, true, true)), Struct_1(82872u, vec4<bool>(true, false, false, false)));

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec2<bool>(true, false), false, 1000f, Struct_2(false, Struct_1(4294967295u, vec4<bool>(true, false, false, true)), Struct_1(26854u, vec4<bool>(true, false, true, true)), Struct_1(1623u, vec4<bool>(true, false, true, true))), Struct_1(4294967295u, vec4<bool>(true, true, true, false))), Struct_3(vec2<bool>(true, true), true, -482f, Struct_2(false, Struct_1(56133u, vec4<bool>(false, false, false, true)), Struct_1(0u, vec4<bool>(false, false, true, false)), Struct_1(1585u, vec4<bool>(true, true, true, false))), Struct_1(62561u, vec4<bool>(false, true, true, true))), Struct_3(vec2<bool>(true, true), false, -1606f, Struct_2(false, Struct_1(1u, vec4<bool>(true, false, true, true)), Struct_1(4294967295u, vec4<bool>(false, true, false, false)), Struct_1(0u, vec4<bool>(false, true, true, false))), Struct_1(66276u, vec4<bool>(false, false, true, false))), Struct_3(vec2<bool>(false, true), true, -245f, Struct_2(false, Struct_1(81462u, vec4<bool>(true, true, false, false)), Struct_1(44575u, vec4<bool>(false, true, true, false)), Struct_1(47689u, vec4<bool>(false, true, false, false))), Struct_1(1u, vec4<bool>(false, false, false, true))), Struct_3(vec2<bool>(false, true), false, -142f, Struct_2(false, Struct_1(14469u, vec4<bool>(false, false, false, false)), Struct_1(0u, vec4<bool>(true, false, true, true)), Struct_1(5560u, vec4<bool>(false, false, true, true))), Struct_1(3795u, vec4<bool>(false, true, true, false))), Struct_3(vec2<bool>(true, false), false, -344f, Struct_2(true, Struct_1(4294967295u, vec4<bool>(false, true, false, true)), Struct_1(18161u, vec4<bool>(true, true, true, false)), Struct_1(13617u, vec4<bool>(true, true, false, true))), Struct_1(51203u, vec4<bool>(true, false, false, false))), Struct_3(vec2<bool>(false, true), false, 303f, Struct_2(false, Struct_1(3803u, vec4<bool>(false, true, true, true)), Struct_1(12584u, vec4<bool>(true, true, false, true)), Struct_1(50638u, vec4<bool>(true, true, true, true))), Struct_1(17804u, vec4<bool>(true, false, false, false))), Struct_3(vec2<bool>(false, false), false, -691f, Struct_2(false, Struct_1(4294967295u, vec4<bool>(false, false, false, false)), Struct_1(4294967295u, vec4<bool>(true, false, true, false)), Struct_1(75341u, vec4<bool>(true, true, false, false))), Struct_1(0u, vec4<bool>(false, true, true, true))), Struct_3(vec2<bool>(false, false), false, 538f, Struct_2(true, Struct_1(55890u, vec4<bool>(false, true, false, true)), Struct_1(0u, vec4<bool>(true, false, false, false)), Struct_1(4294967295u, vec4<bool>(true, true, false, false))), Struct_1(9615u, vec4<bool>(true, false, false, false))), Struct_3(vec2<bool>(true, true), false, 1073f, Struct_2(false, Struct_1(1u, vec4<bool>(true, true, false, false)), Struct_1(41017u, vec4<bool>(true, false, true, false)), Struct_1(31533u, vec4<bool>(true, false, true, true))), Struct_1(10630u, vec4<bool>(true, false, false, true))), Struct_3(vec2<bool>(true, true), false, -1505f, Struct_2(true, Struct_1(44149u, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, vec4<bool>(false, true, true, true)), Struct_1(4294967295u, vec4<bool>(true, false, true, true))), Struct_1(0u, vec4<bool>(false, true, true, false))), Struct_3(vec2<bool>(false, false), false, -2474f, Struct_2(false, Struct_1(0u, vec4<bool>(false, false, true, true)), Struct_1(1u, vec4<bool>(false, false, true, true)), Struct_1(51669u, vec4<bool>(true, true, true, true))), Struct_1(1u, vec4<bool>(false, false, true, false))), Struct_3(vec2<bool>(true, false), true, -741f, Struct_2(false, Struct_1(1u, vec4<bool>(false, false, true, true)), Struct_1(4294967295u, vec4<bool>(true, false, true, true)), Struct_1(0u, vec4<bool>(true, true, true, true))), Struct_1(4294967295u, vec4<bool>(true, false, false, true))), Struct_3(vec2<bool>(false, false), false, -951f, Struct_2(false, Struct_1(91016u, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, vec4<bool>(true, false, true, false)), Struct_1(1u, vec4<bool>(true, false, true, false))), Struct_1(83181u, vec4<bool>(false, false, true, true))), Struct_3(vec2<bool>(true, false), true, -1094f, Struct_2(true, Struct_1(47737u, vec4<bool>(true, false, false, true)), Struct_1(15226u, vec4<bool>(false, true, false, true)), Struct_1(13571u, vec4<bool>(false, false, true, true))), Struct_1(4294967295u, vec4<bool>(false, true, false, false))), Struct_3(vec2<bool>(true, true), false, 1668f, Struct_2(true, Struct_1(1u, vec4<bool>(true, false, true, false)), Struct_1(20053u, vec4<bool>(true, false, true, true)), Struct_1(2181u, vec4<bool>(true, true, false, true))), Struct_1(1u, vec4<bool>(false, false, true, true))), Struct_3(vec2<bool>(false, false), true, 919f, Struct_2(true, Struct_1(0u, vec4<bool>(true, true, false, true)), Struct_1(30601u, vec4<bool>(true, false, false, true)), Struct_1(43528u, vec4<bool>(false, true, true, false))), Struct_1(0u, vec4<bool>(false, false, true, true))), Struct_3(vec2<bool>(true, false), false, -1000f, Struct_2(false, Struct_1(4294967295u, vec4<bool>(false, true, true, false)), Struct_1(1u, vec4<bool>(true, true, true, false)), Struct_1(48749u, vec4<bool>(true, true, true, true))), Struct_1(0u, vec4<bool>(false, false, true, true))), Struct_3(vec2<bool>(true, false), true, -323f, Struct_2(true, Struct_1(50708u, vec4<bool>(true, false, true, true)), Struct_1(4294967295u, vec4<bool>(true, false, false, true)), Struct_1(4294967295u, vec4<bool>(true, true, false, true))), Struct_1(0u, vec4<bool>(true, true, true, true))), Struct_3(vec2<bool>(false, true), false, 346f, Struct_2(false, Struct_1(15296u, vec4<bool>(false, true, true, false)), Struct_1(1u, vec4<bool>(true, true, false, false)), Struct_1(1u, vec4<bool>(false, false, false, false))), Struct_1(51855u, vec4<bool>(true, true, false, false))), Struct_3(vec2<bool>(true, true), true, 482f, Struct_2(false, Struct_1(1u, vec4<bool>(true, true, false, true)), Struct_1(0u, vec4<bool>(true, false, false, false)), Struct_1(1u, vec4<bool>(true, true, true, true))), Struct_1(0u, vec4<bool>(true, true, false, true))), Struct_3(vec2<bool>(true, false), true, 1045f, Struct_2(false, Struct_1(1u, vec4<bool>(true, false, true, true)), Struct_1(119279u, vec4<bool>(false, false, false, false)), Struct_1(1u, vec4<bool>(true, false, false, true))), Struct_1(0u, vec4<bool>(false, false, false, true))), Struct_3(vec2<bool>(true, false), true, 159f, Struct_2(false, Struct_1(3966u, vec4<bool>(true, true, false, true)), Struct_1(21102u, vec4<bool>(true, true, false, false)), Struct_1(45966u, vec4<bool>(false, false, false, true))), Struct_1(102921u, vec4<bool>(true, true, true, true))), Struct_3(vec2<bool>(false, true), true, -244f, Struct_2(false, Struct_1(41642u, vec4<bool>(false, true, true, true)), Struct_1(4294967295u, vec4<bool>(true, false, false, true)), Struct_1(1u, vec4<bool>(false, true, false, false))), Struct_1(26778u, vec4<bool>(false, true, true, true))), Struct_3(vec2<bool>(false, true), true, 175f, Struct_2(true, Struct_1(4294967295u, vec4<bool>(false, false, false, true)), Struct_1(62747u, vec4<bool>(true, true, true, false)), Struct_1(1u, vec4<bool>(true, true, false, true))), Struct_1(1u, vec4<bool>(false, false, false, false))), Struct_3(vec2<bool>(false, false), true, -868f, Struct_2(true, Struct_1(1u, vec4<bool>(true, false, true, false)), Struct_1(1u, vec4<bool>(false, false, true, true)), Struct_1(48540u, vec4<bool>(true, false, false, false))), Struct_1(4294967295u, vec4<bool>(false, false, false, false))), Struct_3(vec2<bool>(false, false), true, 253f, Struct_2(true, Struct_1(1u, vec4<bool>(true, true, false, false)), Struct_1(33918u, vec4<bool>(true, false, true, false)), Struct_1(0u, vec4<bool>(false, true, false, true))), Struct_1(36293u, vec4<bool>(true, false, false, true))), Struct_3(vec2<bool>(false, false), false, 1000f, Struct_2(true, Struct_1(10967u, vec4<bool>(false, true, true, true)), Struct_1(4294967295u, vec4<bool>(false, true, true, false)), Struct_1(1u, vec4<bool>(true, true, false, true))), Struct_1(1u, vec4<bool>(true, false, false, false))), Struct_3(vec2<bool>(false, true), false, 198f, Struct_2(false, Struct_1(0u, vec4<bool>(false, false, true, false)), Struct_1(81184u, vec4<bool>(false, true, false, false)), Struct_1(73576u, vec4<bool>(false, true, false, true))), Struct_1(152039u, vec4<bool>(true, false, true, true))), Struct_3(vec2<bool>(false, true), false, -682f, Struct_2(true, Struct_1(4294967295u, vec4<bool>(true, true, true, true)), Struct_1(19609u, vec4<bool>(true, true, false, true)), Struct_1(18236u, vec4<bool>(true, true, false, false))), Struct_1(18475u, vec4<bool>(true, false, true, true))));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = arg_0.d.d.a;
    global0 = array<Struct_1, 21>();
    let var_1 = Struct_1(~select(22202u, ~arg_0.e.a, false), select(select(arg_0.d.d.b, select(vec4<bool>(arg_0.b, arg_0.b, arg_0.a.x, arg_0.e.b.x), !arg_0.e.b, arg_0.c > arg_0.c), false), !(!vec4<bool>(true, false, arg_0.d.b.b.x, arg_0.d.d.b.x)), arg_0.d.c.b));
    var_0 = abs(~25698u);
    global0 = array<Struct_1, 21>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(226f, 323f) - vec2<f32>(arg_0.c, -1493f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c, 113f), vec2<f32>(arg_0.c, arg_0.c), true)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 1473f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c, arg_0.c)))), true))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = arg_0.d.b.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 30u)]))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(726f, 2199f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-171f, -940f) - vec2<f32>(-1209f, 1000f))))))));
    var var_3 = var_0.b;
    return var_0.d;
}

fn func_4(arg_0: Struct_2) -> Struct_4 {
    var var_0 = !(!all(select(vec2<bool>(arg_0.c.b.x, true), vec2<bool>(true, true), true)));
    global0 = array<Struct_1, 21>();
    let var_1 = Struct_2(!any(vec2<bool>(true, true)), arg_0.c, Struct_1(~(~(~arg_0.d.a)), vec4<bool>(true, !(!arg_0.b.b.x), !all(arg_0.d.b.zx), arg_0.b.b.x)), global0[_wgslsmith_index_u32(min(u_input.c.x, ~u_input.c.x), 21u)]);
    global1 = array<Struct_3, 30>();
    var var_2 = Struct_4(~u_input.c.x);
    return Struct_4(arg_0.d.a);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_0 = _wgslsmith_f_op_f32(select(-765f, _wgslsmith_f_op_f32(min(-451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(105f, 766f) + _wgslsmith_f_op_f32(-573f + 373f))))), false));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(361f - 388f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1213f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0)))))));
    let var_2 = arg_1.c.b.x;
    return func_2(arg_1);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(67047i, -23638i, 2147483647i, -11337i), vec4<i32>(52730i, u_input.b.x, u_input.b.x, u_input.b.x)), ~vec4<i32>(0i, u_input.b.x, u_input.b.x, -1i)) & vec4<i32>(1i, 39564i, i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x) << (~(~vec4<u32>(1u, 0u, u_input.c.x, 9870u)) % vec4<u32>(32u))) <= 1i;
    var_0 = all(vec4<bool>(true, true, arg_0.b.b.x, arg_0.d.b.x));
    global0 = array<Struct_1, 21>();
    return func_5(func_4(Struct_2(arg_0.b.b.x, arg_0.b, global0[_wgslsmith_index_u32(0u, 21u)], func_2(Struct_2(arg_0.d.b.x, arg_0.d, Struct_1(arg_0.c.a, arg_0.b.b), Struct_1(4294967295u, arg_0.c.b))))), Struct_2(!select(any(arg_0.b.b.xzw), !arg_0.b.b.x, arg_0.c.b.x), func_2(Struct_2(arg_0.d.b.x, Struct_1(arg_0.b.a, vec4<bool>(arg_0.a, true, false, arg_0.b.b.x)), func_2(arg_0), global0[_wgslsmith_index_u32(~u_input.a, 21u)])), func_2(arg_0), Struct_1(~(~1u), select(!vec4<bool>(true, false, false, arg_0.d.b.x), !vec4<bool>(arg_0.c.b.x, false, arg_0.b.b.x, arg_0.b.b.x), arg_0.a))), Struct_4(1u));
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    global1 = array<Struct_3, 30>();
    global0 = array<Struct_1, 21>();
    var var_0 = ~(~46159u);
    let var_1 = ~u_input.b.x;
    global0 = array<Struct_1, 21>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(1479f, 1359f, _wgslsmith_div_f32(903f, _wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1336f, arg_0, 519f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, u_input.a), 30u)];
    var var_1 = var_0.d.d;
    global1 = array<Struct_3, 30>();
    let var_2 = u_input.b.x;
    let var_3 = _wgslsmith_div_i32(var_2, 0i);
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), func_1(var_0.d));
}

