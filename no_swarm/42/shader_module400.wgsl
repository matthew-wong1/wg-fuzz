struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

var<private> global1: vec4<u32> = vec4<u32>(36502u, 6118u, 1u, 45399u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = ~vec3<u32>(arg_0.a, 4294967295u, arg_0.a);
    global0 = array<vec3<bool>, 32>();
    var_0 = vec3<u32>(1u, arg_0.a, reverseBits(select((arg_0.a >> (arg_0.a % 32u)) & 1u, ~4294967295u, false)));
    global0 = array<vec3<bool>, 32>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1595f, arg_0.d)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.d, -1201f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 1084f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)), -280f)));
    return true;
}

fn func_2() -> vec4<i32> {
    var var_0 = true;
    var_0 = func_3(Struct_1(0u, true, firstLeadingBit(1i), _wgslsmith_f_op_f32(sign(2265f))));
    var var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f + 1223f));
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2555f, -699f, var_2)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(454f, -1173f, var_2)) * _wgslsmith_div_vec3_f32(vec3<f32>(2334f, var_2, -135f), vec3<f32>(-1080f, 960f, var_2))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, 430f), vec3<f32>(var_2, var_2, var_2), true)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1015f, -1569f, var_2), vec3<f32>(-474f, var_2, -337f))))))), select(global0[_wgslsmith_index_u32(global1.x, 32u)], vec3<bool>(false, true, true), select(global0[_wgslsmith_index_u32(global1.x, 32u)], select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, 101637u), 32u)], vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(-5371i, -11615i, -countOneBits(1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(-2610i, u_input.b) ^ ~vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_sub_i32(5072i, 1i), u_input.b))), _wgslsmith_clamp_vec4_i32((vec4<i32>(-18183i, 1i, u_input.b, u_input.b) >> (u_input.a % vec4<u32>(32u))) ^ (vec4<i32>(-40427i, u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)), max(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -3896i)) & (vec4<i32>(26886i, u_input.b, u_input.b, 53492i) | vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(u_input.b, -2147483647i, firstTrailingBit(-33393i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, -1i)))) & vec4<i32>(u_input.b, _wgslsmith_sub_i32(~41821i, -1i), firstTrailingBit(min(-5308i, u_input.b)), u_input.b));
}

fn func_1() -> Struct_3 {
    var var_0 = reverseBits(~(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, u_input.b, 57670i), func_2()) >> (firstTrailingBit(24915u) % 32u)));
    var_0 = -1i;
    var var_1 = Struct_3(vec3<f32>(-692f, -1847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1881f * -1000f), -193f, true)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-352f, 510f) - _wgslsmith_f_op_f32(abs(1283f))))), !global0[_wgslsmith_index_u32(u_input.a.x, 32u)]);
    var_0 = _wgslsmith_dot_vec3_i32((_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, -14931i, u_input.b), min(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(-1i, u_input.b, -2147483647i))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, global1.xx), _wgslsmith_dot_vec2_u32(global1.zz, u_input.a.zw), ~64479u) % vec3<u32>(32u))) | ~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(16132i, -1i)), -26888i, _wgslsmith_mod_i32(-12874i, 21664i)), vec3<i32>(-1i, max(u_input.b, u_input.b), -19114i));
    var var_2 = select(vec3<bool>(true, select(true, true, _wgslsmith_dot_vec4_i32(vec4<i32>(-3341i, u_input.b, -22265i, u_input.b), vec4<i32>(-81395i, 27227i, -1i, u_input.b)) >= ~44447i), var_1.b.x), global0[_wgslsmith_index_u32(4294967295u, 32u)], 3806u != ~_wgslsmith_div_u32(firstTrailingBit(4294967295u), global1.x));
    return Struct_3(_wgslsmith_f_op_vec3_f32(var_1.a * var_1.a), vec3<bool>(func_3(Struct_1(1u, var_1.b.x, reverseBits(10303i), var_1.a.x)), _wgslsmith_f_op_f32(var_1.a.x * -467f) <= _wgslsmith_f_op_f32(f32(-1f) * -647f), !var_1.b.x || any(!global0[_wgslsmith_index_u32(u_input.a.x, 32u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = vec4<u32>(u_input.a.x, 1u, ~global1.x, _wgslsmith_sub_u32(u_input.a.x, ~6790u));
    var var_1 = u_input.b;
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, var_0.a.x), -select(reverseBits(-2147483647i), u_input.b, u_input.a.x != global1.x) ^ u_input.b, u_input.a.x);
}

