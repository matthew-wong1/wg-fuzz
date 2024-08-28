struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 11164i);

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: vec4<u32> = vec4<u32>(0u, 4294967295u, 1u, 4294967295u);

var<private> global3: Struct_1 = Struct_1(vec2<u32>(1u, 59939u), 0u);

var<private> global4: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(0u, 27210u), 1243u), Struct_1(vec2<u32>(68184u, 4294967295u), 12057u), Struct_1(vec2<u32>(22380u, 0u), 1u), Struct_1(vec2<u32>(1u, 10709u), 1u), Struct_1(vec2<u32>(59894u, 42840u), 43874u), Struct_1(vec2<u32>(77587u, 25344u), 25473u), Struct_1(vec2<u32>(9446u, 12160u), 0u), Struct_1(vec2<u32>(1u, 22543u), 33634u), Struct_1(vec2<u32>(1u, 21854u), 4294967295u), Struct_1(vec2<u32>(4294967295u, 57418u), 70995u), Struct_1(vec2<u32>(0u, 15638u), 33997u), Struct_1(vec2<u32>(0u, 991u), 30810u), Struct_1(vec2<u32>(1779u, 4294967295u), 0u), Struct_1(vec2<u32>(4149u, 1u), 80510u), Struct_1(vec2<u32>(57984u, 94851u), 4294967295u), Struct_1(vec2<u32>(129491u, 9774u), 27047u), Struct_1(vec2<u32>(109797u, 4294967295u), 27158u), Struct_1(vec2<u32>(1u, 394u), 0u), Struct_1(vec2<u32>(1u, 29208u), 37367u), Struct_1(vec2<u32>(1u, 55771u), 1u), Struct_1(vec2<u32>(1888u, 24346u), 53046u), Struct_1(vec2<u32>(41717u, 0u), 0u), Struct_1(vec2<u32>(13593u, 1u), 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<i32>) -> i32 {
    var var_0 = Struct_1(~(~(~vec2<u32>(20279u, global2.x))), _wgslsmith_clamp_u32(arg_0.b, global2.x, _wgslsmith_add_u32(arg_0.a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(global2.x, arg_0.b), 1u))));
    let var_1 = global4[_wgslsmith_index_u32(global2.x, 23u)];
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1280f) - -580f);
    global3 = Struct_1(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(global2.yyw, vec3<u32>(36913u, var_2.a.x, 55548u)), var_0.a.x), ~var_2.a)), ~59990u);
    return 2147483647i << (select(min(_wgslsmith_div_u32(arg_0.b >> (var_2.a.x % 32u), ~var_2.a.x), ~var_2.a.x ^ 1u), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global2.xwz, global2.wxz), 1u), global1.x) % 32u);
}

fn func_2() -> Struct_1 {
    global2 = max(vec4<u32>(global2.x, select(40327u, ~51919u, any(vec3<bool>(false, global1.x, global1.x))), 4294967295u, 4294967295u), vec4<u32>(26161u, 35690u, global3.b, ~reverseBits(global3.b)));
    global0 = vec2<i32>(func_3(Struct_1(countOneBits(vec2<u32>(1u, 1u)), reverseBits(4294967295u)), ~vec2<i32>(u_input.b, -28165i) & vec2<i32>(countOneBits(u_input.b), 8860i), vec2<i32>(_wgslsmith_mod_i32(global0.x, abs(-1i)), _wgslsmith_sub_i32(~u_input.a, ~global0.x))), 2147483647i);
    global4 = array<Struct_1, 23>();
    var var_0 = -2147483647i;
    let var_1 = global1.zy;
    return global4[_wgslsmith_index_u32(max(global2.x, firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(2734u, countOneBits(32865u))))), 23u)];
}

fn func_1() -> vec2<i32> {
    global3 = func_2();
    let var_0 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(61764u, 4294967295u), vec2<u32>(70277u, u_input.d)) << (~(37693u ^ global2.x) % 32u), _wgslsmith_mult_u32(~(~21607u), 1u)), ~(u_input.d ^ ~30734u) & (max(1u, 4294967295u) >> ((~4294967295u | _wgslsmith_mod_u32(u_input.d, 1u)) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1079f, 1320f, -1647f, 111f))), vec4<f32>(680f, -938f, 782f, -725f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, -644f, -523f, -366f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-165f)), -1307f, _wgslsmith_f_op_f32(step(-193f, 682f)), _wgslsmith_f_op_f32(select(-589f, 1735f, true))))) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(948f)), -263f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2118f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(257f)))), 372f)));
    let var_2 = func_2();
    let var_3 = _wgslsmith_add_u32(~(~1u), ~(30316u & (global2.x >> (4454u % 32u)))) ^ _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(global2.zw, vec2<u32>(25931u, var_0.b))), global3.a);
    return ~(-(~(max(vec2<i32>(1i, -29566i), vec2<i32>(-50733i, -1i)) << (vec2<u32>(var_0.b, var_3) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(global1.x & ((~u_input.a & _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(global0.x, 0i))) < global0.x), !global1.x, ~(~min(global3.b, 1u)) <= u_input.d, true);
    global4 = array<Struct_1, 23>();
    var var_0 = firstTrailingBit(firstLeadingBit(~func_1()));
    var var_1 = global4[_wgslsmith_index_u32(abs(func_2().b), 23u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-894f + 1121f), _wgslsmith_f_op_f32(f32(-1f) * -132f))), true)), 113f, _wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)) * 737f)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_2().a.x, ~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, global0.x, u_input.b), vec3<i32>(-21296i, global0.x, var_0.x) & vec3<i32>(-1i, -4233i, global0.x)) ^ vec3<i32>(1i, -1i, 1i));
}

