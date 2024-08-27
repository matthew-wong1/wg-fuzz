struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<u32>(67257u, 0u), vec4<bool>(false, false, false, false)), vec2<f32>(651f, 453f), Struct_1(vec2<u32>(52230u, 4294967295u), vec4<bool>(true, false, true, false)), vec2<f32>(959f, -771f), -753f), vec4<i32>(-49939i, 69088i, -13766i, 1i), vec3<u32>(873u, 0u, 4294967295u), vec2<f32>(-630f, -1000f));

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<u32>(0u, 25329u), vec4<bool>(true, false, true, true)), Struct_1(vec2<u32>(14018u, 62257u), vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(17089u, 0u), vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(40177u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(4294967295u, 36924u), vec4<bool>(false, true, true, false)), Struct_1(vec2<u32>(4294967295u, 59344u), vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(4294967295u, 51194u), vec4<bool>(false, true, true, true)), Struct_1(vec2<u32>(33404u, 50370u), vec4<bool>(true, true, false, true)), Struct_1(vec2<u32>(0u, 26098u), vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(55000u, 12332u), vec4<bool>(true, false, false, false)), Struct_1(vec2<u32>(1277u, 127703u), vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(4294967295u, 23384u), vec4<bool>(false, false, true, false)), Struct_1(vec2<u32>(1u, 4294967295u), vec4<bool>(true, false, false, true)), Struct_1(vec2<u32>(12041u, 1u), vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(30251u, 41770u), vec4<bool>(true, true, true, false)), Struct_1(vec2<u32>(0u, 15049u), vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(0u, 1u), vec4<bool>(true, true, true, true)), Struct_1(vec2<u32>(0u, 1u), vec4<bool>(false, false, false, true)), Struct_1(vec2<u32>(4294967295u, 0u), vec4<bool>(false, false, true, true)), Struct_1(vec2<u32>(73967u, 43922u), vec4<bool>(false, false, false, true)));

var<private> global2: vec2<f32>;

var<private> global3: array<u32, 6>;

var<private> global4: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(43020u, 23364u, 0u), vec3<u32>(89657u, 16656u, 0u), vec3<u32>(0u, 12199u, 11880u), vec3<u32>(8921u, 88191u, 1u), vec3<u32>(4294967295u, 18072u, 4294967295u), vec3<u32>(33077u, 34636u, 3461u), vec3<u32>(1u, 1u, 35643u), vec3<u32>(1u, 26217u, 36166u), vec3<u32>(0u, 10070u, 0u), vec3<u32>(23032u, 61627u, 0u), vec3<u32>(75981u, 4294967295u, 44988u), vec3<u32>(60526u, 46262u, 4294967295u), vec3<u32>(1u, 1u, 24246u), vec3<u32>(1u, 0u, 0u), vec3<u32>(93929u, 4294967295u, 30168u), vec3<u32>(13290u, 34273u, 12253u), vec3<u32>(0u, 66236u, 11334u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 10817u), vec3<u32>(4294967295u, 0u, 7215u), vec3<u32>(9644u, 0u, 4294967295u), vec3<u32>(22625u, 83050u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<i32> {
    global3 = array<u32, 6>();
    let var_0 = global0.a.a.b.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-815f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a.b.x, -695f, select(true, false, global0.a.c.b.x))) - 748f))));
    var var_2 = max(31895i << (_wgslsmith_div_u32(global0.a.c.a.x ^ 36461u, u_input.c.x >> (21577u % 32u)) % 32u), u_input.a) << (~16286u % 32u);
    global0 = Struct_3(Struct_2(Struct_1(~(~vec2<u32>(87992u, 1u)), select(!vec4<bool>(global0.a.c.b.x, global0.a.a.b.x, true, global0.a.a.b.x), vec4<bool>(false, false, false, global0.a.a.b.x), !global0.a.c.b)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(649f, 1234f), global0.d)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, -223f))))), global1[_wgslsmith_index_u32(0u, 20u)], vec2<f32>(_wgslsmith_f_op_f32(-811f - -549f), -332f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.x)) - _wgslsmith_f_op_f32(-global0.d.x)))), _wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(~(~global0.b.x), 1i, _wgslsmith_dot_vec2_i32(global0.b.yz, _wgslsmith_clamp_vec2_i32(vec2<i32>(27811i, u_input.a), global0.b.wx, vec2<i32>(-9571i, u_input.a))), global0.b.x)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, ~4294967295u, u_input.b) >> (_wgslsmith_sub_u32(select(8u, global0.a.a.a.x, global0.a.a.b.x), ~25685u) % 32u), min(global0.a.a.a.x, ~47581u), ~(~0u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global0.a.b.x)) + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(global0.d.x, 135f)));
    return global0.b;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32) -> i32 {
    let var_0 = -25464i;
    global0 = Struct_3(Struct_2(Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8213u, 23228u, u_input.b, global3[_wgslsmith_index_u32(14598u, 6u)]), u_input.c), 12726u), global0.a.a.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.d - global0.a.d))), global1[_wgslsmith_index_u32(~u_input.c.x, 20u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-641f, _wgslsmith_f_op_f32(max(352f, global0.a.d.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2971f))), _wgslsmith_f_op_f32(abs(-398f))), vec4<i32>(47975i, var_0, -(~2147483647i), -6284i), vec3<u32>(u_input.b, ~4294967295u, u_input.c.x) << (vec3<u32>(9867u, ~42898u, u_input.b) % vec3<u32>(32u)), global0.d);
    var var_1 = Struct_4(Struct_3(Struct_2(Struct_1(firstTrailingBit(global0.a.a.a), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.d.x, arg_0)) + _wgslsmith_f_op_vec2_f32(-global0.a.d)), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(22884u, 6u)], global0.c.x), u_input.c.zz), select(global0.a.c.b, vec4<bool>(global0.a.a.b.x, false, true, false), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global0.d.x) + vec2<f32>(global2.x, arg_0)) * _wgslsmith_f_op_vec2_f32(global0.a.d - vec2<f32>(579f, global0.a.d.x))), _wgslsmith_f_op_f32(abs(431f))), func_3(), vec3<u32>(_wgslsmith_div_u32(0u, u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global0.a.c.a.x, 6u)], u_input.c.x), u_input.c.xz), max(99906u, u_input.b)) >> (vec3<u32>(min(1u, global0.c.x), _wgslsmith_mult_u32(global0.a.a.a.x, global3[_wgslsmith_index_u32(72682u, 6u)]), u_input.c.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-global0.a.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-9055i, arg_2), _wgslsmith_sub_i32(0i, 34829i) >> (global3[_wgslsmith_index_u32(_wgslsmith_div_u32(61471u, 39496u), 6u)] % 32u)), global0.b.zx, -global0.b.wx));
    global4 = array<vec3<u32>, 22>();
    return 49072i;
}

fn func_1() -> vec4<i32> {
    global3 = array<u32, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(709f - global0.d.x), _wgslsmith_f_op_f32(round(-1105f)))) + -838f), 415f, global0.d.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1526f, 2002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(908f, global0.a.b.x, 1913f) * vec3<f32>(global0.a.b.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, 1362f, -950f)))))));
    return _wgslsmith_clamp_vec4_i32(global0.b & global0.b, _wgslsmith_mult_vec4_i32(vec4<i32>(45873i, min(u_input.a, 20040i), global0.b.x, ~(-u_input.a)), reverseBits(~(~vec4<i32>(26698i, global0.b.x, global0.b.x, u_input.a)))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-u_input.a, _wgslsmith_div_i32(global0.b.x, u_input.a)), u_input.a, u_input.a, func_2(global0.d.x, global0.a.a.b.x, global0.b.x)), select(vec4<i32>(u_input.a, -u_input.a, _wgslsmith_dot_vec2_i32(global0.b.yx, vec2<i32>(-2147483647i, -1i)), _wgslsmith_dot_vec2_i32(global0.b.ww, vec2<i32>(0i, global0.b.x))), firstLeadingBit(vec4<i32>(7958i, -2147483647i, -25518i, global0.b.x)) | global0.b, global0.a.c.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 22>();
    global0 = Struct_3(global0.a, select(_wgslsmith_add_vec4_i32(global0.b, vec4<i32>(_wgslsmith_div_i32(16935i, u_input.a), global0.b.x, global0.b.x, -1i)), _wgslsmith_sub_vec4_i32(func_1(), vec4<i32>(-52769i, 1i, u_input.a, 1i)), _wgslsmith_dot_vec3_u32(global0.c, ~vec3<u32>(6845u, u_input.c.x, global3[_wgslsmith_index_u32(4294967295u, 6u)])) == ~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4601u, 6u)], 6u)]), u_input.c.zyw, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -211f)), global0.a.b))), global0.a.d, global0.a.c.b.yy)));
    let var_0 = true;
    let var_1 = Struct_4(Struct_3(global0.a, select(global0.b, func_1() | abs(vec4<i32>(u_input.a, u_input.a, 34588i, global0.b.x)), vec4<bool>(true, !var_0, global0.a.d.x > global2.x, true)), max(vec3<u32>(58366u, 0u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(110086u, 6u)], 19488u, u_input.b), abs(global0.c))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(282f, global2.x) - -560f), global2.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(18488i, -2147483647i), _wgslsmith_sub_i32(-36743i, 13189i)), abs(-global0.b.yz)) >> (vec2<u32>(select(_wgslsmith_mod_u32(38876u, 30278u), firstLeadingBit(4294967295u), all(global0.a.c.b.ww)), ~(u_input.b | 4294967295u)) % vec2<u32>(32u)));
    global3 = array<u32, 6>();
    var var_2 = -30124i;
    var var_3 = (0u >> (var_1.a.a.c.a.x % 32u)) ^ 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, -623f, global2.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1959f, var_1.a.a.d.x, global2.x)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.d.x, global2.x, global2.x) - vec3<f32>(global2.x, -1183f, global0.a.b.x))))))));
}

