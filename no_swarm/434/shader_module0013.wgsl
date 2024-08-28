struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(2147483647i, 23761i, 9867i, 2147483647i, -21676i, 18068i, -78781i, 2147483647i, 2147483647i, -19542i, 34390i, 15296i, 37695i, -50157i, -32998i, -1i, -17388i, 0i, -68328i, -21225i, 1i, 26640i);

var<private> global1: vec2<bool>;

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(true, true, true, false));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-44067i, -1i), vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 22u)])), -18785i), u_input.a.zy));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(158f, arg_0.x, -760f)));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    return 33038u << (arg_2 % 32u);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(-(~vec2<i32>(_wgslsmith_div_i32(2147483647i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 22u)], -1i), vec3<i32>(2147483647i, -21816i, global0[_wgslsmith_index_u32(4294967295u, 22u)])))));
    global3 = array<vec4<bool>, 1>();
    let var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(max(var_0.a, ~u_input.a.yy) ^ var_0.a, -_wgslsmith_clamp_vec2_i32(~vec2<i32>(var_0.a.x, global0[_wgslsmith_index_u32(19158u, 22u)]), vec2<i32>(global0[_wgslsmith_index_u32(0u, 22u)], 2147483647i), u_input.a.xz)), select(_wgslsmith_clamp_vec2_i32(u_input.a.xx | abs(vec2<i32>(u_input.b, -4222i)), -select(vec2<i32>(var_0.a.x, 0i), u_input.a.xx, global1.x), reverseBits(var_0.a)), vec2<i32>(-1i, 17302i & -u_input.a.x), vec2<bool>(true, true)));
    global3 = array<vec4<bool>, 1>();
    let var_2 = !(!(all(!vec2<bool>(global1.x, global1.x)) || true));
    return 1u;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(-186f, _wgslsmith_f_op_f32(-global2.x)));
    var var_1 = _wgslsmith_add_u32(~1u, ~_wgslsmith_add_u32(1u, func_3())) > (_wgslsmith_clamp_u32(countOneBits(1u), ~(~59597u), 58464u) & 0u);
    global1 = select(vec2<bool>(false, global1.x), select(vec2<bool>(!any(vec2<bool>(true, false)), global1.x), !select(!vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), true), all(vec4<bool>(global1.x, false, u_input.b < -24983i, false))), true);
    let var_2 = Struct_1(u_input.a.yy);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1379f, 863f, 1163f, global2.x), vec4<f32>(global2.x, -203f, var_0, 343f))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * var_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(901f + global2.x), var_3.x))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = max(~firstTrailingBit(vec3<u32>(70167u, 53769u, 47054u)) << (~(~vec3<u32>(47352u, 17149u, 1u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(88331u, 13950u, 60761u), min(vec3<u32>(18540u, 57697u, 17518u), vec3<u32>(0u, 0u, 4294967295u))), select(~vec3<u32>(42802u, 0u, 4232u), vec3<u32>(1u, 1u, 1u), global1.x))) | ~vec3<u32>(~(~1u), max(abs(1u), 1u), 0u);
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(arg_1.a, u_input.a.zy << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 30830u, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, 81963u, 4294967295u)), 8682u) % vec2<u32>(32u))));
    var var_2 = global1.x;
    global2 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) * 1629f) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1463f))) * _wgslsmith_f_op_f32(min(1644f, global2.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1f, -828f, _wgslsmith_f_op_f32(195f * arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.wyx - vec3<f32>(global2.x, -350f, 761f)))) * vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) - -138f), global2.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global1.x, true, global1.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -288f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x))))));
    let var_2 = ~(~reverseBits(vec4<u32>(112395u, 0u, 57239u, 40724u)) << (vec4<u32>(_wgslsmith_div_u32(20675u, 4294967295u), select(4469u, 74439u, global1.x), 75309u, ~75531u) % vec4<u32>(32u))) ^ abs(~vec4<u32>(_wgslsmith_mult_u32(1u, 4681u), 1u, func_1(vec4<f32>(-1414f, global2.x, 1127f, 240f), vec2<f32>(var_1, 487f), 51412u, global2.yy), ~4294967295u));
    global2 = vec4<f32>(global2.x, -809f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global2.x, 1818f)))) + _wgslsmith_f_op_f32(f32(-1f) * -144f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_i32(min(vec3<i32>(12789i, 1i, 0i), vec3<i32>(u_input.b, -25708i, u_input.a.x)), ~(~u_input.a)), Struct_1(u_input.a.yx), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), -1418f)), Struct_1(_wgslsmith_sub_vec2_i32(u_input.a.yx, select(u_input.a.zy, u_input.a.zx, global1.x))))));
    var var_3 = 181f;
    let var_4 = Struct_1(u_input.a.zz);
    global3 = array<vec4<bool>, 1>();
    global2 = vec4<f32>(global2.x, var_1, _wgslsmith_div_f32(var_1, 536f), 296f);
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(round(-434f)), -438f, -937f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, global2.x, 1045f, 148f) * vec4<f32>(var_1, 944f, 1000f, global2.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, var_1, var_1, 204f), vec4<f32>(-521f, -1467f, -822f, -1816f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -702f, 1134f, -959f) + vec4<f32>(-1396f, -1036f, var_1, var_1)), vec4<f32>(global2.x, 828f, var_1, 1280f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-697f, -370f, global2.x, global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32(var_2.yw, var_2.ww), vec3<f32>(595f, var_1, 1000f));
}

