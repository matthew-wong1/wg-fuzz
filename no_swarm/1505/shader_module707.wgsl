struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_2(true), Struct_2(true)), vec3<f32>(1273f, -588f, 368f), 858f);

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, false, false, true);

var<private> global3: Struct_1;

var<private> global4: array<f32, 11>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global3.a.x, 434u, u_input.e, 4294967295u)), ~(global3.a << (global3.a % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(global3.a, vec4<u32>(u_input.e, u_input.e, 20504u, 24699u)), global3.a)), _wgslsmith_f_op_vec2_f32(-global0.b.yy), ~global3.a.zyz);
    var var_1 = 0u;
    let var_2 = Struct_5(global0.a.b, Struct_3(Struct_2(global2[_wgslsmith_index_u32(~13967u, 5u)]), global0.a.a));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1225f);
    var_0 = Struct_1(global3.a, vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1251f), var_0.b.x, true)) + global4[_wgslsmith_index_u32(0u, 11u)])), ~_wgslsmith_mult_vec3_u32(var_0.c, max(var_0.a.zyw, vec3<u32>(arg_0.x, global3.a.x, 60429u)) | global3.c));
    return _wgslsmith_f_op_f32(-2701f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -712f), global4[_wgslsmith_index_u32(u_input.e, 11u)], -19209i <= u_input.c.x)), global3.b.x));
}

fn func_3(arg_0: vec4<u32>) -> vec4<f32> {
    let var_0 = Struct_1(global3.a, global0.b.yx, select(abs(~arg_0.zzy), ~arg_0.zwx, vec3<bool>(all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 5u)], global0.a.b.a), vec2<bool>(global0.a.a.a, true), vec2<bool>(false, true))), global2[_wgslsmith_index_u32(65991u, 5u)], any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 5u)], global0.a.a.a, true, global2[_wgslsmith_index_u32(u_input.e, 5u)])))));
    var var_1 = Struct_2(true);
    global0 = Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1791f, 1076f, -1000f)))) + global0.b) + global0.b), _wgslsmith_f_op_f32(274f - global4[_wgslsmith_index_u32(1u, 11u)]));
    global2 = array<bool, 5>();
    var var_2 = var_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global4[_wgslsmith_index_u32(global3.c.x, 11u)], global0.b.x, 1025f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -303f, global3.b.x, -1000f) * vec4<f32>(var_0.b.x, var_2.b.x, -883f, 2866f))), !vec4<bool>(var_1.a, true, global0.a.a.a, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.b.x, -1000f, -832f, 237f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-655f)), global3.b.x, _wgslsmith_f_op_f32(-1288f - -1000f), -199f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, 463f, var_2.b.x, 3125f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -104f, global4[_wgslsmith_index_u32(var_0.c.x, 11u)], var_2.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, -1280f, var_2.b.x, global3.b.x) + vec4<f32>(global0.b.x, 624f, 1081f, 474f))))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.e, 4294967295u), Struct_4(Struct_3(Struct_2(true), Struct_2(false)), vec3<f32>(global4[_wgslsmith_index_u32(global3.a.x, 11u)], -1456f, -1884f), 358f))) + _wgslsmith_f_op_f32(f32(-1f) * -1596f)), -1000f, global0.b.x, global0.b.x) * _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(global3.a.x, 30189u, 4294967295u, u_input.e) ^ ~global3.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-468f, -529f, global0.c, 1598f) * vec4<f32>(1094f, global0.c, 221f, 384f)) - vec4<f32>(global3.b.x, 996f, global0.b.x, global3.b.x)))));
    var var_1 = vec3<i32>(~countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, -1i), u_input.a.yz), u_input.b.xz)), 4294i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x) >> (vec2<u32>(u_input.e, global3.a.x) % vec2<u32>(32u)), u_input.a.xx), i32(-1i) * -u_input.d, 5017i) << (global3.a.x % 32u));
    global3 = Struct_1(~vec4<u32>(abs(global3.c.x) ^ _wgslsmith_div_u32(global3.c.x, 88467u), 4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), global3.a.xy), abs(firstTrailingBit(1u))), global3.b, vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(4294967295u), global3.c.x), global3.c.x, u_input.e) << (~global3.c % vec3<u32>(32u)));
    let var_2 = Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, global0.c))), global4[_wgslsmith_index_u32(1u, 11u)])), -733f);
    global4 = array<f32, 11>();
    return ~(61628u << (u_input.e % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-31788i, ~abs(u_input.d), ~u_input.a.x | (18684i ^ u_input.c.x)), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(-40164i, u_input.a.x, -1i), u_input.b.yzw))));
    var var_1 = ~(~abs(global3.c.x));
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(~(~(select(2561u, u_input.e, false) >> (func_1() % 32u))), 5u)]);
    let var_3 = var_2;
    let var_4 = Struct_2(var_2.a & false);
    var_0 = -_wgslsmith_add_i32(abs(-u_input.c.x), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(~vec4<i32>(u_input.d, -3456i, u_input.b.x, u_input.d) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-37451i, -1i, -2147483647i, 1i), u_input.b)), vec3<i32>(u_input.d, select(u_input.b.x, u_input.a.x << (~u_input.e % 32u), true), 0i), _wgslsmith_dot_vec4_u32(vec4<u32>(10900u, global3.c.x, abs(37783u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(41235u, 1084u, u_input.e), global3.a.xzz)), vec4<u32>(~4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 1u), global3.c.yy), global3.c.x, ~_wgslsmith_add_u32(1u, 38618u))), ~countOneBits(_wgslsmith_dot_vec3_u32(global3.a.wyw, global3.a.xww)) >> (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c.x, u_input.e), vec2<u32>(u_input.e, 20447u))) % 32u));
}

