struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_1(50876i, vec3<i32>(-1i, 27422i, 0i), vec3<i32>(2226i, 1i, 1i)), vec4<bool>(true, true, true, true), vec2<bool>(true, false)), Struct_3(Struct_1(-40770i, vec3<i32>(1i, -1i, 2671i), vec3<i32>(1i, -1i, 7016i)), vec4<bool>(true, true, true, false), vec2<bool>(false, false)), Struct_3(Struct_1(-3556i, vec3<i32>(35082i, i32(-2147483648), 2147483647i), vec3<i32>(-13849i, i32(-2147483648), 35000i)), vec4<bool>(true, false, true, false), vec2<bool>(false, false)), Struct_3(Struct_1(-1i, vec3<i32>(42666i, -1i, i32(-2147483648)), vec3<i32>(-28897i, 30785i, 34497i)), vec4<bool>(true, false, false, true), vec2<bool>(true, false)), Struct_3(Struct_1(2147483647i, vec3<i32>(36615i, i32(-2147483648), i32(-2147483648)), vec3<i32>(16581i, 1i, -51311i)), vec4<bool>(false, true, false, false), vec2<bool>(false, false)), Struct_3(Struct_1(1i, vec3<i32>(-9739i, 13588i, -12935i), vec3<i32>(-19360i, -14089i, -55801i)), vec4<bool>(true, false, true, false), vec2<bool>(true, false)), Struct_3(Struct_1(21990i, vec3<i32>(11746i, 50108i, 45479i), vec3<i32>(-1i, -1673i, 2189i)), vec4<bool>(true, false, true, false), vec2<bool>(true, false)), Struct_3(Struct_1(-15478i, vec3<i32>(0i, 16172i, 29183i), vec3<i32>(1i, 38252i, 0i)), vec4<bool>(false, true, true, false), vec2<bool>(true, false)), Struct_3(Struct_1(-10400i, vec3<i32>(0i, 1i, 2519i), vec3<i32>(-31461i, -1i, -4225i)), vec4<bool>(false, true, true, false), vec2<bool>(true, false)), Struct_3(Struct_1(7741i, vec3<i32>(1i, -21583i, 2147483647i), vec3<i32>(0i, 0i, -1i)), vec4<bool>(true, false, true, true), vec2<bool>(true, false)), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(15074i, 1i, 1i)), vec4<bool>(false, false, false, false), vec2<bool>(true, false)), Struct_3(Struct_1(1i, vec3<i32>(-4804i, 45727i, 395i), vec3<i32>(0i, -25593i, i32(-2147483648))), vec4<bool>(true, true, true, true), vec2<bool>(true, true)), Struct_3(Struct_1(10982i, vec3<i32>(-1i, -45752i, -27153i), vec3<i32>(2147483647i, 2147483647i, 0i)), vec4<bool>(true, true, true, true), vec2<bool>(false, false)), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(10122i, 1i, -63855i), vec3<i32>(4176i, -1i, 24917i)), vec4<bool>(true, false, false, true), vec2<bool>(false, true)), Struct_3(Struct_1(40375i, vec3<i32>(-2094i, 1i, i32(-2147483648)), vec3<i32>(-25079i, 40828i, -43307i)), vec4<bool>(true, true, true, false), vec2<bool>(true, true)), Struct_3(Struct_1(i32(-2147483648), vec3<i32>(1i, -21892i, 2922i), vec3<i32>(-64553i, 61798i, -1i)), vec4<bool>(false, false, true, false), vec2<bool>(false, true)), Struct_3(Struct_1(63633i, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(40441i, -4368i, -1i)), vec4<bool>(false, false, false, true), vec2<bool>(true, false)), Struct_3(Struct_1(-5046i, vec3<i32>(0i, -5247i, -23383i), vec3<i32>(1i, 1i, -39320i)), vec4<bool>(false, true, true, false), vec2<bool>(false, true)), Struct_3(Struct_1(-43591i, vec3<i32>(16283i, 12926i, i32(-2147483648)), vec3<i32>(-14044i, 0i, -1i)), vec4<bool>(false, false, true, false), vec2<bool>(true, false)), Struct_3(Struct_1(1i, vec3<i32>(17819i, i32(-2147483648), 38119i), vec3<i32>(-1i, -83547i, 26792i)), vec4<bool>(true, false, true, true), vec2<bool>(true, false)), Struct_3(Struct_1(45493i, vec3<i32>(0i, i32(-2147483648), 44144i), vec3<i32>(i32(-2147483648), 0i, 2147483647i)), vec4<bool>(false, false, true, true), vec2<bool>(false, true)), Struct_3(Struct_1(2147483647i, vec3<i32>(0i, 1i, 0i), vec3<i32>(11975i, -1i, -9050i)), vec4<bool>(true, false, true, false), vec2<bool>(true, false)), Struct_3(Struct_1(2147483647i, vec3<i32>(0i, i32(-2147483648), 0i), vec3<i32>(-31383i, -24135i, 44696i)), vec4<bool>(false, false, true, false), vec2<bool>(false, true)), Struct_3(Struct_1(1i, vec3<i32>(42499i, 41236i, 0i), vec3<i32>(-1i, -31769i, -26832i)), vec4<bool>(true, false, false, true), vec2<bool>(true, false)), Struct_3(Struct_1(2147483647i, vec3<i32>(1i, -12360i, 1i), vec3<i32>(-1i, 15393i, -100929i)), vec4<bool>(false, false, false, true), vec2<bool>(true, true)), Struct_3(Struct_1(2147483647i, vec3<i32>(1613i, i32(-2147483648), -40893i), vec3<i32>(44973i, 1i, -15365i)), vec4<bool>(false, false, false, true), vec2<bool>(true, true)), Struct_3(Struct_1(0i, vec3<i32>(-1i, -1i, -1i), vec3<i32>(2147483647i, 2147483647i, 0i)), vec4<bool>(false, true, false, true), vec2<bool>(false, false)), Struct_3(Struct_1(1i, vec3<i32>(i32(-2147483648), 1i, -27884i), vec3<i32>(46853i, 29547i, 33452i)), vec4<bool>(true, false, true, false), vec2<bool>(true, true)), Struct_3(Struct_1(6660i, vec3<i32>(-18696i, 48196i, i32(-2147483648)), vec3<i32>(1i, 11745i, 32565i)), vec4<bool>(true, true, true, true), vec2<bool>(true, true)), Struct_3(Struct_1(-1i, vec3<i32>(-10760i, 1i, 0i), vec3<i32>(i32(-2147483648), -9425i, i32(-2147483648))), vec4<bool>(false, true, false, true), vec2<bool>(false, true)), Struct_3(Struct_1(-35225i, vec3<i32>(-1i, -19787i, 0i), vec3<i32>(8824i, 13585i, -399i)), vec4<bool>(false, false, true, false), vec2<bool>(false, false)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_5) -> vec2<i32> {
    let var_0 = vec4<u32>(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 7368u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24216u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)]), vec3<u32>(0u, 30263u, 12927u)), 20u)], 20u)], 27440u), abs(vec2<u32>(0u, 4294967295u)) ^ vec2<u32>(global0[_wgslsmith_index_u32(1u, 20u)], 10985u)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 26u), firstLeadingBit(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(28564u, 20u)], ~1u)));
    let var_1 = ~firstTrailingBit(var_0) & var_0;
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(reverseBits(arg_2.a.a.a.c.x), arg_2.a.a.a.c.x), ~arg_2.a.b.b.x, 1i, countOneBits(2147483647i ^ ~arg_0.a));
    var var_3 = ~(-2147483647i);
    global1 = array<Struct_3, 31>();
    return arg_0.b.zy;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 20u)], 4294967295u), abs(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 47641u), 20u)]), true), 20u)] >> ((41635u & global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(24269u, 4294967295u), vec2<u32>(39145u, 0u)), ~global0[_wgslsmith_index_u32(29039u, 20u)]), 20u)]) % 32u), 20u)], 20u)], 20u)], 20u)], 20u)];
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(0u), 31u)];
    let var_2 = _wgslsmith_mult_vec2_i32(~(select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.c.x), u_input.c), vec2<i32>(811i, arg_3.x), vec2<bool>(true, true)) & var_1.a.c.yx), var_1.a.b.xy);
    var var_3 = 94815u;
    let var_4 = Struct_4(Struct_3(Struct_1(min(arg_0.x, arg_0.x) >> (1u % 32u), arg_3.zwz >> (vec3<u32>(var_0, var_0, 30545u) % vec3<u32>(32u)), arg_3.xyw), select(var_1.b, !var_1.b, !vec4<bool>(true, var_1.b.x, arg_1, true)), !(!select(var_1.b.zx, var_1.b.zx, true))), var_1.a, var_1.c.x);
    return select(select(vec2<bool>(var_1.c.x, any(vec3<bool>(true, arg_2, arg_1))), var_1.b.wy, true), select(vec2<bool>(true, var_1.c.x), var_4.a.c, true | !var_1.c.x), !vec2<bool>(true, any(var_1.c)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> u32 {
    global1 = array<Struct_3, 31>();
    global0 = array<u32, 20>();
    var var_0 = func_4(-func_3(Struct_1(-43548i, abs(vec3<i32>(31127i, u_input.c.x, u_input.c.x)), vec3<i32>(u_input.a, arg_0, 0i) | vec3<i32>(arg_0, -13148i, u_input.a)), Struct_2(arg_1), Struct_5(Struct_4(Struct_3(Struct_1(u_input.a, vec3<i32>(-1i, arg_0, arg_0), vec3<i32>(-53985i, 6089i, -9827i)), vec4<bool>(true, false, false, true), vec2<bool>(false, false)), Struct_1(-39283i, vec3<i32>(u_input.a, -8169i, u_input.b), vec3<i32>(-1i, u_input.a, u_input.c.x)), false))), true, min(global0[_wgslsmith_index_u32(4407u, 20u)], min(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25912u, 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)]), vec3<u32>(75272u, global0[_wgslsmith_index_u32(15683u, 20u)], 0u)))) <= 0u, vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 2147483647i) & vec3<i32>(-2147483647i, 19757i, u_input.b), vec3<i32>(~u_input.c.x, 0i, max(u_input.a, -3429i))), _wgslsmith_dot_vec2_i32(countOneBits(-u_input.c), reverseBits(u_input.c)), -max(arg_0 & 84745i, _wgslsmith_div_i32(u_input.b, -2147483647i)), _wgslsmith_clamp_i32(arg_0, countOneBits(_wgslsmith_sub_i32(arg_0, arg_0)), 2147483647i)));
    let var_1 = var_0.x != false;
    let var_2 = Struct_5(Struct_4(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)]), 31u)], Struct_1(arg_0, abs(vec3<i32>(0i, u_input.c.x, u_input.a)), abs(~vec3<i32>(-1i, u_input.c.x, u_input.b))), (arg_2.x < _wgslsmith_f_op_f32(arg_2.x - -1498f)) || (_wgslsmith_mult_i32(arg_0, arg_0) == (arg_0 >> (89695u % 32u)))));
    return ~53513u | select(0u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12120u, 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 19973u)), 20u)], 20u)], !any(var_2.a.a.b.wwy));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(floor(-704f));
    var var_1 = !(((1u | func_2(u_input.c.x, vec3<f32>(var_0, 2256f, -833f), vec2<f32>(var_0, var_0))) == global0[_wgslsmith_index_u32((arg_2.x >> (global0[_wgslsmith_index_u32(arg_2.x, 20u)] % 32u)) | _wgslsmith_clamp_u32(4294967295u, arg_2.x, 4294967295u), 20u)]) | all(select(!arg_1.xz, arg_1.xz, select(vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, false), arg_1.x))));
    global1 = array<Struct_3, 31>();
    var_1 = any(vec2<bool>(true, any(vec3<bool>(true, true, !arg_1.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1129f, 658f))), 332f)));
    return Struct_4(Struct_3(Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c.x, -1i), 2147483647i), firstLeadingBit(vec3<i32>(u_input.b, -1i, arg_0)), max(-vec3<i32>(u_input.c.x, arg_0, arg_0), -vec3<i32>(31720i, -1i, arg_0))), select(select(select(vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(arg_1.x, true, true, arg_1.x), arg_1.x), select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(arg_1.x, true, true, arg_1.x), true), !vec4<bool>(true, true, arg_1.x, false)), select(!vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(false, false, arg_1.x, false), select(vec4<bool>(false, arg_1.x, true, true), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(false, true, arg_1.x, true))), !vec4<bool>(false, arg_1.x, true, arg_1.x)), vec2<bool>(any(vec3<bool>(true, arg_1.x, true)) && arg_1.x, true)), Struct_1(select(-7025i, abs(abs(-1i)), any(!vec4<bool>(arg_1.x, true, false, false))), vec3<i32>(u_input.a, _wgslsmith_clamp_i32(u_input.b & u_input.b, -1i, firstTrailingBit(-1i)), 10844i), vec3<i32>(u_input.b, ~select(arg_0, 1i, true), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(3440i, arg_0, -15570i, u_input.c.x), vec4<i32>(-2147483647i, arg_0, u_input.c.x, u_input.a)), firstTrailingBit(u_input.c.x)))), false);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_5 {
    let var_0 = func_1(_wgslsmith_mult_i32(arg_0.b.a, _wgslsmith_sub_i32(1i, arg_0.b.c.x)), select(arg_0.a.b.www, vec3<bool>(true, arg_1.x >= ~13913u, all(arg_0.a.b.ww) | arg_0.a.b.x), all(!select(arg_0.a.b.xz, vec2<bool>(arg_0.a.b.x, true), arg_0.c))), select(vec4<u32>(abs(~arg_1.x), arg_1.x, arg_1.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, 1u, 33556u, arg_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(21752u, arg_1.x, global0[_wgslsmith_index_u32(arg_1.x, 20u)], global0[_wgslsmith_index_u32(arg_1.x, 20u)]), vec4<u32>(arg_1.x, 298u, arg_1.x, 1u)))), abs(min(vec4<u32>(1u, 1u, arg_1.x, 1u), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 0u, 1u, global0[_wgslsmith_index_u32(arg_1.x, 20u)])))), !select(select(vec4<bool>(arg_0.a.b.x, true, true, arg_0.c), arg_0.a.b, arg_0.a.b.x), !arg_0.a.b, arg_0.c && true)));
    var var_1 = arg_1;
    global0 = array<u32, 20>();
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(21470u << ((1u >> (firstLeadingBit(var_1.x) % 32u)) % 32u), reverseBits(max(~0u, _wgslsmith_sub_u32(arg_1.x, 1u))), arg_1.x), arg_1);
    var_1 = abs(arg_1);
    return Struct_5(arg_0);
}

fn func_6(arg_0: Struct_5, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(min(-830f, 1259f));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(559f, -1598f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1237f))), 1000f));
    let var_2 = vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(func_2(28896i, var_1.a, vec2<f32>(var_1.a.x, -484f)), 20u)], 14130u), ~0u), 20u)], reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(873u, 20u)]) >> (~0u % 32u), 20u)]) >> (_wgslsmith_sub_u32(firstTrailingBit(~0u), firstTrailingBit(~14357u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)])), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)]) & vec2<u32>(1u, 48505u)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(13181u, 20u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8907u, 20u)], 20u)], 4294967295u)), ~vec2<u32>(77716u, global0[_wgslsmith_index_u32(0u, 20u)]))), firstTrailingBit(firstLeadingBit(max(vec3<u32>(25922u, global0[_wgslsmith_index_u32(1u, 20u)], 5474u), vec3<u32>(55578u, 47088u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)]))))));
    let var_3 = firstLeadingBit(select(~(~(~vec3<u32>(global0[_wgslsmith_index_u32(71947u, 20u)], var_2.x, 4294967295u))), _wgslsmith_clamp_vec3_u32(var_2, vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(105600u, 20u)], 20u)], 0u), _wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(1u, 20u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.x, 52608u), 20u)]), vec3<u32>(var_2.x, reverseBits(0u), func_2(-5970i, vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.yy))), any(arg_0.a.a.b)));
    return global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~var_3.x >> (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_3.x, var_3.x), 20u)] ^ 0u, 20u)] % 32u), 20u)], 31u)];
}

fn func_7(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(-52707i, -countOneBits(arg_0.a.c), vec3<i32>(min(u_input.b, u_input.b), u_input.c.x, func_3(func_6(func_5(Struct_4(Struct_3(Struct_1(arg_0.a.a, arg_0.a.c, vec3<i32>(u_input.b, -17909i, 2147483647i)), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.c.x), vec2<bool>(arg_0.c.x, arg_0.c.x)), arg_0.a, false), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6118u, 20u)], 20u)], 20u)], 0u)), ~arg_0.a.b.xy).a, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, 290f, 354f))), Struct_5(Struct_4(Struct_3(arg_0.a, vec4<bool>(arg_0.b.x, true, false, true), vec2<bool>(arg_0.b.x, arg_0.c.x)), Struct_1(arg_0.a.c.x, vec3<i32>(arg_0.a.b.x, u_input.a, u_input.a), vec3<i32>(u_input.c.x, 17276i, u_input.b)), arg_0.c.x))).x));
    let var_1 = _wgslsmith_clamp_u32(min(2211u, ~(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(60411u, 20u)], 20u)])), _wgslsmith_sub_u32(~50381u, 0u), ~_wgslsmith_div_u32(8068u, _wgslsmith_div_u32(1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83976u, 20u)], 20u)])));
    global0 = array<u32, 20>();
    var var_2 = min(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 20u)]);
    let var_3 = var_0.a;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(func_1(_wgslsmith_clamp_i32(u_input.b, u_input.a, -1i), vec3<bool>(true, true, true), ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(1u, 20u)])), vec3<u32>(_wgslsmith_mult_u32(45329u, 50685u), 13899u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 20u)])), -u_input.c));
    var var_1 = vec4<u32>(13699u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66610u, 20u)], 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 72446u) << (vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)]) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(153272u, global0[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u, global0[_wgslsmith_index_u32(4923u, 20u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 30985u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)]))), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7685u, 20u)], 20u)], 68u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(88124u, 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(1u, 20u)])), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(26659u, 20u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)])), vec4<u32>(60569u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], 8549u, 26623u) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31543u, 20u)], 20u)], 0u, global0[_wgslsmith_index_u32(1u, 20u)], 0u) % vec4<u32>(32u)))), firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(18711u, 20u)], 0u, global0[_wgslsmith_index_u32(65393u, 20u)], 1u) | vec4<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 61275u, global0[_wgslsmith_index_u32(19735u, 20u)], 13340u)) >> (abs(vec4<u32>(25431u, global0[_wgslsmith_index_u32(5867u, 20u)], global0[_wgslsmith_index_u32(7799u, 20u)], 4294967295u) | vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70712u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(25892u, 20u)], global0[_wgslsmith_index_u32(70434u, 20u)])) % vec4<u32>(32u))), min(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 20u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12388u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)] % 32u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]), 20u)], abs(global0[_wgslsmith_index_u32(1u, 20u)])), ~global0[_wgslsmith_index_u32(9821u, 20u)]);
    var var_2 = true;
    let var_3 = func_6(func_5(Struct_4(Struct_3(Struct_1(u_input.b, vec3<i32>(-2147483647i, -39621i, var_0.b.x), var_0.c), vec4<bool>(true, true, true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_1(var_0.c.x, var_0.c, ~vec3<i32>(-1i, 0i, u_input.c.x)), true), min(~var_1.yzz, vec3<u32>(var_1.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70025u, 20u)], 20u)], 20u)], reverseBits(var_1.x)))), vec2<i32>(i32(-1i) * -1i, firstTrailingBit(_wgslsmith_clamp_i32(var_0.c.x, 1i, var_0.a)) ^ ~(u_input.b & u_input.a)));
    var var_4 = Struct_3(Struct_1(-37525i, var_0.c, func_6(func_5(func_5(Struct_4(global1[_wgslsmith_index_u32(1u, 31u)], Struct_1(29905i, vec3<i32>(-9447i, 1i, 2147483647i), var_3.a.b), var_3.b.x), var_1.yxw).a, countOneBits(vec3<u32>(6200u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 4294967295u))), abs(func_5(Struct_4(Struct_3(Struct_1(var_3.a.b.x, var_0.b, var_3.a.c), vec4<bool>(false, false, var_3.b.x, true), var_3.b.zz), Struct_1(u_input.b, var_0.b, vec3<i32>(0i, u_input.b, 35231i)), false), var_1.xzx).a.a.a.c.yz)).a.c), func_6(func_5(Struct_4(func_1(u_input.c.x, vec3<bool>(var_3.c.x, var_3.b.x, false), vec4<u32>(4294967295u, 4294967295u, 1u, global0[_wgslsmith_index_u32(var_1.x, 20u)])).a, var_3.a, !var_3.c.x), ~(~var_1.xwz)), ~(reverseBits(vec2<i32>(u_input.a, 4707i)) >> (min(var_1.yz, var_1.wx) % vec2<u32>(32u)))).b, select(vec2<bool>(true & var_3.b.x, !var_3.c.x), vec2<bool>(true & !var_3.c.x, !(!var_3.b.x)), all(!vec4<bool>(true, var_3.c.x, false, var_3.b.x))));
    global1 = array<Struct_3, 31>();
    let var_5 = select(var_1.yy ^ _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59055u, 20u)], 20u)]), vec2<u32>(var_1.x, global0[_wgslsmith_index_u32(var_1.x, 20u)])) >> (max(var_1.zx, var_1.zx) % vec2<u32>(32u)), ~firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(13135u, 20u)], var_1.x))), vec2<u32>(~global0[_wgslsmith_index_u32(var_1.x, 20u)], ~var_1.x), !(!(!(!vec2<bool>(var_3.c.x, false)))));
    let var_6 = Struct_5(Struct_4(func_6(func_5(func_1(-39530i, vec3<bool>(var_4.c.x, true, true), vec4<u32>(var_5.x, var_1.x, 1159u, 4294967295u)), ~vec3<u32>(0u, 1u, var_5.x)), u_input.c), func_7(func_1(_wgslsmith_div_i32(37116i, -7913i), var_4.b.xwy, vec4<u32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(113859u, 20u)], global0[_wgslsmith_index_u32(24970u, 20u)])).a), var_4.c.x));
    let var_7 = 2147483647i << ((_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_5.x, 20u)], 20u)], 48019u) | vec4<u32>(1u, 58278u, 0u, var_5.x)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(12949u, 9183u, var_1.x, var_5.x), vec4<u32>(var_5.x, 186u, var_1.x, var_5.x)))) & ~(~_wgslsmith_mult_u32(var_5.x, var_1.x))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1016f, 522f, 1000f, 1129f)))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x << (global0[_wgslsmith_index_u32(~4294967295u, 20u)] % 32u), -1i, var_4.a.c.x, 0i), -abs(~vec4<i32>(-2147483647i, 1i, var_0.c.x, 0i))), 0u, 1f);
}

