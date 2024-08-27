struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, false, true, false, false, true, true, false, true, true, true, false, true, true, false, true, true, true);

var<private> global1: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(0u, 1u, 35641u, 33652u), vec4<u32>(1u, 11361u, 31919u, 1u), vec4<u32>(18722u, 1u, 4294967295u, 43573u), vec4<u32>(40332u, 4294967295u, 1u, 9851u), vec4<u32>(31814u, 0u, 1u, 4294967295u), vec4<u32>(1u, 81590u, 42532u, 16908u), vec4<u32>(4294967295u, 35626u, 0u, 390u), vec4<u32>(61618u, 69655u, 23263u, 0u), vec4<u32>(1u, 1u, 13152u, 4294967295u), vec4<u32>(1u, 1u, 25180u, 64414u), vec4<u32>(4294967295u, 48645u, 0u, 0u), vec4<u32>(0u, 1u, 9730u, 91870u), vec4<u32>(4294967295u, 48568u, 7548u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 13267u), vec4<u32>(1u, 4294967295u, 5389u, 0u), vec4<u32>(67917u, 0u, 4294967295u, 1707u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(9493u, 1u, 9827u, 4294967295u), vec4<u32>(124275u, 60981u, 0u, 4294967295u), vec4<u32>(84028u, 5074u, 0u, 103831u), vec4<u32>(4294967295u, 0u, 0u, 67966u), vec4<u32>(104679u, 43337u, 33842u, 77332u), vec4<u32>(1u, 25326u, 0u, 65860u), vec4<u32>(62953u, 8834u, 51465u, 26161u), vec4<u32>(1u, 18947u, 24558u, 25468u));

var<private> global2: vec2<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mod_u32(arg_0, ~(~arg_0))), 18u)];
    var var_1 = Struct_1(firstLeadingBit(vec3<i32>(u_input.b, -31033i, -12790i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_div_f32(124f, global2.x));
    let var_3 = arg_1;
    var var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_0), ~_wgslsmith_mod_vec2_u32(u_input.c, firstLeadingBit(vec2<u32>(55455u, u_input.c.x))));
    return ~2147483647i & ~var_3.a.x;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = ~_wgslsmith_mult_i32(max(_wgslsmith_clamp_i32(u_input.a, i32(-1i) * -40258i, func_3(59842u, Struct_1(vec3<i32>(u_input.b, 23905i, -33759i)))), 1i & u_input.b), -(~firstTrailingBit(2147483647i)));
    var var_1 = Struct_1(-vec3<i32>(0i, _wgslsmith_sub_i32(u_input.d.x, max(38960i, u_input.a)), -u_input.b));
    var var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(step(-159f, _wgslsmith_f_op_f32(global2.x * global2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2210f, global2.x, -1391f, global2.x))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-379f, global2.x, -989f, global2.x), vec4<f32>(global2.x, -937f, global2.x, global2.x), false))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 684f, global2.x))))), global2.x == -127f));
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(21131i, var_1.a.x, -1i), _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_add_i32(1i, -1i)), -2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -1i), ~vec2<i32>(14501i, 2147483647i))), 22191i));
    return 0u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1.b;
    global0 = array<bool, 18>();
    let var_1 = 2147483647i;
    global0 = array<bool, 18>();
    global1 = array<vec4<u32>, 25>();
    return arg_1;
}

fn func_1() -> u32 {
    global0 = array<bool, 18>();
    let var_0 = func_4(_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(58762u, 25u)], vec4<u32>(1u, u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)) | func_2(u_input.c.x), u_input.c.x)), Struct_2(vec4<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 18u)])), global0[_wgslsmith_index_u32(28576u, 18u)] || global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 18u)], false, global0[_wgslsmith_index_u32(~63020u, 18u)] || true), Struct_1(reverseBits(abs(vec3<i32>(2147483647i, u_input.b, u_input.a))))));
    let var_1 = var_0.a;
    global1 = array<vec4<u32>, 25>();
    var var_2 = _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(665f * global2.x)), _wgslsmith_f_op_f32(-1615f + _wgslsmith_f_op_f32(-global2.x)), !global0[_wgslsmith_index_u32(abs(u_input.c.x), 18u)])))));
    return 28199u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~(~u_input.c.x), 18502u), ~abs(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) & vec3<u32>(u_input.c.x, 4294967295u, 4294967295u))), vec3<u32>(~43530u, 4294967295u, u_input.c.x));
    var var_1 = Struct_1(~vec3<i32>(u_input.b, -reverseBits(u_input.a), ~4578i >> (var_0.x % 32u)));
    let var_2 = Struct_1(-var_1.a);
    global0 = array<bool, 18>();
    let var_3 = ~vec4<u32>(0u, func_1(), u_input.c.x, ~(~1u));
    let var_4 = !all(vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], true)), !global0[_wgslsmith_index_u32(~var_3.x, 18u)], all(vec4<bool>(global0[_wgslsmith_index_u32(25836u, 18u)], false, false, false)) & global0[_wgslsmith_index_u32(u_input.c.x, 18u)]));
    let var_5 = vec4<u32>(var_3.x, countOneBits(_wgslsmith_mod_u32(var_0.x >> (var_0.x % 32u), 0u)) | 25454u, _wgslsmith_div_u32(var_0.x, abs(func_2(var_3.x))), 1u);
    var var_6 = select(~reverseBits(var_0), var_5.zwz, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(8753u, u_input.c.x), u_input.c) >> (func_1() % 32u)) >= (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 18959u, var_0.x), ~vec4<u32>(var_5.x, var_3.x, 66874u, 61710u)) & min(3288u, u_input.c.x)));
    let var_7 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(u_input.e, -7985i))), var_7.a.x ^ u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-916f, global2.x, _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(606f + global2.x), var_4))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-341f, 298f, global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1151f, 573f, 625f) * vec3<f32>(397f, global2.x, -2017f))))));
}

