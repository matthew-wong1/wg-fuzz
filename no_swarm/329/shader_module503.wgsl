struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 18>;

var<private> global2: vec4<i32>;

var<private> global3: i32 = -11701i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> Struct_3 {
    return Struct_3(Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-659f, 465f, -1000f) - vec3<f32>(-418f, -280f, -307f)))), u_input.a.x), -_wgslsmith_div_i32(0i, global2.x >> (global1[_wgslsmith_index_u32(0u, 18u)] % 32u)) >= reverseBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, 1i), reverseBits(u_input.a.x))));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> u32 {
    let var_0 = vec3<i32>(31231i, 0i, countOneBits(~global2.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-234f, 504f))));
    global1 = array<u32, 18>();
    var var_2 = vec3<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~40670u, 18u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)])) ^ ~(~global1[_wgslsmith_index_u32(1u, 18u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(countOneBits(vec2<u32>(global1[_wgslsmith_index_u32(1u, 18u)], 0u)), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 26057u)), vec2<u32>(abs(19070u), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(3046u, 18u)], global1[_wgslsmith_index_u32(11180u, 18u)]))), 18u)], _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<u32>(12187u, 4294967295u)), vec2<u32>(0u, global1[_wgslsmith_index_u32(101969u, 18u)])), ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)] >> (1u % 32u))));
    let var_3 = func_1();
    return 46459u;
}

fn func_2(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec3_u32(select(abs(~abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12736u, 18u)], 18u)], 18u)], 41618u, 4294967295u))), firstLeadingBit(vec3<u32>(func_3(false, vec4<i32>(u_input.a.x, -2147483647i, global2.x, arg_0.a.c), global2.x), 1u, 1u)), -1756f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.b.x - arg_0.a.b.x)))), _wgslsmith_add_vec3_u32(abs(~(vec3<u32>(22171u, global1[_wgslsmith_index_u32(114984u, 18u)], 4294967295u) & vec3<u32>(17258u, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(94607u, 18u)], 18u)]))), _wgslsmith_mult_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17485u, 18u)], 18u)], 0u, 4294967295u), countOneBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84051u, 18u)], 18u)], 18u)], 18u)], 45112u, global1[_wgslsmith_index_u32(12039u, 18u)]))) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(64120u, 23014u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 25288u, 28082u), ~vec3<u32>(1u, 0u, global1[_wgslsmith_index_u32(97008u, 18u)]))));
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec3_i32(countOneBits(u_input.a.ywx), u_input.a.wzy), 2147483647i), -select(vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(-17318i, 69902i, -1i)), u_input.a.yw, true));
    var var_2 = 1i;
    let var_3 = _wgslsmith_clamp_i32(max(u_input.a.x | select(abs(15955i), arg_0.a.c, all(vec4<bool>(false, arg_0.a.a, true, false))), firstTrailingBit(u_input.a.x)), 0i, ~firstTrailingBit(global2.x));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-629f, 536f, arg_0.a.b.x, arg_0.a.b.x)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-921f, arg_0.a.b.x, 315f, arg_0.a.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1699f, -380f, -681f, -636f) - vec4<f32>(-1030f, arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b.x, 1000f, arg_0.a.b.x, arg_0.a.b.x) * vec4<f32>(arg_0.a.b.x, arg_0.a.b.x, -852f, arg_0.a.b.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1389f, arg_0.a.b.x, 543f, arg_0.a.b.x) + vec4<f32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, 1351f)), vec4<f32>(-1425f, arg_0.a.b.x, arg_0.a.b.x, 386f))))), arg_0, Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(363f, arg_0.a.b.x, arg_0.a.b.x, 550f) * vec4<f32>(arg_0.a.b.x, 1052f, arg_0.a.b.x, -1999f)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b.x - 221f), 614f, 1882f, _wgslsmith_f_op_f32(arg_0.a.b.x * 763f)), select(select(vec4<bool>(arg_0.a.a, true, arg_0.b, false), vec4<bool>(false, arg_0.b, arg_0.a.a, false), vec4<bool>(arg_0.b, true, true, true)), !vec4<bool>(arg_0.b, false, arg_0.a.a, true), !vec4<bool>(true, true, arg_0.a.a, true)))), !(!(false && arg_0.b)), Struct_1(!(!arg_0.a.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.a.b + vec3<f32>(1281f, -1125f, arg_0.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1132f, -826f, 1086f)), false)), _wgslsmith_mult_i32(var_3 | global2.x, -var_3))));
    return vec2<bool>(any(select(vec3<bool>(true, true, true), !select(vec3<bool>(var_4.c.b, arg_0.b, arg_0.b), vec3<bool>(false, true, false), vec3<bool>(true, arg_0.a.a, false)), any(vec2<bool>(true, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_2(func_1()), vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(func_1().b, true, false))), true);
    let var_1 = vec4<i32>((i32(-1i) * -(u_input.a.x ^ -2147483647i)) | u_input.a.x, min(-2147483647i, ~func_1().a.c) & u_input.a.x, countOneBits(countOneBits(u_input.a.x << (firstTrailingBit(2845u) % 32u))), -2147483647i);
    var var_2 = vec4<bool>(false || any(vec3<bool>(all(vec3<bool>(true, false, var_0.x)), !var_0.x, all(vec2<bool>(var_0.x, true)))), !select(false && all(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)), true), any(!vec4<bool>(any(vec2<bool>(false, false)), false | var_0.x, func_2(Struct_3(Struct_1(var_0.x, vec3<f32>(156f, 995f, -1120f), u_input.a.x), var_0.x)).x, select(true, false, var_0.x))), var_0.x);
    var_0 = !(!select(vec2<bool>(false, true), var_2.zw, !var_2.yy));
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(select(0u, 93354u, var_3.a.a) >> (firstLeadingBit(global1[_wgslsmith_index_u32(0u, 18u)]) % 32u), 22594u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1604f, var_3.a.b.x, var_3.a.b.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-397f, var_3.a.b.x, -1000f) * vec3<f32>(399f, var_3.a.b.x, var_3.a.b.x)))))), ~vec4<u32>(global1[_wgslsmith_index_u32(48127u, 18u)], max(select(4294967295u, global1[_wgslsmith_index_u32(0u, 18u)], var_3.b), global1[_wgslsmith_index_u32(countOneBits(4294967295u), 18u)]), ~_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32678u, 18u)], 18u)], 18u)], 18u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(10978u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 1488u) | vec3<u32>(36114u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 4294967295u), select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 47822u, global1[_wgslsmith_index_u32(1u, 18u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 1u, 1u), var_2.wwz))), _wgslsmith_f_op_f32(700f + -224f));
}

