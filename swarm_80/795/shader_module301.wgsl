struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-1i, 1i), vec2<i32>(-34438i, 0i), vec2<i32>(-1i, 1i), vec2<i32>(-1i, 26759i), vec2<i32>(0i, 2147483647i), vec2<i32>(-15765i, 0i), vec2<i32>(-14125i, 0i), vec2<i32>(i32(-2147483648), -1i));

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1u, vec2<i32>(-45837i, 28522i), 28532i), Struct_1(1u, vec2<i32>(4912i, -50835i), -33695i), Struct_1(1u, vec2<i32>(1i, -15114i), i32(-2147483648)), Struct_1(4294967295u, vec2<i32>(68892i, -66115i), 2147483647i), Struct_1(20365u, vec2<i32>(5798i, 0i), i32(-2147483648)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_div_u32(~arg_0.a.a, _wgslsmith_div_u32(1223u, max(33935u, global0[_wgslsmith_index_u32(arg_0.a.a, 15u)]))), _wgslsmith_add_u32(~_wgslsmith_mult_u32(0u, 63140u), max(38214u, 105112u) ^ global0[_wgslsmith_index_u32(~arg_0.a.a, 15u)])) << (_wgslsmith_add_u32(5144u, arg_0.a.a) % 32u);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(642f, arg_0.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xz)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(exp2(global2.x))))) - vec2<f32>(495f, _wgslsmith_f_op_f32(-117f * global2.x)));
    var var_2 = Struct_1(firstLeadingBit(global0[_wgslsmith_index_u32(abs(16175u), 15u)]), min(countOneBits(reverseBits(_wgslsmith_sub_vec2_i32(u_input.b.xy, global1[_wgslsmith_index_u32(50410u, 8u)]))), _wgslsmith_div_vec2_i32(-u_input.b.xz, _wgslsmith_mod_vec2_i32(~vec2<i32>(-70930i, 41646i), vec2<i32>(-54255i, -1i)))), reverseBits(1i));
    let var_3 = arg_0.a;
    var var_4 = _wgslsmith_f_op_f32(-var_1.x);
    return all(select(select(vec4<bool>(var_3.c > -25334i, true, true, true), vec4<bool>(true, true, select(false, false, true), all(vec2<bool>(true, true))), true), !vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true), any(vec4<bool>(true, true, var_3.a <= var_3.a, all(vec4<bool>(true, true, true, true))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = 71200u;
    global2 = arg_3.c;
    global2 = arg_3.c;
    let var_1 = ~vec2<i32>(~u_input.b.x, u_input.b.x);
    var var_2 = Struct_1(_wgslsmith_mult_u32(4294967295u, ~(~3118u) | ~_wgslsmith_mult_u32(arg_2, global0[_wgslsmith_index_u32(arg_1.a.a, 15u)])), select(arg_0.xz, var_1, func_3(arg_3)), firstTrailingBit(firstTrailingBit(-u_input.b.x ^ -1i)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1413f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x + 304f))), global2.x, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(arg_3.c.x * global2.x), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(584f, global2.x, arg_3.c.x, 785f) + vec4<f32>(arg_3.c.x, 657f, 1574f, -968f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1421f, global2.x, -1403f, -119f)), vec4<bool>(true, true, true, true))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f + arg_3.d)) - _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(trunc(arg_3.d))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3.d, global2.x))))), _wgslsmith_f_op_f32(trunc(global2.x)), 1f));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(firstTrailingBit(30847u >> (1u % 32u)), 1u, !(arg_2.x | arg_2.x)), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mult_u32(47697u, 54086u))), 15u)], 5u)], _wgslsmith_sub_i32(-countOneBits(0i), -10473i), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_add_vec4_i32(select(vec4<i32>(7114i, -1i, u_input.e, -1i), arg_3, arg_2.x), vec4<i32>(u_input.b.x, 2147483647i, -21670i, -12202i)), Struct_2(Struct_1(1u, vec2<i32>(-1i, u_input.b.x), 0i)), _wgslsmith_div_u32(firstLeadingBit(1u), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(518u, 15u)], 15u)]), Struct_3(Struct_1(58231u, global1[_wgslsmith_index_u32(78634u, 8u)], arg_3.x), firstLeadingBit(37082i), _wgslsmith_f_op_vec3_f32(exp2(arg_1.xxw)), global2.x))).x, arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-848f))));
    let var_1 = !arg_2.x;
    global0 = array<u32, 15>();
    global2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2449f))));
    var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(4294967295u, var_0.a.a, var_0.a.a, 4294967295u))), u_input.c), select(abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.b.x, var_0.a.c), vec2<i32>(var_0.a.c, 1i))), u_input.b.yy, !(!arg_0.x)), ~max(u_input.b.x, arg_3.x) & -1i), _wgslsmith_div_i32(abs(_wgslsmith_mod_i32(~(-2147483647i), -60704i)), u_input.b.x), arg_1.zzw, _wgslsmith_f_op_f32(ceil(-1793f)));
    return max(_wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.b, -12166i) | arg_3.yy, vec2<i32>(abs(15321i), i32(-1i) * -u_input.e)), _wgslsmith_clamp_i32(42185i, _wgslsmith_clamp_i32(-arg_3.x, ~var_0.b, ~_wgslsmith_mod_i32(-2147483647i, -2147483647i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, var_0.b, -12711i), arg_3.zyw)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<bool>) -> Struct_3 {
    global3 = array<Struct_1, 5>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1213f, global2.x, global2.x))) + vec3<f32>(global2.x, -911f, -1574f)))));
    global1 = array<vec2<i32>, 8>();
    var var_0 = firstLeadingBit(~func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(u_input.b.x, 20843i, u_input.e, -60873i), Struct_2(global3[_wgslsmith_index_u32(u_input.c.x, 5u)]), 4988u, Struct_3(global3[_wgslsmith_index_u32(u_input.d, 5u)], u_input.e, vec3<f32>(1356f, -164f, global2.x), 1154f)))), arg_2, _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.e, -2147483647i, u_input.e), vec4<i32>(u_input.b.x, u_input.e, 4802i, 51868i), vec4<i32>(u_input.b.x, 2147483647i, 0i, u_input.e)) ^ vec4<i32>(6461i, -14865i, -15953i, 0i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1278f, -1192f, 1462f, global2.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-241f, global2.x, -1321f, -165f), vec4<f32>(245f, global2.x, -921f, global2.x))))))));
    return Struct_3(global3[_wgslsmith_index_u32(reverseBits(u_input.d), 5u)], 1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_1.wzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global2.x, var_1.x))), vec3<f32>(578f, -387f, -1178f))), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(global2.x - 1306f), _wgslsmith_f_op_f32(f32(-1f) * -1642f))), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(firstTrailingBit(abs(~19173u)), 5u)]);
    var var_1 = func_1(firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(0u, abs(28874u)), abs(36831u), ~u_input.c.x, 21718u)), true & !(u_input.a.x > _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), !vec2<bool>(~(-63656i) != _wgslsmith_mult_i32(var_0.a.c, var_0.a.b.x), all(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.zz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.c.xx, vec2<f32>(global2.x, global2.x)) * vec2<f32>(943f, global2.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -802f), global2.yz)))));
    global2 = var_1.c;
    let var_3 = u_input.b;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(974f - _wgslsmith_f_op_f32(-global2.x)))) * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(var_0.a.a, 15u)]), _wgslsmith_div_u32(u_input.c.x, 0u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 57453u), vec2<u32>(var_1.a.a, 28903u))), 24761u, 1u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c.xzy, vec3<u32>(var_0.a.a, global0[_wgslsmith_index_u32(var_0.a.a, 15u)], var_1.a.a)), 5486u), 15u)] << (~u_input.d % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-673f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(step(var_4.x, -758f))))));
}

