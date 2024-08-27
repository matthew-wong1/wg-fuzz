struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: bool;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    let var_0 = select(~firstLeadingBit(24648u), ~(~min(4294967295u, ~35713u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1019f)) - -995f) * 898f) >= 336f);
    global1 = !(_wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-774f, 1482f)))) >= 1f);
    let var_1 = abs(abs(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(91128u, 144349u)) >> (~vec2<u32>(var_0, var_0) % vec2<u32>(32u)), (vec2<u32>(var_0, 1u) << (vec2<u32>(var_0, 3598u) % vec2<u32>(32u))) << (reverseBits(vec2<u32>(var_0, var_0)) % vec2<u32>(32u)))));
    return false;
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = select(vec4<bool>(func_3(false, select(~vec3<i32>(-31601i, u_input.a, -5996i), vec3<i32>(u_input.a, -10071i, -73547i) | vec3<i32>(-2147483647i, -28123i, 2147483647i), 2147483647i >= u_input.a), select(vec2<bool>(true, false), vec2<bool>(true, true), true), Struct_2(global2[_wgslsmith_index_u32(arg_0 | arg_0, 16u)], true, select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, 37230i), vec3<i32>(32174i, u_input.a, 30949i)))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) * arg_1) <= -1451f, any(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))), vec4<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false))), true, arg_1 < 1243f, false), !(!any(vec4<bool>(true, true, true, true))));
    let var_1 = 2147483647i;
    var var_2 = global2[_wgslsmith_index_u32(arg_0, 16u)];
    var var_3 = 840f;
    return select(~arg_0, arg_0, var_0.x && (false & (-810f <= _wgslsmith_f_op_f32(max(-789f, arg_1)))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> u32 {
    global1 = arg_1;
    global0 = _wgslsmith_mod_u32(func_2(~_wgslsmith_mod_u32(2038u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2345f)) - 1124f)) & _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 0u, _wgslsmith_add_u32(32949u, 0u)), vec3<u32>(_wgslsmith_div_u32(4294967295u, 37410u), 1u, 0u)), 4294967295u & _wgslsmith_mult_u32(_wgslsmith_add_u32(22298u, 41526u), ~select(50745u, 1u, arg_0.b)));
    let var_0 = false;
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~(~(~0u)), min(func_2(~0u, _wgslsmith_f_op_f32(-119f - 640f)), _wgslsmith_clamp_u32(~65325u, _wgslsmith_mod_u32(36687u, 47605u), 1u))), firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(20538u, 1u), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 5981u, 111407u), vec4<u32>(1u, 37458u, 51171u, 32696u)), _wgslsmith_f_op_f32(round(834f))), 77992u >> (select(4294967295u, 3990u, arg_2) % 32u))));
    let var_1 = arg_0;
    return _wgslsmith_add_u32(~(~select(71077u, 1u, arg_0.c.x)), countOneBits(2246u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, ~4294967295u, ~25148u), ~1u, func_2(firstLeadingBit(0u), _wgslsmith_f_op_f32(abs(-835f))), ~(~60278u)), vec4<u32>(_wgslsmith_mult_u32(reverseBits(4294967295u), min(0u, 1u)), ~countOneBits(169104u), 4294967295u, 4294967295u >> (_wgslsmith_clamp_u32(0u, 0u, 84074u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 16>();
    let var_0 = -198f;
    var var_1 = _wgslsmith_sub_u32(4294967295u, ~1u ^ ~(func_1(Struct_2(global2[_wgslsmith_index_u32(3636u, 16u)], true, vec4<bool>(true, false, false, false), vec3<i32>(-1i, u_input.a, u_input.a)), false, false) & 82532u));
    let var_2 = vec3<bool>(false, all(vec3<bool>(false, true, true)), func_3(all(vec2<bool>(true, func_3(true, vec3<i32>(u_input.a, 2147483647i, u_input.a), vec2<bool>(true, true), Struct_2(global2[_wgslsmith_index_u32(1u, 16u)], false, vec4<bool>(true, true, true, true), vec3<i32>(u_input.a, u_input.a, u_input.a))))), ~firstLeadingBit(abs(vec3<i32>(u_input.a, -42634i, -2147483647i))), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), Struct_2(global2[_wgslsmith_index_u32(min(0u, ~1u), 16u)], func_3(var_0 < var_0, vec3<i32>(u_input.a, 1i, u_input.a), vec2<bool>(true, true), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), true, vec4<bool>(false, false, true, true), vec3<i32>(0i, -2147483647i, u_input.a))), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), _wgslsmith_mod_vec3_i32(vec3<i32>(1191i, -36990i, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a), vec3<i32>(12425i, u_input.a, 2147483647i))))));
    var_1 = 53100u & ~func_1(Struct_2(Struct_1(vec4<bool>(true, false, var_2.x, var_2.x)), var_2.x & true, !vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec3<i32>(u_input.a, u_input.a, 1i)), any(vec4<bool>(true, true, true, true)), true);
    var_1 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u >> (0u % 32u), 12336u >> (0u % 32u), ~4294967295u), countOneBits(firstLeadingBit(vec4<u32>(27068u, 42927u, 4294967295u, 0u))))), ~(~vec4<u32>(func_2(37047u, var_0), ~1u, firstTrailingBit(2272u), 33677u)));
    global2 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(33243i, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-277f)))), -289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
}

