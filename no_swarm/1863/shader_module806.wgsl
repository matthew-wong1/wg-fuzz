struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 4294967295u, 1u, 15474u, 6021u, 0u, 1u, 31209u, 30490u, 0u, 29821u, 72813u, 68091u, 31354u, 4294967295u, 0u, 4294967295u, 0u);

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 3> = array<i32, 3>(2147483647i, 65894i, -34227i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b, 0u, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.b, 4294967295u, 55001u, global1[_wgslsmith_index_u32(1u, 18u)]), vec4<u32>(0u, arg_2.b, 4294967295u, arg_1.b)))) | ~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.b, 18u)], arg_2.b, global2.x, global1[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<u32>(global2.x, 17566u, 31701u, 41845u)), vec4<u32>(110458u, global2.x, 14261u, 74663u)));
    global1 = array<u32, 18>();
    let var_0 = arg_1;
    let var_1 = Struct_1(-2416f, 35749u);
    global0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(4294967295u, 3u)], 1i), vec3<i32>(55858i, 0i, u_input.c.x)), _wgslsmith_add_vec3_i32(u_input.c, u_input.c), u_input.c ^ vec3<i32>(u_input.d.x, -1i, u_input.d.x)) >> (select(global2.wwx & vec3<u32>(var_1.b, var_1.b, var_1.b), global2.wzz, select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))) % vec3<u32>(32u)), u_input.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -948f));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(537f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1718f, arg_0, arg_0, -352f))), Struct_1(-1504f, 4294967295u), Struct_1(-229f, global2.x))))), 1u);
    global2 = ~(~vec4<u32>(4294967295u, var_0.b, ~65791u, global2.x));
    let var_1 = abs(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(global2.zw, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b, var_0.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global2.x), vec2<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 3855u), vec2<u32>(4294967295u, 1u)))), _wgslsmith_sub_u32(~(global2.x & u_input.a), var_0.b)));
    var var_2 = _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 0u, 40656u), global2.zyz, vec3<u32>(0u, 4294967295u | u_input.a, select(u_input.b, global2.x, arg_1))), countOneBits(var_1));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(1214f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(var_0.a, arg_0))))))), global1[_wgslsmith_index_u32(0u, 18u)]);
    return false;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global3 = array<i32, 3>();
    global3 = array<i32, 3>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-431f * _wgslsmith_f_op_f32(min(1000f, arg_1.a))), _wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_clamp_u32(~arg_1.b, max(firstTrailingBit(_wgslsmith_mult_u32(18970u, 0u)), 4294967295u), 4294967295u));
    var var_1 = any(select(vec4<bool>(any(vec2<bool>(true, true)), func_2(2350f, false, -u_input.c.yz), true, !(global2.x <= 68943u)), select(vec4<bool>(true, false, true, all(vec2<bool>(true, true))), vec4<bool>(func_2(arg_0, true, u_input.c.xx), true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), false, true)), vec4<bool>(false, true, false, true)));
    var var_2 = vec4<u32>(22904u, 4294967295u, 12303u, ~(~(reverseBits(u_input.a) & ~63326u)));
    return var_0;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(721f + -421f), -137f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1315f + -121f) + 2351f)), true && (false & func_2(-254f, false, vec2<i32>(-51101i, u_input.d.x))))), Struct_1(-348f, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(40469u, u_input.b), global2.x)));
    global2 = ~(~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(53202u, global2.x, 27062u, global2.x), vec4<u32>(u_input.a, 0u, global1[_wgslsmith_index_u32(1341u, 18u)], var_0.b)), var_0.b >> (global1[_wgslsmith_index_u32(var_0.b, 18u)] % 32u), _wgslsmith_sub_u32(66450u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15648u, 18u)], 18u)]), var_0.b)));
    var var_1 = u_input.d << (vec3<u32>(var_0.b, ~global2.x, 4294967295u) % vec3<u32>(32u));
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(abs(var_1.x), 1i >> (((global1[_wgslsmith_index_u32(98316u, 18u)] << (global2.x % 32u)) ^ ~4294967295u) % 32u), -firstTrailingBit(-2147483647i)), min(vec3<i32>(1i, ~global3[_wgslsmith_index_u32(6410u, 3u)] & ~0i, global3[_wgslsmith_index_u32(1u, 3u)]), u_input.d));
    global3 = array<i32, 3>();
    return StorageBuffer(max(-31602i, global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(38395u, 18u)], 3u)]), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(981f, var_0.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(432f, -795f), vec2<f32>(var_0.a, 111f)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -1528f), vec2<f32>(var_0.a, -611f))))))), _wgslsmith_div_u32(5680u, 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a, 1496f))) + _wgslsmith_f_op_f32(sign(190f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - 481f) + _wgslsmith_f_op_f32(max(-1412f, var_0.a))) - 756f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1788f, -589f, var_0.a, var_0.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1130f, 572f, -909f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, 1315f) * vec4<f32>(355f, 2214f, var_0.a, -626f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, -266f, -1000f, 1208f)), vec4<f32>(-1000f, var_0.a, -1000f, -812f), vec4<bool>(true, true, false, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 3>();
    let x = u_input.a;
    s_output = func_1();
}

