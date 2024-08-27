struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 15> = array<u32, 15>(48518u, 8969u, 5974u, 19258u, 0u, 0u, 4294967295u, 0u, 4294967295u, 11631u, 1u, 120461u, 0u, 0u, 0u);

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(1u, -1260f, true), Struct_1(75665u, -1284f, false), Struct_1(4294967295u, -452f, false), Struct_1(81646u, 247f, true), Struct_1(1u, -673f, true), Struct_1(25664u, 250f, false), Struct_1(16414u, 295f, true), Struct_1(39838u, -957f, false), Struct_1(14946u, -942f, true));

var<private> global3: Struct_1;

var<private> global4: array<vec4<f32>, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global3.b);
    var var_1 = 20737u;
    let var_2 = select(firstLeadingBit(~vec3<i32>(~(-32857i), -58784i, _wgslsmith_sub_i32(2147483647i, 11004i))), ~(-vec3<i32>(1i, 1i, 1i)), select(vec3<bool>(true, ~global3.a > _wgslsmith_sub_u32(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6130u, 15u)], 15u)]), false), !vec3<bool>(false, any(vec2<bool>(global3.c, false)), true), vec3<bool>(true, true, global3.c)));
    var var_3 = _wgslsmith_clamp_i32(19355i, var_2.x, ~(var_2.x | _wgslsmith_mod_i32(var_2.x, var_2.x)) << ((104281u << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42567u, 15u)], 15u)], u_input.b.x)), u_input.b) % 32u)) % 32u));
    var var_4 = Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1587f, -212f)), !global3.c && select(true, all(!vec2<bool>(global3.c, true)), false));
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.b);
    global3 = Struct_1(_wgslsmith_mod_u32(func_3(), max(_wgslsmith_clamp_u32(1u, 4294967295u, arg_0.a) >> (~10569u % 32u), ~func_3())), global3.b, all(vec4<bool>(true, false, global3.c, any(vec2<bool>(false, false)) | (u_input.b.x >= arg_0.a))));
    var var_1 = _wgslsmith_add_vec3_u32(u_input.b, max(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), abs(u_input.b), vec3<u32>(18961u, 30915u, 35531u)), u_input.b), _wgslsmith_sub_vec3_u32(u_input.b, ~u_input.b)));
    var var_2 = arg_0.c;
    var var_3 = !global3.c;
    return 0u;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c & _wgslsmith_dot_vec3_u32(u_input.b, u_input.b ^ vec3<u32>(4294967295u, 28609u, arg_1.a)), countOneBits(1u), ~(~_wgslsmith_mod_u32(global3.a, 1u)), arg_1.a), ~((_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a, 10574u, 0u, u_input.a), vec4<u32>(arg_1.a, u_input.a, 4966u, 12154u)) << (vec4<u32>(u_input.a, u_input.b.x, 23236u, 8859u) % vec4<u32>(32u))) >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)] ^ global3.a, u_input.c, ~u_input.c, _wgslsmith_clamp_u32(1u, global3.a, 0u)) % vec4<u32>(32u))));
    var_0 = vec4<u32>(global3.a, u_input.c, ~55033u, func_2(arg_1));
    var var_1 = select(!(!(!(!vec2<bool>(arg_1.c, global3.c)))), !vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.c, arg_1.c, false), arg_1.c)), !select(true, false, global3.c)), select(select(select(select(vec2<bool>(true, arg_1.c), vec2<bool>(false, global3.c), arg_1.c), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(arg_1.c, false)), !vec2<bool>(false, arg_1.c)), select(select(vec2<bool>(arg_1.c, global3.c), vec2<bool>(arg_1.c, global3.c), true), select(vec2<bool>(false, global3.c), vec2<bool>(arg_1.c, false), global3.c), vec2<bool>(true, global3.c)), any(vec2<bool>(global3.c, global3.c))), !select(!vec2<bool>(global3.c, arg_1.c), !vec2<bool>(arg_1.c, false), select(vec2<bool>(global3.c, global3.c), vec2<bool>(false, true), vec2<bool>(false, global3.c))), arg_1.c));
    let var_2 = arg_1.c;
    var var_3 = global2[_wgslsmith_index_u32(~4294967295u, 9u)];
    return ~(~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(31746u, 16296u, global3.a, 0u), vec4<u32>(var_3.a, 10578u, global1[_wgslsmith_index_u32(4294967295u, 15u)], 29835u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(80952u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(func_1(global3.b, global2[_wgslsmith_index_u32(6685u, 9u)]), vec4<u32>(select(23083u, global3.a, false), ~0u, 0u, ~1u)), ~select(vec4<u32>(global3.a, 4294967295u, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]) | vec4<u32>(global1[_wgslsmith_index_u32(29598u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], 28122u, global3.a), vec4<u32>(1u, 26718u, global1[_wgslsmith_index_u32(47382u, 15u)], u_input.c) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.c, 15u)], 0u, 0u) % vec4<u32>(32u)), global3.c | global3.c)), global3.a);
    let var_1 = ~(max(select(vec4<u32>(global1[_wgslsmith_index_u32(50310u, 15u)], 24749u, var_0.x, 0u), vec4<u32>(var_0.x, 28476u, 4294967295u, 4294967295u), vec4<bool>(false, false, global3.c, global3.c)), ~vec4<u32>(1u, u_input.a, u_input.a, global3.a)) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(23830u, 4294967295u, 4294967295u, 100555u), vec4<u32>(9624u, 0u, u_input.c, 1u))) | countOneBits(~_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(4294967295u, 3315u, u_input.a, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, u_input.c, 1u, 6788u), vec4<u32>(4294967295u, var_0.x, 4294967295u, 0u))));
    var var_2 = !select(!select(vec3<bool>(true, true, global3.c), select(vec3<bool>(global3.c, true, global3.c), vec3<bool>(true, false, true), global3.c), vec3<bool>(true, global3.c, global3.c)), select(vec3<bool>(all(vec3<bool>(false, global3.c, false)), !global3.c, true), select(vec3<bool>(global3.c, global3.c, global3.c), vec3<bool>(false, global3.c, global3.c), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), all(select(vec3<bool>(global3.c, false, global3.c), vec3<bool>(global3.c, false, false), vec3<bool>(false, global3.c, global3.c)))), true);
    let var_3 = ~global1[_wgslsmith_index_u32(0u, 15u)];
    let var_4 = global2[_wgslsmith_index_u32(var_3, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(4294967295u, 4294967295u, var_0.x, var_0.x), vec4<i32>(~_wgslsmith_clamp_i32(0i, 1i, 1i), 60602i, -24148i, reverseBits(1i)), -(~vec4<i32>(select(2147483647i, 1i, true), firstLeadingBit(-6272i), ~(-19813i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 25108i), vec2<i32>(-12351i, 9395i)))));
}

