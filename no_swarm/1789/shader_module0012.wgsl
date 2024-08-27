struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(982f, vec2<i32>(-11270i, -76783i), vec4<i32>(20841i, 2147483647i, 16898i, i32(-2147483648)), -246f, -1i), Struct_1(1812f, vec2<i32>(-12989i, i32(-2147483648)), vec4<i32>(8884i, -42466i, 1i, -732i), 1293f, 62153i), Struct_1(-1493f, vec2<i32>(-52988i, i32(-2147483648)), vec4<i32>(-65902i, -69686i, -1i, -20563i), -1125f, 12491i), Struct_1(-306f, vec2<i32>(-5823i, 30031i), vec4<i32>(78299i, -54493i, i32(-2147483648), i32(-2147483648)), 444f, 66009i), Struct_1(920f, vec2<i32>(2147483647i, 1i), vec4<i32>(i32(-2147483648), 42749i, 2147483647i, 0i), -1000f, 1i), Struct_1(1636f, vec2<i32>(23760i, -2015i), vec4<i32>(38839i, 2147483647i, 1i, 6652i), -507f, -12596i), Struct_1(1283f, vec2<i32>(22918i, 34298i), vec4<i32>(-1i, 69533i, -4650i, 1i), 785f, i32(-2147483648)), Struct_1(1112f, vec2<i32>(0i, 25690i), vec4<i32>(-30537i, 2147483647i, -1i, -45720i), 1181f, -1i), Struct_1(722f, vec2<i32>(14665i, -271i), vec4<i32>(10582i, 60719i, -14924i, i32(-2147483648)), -2769f, i32(-2147483648)), Struct_1(-1380f, vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648)), 385f, -28675i), Struct_1(1226f, vec2<i32>(-40528i, 8371i), vec4<i32>(-1i, i32(-2147483648), 22937i, 0i), -1165f, 2147483647i), Struct_1(1629f, vec2<i32>(2147483647i, 9992i), vec4<i32>(40698i, 17475i, i32(-2147483648), 0i), 371f, 53267i), Struct_1(193f, vec2<i32>(1i, -26776i), vec4<i32>(-1i, -55388i, 27032i, 0i), 323f, i32(-2147483648)), Struct_1(1009f, vec2<i32>(0i, -1i), vec4<i32>(0i, 2147483647i, 51558i, 3385i), 1000f, -11260i), Struct_1(463f, vec2<i32>(1i, 0i), vec4<i32>(i32(-2147483648), 0i, 28652i, 1i), 447f, 7960i), Struct_1(-2014f, vec2<i32>(-29851i, -33514i), vec4<i32>(35639i, -7416i, i32(-2147483648), 28531i), 155f, 36442i), Struct_1(-534f, vec2<i32>(i32(-2147483648), -12769i), vec4<i32>(-1i, 2147483647i, 12947i, 2147483647i), 1000f, 21342i), Struct_1(428f, vec2<i32>(52855i, -55878i), vec4<i32>(0i, 2147483647i, -38430i, 2147483647i), 595f, -1i), Struct_1(-274f, vec2<i32>(47749i, -1i), vec4<i32>(5277i, 0i, 28666i, -1i), 846f, -55598i), Struct_1(577f, vec2<i32>(23015i, -24970i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), -1i), -463f, 40937i), Struct_1(258f, vec2<i32>(-30682i, 16901i), vec4<i32>(0i, 0i, 0i, -42691i), -379f, i32(-2147483648)), Struct_1(-1316f, vec2<i32>(-6498i, 2147483647i), vec4<i32>(0i, 14082i, 2412i, 1i), -245f, 1i), Struct_1(1000f, vec2<i32>(-1i, 1i), vec4<i32>(-17719i, 77299i, 2147483647i, 0i), 2611f, 20532i), Struct_1(443f, vec2<i32>(-23941i, -32425i), vec4<i32>(-12234i, 40142i, i32(-2147483648), 1i), -620f, i32(-2147483648)), Struct_1(905f, vec2<i32>(0i, -5395i), vec4<i32>(-1i, 52582i, -69311i, 1i), -344f, 2147483647i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    global0 = array<i32, 6>();
    var var_0 = 1000f;
    global1 = array<Struct_1, 25>();
    var var_1 = ~u_input.a;
    var_0 = -210f;
    return 9692u;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 25u)];
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-(~(i32(-1i) * -1i)), max(-global0[_wgslsmith_index_u32(~1u, 6u)], -2147483647i), 0i, u_input.b), vec4<i32>(0i, (i32(-1i) * -global0[_wgslsmith_index_u32(0u, 6u)]) << ((func_3() | 34435u) % 32u), i32(-1i) * -12115i, ~(-_wgslsmith_div_i32(-83696i, -1i))));
    let var_2 = var_0.a;
    var_1 = vec4<i32>(-_wgslsmith_div_i32(-u_input.b ^ ~(-1i), u_input.b), -(-2147483647i & var_1.x), global0[_wgslsmith_index_u32(u_input.a >> ((u_input.a << (0u % 32u)) % 32u), 6u)] & _wgslsmith_clamp_i32(-(~global0[_wgslsmith_index_u32(4294967295u, 6u)]), -(~(-2147483647i)), 56476i), firstLeadingBit(var_0.e));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, 702f) * var_0.d))), vec2<i32>(abs(1i), global0[_wgslsmith_index_u32(1u, 6u)] << (_wgslsmith_div_u32(max(10548u, arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(75794u, arg_0.x, u_input.a, u_input.a), vec4<u32>(arg_0.x, 84944u, 1439u, arg_0.x))) % 32u)), var_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d)) - _wgslsmith_f_op_f32(-var_0.d)))), global0[_wgslsmith_index_u32(4294967295u, 6u)]);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = countOneBits(abs(abs(-1i)));
    let var_1 = 1i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), ~arg_2, vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(u_input.a, min(u_input.a, arg_1), true), ~(~arg_1)), 6u)], -1i, -2147483647i, global0[_wgslsmith_index_u32(firstTrailingBit(~arg_1), 6u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-752f, arg_0.d))), 774f)), -(~_wgslsmith_dot_vec3_i32(arg_0.c.xxw, vec3<i32>(var_1, 21681i, -2147483647i) & arg_0.c.yyw)));
    var var_3 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(~0u | u_input.a, ~(~1099u), ~abs(u_input.a)), firstTrailingBit(~vec3<u32>(arg_1, u_input.a, arg_1)) & (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, arg_1, 40257u), vec3<u32>(u_input.a, 27602u, arg_1)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, arg_1, 4437u), vec3<u32>(arg_1, 19791u, u_input.a)))), ~(~(vec3<u32>(0u, u_input.a, arg_1) ^ vec3<u32>(0u, u_input.a, arg_1))) | ~(firstTrailingBit(vec3<u32>(arg_1, 0u, 0u)) >> (vec3<u32>(24512u, 21367u, 37948u) % vec3<u32>(32u))), select(any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true)), !(-463f == var_2.d)) & false);
    global0 = array<i32, 6>();
    return func_2(var_3.xx);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    global0 = array<i32, 6>();
    global1 = array<Struct_1, 25>();
    let var_0 = false;
    var var_1 = -8176i;
    var var_2 = global1[_wgslsmith_index_u32(~u_input.a, 25u)];
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(13091u, arg_2, arg_2)), countOneBits(vec3<u32>(1u, 8329u, u_input.a)), vec3<u32>(u_input.a, 6981u, u_input.a)), select(~vec3<u32>(arg_2, u_input.a, 95183u), select(vec3<u32>(arg_2, 9938u, 4294967295u), vec3<u32>(35562u, u_input.a, 33649u), vec3<bool>(true, var_0, var_0)), all(vec3<bool>(true, var_0, true)))) >> (abs(~(vec3<u32>(u_input.a, 46795u, 1u) & vec3<u32>(0u, 4294967295u, arg_2)) & max(select(vec3<u32>(32341u, u_input.a, arg_2), vec3<u32>(arg_2, arg_2, arg_2), vec3<bool>(false, true, var_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(10544u, 4294967295u, arg_2)))) % vec3<u32>(32u));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global1 = array<Struct_1, 25>();
    var var_0 = !(any(vec2<bool>(-1579f < arg_0.x, true)) && (347f > arg_0.x));
    var var_1 = _wgslsmith_mult_u32(1u, 1u);
    var var_2 = _wgslsmith_dot_vec3_u32(~(~(~abs(vec3<u32>(4294967295u, u_input.a, 4294967295u)))), ~func_5(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(17926i, 0i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(37787u, 6u)], u_input.b, -21657i), vec3<i32>(u_input.b, u_input.b, 11322i))), func_4(func_2(vec2<u32>(u_input.a, u_input.a)), func_3(), vec2<i32>(global0[_wgslsmith_index_u32(38000u, 6u)], -1i) & vec2<i32>(14673i, global0[_wgslsmith_index_u32(u_input.a, 6u)])), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, 58523u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u), true), vec3<u32>(u_input.a, u_input.a, 3060u))));
    global1 = array<Struct_1, 25>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    var var_0 = !func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1217f, 231f, 1779f, -199f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(807f, -519f, -213f, -2258f)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1010f, -766f, 140f, 458f) - vec4<f32>(1384f, 1000f, 590f, -1135f)))));
    var_0 = true && func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(272f, 1731f, 230f, 290f))));
    var var_1 = !(!(!(!all(vec3<bool>(true, false, false)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(412f - -1210f), _wgslsmith_f_op_f32(f32(-1f) * -215f), true))) * -446f), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-global0[_wgslsmith_index_u32(10914u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)] & -3410i), vec2<i32>(1i, select(2147483647i, global0[_wgslsmith_index_u32(1u, 6u)], false)), vec2<bool>(true, true)), -vec2<i32>(~u_input.b, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], func_4(global1[_wgslsmith_index_u32(u_input.a, 25u)], u_input.a, vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], u_input.b)).e ^ (-2147483647i & global0[_wgslsmith_index_u32(23189u, 6u)]))), -(~min(vec4<i32>(48853i, -2147483647i, -1i, u_input.b), _wgslsmith_add_vec4_i32(vec4<i32>(-39862i, -2147483647i, global0[_wgslsmith_index_u32(20958u, 6u)], -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], u_input.b, global0[_wgslsmith_index_u32(16907u, 6u)], u_input.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -364f) * _wgslsmith_f_op_f32(f32(-1f) * -1155f))), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)])), ~(vec3<i32>(-1i, -2147483647i, u_input.b) & (vec3<i32>(10509i, u_input.b, 50949i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))))));
    var_1 = any(!(!vec2<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(false, false, false, true)))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(step(-1466f, var_2.a))))) + var_2.d), firstLeadingBit(-(vec2<i32>(0i, 14478i) | func_4(Struct_1(var_2.d, vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 6u)]), var_2.c, 1939f, -1i), 29281u, var_2.c.yy).c.yx)), func_2(~(vec2<u32>(16328u, u_input.a) << (~vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(701f - 276f)))), ~(~(_wgslsmith_sub_i32(u_input.b, 1i) >> (u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 1u) & vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(25875u, 1u, u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u), u_input.a, select(26619u, 1u, true))) & firstLeadingBit(select(firstTrailingBit(vec2<u32>(33896u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 56119u)), true)), -_wgslsmith_sub_i32(var_2.b.x, -var_2.e) ^ var_2.c.x, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1034f)))), var_2.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.d, var_2.d), vec2<f32>(var_2.d, -167f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-636f, 1050f), vec2<f32>(1936f, -1316f))), vec2<f32>(var_2.d, var_2.d))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-620f, 220f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(393f, -440f) - vec2<f32>(-1210f, -447f))), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.a)), _wgslsmith_f_op_f32(round(154f)))))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(u_input.b, -2147483647i), global0[_wgslsmith_index_u32(u_input.a, 6u)])), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.b, global0[_wgslsmith_index_u32(1u, 6u)], u_input.b), u_input.b, global0[_wgslsmith_index_u32(1072u, 6u)]), vec3<i32>(var_2.b.x, -1i, -2147483647i))));
}

