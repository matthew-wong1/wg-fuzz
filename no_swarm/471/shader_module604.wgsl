struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22>;

var<private> global1: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(vec3<i32>(20813i, -53450i, -7902i), vec4<u32>(0u, 0u, 9751u, 0u)), Struct_4(vec3<i32>(0i, 1i, 30993i), vec4<u32>(1u, 1u, 22041u, 37096u)), Struct_4(vec3<i32>(-23158i, 0i, 25613i), vec4<u32>(53669u, 0u, 0u, 0u)), Struct_4(vec3<i32>(-60531i, -30457i, 1i), vec4<u32>(50606u, 4294967295u, 0u, 0u)), Struct_4(vec3<i32>(-1i, -6962i, -1i), vec4<u32>(24870u, 33888u, 33239u, 1u)), Struct_4(vec3<i32>(-1i, -25562i, -1i), vec4<u32>(4294967295u, 24273u, 60014u, 4294967295u)), Struct_4(vec3<i32>(1i, 66789i, 1369i), vec4<u32>(52337u, 35978u, 43425u, 10970u)), Struct_4(vec3<i32>(-1i, 23294i, 11137i), vec4<u32>(0u, 32857u, 5104u, 46451u)), Struct_4(vec3<i32>(34112i, 0i, 10706i), vec4<u32>(0u, 16560u, 4700u, 1u)), Struct_4(vec3<i32>(i32(-2147483648), 0i, -326i), vec4<u32>(4294967295u, 31123u, 2025u, 13344u)), Struct_4(vec3<i32>(2147483647i, 1i, 1i), vec4<u32>(25049u, 1u, 0u, 1u)), Struct_4(vec3<i32>(-1i, 1i, -23602i), vec4<u32>(26474u, 1u, 45787u, 1u)), Struct_4(vec3<i32>(2147483647i, -45144i, 0i), vec4<u32>(4294967295u, 53751u, 4294967295u, 1u)), Struct_4(vec3<i32>(2147483647i, 2362i, -36299i), vec4<u32>(1u, 0u, 59043u, 6901u)), Struct_4(vec3<i32>(0i, -36484i, -11976i), vec4<u32>(1u, 0u, 4294967295u, 1u)), Struct_4(vec3<i32>(0i, 0i, 2147483647i), vec4<u32>(1u, 3615u, 1u, 58750u)), Struct_4(vec3<i32>(i32(-2147483648), 1i, 41900i), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_4(vec3<i32>(-16279i, -1i, 13103i), vec4<u32>(26610u, 0u, 44402u, 1u)), Struct_4(vec3<i32>(1i, 1958i, 87193i), vec4<u32>(1u, 1u, 38332u, 0u)), Struct_4(vec3<i32>(-9982i, i32(-2147483648), -46852i), vec4<u32>(47676u, 10571u, 46719u, 16681u)), Struct_4(vec3<i32>(2147483647i, i32(-2147483648), 0i), vec4<u32>(4294967295u, 67312u, 4294967295u, 54016u)), Struct_4(vec3<i32>(-1i, -1i, -1i), vec4<u32>(1u, 43907u, 86989u, 4294967295u)), Struct_4(vec3<i32>(i32(-2147483648), -1i, -5055i), vec4<u32>(1u, 32795u, 0u, 21252u)), Struct_4(vec3<i32>(-1i, 35148i, 0i), vec4<u32>(1u, 4294967295u, 25240u, 19567u)), Struct_4(vec3<i32>(0i, 0i, i32(-2147483648)), vec4<u32>(0u, 3104u, 4294967295u, 4294967295u)), Struct_4(vec3<i32>(0i, 0i, 27731i), vec4<u32>(4294967295u, 0u, 59927u, 58350u)), Struct_4(vec3<i32>(-45099i, 41139i, 1i), vec4<u32>(16195u, 0u, 32835u, 0u)));

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(441f, arg_0.x));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), true))));
    let var_1 = 938f;
    let var_2 = _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(reverseBits(~arg_3.b.yyw), ~firstLeadingBit(vec3<u32>(arg_1.a, arg_1.a, 1u))), vec3<u32>(u_input.a, 2891u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_1.a, arg_3.b.x, arg_3.b.x), ~4294967295u)));
    global1 = array<Struct_4, 27>();
    return ~(~_wgslsmith_div_i32(-42153i, max(1i, 1i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(~0i, i32(-1i) * -2147483647i, 20296i, func_3(vec4<f32>(-129f, -231f, -383f, 1299f), Struct_1(arg_0.a), arg_1, Struct_4(vec3<i32>(1i, 2037i, -1i), vec4<u32>(u_input.b.x, arg_0.a, 4294967295u, 0u)))), select(vec4<i32>(1i, -2147483647i, -1i, -1i), ~vec4<i32>(2147483647i, -47854i, 1i, 2147483647i), true)), -(vec4<i32>(-1i) * -vec4<i32>(3102i, -1i, 1i, -49677i)));
    var var_2 = global0[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(~16131u << (0u % 32u), (arg_2.a ^ 1u) | u_input.c.x) >> (~(~42506u) % 32u)), 22u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1201f, -1129f))), -541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-463f + -601f) - _wgslsmith_f_op_f32(f32(-1f) * -1684f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-388f, -820f)), -340f)) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1498f - -2815f), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-872f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1505f, _wgslsmith_f_op_f32(1176f * 1000f), -1631f, _wgslsmith_f_op_f32(367f * 872f))))), select(select(vec4<bool>(false, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), arg_1.x, true), !vec4<bool>(arg_1.x, true, arg_1.x, false), arg_1), !select(vec4<bool>(true, arg_1.x, true, false), arg_1, true), select(!select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), arg_1, arg_1), !(!arg_1), vec4<bool>(select(arg_1.x, true, arg_1.x), true, arg_1.x, arg_1.x)))));
    let var_4 = var_3.wy;
    return Struct_2(~65887u, _wgslsmith_f_op_f32(-167f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2753f), _wgslsmith_f_op_f32(-var_4.x), arg_1.x && true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-191f, -268f)) - _wgslsmith_f_op_f32(select(var_4.x, var_4.x, arg_1.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = arg_2.x;
    var_0 = ~21709i;
    let var_1 = vec2<f32>(528f, _wgslsmith_f_op_f32(select(917f, _wgslsmith_f_op_f32(f32(-1f) * -105f), true != (all(vec3<bool>(true, false, true)) && false))));
    let var_2 = vec4<bool>(!select(true, true, true), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_3.x), abs(vec4<u32>(arg_1.a, 46095u, u_input.b.x, u_input.b.x))), _wgslsmith_mult_u32(0u, arg_0.a)) >= arg_0.a, any(!vec4<bool>(false, true, any(vec2<bool>(true, true)), any(vec2<bool>(true, true)))), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)) && true);
    let var_3 = vec2<bool>(any(vec4<bool>(true, var_2.x, false, select(var_2.x, false, var_2.x) && (var_1.x > -275f))), any(select(var_2.zxw, vec3<bool>(var_2.x, arg_2.x >= -12161i, !var_2.x), !var_2.wyw)));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    return select(0i, ~min(1i, ~(-60703i)) >> (func_4(arg_0, func_4(func_2(Struct_1(arg_1.a), vec4<bool>(false, true, false, true), Struct_1(arg_1.a)), func_4(arg_0, arg_0, vec2<i32>(2147483647i, -1i), vec2<u32>(arg_0.a, 1u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(3085i, 28230i), vec2<i32>(0i, 1i), vec2<i32>(-2147483647i, -8798i)), u_input.b.zz), ~(~vec2<i32>(-13991i, 0i)), u_input.c.xz << (~vec2<u32>(7081u, 72010u) % vec2<u32>(32u))).a % 32u), true);
}

fn func_1() -> u32 {
    global0 = array<Struct_4, 22>();
    var var_0 = Struct_4(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(32344i, -1i, 31985i)), vec3<i32>(1i, ~1i, firstTrailingBit(-66597i) & 21880i), vec3<i32>(~(-1i), 1i, -10169i)), abs(min(vec4<u32>(_wgslsmith_add_u32(1u, u_input.b.x), 114948u, u_input.c.x | 4294967295u, u_input.c.x), vec4<u32>(abs(u_input.a), 1u, firstTrailingBit(u_input.b.x), ~55912u))));
    var var_1 = 4045i;
    let var_2 = func_5(func_4(func_2(Struct_1(abs(u_input.c.x)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), Struct_1(1u)), func_2(Struct_1(~4294967295u), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), Struct_1(firstLeadingBit(1u))), ~vec2<i32>(var_0.a.x, -1i) | _wgslsmith_add_vec2_i32(var_0.a.xz, -vec2<i32>(57687i, var_0.a.x)), ~vec2<u32>(_wgslsmith_mod_u32(1u, 26531u), 1u << (u_input.c.x % 32u))), Struct_3(u_input.c.x));
    let var_3 = true;
    return var_0.b.x & ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(func_1(), 22u)];
    global2 = 600f;
    var_0 = Struct_4(select(abs(vec3<i32>(var_0.a.x, _wgslsmith_sub_i32(21662i, var_0.a.x), 2147483647i)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a, min(var_0.a, var_0.a)), ~vec3<i32>(-3397i, -1i, var_0.a.x)), true && select(true, true, true)), vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 0u, var_0.b.x, 1u), var_0.b), min(_wgslsmith_div_u32(0u, 1u) << (var_0.b.x % 32u), ~51449u), 40568u ^ ~_wgslsmith_mod_u32(var_0.b.x, u_input.b.x)));
    let var_1 = Struct_3(_wgslsmith_mod_u32(var_0.b.x, 4294967295u));
    let var_2 = Struct_2(var_1.a, -696f);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(-567f + var_2.b), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(max(-332f, 2410f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b, var_2.b, var_2.b, -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.b, 1612f, 668f, var_2.b), vec4<f32>(-607f, 825f, -139f, var_2.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(-900f, -396f, 140f, var_2.b), vec4<f32>(-1689f, var_2.b, var_2.b, 953f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, var_2.b, -2116f) * vec3<f32>(var_2.b, var_2.b, var_2.b)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b, -112f, 1000f))))))), var_2.b, var_0.b);
}

