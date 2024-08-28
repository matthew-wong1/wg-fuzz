struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true));

var<private> global2: array<i32, 30> = array<i32, 30>(75474i, 0i, 33668i, i32(-2147483648), 0i, -34254i, 29576i, -45967i, -37996i, -3487i, 7534i, -1i, 1i, -1i, -28548i, 39178i, 18413i, -1i, -1i, -4669i, 29451i, -1i, 14809i, 1i, 0i, 0i, -9589i, 46444i, -1i, -6177i);

var<private> global3: Struct_1;

var<private> global4: array<f32, 7> = array<f32, 7>(1000f, -263f, 1014f, 905f, 805f, 566f, 1310f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    global4 = array<f32, 7>();
    var var_0 = Struct_1(all(vec4<bool>(!(global3.a | true), !global3.a, !(global3.a == arg_1), !all(vec4<bool>(arg_0.a, global3.a, true, arg_1)))));
    let var_1 = Struct_1(true | global3.a);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~countOneBits(1u))), _wgslsmith_sub_u32(1u, 1u)), 4u)];
    let var_3 = vec2<u32>(countOneBits(70459u), 1u);
    return ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.x, _wgslsmith_sub_u32(var_3.x, var_3.x)), 30u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global2 = array<i32, 30>();
    let var_0 = Struct_1(!all(vec4<bool>(!arg_1.a, true, false, !arg_1.a)));
    var var_1 = arg_0;
    global4 = array<f32, 7>();
    var var_2 = -230f;
    return global2[_wgslsmith_index_u32(countOneBits(1u), 30u)] <= abs(_wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(-12012i, 2147483647i, -1i)) ^ firstLeadingBit(u_input.a.x));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~firstLeadingBit(vec2<i32>(-abs(arg_0), 2147483647i));
    let var_1 = _wgslsmith_sub_i32(-max(func_2(Struct_1(true), any(vec2<bool>(global3.a, false))), var_0.x), ~_wgslsmith_div_i32(-2147483647i, 18226i));
    global0 = -1i;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(67478u, 53226u, 17122u) >> (_wgslsmith_div_vec3_u32(vec3<u32>(91780u, 1u, 13492u), vec3<u32>(76587u, 4294967295u, 30020u)) % vec3<u32>(32u))), vec3<u32>(firstTrailingBit(0u), ~16590u, 4294967295u)) >> (31692u % 32u), 4u)];
    let var_3 = vec2<bool>(!func_3(arg_1, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(min(32030u, 6798u), 1u), 4u)]), var_2.a);
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 30>();
    let var_0 = func_1(global2[_wgslsmith_index_u32(0u, 30u)], Struct_1(global3.a));
    let var_1 = Struct_1(true);
    global2 = array<i32, 30>();
    let var_2 = _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 42975u, 71102u, 11614u), vec4<u32>(4294967295u, 0u, 46791u, 1u)) << (_wgslsmith_div_u32(~4294967295u, 4294967295u) % 32u)), 7u)]);
    global0 = countOneBits(~u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(~0u, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~1u, 7u)] * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-840f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2, var_2, var_2), vec3<f32>(var_2, -805f, global4[_wgslsmith_index_u32(19583u, 7u)])))))) * vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3041u, 6751u, 0u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 1u, 44926u), vec4<u32>(1u, 55405u, 46466u, 34933u))), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(1u, 7u)]))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(53647u, 7u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -51938i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x - -178f))))), vec3<i32>(firstLeadingBit(-29656i) ^ global2[_wgslsmith_index_u32(~20181u, 30u)], -min(15321i, u_input.a.x), 1i) & vec3<i32>(~max(u_input.a.x, global2[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(7906u, 30u)] << (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(96630i, -1i, 21580i), vec3<i32>(global2[_wgslsmith_index_u32(1u, 30u)], 25886i, global2[_wgslsmith_index_u32(13131u, 30u)]))), firstTrailingBit(-39221i)), ~vec2<u32>(1u, 1u));
}

