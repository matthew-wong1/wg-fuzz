struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1757f;

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 4294967295u, 0u, 6479u, 0u, 64611u, 0u, 4294967295u, 0u, 4294967295u, 1u, 91276u, 40361u, 4294967295u, 4294967295u, 4294967295u, 1735u, 1u, 0u, 15352u, 4294967295u, 21939u, 1u, 62765u, 974u, 1u, 0u, 0u, 4294967295u, 0u, 23545u, 0u);

var<private> global2: vec2<f32> = vec2<f32>(863f, 201f);

var<private> global3: array<u32, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = arg_0;
    var var_1 = vec2<bool>(any(vec2<bool>(true, true)), false);
    return 0u;
}

fn func_3() -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1060f, global2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1458f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, -1476f, 188f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, -781f, global2.x), vec3<f32>(global2.x, 1322f, -1463f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-230f, 670f, -1432f) - vec3<f32>(global2.x, -579f, -1000f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2452f, global2.x, global2.x))))));
    global1 = array<u32, 32>();
    let var_1 = -1407f;
    global3 = array<u32, 8>();
    global3 = array<u32, 8>();
    return global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 8u)], 32u)];
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(firstLeadingBit(~global3[_wgslsmith_index_u32(2622u, 8u)]), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 32u)] & ~48177u, 32u)], _wgslsmith_dot_vec3_u32(vec3<u32>(3280u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38007u, 8u)], 8u)], 1u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48041u, 32u)], 32u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61853u, 32u)], 8u)], 32u)], 32u)], 32u)], 1u, 1u))), _wgslsmith_clamp_u32(func_2(Struct_2(true, vec3<u32>(global3[_wgslsmith_index_u32(24604u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18308u, 8u)], 8u)], 39262u), true, vec2<f32>(global2.x, arg_0), Struct_1(global2.x, vec3<bool>(true, true, false))), 1u), ~global1[_wgslsmith_index_u32(16816u, 32u)], 10495u)), vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~23503u, 32u)] | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_3(), 8u)], 8u)], func_2(Struct_2(false, vec3<u32>(20977u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25098u, 8u)], 32u)], 32u)], 0u), true, vec2<f32>(arg_0, 1000f), Struct_1(-501f, vec3<bool>(false, false, false))), firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48404u, 32u)], 32u)]))), 32u)], ~global3[_wgslsmith_index_u32(~14120u, 8u)] >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 32u)]), 45527u) % 32u), global1[_wgslsmith_index_u32(abs(4294967295u), 32u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 32u)], 22151u)));
    var var_1 = !select(select(vec4<bool>(arg_0 < -577f, true, false, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    let var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~var_0.zw, max(~vec2<u32>(global3[_wgslsmith_index_u32(1u, 8u)], 11355u), vec2<u32>(26064u, 36168u))), var_0.zx) | _wgslsmith_sub_vec2_u32(~max(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 8u)], 32u)], 4823u), vec2<u32>(0u, 58020u)), var_0.xy));
    var_1 = select(vec4<bool>(false, var_1.x, all(!vec4<bool>(var_1.x, var_1.x, true, var_1.x)), !all(vec2<bool>(true, false)) & false), vec4<bool>(any(!select(var_1.zz, vec2<bool>(false, var_1.x), var_1.x)), all(vec3<bool>(!var_1.x, true, all(vec4<bool>(false, var_1.x, true, var_1.x)))), max(-18975i, -u_input.a) == -u_input.a, any(var_1.wwz)), any(vec3<bool>(true, var_1.x, true)));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global2.x)), global2.x, var_1.x)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(709f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1554f * _wgslsmith_f_op_f32(round(479f))) - _wgslsmith_f_op_f32(f32(-1f) * -392f))));
    return ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(39850u, 72933u), ~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29678u, 8u)], 32u)], 32u)], global1[_wgslsmith_index_u32(45805u, 32u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~max(select(vec2<u32>(~global1[_wgslsmith_index_u32(50178u, 32u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(9029u, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)]), 8u)]), func_1(_wgslsmith_f_op_f32(global2.x * global2.x)), !(u_input.a > 5893i)), vec2<u32>(~reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22310u, 8u)], 8u)], 8u)]), 19062u));
    let var_1 = abs(i32(-1i) * -36127i);
    global3 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_mult_u32(countOneBits(firstLeadingBit(~25585u)), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(firstTrailingBit(~0u), 8u)], 43917u)), ~(~var_0.x | func_3()), -abs(vec3<i32>(_wgslsmith_sub_i32(12140i, u_input.a), -14490i, -42660i)), 10315u);
}

