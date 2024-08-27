struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11>;

var<private> global1: array<vec3<bool>, 1>;

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(true, false, true, vec3<f32>(441f, 177f, -1143f), vec4<u32>(0u, 16040u, 4294967295u, 4294967295u)), Struct_1(true, true, true, vec3<f32>(-1594f, 1000f, 1912f), vec4<u32>(17560u, 80146u, 4294967295u, 0u)), Struct_1(true, false, true, vec3<f32>(-605f, 1956f, 1895f), vec4<u32>(95764u, 0u, 32109u, 1u)), Struct_1(true, false, false, vec3<f32>(2364f, -416f, -413f), vec4<u32>(34u, 17658u, 0u, 23505u)), Struct_1(false, false, true, vec3<f32>(342f, 1830f, 1867f), vec4<u32>(23609u, 6227u, 67776u, 20796u)), Struct_1(false, false, true, vec3<f32>(321f, -741f, 567f), vec4<u32>(1u, 1u, 23131u, 1u)), Struct_1(true, false, true, vec3<f32>(1351f, -930f, 1205f), vec4<u32>(1u, 4294967295u, 0u, 59859u)), Struct_1(false, true, false, vec3<f32>(-487f, 1000f, 1166f), vec4<u32>(19133u, 20804u, 4294967295u, 13379u)), Struct_1(true, false, false, vec3<f32>(239f, 665f, -1030f), vec4<u32>(1u, 39244u, 5494u, 12505u)), Struct_1(false, true, false, vec3<f32>(-711f, 1000f, 412f), vec4<u32>(0u, 4294967295u, 24581u, 43529u)), Struct_1(true, false, true, vec3<f32>(1166f, 366f, -560f), vec4<u32>(82749u, 5010u, 4294967295u, 8947u)), Struct_1(false, true, false, vec3<f32>(1871f, -1006f, 2489f), vec4<u32>(3311u, 60259u, 4294967295u, 21194u)), Struct_1(false, true, false, vec3<f32>(975f, -1230f, -373f), vec4<u32>(47859u, 63577u, 75473u, 5907u)), Struct_1(true, false, false, vec3<f32>(433f, 608f, 1651f), vec4<u32>(4294967295u, 37036u, 4294967295u, 1u)), Struct_1(false, true, true, vec3<f32>(1374f, 887f, -2225f), vec4<u32>(2308u, 155216u, 53759u, 4294967295u)), Struct_1(true, true, false, vec3<f32>(349f, 485f, 688f), vec4<u32>(80028u, 62040u, 21880u, 1722u)), Struct_1(false, true, false, vec3<f32>(-1469f, -203f, -413f), vec4<u32>(0u, 1u, 16339u, 1u)), Struct_1(true, false, false, vec3<f32>(890f, 1380f, -263f), vec4<u32>(7879u, 4584u, 0u, 70439u)));

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: vec3<bool>) -> f32 {
    let var_0 = -78062i;
    global2 = array<Struct_1, 18>();
    let var_1 = i32(-1i) * -(~_wgslsmith_dot_vec3_i32(arg_1.ywz << (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)), vec3<i32>(var_0, var_0, 32719i)));
    let var_2 = vec4<i32>(arg_1.x, global3.x, arg_1.x, var_0);
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(~abs(arg_0), 18u)], (~(-var_0) >> (46756u % 32u)) > _wgslsmith_mod_i32(37810i, -1i), vec4<f32>(-415f, 928f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(floor(935f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-546f)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(820f, 397f))))), ~(_wgslsmith_sub_u32(~u_input.a, 10467u) & arg_0), global2[_wgslsmith_index_u32(reverseBits((abs(arg_0) | _wgslsmith_sub_u32(arg_0, arg_0)) >> (abs(~u_input.a) % 32u)), 18u)]);
    return _wgslsmith_f_op_f32(-var_3.c.x);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> vec2<bool> {
    global3 = vec3<i32>(arg_0, arg_0, 9703i);
    global1 = array<vec3<bool>, 1>();
    global3 = global0[_wgslsmith_index_u32(1u, 11u)];
    let var_0 = Struct_1(274f < _wgslsmith_f_op_f32(func_3(min(u_input.a, ~91073u), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_0, global3.x, global3.x) << (vec4<u32>(55201u, u_input.a, 0u, 75888u) % vec4<u32>(32u)), vec4<i32>(-1i, 1i, global3.x, 16633i) & vec4<i32>(-45398i, 83095i, -67789i, -37640i)), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, all(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true))), !(!all(vec2<bool>(true, true))), u_input.a >= 41802u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1776f, arg_1.x, arg_1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, arg_1.x, 1436f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, arg_1.x, 117f), vec3<f32>(arg_1.x, arg_1.x, 688f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(505f, arg_1.x, arg_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1.x)), _wgslsmith_div_f32(1036f, -2051f), 1922f)))), vec4<u32>(select(~0u, reverseBits(u_input.a) | _wgslsmith_add_u32(u_input.a, u_input.a), true), 43568u, u_input.a, ~(firstLeadingBit(u_input.a) ^ firstTrailingBit(6581u))));
    global3 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-11959i, reverseBits(global3.x), arg_0), ~countOneBits(vec3<i32>(arg_0, global3.x, -27235i))), 6809i, -_wgslsmith_div_i32(arg_0, 2147483647i));
    return vec2<bool>(any(select(select(vec4<bool>(false, true, var_0.c, false), vec4<bool>(var_0.b, var_0.a, false, var_0.c), any(global1[_wgslsmith_index_u32(u_input.a, 1u)])), vec4<bool>(all(vec4<bool>(var_0.b, true, var_0.a, true)), -8798i > global3.x, var_0.a || false, -2040f == arg_1.x), select(!vec4<bool>(true, true, false, var_0.c), select(vec4<bool>(true, var_0.a, false, var_0.b), vec4<bool>(false, var_0.b, false, false), true), !vec4<bool>(false, var_0.a, true, false)))), var_0.a);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(false, any(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), func_2(global3.x, vec2<f32>(-160f, 197f))), vec2<bool>(false, all(vec4<bool>(false, false, false, true))), vec2<bool>(false, all(vec2<bool>(true, true))))), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-232f)) + -385f), 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(139f, 1761f, 449f), vec3<f32>(-1000f, -165f, 1280f)))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 44786u, ~u_input.a, _wgslsmith_sub_u32(~u_input.a, u_input.a)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 32947u) << (vec4<u32>(16578u, 4294967295u, 0u, 1u) % vec4<u32>(32u)), reverseBits(vec4<u32>(70667u, u_input.a, u_input.a, u_input.a)))));
    let var_1 = var_0.d.x;
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0.e.x, var_0.e.x), 18u)], !all(!func_2(60309i, var_0.d.yy)), vec4<f32>(-457f, _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) + var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) * var_0.d.x)), _wgslsmith_f_op_f32(-2068f - -334f)), min(~_wgslsmith_add_u32(1u, 1u), ~_wgslsmith_sub_u32(u_input.a, 0u)) ^ ~(~_wgslsmith_sub_u32(var_0.e.x, u_input.a)), global2[_wgslsmith_index_u32(~(~93349u), 18u)]);
    var var_3 = true;
    let var_4 = 1683f;
    return Struct_2(global2[_wgslsmith_index_u32(~(~0u), 18u)], any(global1[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(398f, 564f, -2183f, var_0.d.x), vec4<f32>(var_0.d.x, -349f, 255f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1604f, var_0.d.x, -382f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(var_2.c)))))), _wgslsmith_dot_vec3_u32(~(vec3<u32>(var_2.a.e.x, var_2.a.e.x, 86114u) | vec3<u32>(var_0.e.x, u_input.a, 0u)), ~vec3<u32>(abs(u_input.a), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_0.e.x), var_0.e.yw))), Struct_1(true, !(18669u >= _wgslsmith_mod_u32(var_2.e.e.x, 4294967295u)), !(!var_2.a.a), var_0.d, select(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(var_2.d, 16682u, var_2.e.e.x, 1u)), max(vec4<u32>(11423u, u_input.a, var_2.e.e.x, 21550u), var_0.e)), ~vec4<u32>(u_input.a, var_2.e.e.x, 101645u, var_0.e.x) << (var_2.e.e % vec4<u32>(32u)), var_0.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    var var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(abs(14629u), _wgslsmith_dot_vec3_u32(vec3<u32>(29983u, u_input.a, arg_0.d), min(vec3<u32>(u_input.a, arg_0.e.e.x, u_input.a), arg_0.a.e.wxy))), arg_1.e.wz);
    global3 = vec3<i32>(-countOneBits(_wgslsmith_div_i32(~2147483647i, global3.x ^ 1i)), -global3.x, ~abs(global3.x));
    global2 = array<Struct_1, 18>();
    let var_1 = func_1().a;
    var var_2 = Struct_1(false, arg_1.b, min(88324u, ~(~var_0.x)) > u_input.a, _wgslsmith_div_vec3_f32(arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(arg_1.d, arg_0.e.d, arg_1.c)), func_1().c.yxw, true)))), ~countOneBits(vec4<u32>(0u, 1u, var_0.x, var_1.e.x) | var_1.e) << (reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 4294967295u, 25432u, arg_0.d), ~arg_1.e)) % vec4<u32>(32u)));
    return select(arg_0.e.e.yyy, arg_0.e.e.yzx, select(vec3<bool>(any(!vec2<bool>(arg_0.a.a, arg_1.b)), false, any(vec3<bool>(arg_1.a, var_2.b, false))), vec3<bool>(arg_1.b, all(!vec3<bool>(var_1.c, false, var_1.b)), arg_1.c), !var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_f_op_f32(min(1344f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(-195f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(665f, 694f, true))))))));
    var var_1 = func_4(func_1(), func_1().a, _wgslsmith_f_op_f32(func_3(select(_wgslsmith_add_u32(u_input.a, 1u), 0u, any(vec2<bool>(true, false))) << ((u_input.a | _wgslsmith_div_u32(u_input.a, 24700u)) % 32u), -(_wgslsmith_mult_vec4_i32(vec4<i32>(global3.x, 24363i, 0i, 0i), vec4<i32>(-19976i, -12681i, global3.x, global3.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, -1i, global3.x, -2147483647i), vec4<i32>(global3.x, 1i, -1i, -4772i), vec4<i32>(global3.x, -27250i, global3.x, global3.x))), vec3<bool>(true, true, true), !select(global1[_wgslsmith_index_u32(8846u, 1u)], vec3<bool>(true, false, false), vec3<bool>(true, false, false)))));
    global1 = array<vec3<bool>, 1>();
    var var_2 = ~_wgslsmith_dot_vec3_i32(select(global0[_wgslsmith_index_u32(var_1.x << (u_input.a % 32u), 11u)], vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(7526i, global3.x, 1i), global0[_wgslsmith_index_u32(u_input.a, 11u)]), _wgslsmith_add_i32(global3.x, 2147483647i)), true), firstTrailingBit(-vec3<i32>(-1i, global3.x, 1i)) >> (reverseBits(vec3<u32>(1u, u_input.a, var_1.x)) % vec3<u32>(32u)));
    var var_3 = ~vec2<u32>(countOneBits(var_1.x), ~(~12071u));
    let x = u_input.a;
    s_output = StorageBuffer(~min(max(var_3.x, 0u), ~u_input.a) & var_3.x, abs(_wgslsmith_sub_u32(~41074u >> (var_1.x % 32u), func_4(func_1(), global2[_wgslsmith_index_u32(35267u, 18u)], _wgslsmith_f_op_f32(func_3(u_input.a, vec4<i32>(-68467i, 22553i, 5718i, 13900i), global1[_wgslsmith_index_u32(var_1.x, 1u)], vec3<bool>(true, false, true)))).x)));
}

