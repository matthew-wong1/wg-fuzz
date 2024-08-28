struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(880f, 569f), -1546f, -834f), 1933f);

var<private> global2: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(1i, 1i, 0i), vec3<i32>(-34896i, -23640i, 0i), vec3<i32>(-1i, 1i, 10478i), vec3<i32>(-6140i, -19846i, -1819i), vec3<i32>(-57155i, -1i, -1i), vec3<i32>(23656i, 2147483647i, 1i), vec3<i32>(1i, 54947i, 9000i), vec3<i32>(1i, 1i, 8873i), vec3<i32>(0i, -11839i, -41695i), vec3<i32>(-18569i, 27308i, -1i), vec3<i32>(20250i, 61750i, 14190i), vec3<i32>(-6748i, 54837i, -19331i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(2147483647i, -34609i, 2147483647i), vec3<i32>(-40045i, 17210i, 25346i), vec3<i32>(69205i, 1i, -14772i), vec3<i32>(0i, -16872i, -363i), vec3<i32>(2147483647i, 16543i, -721i), vec3<i32>(2147483647i, -28888i, -1i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(-7329i, 0i, 1i), vec3<i32>(-47318i, 57057i, i32(-2147483648)), vec3<i32>(-1i, 1i, 9549i), vec3<i32>(9578i, 8528i, 1i), vec3<i32>(2147483647i, 44047i, -35178i), vec3<i32>(-1i, -26206i, -1i), vec3<i32>(48113i, 1i, -18207i), vec3<i32>(1i, 17806i, 43404i), vec3<i32>(0i, 39827i, -1i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 0i, 1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    return Struct_3(global1.a, Struct_2(Struct_1(global1.a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.c, global1.a.c) + -2603f), _wgslsmith_div_f32(510f, -562f)), global1.b), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1561f, -2445f) - vec2<f32>(global1.b, global1.b))), _wgslsmith_f_op_f32(1253f - 1f), global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f))), u_input.b.x);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    let var_0 = func_2(true).a.a.x;
    var var_1 = arg_3.c.a;
    let var_2 = ~(~(~reverseBits(vec4<u32>(4294967295u, 68373u, 56564u, 4294967295u)) >> (firstTrailingBit(select(vec4<u32>(arg_2.d, u_input.b.x, arg_3.d, 1u), vec4<u32>(0u, u_input.b.x, arg_2.d, 4294967295u), false)) % vec4<u32>(32u))));
    var var_3 = vec2<u32>(273u, 4294967295u);
    var_3 = u_input.b;
    return 2446f;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-11830i, _wgslsmith_f_op_f32(-936f * _wgslsmith_f_op_f32(func_3(42519i, -1340f, Struct_3(Struct_1(global1.a.a, 626f, arg_0), Struct_2(global1.a, -304f), Struct_2(global1.a, 219f), u_input.b.x), Struct_3(Struct_1(global1.a.a, arg_0, arg_0), Struct_2(global1.a, 225f), Struct_2(global1.a, -204f), 10883u)))), func_2(true), Struct_3(global1.a, Struct_2(global1.a, -672f), func_2(true).c, 14890u))) * global1.a.b), -358f));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), var_0)) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(trunc(global1.a.b)))), -1571f), vec3<f32>(_wgslsmith_f_op_f32(step(global1.b, global1.a.a.x)), _wgslsmith_f_op_f32(max(790f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(119f)) * var_0))), _wgslsmith_f_op_f32(-func_2(true).c.b)), (true || (_wgslsmith_f_op_f32(-var_0) > _wgslsmith_f_op_f32(global1.b + var_0))) || select(false, all(vec3<bool>(true, false, true)) & any(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(-241f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global1.a.a.x, -139f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1671f, 217f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(global1.b + arg_0), _wgslsmith_f_op_f32(round(-1413f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(-350f, -1000f), func_2(false).c.b, 1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-303f, var_1.x, arg_0)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2960f, var_0, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global1.b, 517f)))))));
    let var_2 = -(firstTrailingBit(arg_2.x) & ~u_input.c.x);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), -1230f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1240f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(-367f - var_1.x)), global1.a.a.x))));
    return Struct_2(global1.a, arg_0);
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a.x * global1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x)), _wgslsmith_f_op_f32(func_3(~u_input.a, -912f, func_2(false), Struct_3(Struct_1(global1.a.a, 1038f, -1000f), Struct_2(Struct_1(global1.a.a, global1.a.a.x, 930f), -1253f), Struct_2(Struct_1(global1.a.a, global1.a.c, -150f), global1.b), u_input.b.x))))), firstTrailingBit(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x) >> (u_input.b % vec2<u32>(32u)), u_input.c.zw)), vec4<i32>(2147483647i, 2147483647i, -2147483647i ^ u_input.a, 1i));
    var var_1 = false;
    var var_2 = _wgslsmith_div_i32(u_input.c.x, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c.x, 1i), u_input.a)));
    var_2 = _wgslsmith_mult_i32(u_input.a, -2147483647i);
    var var_3 = countOneBits(select(vec4<i32>(u_input.a, firstTrailingBit(-1864i), u_input.c.x, u_input.c.x), select(u_input.c, ~vec4<i32>(3832i, 2147483647i, u_input.c.x, 1i), vec4<bool>(true, false, true, true)), true) ^ vec4<i32>(~(u_input.c.x | 21164i), _wgslsmith_mod_i32(1i, -2147483647i), 0i, 10076i));
    return Struct_2(var_0.a, _wgslsmith_f_op_f32(exp2(global1.a.c)));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> bool {
    var var_0 = Struct_4(Struct_3(arg_1.a, Struct_2(func_4(_wgslsmith_f_op_f32(421f * 975f), vec2<i32>(u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x)).a, -1043f), arg_1, ~_wgslsmith_clamp_u32(abs(1009u), 20417u, u_input.b.x)), u_input.c.x, !any(select(!vec4<bool>(false, arg_0, false, false), select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(true, arg_0, arg_0, arg_0)), arg_0)), _wgslsmith_mult_vec3_u32(select(firstLeadingBit(reverseBits(vec3<u32>(u_input.b.x, 0u, 17974u))), reverseBits(reverseBits(vec3<u32>(1u, 39409u, 21488u))), arg_0), vec3<u32>(~u_input.b.x, firstLeadingBit(14921u), u_input.b.x) >> (~firstLeadingBit(vec3<u32>(u_input.b.x, 68249u, u_input.b.x)) % vec3<u32>(32u))));
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-106f - -1219f))), u_input.c.xy, min(select(_wgslsmith_sub_vec4_i32(u_input.c, min(vec4<i32>(u_input.a, var_0.b, 55795i, 0i), u_input.c)), vec4<i32>(u_input.a, i32(-1i) * -2147483647i, 1i, var_0.b), select(vec4<bool>(arg_0, var_0.c, arg_0, false), select(vec4<bool>(arg_0, false, var_0.c, var_0.c), vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(var_0.c, true, true, var_0.c)), vec4<bool>(false, arg_0, var_0.c, false))), vec4<i32>(u_input.a, ~var_0.b, u_input.a | -553i, -8037i) ^ firstTrailingBit(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c)))).a;
    let var_2 = vec3<bool>(!var_0.c, any(vec2<bool>(true, false)), !any(!select(vec2<bool>(true, true), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false))));
    let var_3 = var_0.a.d;
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 268f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a.x))), 905f), _wgslsmith_f_op_f32(step(-541f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, 1473f) + 224f)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 11453u;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, global1.b, global1.b, -1261f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.a.c, global1.b, 1016f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c, -1335f, global1.a.b, global1.a.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.a.a.x, 398f, global1.b))), func_5(true, func_1())))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.a.x, global1.a.b, -1000f, 137f), vec4<f32>(global1.b, -141f, -1218f, global1.a.c))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1962f, -769f, global1.a.a.x, 328f) + vec4<f32>(780f, -179f, -792f, global1.b))))));
    let var_2 = !select(vec3<bool>(firstTrailingBit(-20363i) > max(u_input.c.x, 0i), (var_1.x == 1000f) & true, select(func_5(false, Struct_2(global1.a, global1.b)), true, true)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, !any(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true))));
    let var_3 = Struct_2(func_2(!((var_1.x >= -778f) && false)).c.a, var_1.x);
    global1 = var_3;
    global0 = ~((abs(countOneBits(u_input.b.x)) & u_input.b.x) << (_wgslsmith_mod_u32(max(u_input.b.x & u_input.b.x, 1u), ~(u_input.b.x << (u_input.b.x % 32u))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -1406i), vec3<i32>(u_input.a, u_input.a, u_input.c.x)), firstLeadingBit(global2[_wgslsmith_index_u32(15689u, 31u)])), vec3<i32>(-u_input.a, ~(-548i), 1i)), u_input.a, ~(abs(u_input.c.x) | 2147483647i)), 1u, var_3.b);
}

