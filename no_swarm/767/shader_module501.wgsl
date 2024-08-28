struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(4294967295u, 0u, 29584u), vec3<u32>(0u, 47521u, 0u), vec3<u32>(1u, 4495u, 49437u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 47282u, 4294967295u), vec3<u32>(0u, 589u, 19076u), vec3<u32>(1u, 2144u, 4294967295u), vec3<u32>(68851u, 26771u, 55466u), vec3<u32>(4294967295u, 23036u, 0u), vec3<u32>(4294967295u, 58957u, 45902u), vec3<u32>(1u, 16721u, 17520u), vec3<u32>(8977u, 30364u, 4294967295u), vec3<u32>(53082u, 64702u, 56753u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(930u, 1u, 44901u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 69817u, 60197u), vec3<u32>(1u, 4294967295u, 101614u), vec3<u32>(33767u, 1u, 178032u));

var<private> global2: array<u32, 3> = array<u32, 3>(30835u, 426u, 14271u);

var<private> global3: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    global2 = array<u32, 3>();
    var var_0 = reverseBits(-firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(8663i, 1999i, 0i) << (vec3<u32>(u_input.b.x, u_input.a, 58394u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(3915i, -21550i, 2147483647i)))));
    var var_1 = Struct_4(reverseBits(abs(vec3<i32>(_wgslsmith_add_i32(var_0.x, var_0.x), _wgslsmith_mod_i32(var_0.x, var_0.x), var_0.x))));
    var var_2 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), vec2<bool>(!(~(-2147483647i) >= _wgslsmith_clamp_i32(var_1.a.x, var_1.a.x, 2147483647i)), any(vec3<bool>(true, true, true))), vec2<bool>(true, true));
    let var_3 = Struct_1(!(!(~79165u < global2[_wgslsmith_index_u32(4294967295u << (global2[_wgslsmith_index_u32(u_input.c, 3u)] % 32u), 3u)])), min(var_0.x << (abs(_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.wy)) % 32u), _wgslsmith_clamp_i32(var_1.a.x, _wgslsmith_div_i32(firstLeadingBit(var_0.x), max(var_0.x, 2147483647i)), reverseBits(var_1.a.x))), 67602u, false, select(!vec2<bool>(var_2.x || true, var_2.x), vec2<bool>(true, var_2.x | all(vec2<bool>(true, true))), !(!vec2<bool>(true, var_2.x))));
    return global0.x > _wgslsmith_f_op_f32(f32(-1f) * -380f);
}

fn func_2() -> bool {
    var var_0 = Struct_4(vec3<i32>(firstLeadingBit(1i), 49344i, 1i));
    let var_1 = func_3();
    let var_2 = ~_wgslsmith_sub_u32(4294967295u, ~(~global2[_wgslsmith_index_u32(u_input.c, 3u)]));
    let var_3 = Struct_2(vec4<bool>(false, var_1, !var_1, true));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(1468f, global0.x)), global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.x)))), global0.x)), 689f)));
    return false;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_1(all(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, false)), -2147483647i, 68411u, func_2(), select(vec2<bool>(select(true, true, true), true), !vec2<bool>(true, u_input.c != 15009u), u_input.a < min(~global2[_wgslsmith_index_u32(u_input.b.x, 3u)], ~u_input.d)));
    global1 = array<vec3<u32>, 20>();
    let var_1 = Struct_2(vec4<bool>(all(select(select(var_0.e, vec2<bool>(false, var_0.d), var_0.e.x), !var_0.e, !vec2<bool>(var_0.d, false))), true, var_0.d, var_0.e.x));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-522f, global0.x, -164f, -887f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-316f, 1304f, -481f, arg_0.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, arg_0.x, global0.x, arg_0.x), vec4<f32>(-138f, arg_0.x, 1000f, -524f)))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(floor(1342f)))), global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + global0.x), -716f, -2674f, _wgslsmith_f_op_f32(abs(2173f))) + vec4<f32>(_wgslsmith_f_op_f32(step(1052f, 531f)), 1f, _wgslsmith_f_op_f32(ceil(-1217f)), -688f))));
    global3 = reverseBits(global2[_wgslsmith_index_u32(u_input.b.x, 3u)]);
    return Struct_3(select(var_0.b, var_0.b, any(var_1.a.zww)), all(select(var_1.a, vec4<bool>(true, true, true, var_0.e.x | var_0.e.x), false)), vec3<i32>(i32(-1i) * -var_0.b, _wgslsmith_sub_i32(~1i, var_0.b), _wgslsmith_mod_i32(0i, _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, var_0.b), abs(2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -521f) - vec2<f32>(global0.x, global0.x))))));
    var var_1 = !select(select(!select(vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b), true), select(!vec2<bool>(false, var_0.b), vec2<bool>(true, true), select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, true), false)), !select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false))), select(!select(vec2<bool>(false, false), vec2<bool>(var_0.b, var_0.b), var_0.b), vec2<bool>(false, true), var_0.b), vec2<bool>(all(vec4<bool>(var_0.b, var_0.b, var_0.b, false)), all(vec2<bool>(false, true))));
    let var_2 = _wgslsmith_clamp_u32(abs(global2[_wgslsmith_index_u32(u_input.c, 3u)]), 61477u ^ ~u_input.c, u_input.a);
    global3 = ~(~select(countOneBits(u_input.a), var_2, any(select(vec3<bool>(false, var_0.b, true), vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    let var_3 = vec4<bool>(any(vec3<bool>(true, !func_2(), _wgslsmith_clamp_i32(-1i, var_0.c.x, var_0.a) < 17755i)), all(!select(select(vec4<bool>(var_1.x, false, var_0.b, var_0.b), vec4<bool>(var_1.x, var_0.b, true, false), var_1.x), !vec4<bool>(var_1.x, var_0.b, var_0.b, true), true)), global0.x == global0.x, var_0.b);
    global2 = array<u32, 3>();
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(var_4.c.x, firstLeadingBit(_wgslsmith_div_i32(6461i, -2147483647i)), 23178i, _wgslsmith_mult_i32(var_0.c.x, _wgslsmith_div_i32(var_0.a, 32400i))), _wgslsmith_mult_vec4_i32(-select(vec4<i32>(var_0.c.x, 1i, -7482i, var_4.a), vec4<i32>(var_0.a, var_4.c.x, var_0.a, var_0.a), var_3), -firstTrailingBit(vec4<i32>(899i, var_4.c.x, -9956i, 0i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1581f, global0.x, global0.x, -1265f) * vec4<f32>(global0.x, 805f, global0.x, -537f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-752f, global0.x, global0.x, -970f) + vec4<f32>(-647f, global0.x, -1774f, global0.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 465f, global0.x, -836f), vec4<f32>(-113f, -462f, 1000f, 1128f))), vec4<f32>(_wgslsmith_f_op_f32(1090f * global0.x), _wgslsmith_div_f32(global0.x, 185f), _wgslsmith_f_op_f32(f32(-1f) * -988f), -124f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, global0.x, -1958f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 207f, global0.x, 925f)))))), ~abs(~1u), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(max(-2147483647i, var_4.a), _wgslsmith_div_i32(-1i, var_0.c.x)), -(var_0.a >> (_wgslsmith_mod_u32(var_2, 24154u) % 32u))));
}

