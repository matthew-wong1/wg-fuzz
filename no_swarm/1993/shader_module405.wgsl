struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(709f, 554f, 278f, -671f), vec4<f32>(-1153f, -466f, -133f, -410f), arg_3.b.x)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1505f, -891f, -1507f, -583f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1501f, 366f, 1117f, 926f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2127f, 527f, -1411f, -954f), vec4<f32>(366f, 787f, -250f, 2297f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-497f, 193f, -1331f, 905f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, 1029f, 177f, 1000f))))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))))));
}

fn func_2() -> Struct_4 {
    var var_0 = 1i;
    let var_1 = -321f;
    var var_2 = abs(u_input.d.x);
    let var_3 = Struct_3(vec4<f32>(-1192f, var_1, var_1, 464f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(406f - -522f), _wgslsmith_div_f32(var_1, var_1), -614f), _wgslsmith_f_op_vec3_f32(func_3(~0u, vec2<bool>(true, true), vec2<bool>(true, true), Struct_1(-2147483647i, vec2<bool>(false, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(u_input.a.x, vec2<bool>(false, true), vec2<bool>(true, true), Struct_1(-2147483647i, vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 576f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, var_1, 1195f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -1000f, 1000f), vec3<f32>(var_1, -591f, -1347f), vec3<bool>(true, false, true))))), vec3<bool>(true, true, true))), vec4<f32>(var_1, 558f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f * var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(771f * _wgslsmith_f_op_vec3_f32(func_3(81134u, vec2<bool>(true, true), vec2<bool>(false, false), Struct_1(2147483647i, vec2<bool>(false, false)))).x))), u_input.c.zx);
    var var_4 = var_3;
    return Struct_4(Struct_1(1i, vec2<bool>(true, true)), ~firstLeadingBit(vec2<u32>(108821u, 27116u)));
}

fn func_4(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = !(!arg_0.a.b.x);
    let var_1 = firstTrailingBit(select(vec4<u32>(4606u << (u_input.b % 32u), 47644u, 25024u, 4294967295u), select(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, 24801u, arg_0.b.x, arg_0.b.x)), vec4<u32>(0u, 1u, 62565u, u_input.a.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4294967295u, 21914u), vec4<u32>(4294967295u, arg_0.b.x, u_input.b, 1u)), !select(vec4<bool>(arg_0.a.b.x, var_0, false, var_0), vec4<bool>(true, true, arg_0.a.b.x, var_0), var_0)), vec4<bool>(arg_0.a.b.x, var_0, any(select(vec4<bool>(arg_0.a.b.x, false, true, arg_0.a.b.x), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, var_0, false, var_0))), !(!arg_0.a.b.x))));
    let var_2 = _wgslsmith_sub_i32(~abs(0i << (var_1.x % 32u)), i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.a.a, arg_0.a.a), vec3<i32>(-2147483647i, 51091i, u_input.c.x)), _wgslsmith_div_i32(23223i, u_input.d.x)));
    var var_3 = max(var_1.ywz, ~(abs(countOneBits(var_1.wyw)) >> (~vec3<u32>(arg_0.b.x, arg_0.b.x, 43608u) % vec3<u32>(32u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2278f * -984f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(-741f + -1321f), var_0))))));
    return !vec3<bool>(!(~(-35015i) == _wgslsmith_sub_i32(11762i, var_2)), ((var_3.x <= var_1.x) & all(vec2<bool>(var_0, var_0))) != func_2().a.b.x, true);
}

fn func_1() -> Struct_5 {
    let var_0 = ~0u;
    var var_1 = Struct_2(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), func_4(func_2()), func_2().a.b.x), false);
    var_1 = Struct_2(!select(vec3<bool>(select(var_1.a.x, true, var_1.b), var_1.a.x, false), vec3<bool>(var_1.b, u_input.d.x == u_input.d.x, var_1.a.x), all(select(vec3<bool>(var_1.b, var_1.a.x, var_1.b), var_1.a, vec3<bool>(true, var_1.a.x, var_1.b)))), any(func_4(Struct_4(func_2().a, countOneBits(vec2<u32>(4294967295u, var_0))))));
    var var_2 = Struct_3(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-501f, _wgslsmith_f_op_f32(-125f - -600f), func_4(Struct_4(Struct_1(-2147483647i, var_1.a.xx), u_input.a)).x))), _wgslsmith_f_op_f32(step(-1219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1650f + 1089f)))), _wgslsmith_f_op_f32(step(-1366f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, 193f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, 135f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-130f)), _wgslsmith_f_op_f32(ceil(-357f)), true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -858f), 434f, !var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) + _wgslsmith_div_f32(-1000f, -733f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1198f)), -212f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-709f))) + _wgslsmith_f_op_f32(1417f * _wgslsmith_f_op_f32(floor(-719f))))), _wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.d.x, abs(0i)), u_input.d.yz, var_1.b), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.zy, vec2<i32>(u_input.d.x, 21480i)), select(u_input.c.xy, u_input.c.xz, var_1.b)) << (_wgslsmith_div_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(110669u, 4294967295u), vec2<u32>(4294967295u, 1u))) % vec2<u32>(32u))));
    var_2 = Struct_3(vec4<f32>(611f, var_2.c.x, var_2.a.x, -264f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(-560f, 1348f)), _wgslsmith_f_op_f32(var_2.a.x + -302f), _wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.x, -619f, var_2.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, -1105f, var_2.a.x) - var_2.c.yzz)) * _wgslsmith_f_op_vec3_f32(-var_2.c.wzw)), false)), vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - var_2.a.x), var_2.a.x, !var_1.a.x)), _wgslsmith_f_op_f32(-121f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2.c.x, var_2.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-722f, 590f))))), vec2<i32>(_wgslsmith_mult_i32(-2825i << (var_0 % 32u), -var_2.d.x) & -23352i, _wgslsmith_clamp_i32(1i, func_2().a.a, var_2.d.x) | u_input.c.x));
    return Struct_5(vec2<bool>(!((false && var_1.b) && var_1.b), true), vec2<i32>(var_2.d.x >> (4294967295u % 32u), ~(~0i)), func_4(Struct_4(Struct_1(2147483647i, var_1.a.xx), u_input.a ^ countOneBits(vec2<u32>(15240u, 5911u)))), -26994i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_4(Struct_1(reverseBits(-2147483647i ^ ~var_0.d), vec2<bool>(u_input.b <= _wgslsmith_div_u32(u_input.a.x, u_input.b), ~u_input.b >= u_input.a.x)), u_input.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1547f, _wgslsmith_div_f32(-1243f, 283f), _wgslsmith_f_op_f32(trunc(-850f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-706f, 1000f, 2763f)))))))));
    var var_3 = u_input.b;
    var var_4 = var_1.a.b.x;
    var_3 = var_1.b.x;
    let var_5 = all(var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a, _wgslsmith_add_vec3_i32(vec3<i32>(-var_0.b.x, ~min(15891i, 1976i), firstLeadingBit(45811i)), select(vec3<i32>(max(0i, -23717i), -1i, 1i), vec3<i32>(min(-2147483647i, 19441i), _wgslsmith_mult_i32(var_0.d, var_1.a.a), _wgslsmith_add_i32(-1i, u_input.d.x)), true)), var_1.a.a, vec4<i32>(var_0.b.x, i32(-1i) * -2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.a.a, 8098i), 2147483647i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-74823i, var_0.d), vec2<i32>(-1884i, -1i)), 33485i)) << (~(~(vec4<u32>(var_1.b.x, 21910u, var_1.b.x, 4294967295u) >> (vec4<u32>(1u, u_input.a.x, var_1.b.x, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec3<u32>((func_2().b.x & ~4793u) >> (26724u % 32u), countOneBits(min(abs(1u), _wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(var_1.b.x, var_1.b.x)))), var_1.b.x));
}

