struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<vec2<i32>, 9> = array<vec2<i32>, 9>(vec2<i32>(1i, -33766i), vec2<i32>(-1i, -22407i), vec2<i32>(-1i, 13058i), vec2<i32>(-19288i, i32(-2147483648)), vec2<i32>(71742i, 3608i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(708i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 0i));

var<private> global2: f32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = max(~_wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), ~max(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a, 28616u, u_input.b.x))), vec3<u32>(u_input.a, ~u_input.b.x, ~(~(~u_input.a))));
    let var_2 = arg_0;
    let var_3 = vec2<u32>(_wgslsmith_div_u32(max(u_input.b.x ^ var_1.x, ~60612u), firstTrailingBit(~0u)) & 36129u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.a), vec3<u32>(u_input.a, u_input.b.x, 4294967295u))) | u_input.a);
    var_0 = var_2;
    return !(var_0.a.x | true) | any(!var_2.a);
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(488f, -1017f, 171f);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2205f, global0[_wgslsmith_index_u32(u_input.a, 22u)], true))))), 794f));
    var var_1 = Struct_1(vec2<bool>(all(vec2<bool>(true, false)) || func_3(Struct_1(vec2<bool>(false, false))), true));
    var var_2 = all(select(select(select(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), !vec4<bool>(true, var_1.a.x, true, false), any(var_1.a)), !select(vec4<bool>(true, false, var_1.a.x, var_1.a.x), vec4<bool>(true, var_1.a.x, var_1.a.x, true), true), select(!vec4<bool>(var_1.a.x, true, false, var_1.a.x), !vec4<bool>(true, var_1.a.x, true, var_1.a.x), select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)))), !select(select(vec4<bool>(var_1.a.x, true, var_1.a.x, false), vec4<bool>(false, var_1.a.x, var_1.a.x, false), vec4<bool>(true, false, var_1.a.x, false)), select(vec4<bool>(false, var_1.a.x, var_1.a.x, false), vec4<bool>(var_1.a.x, false, true, false), true), !vec4<bool>(false, var_1.a.x, var_1.a.x, true)), !any(select(vec4<bool>(var_1.a.x, false, var_1.a.x, false), vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, false, false, false)))));
    var var_3 = var_0.yy;
    return Struct_1(var_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global0 = array<f32, 22>();
    global2 = global0[_wgslsmith_index_u32(4175u, 22u)];
    return 2147483647i;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2();
    let var_2 = ~vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2.x, arg_2.x, 3744i), countOneBits(vec3<i32>(-1i, 2147483647i, -2147483647i))), _wgslsmith_mod_i32(8087i, arg_2.x), arg_2.x), -1i);
    global0 = array<f32, 22>();
    var var_3 = func_2();
    return Struct_1(vec2<bool>(-(var_2.x >> (46641u % 32u)) >= 1i, (2363f <= _wgslsmith_div_f32(-737f, arg_0.x)) && true));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(7936u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 503f, -1733f))))), vec2<u32>(_wgslsmith_mult_u32(~select(u_input.b.x, 0u, true), u_input.b.x), ~1u), vec3<i32>(_wgslsmith_mod_i32(2147483647i, func_4(func_2(), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(10901u, u_input.a, u_input.b.x, u_input.b.x)))), ~(-(2147483647i >> (u_input.a % 32u))), reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -63357i, 0i), vec3<i32>(-2147483647i, -15456i, -45376i)))));
    global1 = array<vec2<i32>, 9>();
    var var_1 = -19426i >> (~_wgslsmith_clamp_u32(~10151u, abs(1u), ~u_input.b.x) % 32u);
    global0 = array<f32, 22>();
    var var_2 = select(!vec4<bool>(false, -2147483647i <= _wgslsmith_dot_vec3_i32(vec3<i32>(36230i, -2147483647i, -20955i), vec3<i32>(10315i, -35540i, -28779i)), true, !(global0[_wgslsmith_index_u32(u_input.a, 22u)] == global0[_wgslsmith_index_u32(12127u, 22u)])), select(vec4<bool>(!var_0.a.x, true, (global0[_wgslsmith_index_u32(u_input.a, 22u)] <= 769f) & true, false), select(!vec4<bool>(true, true, var_0.a.x, false), vec4<bool>(true, var_0.a.x, !var_0.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, true, true, var_0.a.x)), var_0.a.x), var_0.a.x);
    return Struct_1(select(select(!func_2().a, vec2<bool>(true, !var_0.a.x), (true == var_2.x) && var_0.a.x), vec2<bool>((i32(-1i) * -1i) >= func_4(Struct_1(var_0.a), vec4<u32>(4294967295u, 4294967295u, 103724u, u_input.a)), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let var_0 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -712f) - -138f));
    global2 = var_0;
    let var_1 = func_1();
    let var_2 = all(select(vec4<bool>(!all(vec3<bool>(true, var_1.a.x, false)), global0[_wgslsmith_index_u32(~67353u, 22u)] <= -133f, var_1.a.x, !func_1().a.x), vec4<bool>(func_5(vec3<f32>(359f, var_0, var_0), u_input.b, vec3<i32>(-1i, -1i, -1i)).a.x & !var_1.a.x, true, true, _wgslsmith_clamp_i32(1i, -1i, -44862i) == (-23953i << (1u % 32u))), vec4<bool>(func_2().a.x, !var_1.a.x, func_1().a.x || var_1.a.x, var_1.a.x)));
    let var_3 = min(vec4<i32>(countOneBits(max(7070i, ~(-50616i))), select(4722i, 76367i, all(select(vec4<bool>(true, true, var_2, false), vec4<bool>(var_1.a.x, false, var_1.a.x, false), vec4<bool>(var_1.a.x, true, var_1.a.x, true)))), ~func_4(func_1(), countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.a))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(-1i, 2147483647i, 2147483647i)), vec3<i32>(40928i, -2147483647i, 5232i)) << (u_input.a % 32u)), _wgslsmith_mult_vec4_i32(~min(_wgslsmith_add_vec4_i32(vec4<i32>(35085i, -1i, -13421i, -13421i), vec4<i32>(-2147483647i, 4509i, -25795i, -21895i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-10469i, 3546i, 7631i, -2147483647i), vec4<i32>(33250i, -1i, 14454i, 65218i), vec4<i32>(-2147483647i, -146i, 0i, -18984i))), countOneBits(min(~vec4<i32>(-7465i, 8841i, -1i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(22734i, 16783i, -2147483647i, -13859i), vec4<i32>(1i, 1735i, 1i, 33081i))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec3<i32>(var_3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-7851i, -2147483647i, var_3.x), -vec3<i32>(var_3.x, var_3.x, var_3.x)), ~28641i), vec4<u32>(12204u, _wgslsmith_mult_u32(u_input.a, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 122488u), vec4<u32>(4294967295u, u_input.a, u_input.b.x, u_input.b.x)))), _wgslsmith_div_u32(u_input.a, u_input.a), 11431u), max(vec3<i32>(firstLeadingBit(2147483647i), i32(-1i) * -1i, min(var_3.x, 2147483647i)), -var_3.xwx), ~reverseBits(~vec4<u32>(26373u, 1u, u_input.a, 1u)) >> (min(abs(vec4<u32>(40u, u_input.a, u_input.b.x, u_input.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(80229u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.b.x)), u_input.b.x, ~u_input.a, u_input.b.x)) % vec4<u32>(32u)));
}

