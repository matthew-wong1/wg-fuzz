struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, vec4<i32>(-1i, -1i, i32(-2147483648), 0i), 1033f, vec3<f32>(475f, 749f, 1128f), Struct_1(vec3<u32>(0u, 4294967295u, 74810u)));

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<f32>(-631f, -1000f, 173f), vec4<bool>(false, false, false, false), 11380u), Struct_3(vec3<f32>(1036f, -357f, 1209f), vec4<bool>(true, true, true, false), 35027u), Struct_3(vec3<f32>(467f, -766f, 329f), vec4<bool>(true, true, true, true), 38319u), Struct_3(vec3<f32>(775f, 367f, -1122f), vec4<bool>(true, true, true, true), 10255u), Struct_3(vec3<f32>(866f, 1502f, 1129f), vec4<bool>(false, true, true, false), 1u), Struct_3(vec3<f32>(1629f, 1102f, -911f), vec4<bool>(false, false, false, true), 4294967295u), Struct_3(vec3<f32>(946f, 1457f, 896f), vec4<bool>(true, true, false, false), 221u), Struct_3(vec3<f32>(-1459f, -1071f, 849f), vec4<bool>(false, false, false, true), 0u), Struct_3(vec3<f32>(1217f, 644f, -519f), vec4<bool>(true, true, false, true), 1u), Struct_3(vec3<f32>(983f, -1323f, 767f), vec4<bool>(false, true, false, true), 27552u), Struct_3(vec3<f32>(-1000f, 657f, -1696f), vec4<bool>(false, false, true, false), 45159u), Struct_3(vec3<f32>(-2255f, 1376f, -1862f), vec4<bool>(true, false, false, false), 21137u), Struct_3(vec3<f32>(-2415f, -1735f, -362f), vec4<bool>(true, false, true, false), 1226u), Struct_3(vec3<f32>(797f, -726f, 943f), vec4<bool>(true, false, true, false), 17855u), Struct_3(vec3<f32>(1478f, -154f, -1474f), vec4<bool>(true, false, true, true), 13727u), Struct_3(vec3<f32>(-159f, 1069f, -289f), vec4<bool>(false, true, true, false), 40937u), Struct_3(vec3<f32>(771f, 701f, -644f), vec4<bool>(false, false, true, true), 0u), Struct_3(vec3<f32>(893f, -1162f, -738f), vec4<bool>(true, false, true, false), 4294967295u), Struct_3(vec3<f32>(-1237f, -1284f, 1769f), vec4<bool>(true, true, false, false), 7388u), Struct_3(vec3<f32>(-762f, -1607f, -144f), vec4<bool>(true, true, true, true), 4294967295u), Struct_3(vec3<f32>(-1094f, -2216f, 1000f), vec4<bool>(false, true, true, false), 12617u), Struct_3(vec3<f32>(360f, 659f, 884f), vec4<bool>(true, false, true, true), 73686u), Struct_3(vec3<f32>(-1176f, -747f, 2434f), vec4<bool>(true, false, false, false), 0u), Struct_3(vec3<f32>(224f, -1289f, 1000f), vec4<bool>(true, false, true, false), 38095u), Struct_3(vec3<f32>(-1000f, 1588f, -1081f), vec4<bool>(true, true, false, false), 45562u), Struct_3(vec3<f32>(-719f, 1000f, -1178f), vec4<bool>(false, true, false, true), 64177u), Struct_3(vec3<f32>(-388f, 798f, -495f), vec4<bool>(true, false, true, false), 8777u));

var<private> global2: array<vec4<f32>, 9>;

var<private> global3: f32 = -152f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global3 = global0.c;
    global3 = _wgslsmith_f_op_f32(sign(-726f));
    var var_0 = vec2<bool>(true != all(vec3<bool>(true, true, true)), global0.e.a.x != ~global0.e.a.x);
    return select(!select(!(!vec4<bool>(false, var_0.x, true, var_0.x)), vec4<bool>(true, -797f <= global0.c, true, select(false, true, var_0.x)), true), vec4<bool>(false, all(select(!vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, false), select(vec2<bool>(true, var_0.x), vec2<bool>(true, false), false))), false & any(vec2<bool>(var_0.x, false)), any(vec3<bool>(true, true, var_0.x))), var_0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(28808u | _wgslsmith_add_u32(_wgslsmith_div_u32(global0.e.a.x, reverseBits(u_input.c.x)), global0.e.a.x), 9u)];
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1519f, global0.c, 479f), var_0.zww, arg_0.wzz)) - _wgslsmith_f_op_vec3_f32(step(var_0.yyz, arg_1.d))))), !arg_0, ~(~(~(~u_input.c.x))));
    global0 = arg_1;
    global3 = var_1.a.x;
    global2 = array<vec4<f32>, 9>();
    return arg_1.d.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> u32 {
    global3 = _wgslsmith_f_op_f32(func_4(select(select(select(!arg_2.b, vec4<bool>(true, arg_2.b.x, true, arg_2.b.x), all(vec2<bool>(arg_2.b.x, false))), arg_2.b, select(vec4<bool>(arg_2.b.x, arg_2.b.x, true, false), func_3(), true)), vec4<bool>(false, true, arg_2.b.x, arg_2.b.x), !(!all(vec2<bool>(arg_2.b.x, arg_2.b.x)))), Struct_2(firstTrailingBit(-144i), vec4<i32>(29911i, -min(-1i, arg_0.x), -5338i, _wgslsmith_add_i32(min(-10117i, -2147483647i), arg_0.x)), arg_1.x, vec3<f32>(-232f, arg_1.x, global0.c), global0.e)));
    global0 = Struct_2(16110i, abs(global0.b) >> (~vec4<u32>(global0.e.a.x, global0.e.a.x, abs(arg_3.x), ~arg_3.x) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), 610f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a.x))))), _wgslsmith_f_op_vec3_f32(step(arg_2.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1331f, 1f, arg_2.a.x))))), global0.e);
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-860f, -568f)), -1000f, -224f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.a.x, 1224f, 1570f))))))), arg_2.b, ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_3.x, 0u, global0.e.a.x, 1u), ~vec4<u32>(arg_2.c, 71581u, 4294967295u, 0u))));
    global0 = Struct_2(_wgslsmith_dot_vec4_i32(-countOneBits(-global0.b), vec4<i32>(u_input.b, u_input.b, ~10031i, 76063i)), global0.b, arg_2.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-703f))))), global0.e);
    global2 = array<vec4<f32>, 9>();
    return 10138u;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    global1 = array<Struct_3, 27>();
    var var_0 = _wgslsmith_mult_vec4_u32(select(vec4<u32>(14386u, 4294967295u, 41820u, 4294967295u), vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global0.e.a.x, arg_2.c, u_input.a)), ~33930u, ~(~u_input.a), ~global0.e.a.x), vec4<bool>(true, !arg_2.b.x, all(arg_2.b.ww), !arg_2.b.x)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(arg_2.c, arg_2.c, 76694u, 0u)), ~vec4<u32>(1u, 4294967295u, arg_2.c, u_input.c.x), select(vec4<bool>(arg_2.b.x, arg_0, false, false), vec4<bool>(arg_2.b.x, arg_2.b.x, false, false), vec4<bool>(arg_2.b.x, arg_0, true, true))), select(min(vec4<u32>(34591u, 118036u, arg_2.c, global0.e.a.x), vec4<u32>(u_input.a, arg_2.c, u_input.c.x, arg_2.c)), min(vec4<u32>(u_input.c.x, 1u, 87965u, global0.e.a.x), vec4<u32>(3221u, arg_2.c, global0.e.a.x, 4294967295u)), select(vec4<bool>(true, arg_2.b.x, arg_0, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, arg_0, false)))), firstTrailingBit(abs(~vec4<u32>(u_input.a, u_input.c.x, 1u, 4294967295u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(global0.e.a.x, 9u)] - global2[_wgslsmith_index_u32(u_input.a, 9u)]))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 9u)])), global2[_wgslsmith_index_u32(~arg_2.c, 9u)])) - global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(50523u, global0.e.a.x, global0.e.a.x), 9u)])));
    var var_2 = false;
    var var_3 = -_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a, u_input.b, global0.b.x), global0.b.ywx, vec3<i32>(5203i, u_input.b, global0.b.x)), _wgslsmith_mult_vec3_i32(abs(global0.b.wyx), global0.b.zww), _wgslsmith_div_vec3_i32(global0.b.yzw, global0.b.yzx) ^ global0.b.xwy), global0.b.zxz);
    return Struct_2(15596i, global0.b, arg_2.a.x, var_1.xxz, Struct_1(max(vec3<u32>(54302u, u_input.a, 13271u), u_input.c)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.d, arg_0.d, vec3<bool>(true, true, arg_1.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, global0.c, -1692f) - arg_0.d), all(func_3()))))), !vec4<bool>(true, arg_1.x, all(vec4<bool>(arg_1.x, false, true, false)), any(vec2<bool>(arg_1.x, true))), global0.e.a.x);
    var var_1 = all(arg_1);
    global2 = array<vec4<f32>, 9>();
    let var_2 = any(vec3<bool>(true, arg_1.x, 2147483647i > _wgslsmith_mult_i32(~(-1i), -u_input.b)));
    var var_3 = vec4<u32>(0u, 61u, 91108u, ~reverseBits(var_0.c));
    return arg_0;
}

fn func_1() -> f32 {
    let var_0 = 411f;
    var var_1 = func_6(func_5(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), global0.d.x, global1[_wgslsmith_index_u32(func_2(select(global0.b.yx, global0.b.wz & vec2<i32>(33212i, -1i), true), global2[_wgslsmith_index_u32(~0u, 9u)], Struct_3(_wgslsmith_f_op_vec3_f32(global0.d - global0.d), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), global0.e.a.x), vec2<u32>(select(4294967295u, 4294967295u, false), u_input.a & 4294967295u)), 27u)]), vec4<bool>(false, true, select(false, true, any(vec3<bool>(true, true, false))), select(global0.e.a.x <= u_input.c.x, _wgslsmith_mult_u32(global0.e.a.x, global0.e.a.x) != firstLeadingBit(global0.e.a.x), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
    let var_2 = true;
    var var_3 = ~countOneBits(vec4<u32>(_wgslsmith_mult_u32(1u, 75114u), 1u, var_1.e.a.x, global0.e.a.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_1.e.a.x, u_input.a), vec4<u32>(10613u, 34460u, 1u, 0u), vec4<u32>(var_1.e.a.x, 0u, 1u, var_1.e.a.x) << (vec4<u32>(var_1.e.a.x, 0u, var_1.e.a.x, 20546u) % vec4<u32>(32u))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(min(676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - global0.d.x)), global0.c))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_6(func_5(var_2, _wgslsmith_f_op_f32(var_0 + 2260f), global1[_wgslsmith_index_u32(countOneBits(global0.e.a.x ^ var_1.e.a.x), 27u)]), func_3()).c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(!vec4<bool>(var_2, true, false, var_2), Struct_2(var_1.a, global0.b, var_0, global0.d, global0.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_div_f32(1787f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c + 418f), _wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -581f))), global0.c) - vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1752f + -1000f)))), _wgslsmith_f_op_f32(trunc(-647f)), func_5(all(vec3<bool>(false, true, false)), -756f, global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(global0.e.a.x, u_input.a), 0u), 27u)]).d.x));
    var var_1 = _wgslsmith_f_op_f32(-662f - global0.c);
    global0 = Struct_2((u_input.b << (u_input.a % 32u)) & select(-(~u_input.b), u_input.b, false), reverseBits(global0.b) | -global0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -654f) * global0.d.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_5(false, -931f, Struct_3(vec3<f32>(-384f, var_0.x, 614f), vec4<bool>(false, false, false, false), global0.e.a.x)).d) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-294f, 1010f, global0.d.x), vec3<f32>(1000f, -991f, -889f))))))), func_6(func_6(func_5(false, _wgslsmith_f_op_f32(func_1()), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(19087u, 83215u), 27u)]), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true)), vec4<bool>(any(vec2<bool>(false, false)), all(func_3().yw), global0.b.x < (u_input.b & -30660i), _wgslsmith_div_i32(-29842i, -2147483647i) != global0.b.x)).e);
    let var_2 = u_input.b >> (22001u % 32u);
    var var_3 = Struct_1(u_input.c);
    var var_4 = global0.b.yz;
    var var_5 = global1[_wgslsmith_index_u32(~(~var_3.a.x), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1125f, _wgslsmith_f_op_f32(1278f * global0.d.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.yy, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, -395f)))))), ~(~global0.b.x));
}

