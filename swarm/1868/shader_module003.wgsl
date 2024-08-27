struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: bool;

var<private> global2: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global3: array<u32, 11>;

var<private> global4: array<i32, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global2 = array<vec3<bool>, 21>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1320f, -1019f)))))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 11u)], 0u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)] % 32u), ~66268u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10507u, 11u)], 11u)], 11u)], 11u)] << (61457u % 32u)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 109208u, global3[_wgslsmith_index_u32(0u, 11u)], 3136u)), firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49772u, 11u)], 11u)], 11u)], 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1093u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 1u)))), vec4<u32>(global3[_wgslsmith_index_u32(0u, 11u)], ~abs(14787u), select(75683u, _wgslsmith_dot_vec2_u32(vec2<u32>(27702u, 4294967295u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12996u, 11u)], 11u)], 11u)], 1u)), true), countOneBits(~134278u))), 11u)], _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(231f, _wgslsmith_f_op_f32(max(-3460f, 1042f))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1202f, -526f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1266f, -1000f) * vec2<f32>(-762f, -1261f)))))));
    global2 = array<vec3<bool>, 21>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a), countOneBits(global3[_wgslsmith_index_u32(select(24437u, ~(~0u), true), 11u)]), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(969f, var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-601f)), _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c))))));
    return var_0.a.x;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global2 = array<vec3<bool>, 21>();
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = 8576u;
    let var_2 = reverseBits(-vec4<i32>(u_input.a.x, _wgslsmith_div_i32(0i, -1i), u_input.b, -global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 15u)])) ^ abs(reverseBits(-vec4<i32>(-31845i, u_input.c.x, -1i, 0i) >> (vec4<u32>(1u, 1u, global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(61753u, 11u)]) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1000f, 335f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(255f, var_0, var_0), vec3<f32>(1000f, var_0, -2186f), vec3<bool>(arg_0, true, false))))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, 400f)))))));
    return Struct_2(Struct_1(~(vec2<u32>(0u, global3[_wgslsmith_index_u32(38260u, 11u)]) >> ((vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6678u, 11u)], 11u)], global3[_wgslsmith_index_u32(39776u, 11u)]) ^ vec2<u32>(global3[_wgslsmith_index_u32(1u, 11u)], 1u)) % vec2<u32>(32u))), arg_0), Struct_1(~abs(~vec2<u32>(28836u, 0u)), !arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, firstTrailingBit(global3[_wgslsmith_index_u32(37892u, 11u)]), 4294967295u, 1u), ~vec4<u32>(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(55442u, 11u)]), 11u)], _wgslsmith_sub_u32(22336u, global3[_wgslsmith_index_u32(0u, 11u)]), max(6210u, 58738u), _wgslsmith_sub_u32(45229u, 16494u))), vec2<i32>(_wgslsmith_sub_i32(select(firstLeadingBit(-1i), u_input.b ^ -6165i, all(vec4<bool>(arg_0, arg_0, true, false))), global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1416u, 11u)], 11u)], 11u)], 11u)], 15u)]), -2147483647i), Struct_1(countOneBits(vec2<u32>(9341u, 8917u) >> (countOneBits(vec2<u32>(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78440u, 11u)], 11u)], 11u)])) % vec2<u32>(32u))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(48146u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)]), countOneBits(vec2<u32>(4294967295u, 0u))), 11u)] >= (~global3[_wgslsmith_index_u32(3216u, 11u)] ^ ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42558u, 11u)], 11u)], 11u)])));
}

fn func_1() -> u32 {
    let var_0 = func_2(!any(select(!global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 21u)], vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))));
    global2 = array<vec3<bool>, 21>();
    var var_1 = global4[_wgslsmith_index_u32(~countOneBits(var_0.c.x), 15u)];
    global4 = array<i32, 15>();
    global4 = array<i32, 15>();
    return max(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(min(abs(vec4<u32>(94567u, var_0.a.a.x, 27596u, var_0.b.a.x)), vec4<u32>(global3[_wgslsmith_index_u32(23275u, 11u)], 1u, var_0.a.a.x, 11436u))), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.a.x, 5489u, abs(1u), 4294967295u), var_0.c)), 11u)], 4783u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(!any(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 21u)]), true, true, any(vec2<bool>(true, true))));
    var var_1 = ~func_1();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-293f + _wgslsmith_f_op_f32(-2645f + 1397f)))), 1f));
    global0 = -global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(global3[_wgslsmith_index_u32(379u, 11u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], global3[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6616u, 11u)], 11u)], global3[_wgslsmith_index_u32(35453u, 11u)], global3[_wgslsmith_index_u32(26661u, 11u)], 1u), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 4294967295u, global3[_wgslsmith_index_u32(27736u, 11u)]), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16191u, 11u)], 11u)], 3971u, 4294967295u))), vec4<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)]), 43860u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(77230u, 11u)], 11u)], 11u)], 11u)], 67917u, 46157u << (global3[_wgslsmith_index_u32(80973u, 11u)] % 32u))) & global3[_wgslsmith_index_u32((~0u ^ _wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20126u, 11u)], 11u)], 6661u)) & 1u, 11u)], 11u)], 15u)];
    let var_3 = func_2(all(!global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)]), 11u)], 11u)], 21u)])).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1103f), _wgslsmith_f_op_f32(-var_2), global3[_wgslsmith_index_u32(89627u, 11u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(18203u, _wgslsmith_dot_vec2_u32(var_3.a, var_3.a)), _wgslsmith_div_vec2_u32(select(var_3.a, var_3.a, var_0.x), vec2<u32>(9441u, var_3.a.x))));
}

