struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1589f;

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(1i, -31088i, 0i, 2147483647i), vec4<i32>(14485i, i32(-2147483648), 27405i, 8006i), vec4<i32>(-1i, 2147483647i, -5822i, -57034i), vec4<i32>(0i, i32(-2147483648), 49218i, -58935i), vec4<i32>(1i, 55461i, 1859i, i32(-2147483648)), vec4<i32>(-1i, -31250i, 9978i, -19108i), vec4<i32>(42028i, -1i, 0i, 0i), vec4<i32>(8917i, -1i, 72444i, -7771i), vec4<i32>(-33653i, -18613i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -12615i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), -72315i, 447i, -1i), vec4<i32>(22606i, -6390i, -3621i, 46727i), vec4<i32>(2147483647i, 2147483647i, -28798i, i32(-2147483648)), vec4<i32>(-11718i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(-33541i, i32(-2147483648), 23090i, 19923i), vec4<i32>(i32(-2147483648), i32(-2147483648), 14223i, -34414i), vec4<i32>(-31531i, 2147483647i, 0i, -8850i), vec4<i32>(-15648i, i32(-2147483648), 30555i, 52032i), vec4<i32>(-64868i, 6770i, 2147483647i, 27177i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i));

var<private> global2: array<Struct_2, 6>;

var<private> global3: Struct_4 = Struct_4(vec2<f32>(-2663f, -1010f), true, Struct_1(-13759i, vec3<f32>(-830f, -1000f, -1186f), -38074i, vec4<i32>(-4328i, -1i, 10171i, 33769i), 4294967295u), false, 0i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec4<i32> {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(-firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, arg_1, u_input.a), arg_0.d)), 2147483647i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, -33307i, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, -2147483647i), vec3<i32>(global3.e, global3.e, global3.c.c))), _wgslsmith_div_vec3_i32(abs(u_input.b), vec3<i32>(u_input.b.x, arg_0.c, arg_1) | u_input.b)), ~max(-2147483647i, 0i), -1i);
    let var_1 = i32(-1i) * -(-1i ^ _wgslsmith_dot_vec3_i32(u_input.b, u_input.b));
    var var_2 = ~firstLeadingBit(u_input.c);
    var var_3 = Struct_3(global2[_wgslsmith_index_u32(~var_2.x, 6u)], _wgslsmith_mod_vec3_u32(firstLeadingBit((vec3<u32>(8857u, u_input.d, 55659u) >> (vec3<u32>(1u, arg_0.e, var_2.x) % vec3<u32>(32u))) ^ ~u_input.c), vec3<u32>(u_input.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, global3.c.e), var_2.yy), global3.c.e)), global2[_wgslsmith_index_u32(56937u, 6u)], ~u_input.d);
    var var_4 = u_input.a;
    return max(-(vec4<i32>(-1i) * -vec4<i32>(arg_1, -14001i, arg_0.a, arg_1)), -var_3.c.b.d);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_f32(global3.c.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.c.b.x * 1156f), _wgslsmith_f_op_f32(f32(-1f) * -1322f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2382f * global3.a.x), arg_2.b.x)))));
    return global3.c.b.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_0.x;
    let var_1 = 1u;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -2035f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2194f + 1834f) + _wgslsmith_f_op_f32(func_4(countOneBits(~u_input.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2717f)) * _wgslsmith_f_op_f32(f32(-1f) * -306f)))), Struct_1(_wgslsmith_dot_vec2_i32(~u_input.b.zx, vec2<i32>(u_input.b.x, 1i) ^ arg_1.a.a.b.d.yz), vec3<f32>(765f, _wgslsmith_f_op_f32(arg_3.b.b.x - 651f), global3.c.b.x), -_wgslsmith_clamp_i32(30953i, arg_3.b.d.x, arg_3.b.d.x), _wgslsmith_add_vec4_i32(-vec4<i32>(1882i, global3.e, arg_2, -2147483647i), func_3(Struct_1(arg_1.a.a.d, arg_1.a.a.b.b, -54130i, arg_1.a.a.b.d, 0u), 29269i)), ~_wgslsmith_add_u32(var_1, arg_3.b.e)))));
    var var_2 = arg_3;
    return Struct_3(Struct_2(global3.c.e, Struct_1(-9097i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_1.a.c.b.b - arg_1.a.c.b.b), _wgslsmith_f_op_vec3_f32(ceil(var_2.b.b)), select(arg_1.a.a.c.zyz, var_2.c.ywy, var_2.c.x))), arg_1.a.a.b.d.x, max(_wgslsmith_sub_vec4_i32(arg_3.b.d, global3.c.d), ~vec4<i32>(u_input.b.x, global3.c.c, arg_1.c, arg_1.a.c.b.a)), ~var_2.a), arg_1.a.c.e, ~2147483647i, arg_3.c), ~_wgslsmith_div_vec3_u32(arg_1.a.b, ~select(arg_1.a.b, vec3<u32>(u_input.c.x, 14360u, arg_3.b.e), global3.d)), Struct_2(~(~0u), Struct_1(min(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, var_2.d, -13232i, arg_3.b.a), var_2.b.d), arg_1.a.c.b.c), arg_0, 42794i, vec4<i32>(firstLeadingBit(arg_2), reverseBits(arg_3.b.c), var_2.d, arg_2), _wgslsmith_sub_u32(9056u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 29785u), u_input.c.xx))), !vec4<bool>(true, var_2.c.x, var_2.c.x, true), 2147483647i, var_2.c), u_input.d);
}

fn func_5(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = Struct_5(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.b.b.x + 1000f), 1172f, global3.d)), _wgslsmith_add_i32(arg_0.a.d & countOneBits(2147483647i), -41828i) ^ reverseBits(arg_0.a.b.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.b.x)));
    global3 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(707f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(481f)), 755f)))), true, func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.c.b.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1, 289f)))))), Struct_5(Struct_3(Struct_2(arg_0.a.b.e, global3.c, vec4<bool>(var_0.a.a.c.x, true, false, false), 7834i, vec4<bool>(false, global3.b, false, global3.b)), var_0.a.b, Struct_2(u_input.d, Struct_1(-21488i, global3.c.b, 3800i, global1[_wgslsmith_index_u32(u_input.c.x, 20u)], 0u), arg_0.a.e, 18835i, vec4<bool>(global3.b, false, arg_0.a.c.x, true)), _wgslsmith_div_u32(global3.c.e, 4294967295u)), _wgslsmith_f_op_f32(989f + arg_0.c.b.b.x), 1i), ~min(arg_0.c.d, _wgslsmith_mult_i32(global3.c.a, global3.c.a)), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1284f, var_0.b, arg_0.c.b.b.x), _wgslsmith_f_op_vec3_f32(global3.c.b - vec3<f32>(var_0.b, 230f, -539f)), vec3<bool>(false, arg_0.a.c.x, arg_0.c.e.x))), Struct_5(Struct_3(arg_0.c, vec3<u32>(global3.c.e, arg_0.a.a, 83071u), Struct_2(0u, global3.c, var_0.a.a.c, 68077i, arg_0.a.e), global3.c.e), -211f, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.a.b.d.x, var_0.a.a.b.d.x), vec3<i32>(-54797i, global3.c.c, global3.e))), -18827i, global2[_wgslsmith_index_u32(global3.c.e, 6u)]).c).a.b, all(select(vec4<bool>(true, arg_0.c.e.x, global3.d, all(vec3<bool>(global3.b, arg_0.a.e.x, true))), arg_0.a.e, !arg_0.c.e)), arg_0.a.d);
    var var_2 = !any(select(vec4<bool>(false, u_input.a == global3.c.a, global3.c.e <= var_0.a.d, any(arg_0.c.c)), var_0.a.c.c, true));
    var var_3 = !arg_0.c.e;
    return firstTrailingBit(vec4<u32>(min(_wgslsmith_mod_u32(0u, var_0.a.b.x), abs(72557u)), _wgslsmith_mult_u32(firstLeadingBit(u_input.d), 84580u), 1u, ~_wgslsmith_clamp_u32(arg_0.a.a, u_input.d, 77228u)) & select(vec4<u32>(arg_0.b.x, global3.c.e, global3.c.e, var_0.a.a.a), vec4<u32>(27414u, u_input.d, 0u, var_0.a.b.x), !vec4<bool>(global3.d, var_3.x, true, false)));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(arg_0.c.a, _wgslsmith_mult_i32(~reverseBits(u_input.a), u_input.a)), arg_0.c.b, _wgslsmith_sub_i32(arg_0.c.d.x, 29413i), (_wgslsmith_mult_vec4_i32(arg_0.c.d, vec4<i32>(arg_0.e, -12881i, 20626i, -1i)) >> (func_5(func_2(vec3<f32>(global3.c.b.x, global3.c.b.x, arg_0.c.b.x), Struct_5(Struct_3(Struct_2(66479u, arg_0.c, vec4<bool>(global3.d, arg_0.d, false, false), -1i, vec4<bool>(global3.b, global3.d, false, true)), u_input.c, Struct_2(global3.c.e, Struct_1(u_input.b.x, vec3<f32>(-403f, 1000f, 712f), u_input.a, global1[_wgslsmith_index_u32(4294967295u, 20u)], u_input.d), vec4<bool>(arg_0.b, global3.d, global3.b, global3.b), u_input.b.x, vec4<bool>(true, arg_0.d, true, arg_0.d)), 1u), arg_0.c.b.x, arg_0.c.a), 10743i, global2[_wgslsmith_index_u32(global3.c.e, 6u)])) % vec4<u32>(32u))) & ~vec4<i32>(-1i, arg_0.e, arg_0.c.c, select(2147483647i, -1i, false)), 4294967295u);
    var var_1 = Struct_5(Struct_3(Struct_2(countOneBits(u_input.c.x), arg_0.c, vec4<bool>(false, true, !global3.b, true && global3.d), 1i, vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.c.e ^ 54232u, ~var_0.e, ~21091u), vec3<u32>(~u_input.c.x, 4294967295u, func_2(vec3<f32>(var_0.b.x, -1611f, global3.c.b.x), Struct_5(Struct_3(Struct_2(var_0.e, arg_0.c, vec4<bool>(true, true, arg_0.b, false), var_0.d.x, vec4<bool>(true, arg_0.b, global3.b, arg_0.d)), vec3<u32>(4294967295u, var_0.e, global3.c.e), Struct_2(global3.c.e, global3.c, vec4<bool>(global3.b, global3.d, true, true), -1i, vec4<bool>(false, false, global3.d, true)), u_input.d), arg_0.c.b.x, -42265i), u_input.a, global2[_wgslsmith_index_u32(u_input.d, 6u)]).c.b.e)), global2[_wgslsmith_index_u32(var_0.e, 6u)], arg_0.c.e), _wgslsmith_f_op_f32(global3.a.x * global3.c.b.x), -42238i);
    var var_2 = u_input.c.x;
    let var_3 = func_2(vec3<f32>(-589f, var_0.b.x, arg_0.a.x), Struct_5(var_1.a, global3.a.x, ~arg_0.c.a), -7199i, global2[_wgslsmith_index_u32(1u, 6u)]).c.e;
    var var_4 = u_input.c;
    return arg_0;
}

fn func_6(arg_0: Struct_4, arg_1: u32, arg_2: vec3<u32>) -> i32 {
    var var_0 = abs(~vec4<u32>(4294967295u, 0u, arg_0.c.e, 35148u));
    var var_1 = firstLeadingBit(~reverseBits(func_1(Struct_4(arg_0.a, global3.d, Struct_1(0i, vec3<f32>(arg_0.a.x, 1217f, -380f), global3.c.a, vec4<i32>(arg_0.e, arg_0.e, 1i, 2147483647i), 4294967295u), global3.b, -2147483647i)).c.e)) ^ func_2(global3.c.b, Struct_5(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1261f, 2914f, global3.c.b.x)), Struct_5(Struct_3(global2[_wgslsmith_index_u32(arg_2.x, 6u)], vec3<u32>(arg_2.x, 4294967295u, u_input.c.x), Struct_2(arg_1, arg_0.c, vec4<bool>(false, true, false, arg_0.b), global3.c.c, vec4<bool>(arg_0.d, arg_0.d, false, false)), 4294967295u), arg_0.c.b.x, arg_0.c.d.x), -11792i, func_2(arg_0.c.b, Struct_5(Struct_3(global2[_wgslsmith_index_u32(21027u, 6u)], u_input.c, Struct_2(arg_0.c.e, global3.c, vec4<bool>(arg_0.b, arg_0.d, arg_0.b, arg_0.b), arg_0.e, vec4<bool>(arg_0.d, arg_0.d, false, global3.b)), u_input.c.x), 475f, 1i), arg_0.e, Struct_2(1u, arg_0.c, vec4<bool>(true, true, true, false), 2147483647i, vec4<bool>(true, global3.b, true, false))).c), _wgslsmith_f_op_f32(global3.c.b.x - 435f), firstTrailingBit(u_input.a)), -19622i, global2[_wgslsmith_index_u32(~var_0.x, 6u)]).a.a;
    let var_2 = Struct_2(33723u, global3.c, vec4<bool>(any(vec4<bool>(arg_0.b, global3.d, true, arg_1 != 0u)), true, arg_0.d, func_1(func_1(func_1(arg_0))).b), u_input.a, vec4<bool>(false, global3.d | true, global3.d == false, all(vec2<bool>(false, false))));
    var var_3 = _wgslsmith_div_i32(max(760i, ~0i), -abs(max(global3.c.a, 48139i)));
    global1 = array<vec4<i32>, 20>();
    return _wgslsmith_mult_i32(firstTrailingBit(firstLeadingBit(-2147483647i)), func_1(Struct_4(vec2<f32>(global3.a.x, arg_0.c.b.x), true, Struct_1(28100i, _wgslsmith_f_op_vec3_f32(max(var_2.b.b, vec3<f32>(global3.a.x, -1348f, 702f))), _wgslsmith_dot_vec2_i32(vec2<i32>(-9722i, -17273i), var_2.b.d.wy), -vec4<i32>(2389i, 1i, var_2.b.a, -2147483647i), ~var_0.x), all(!vec3<bool>(arg_0.d, global3.d, false)), 57575i)).c.c);
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_5 {
    global0 = -492f;
    global3 = Struct_4(_wgslsmith_f_op_vec2_f32(-global3.a), !(!((false && arg_1.x) & global3.d)), arg_0, all(func_2(global3.c.b, Struct_5(func_2(vec3<f32>(arg_0.b.x, 712f, global3.c.b.x), Struct_5(Struct_3(Struct_2(global3.c.e, Struct_1(global3.c.d.x, global3.c.b, -31002i, vec4<i32>(u_input.a, global3.c.d.x, global3.e, arg_0.d.x), u_input.c.x), vec4<bool>(global3.d, global3.d, false, arg_1.x), u_input.b.x, arg_1), u_input.c, global2[_wgslsmith_index_u32(u_input.c.x, 6u)], arg_0.e), -179f, -609i), 2147483647i, Struct_2(u_input.d, global3.c, arg_1, global3.e, vec4<bool>(true, true, global3.d, true))), _wgslsmith_f_op_f32(min(-1747f, arg_0.b.x)), 1i & u_input.b.x), i32(-1i) * -arg_0.a, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, firstLeadingBit(0u)), 6u)]).c.e.xy), 1i);
    var var_0 = Struct_1((_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global3.e, global3.e), -global3.c.a, global3.c.d.x) & select(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 28254i), arg_0.a, true)) >> (select(arg_0.e, u_input.d, false) % 32u), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1107f + 552f))), _wgslsmith_f_op_f32(-arg_0.b.x))), -1672f, -129f), ~countOneBits(global3.c.c) | 1i, func_2(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(round(-100f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x))), Struct_5(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1295f, -1670f, arg_0.b.x)), Struct_5(Struct_3(global2[_wgslsmith_index_u32(u_input.d, 6u)], u_input.c, global2[_wgslsmith_index_u32(0u, 6u)], u_input.c.x), arg_0.b.x, 0i), 7504i, Struct_2(u_input.c.x, arg_0, arg_1, u_input.b.x, vec4<bool>(arg_1.x, global3.b, false, false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.x, arg_0.b.x) + _wgslsmith_f_op_f32(max(1000f, arg_0.b.x))), 1i), -14102i, Struct_2(u_input.c.x, Struct_1(u_input.a, vec3<f32>(global3.a.x, global3.a.x, -210f), arg_0.a >> (arg_0.e % 32u), vec4<i32>(global3.e, u_input.b.x, 55243i, u_input.a), _wgslsmith_clamp_u32(global3.c.e, 1u, 4294967295u)), vec4<bool>(true, true, arg_1.x != false, any(vec4<bool>(arg_1.x, false, false, global3.d))), arg_0.a, vec4<bool>(all(arg_1.wwz), -1i < arg_0.c, false, global3.c.e < 0u))).a.b.d, ~70070u);
    let var_1 = func_2(vec3<f32>(arg_0.b.x, 1185f, _wgslsmith_f_op_f32(-432f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, arg_0.b.x))))), Struct_5(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 6u)], ~firstLeadingBit(vec3<u32>(u_input.d, arg_0.e, u_input.c.x)), Struct_2(global3.c.e, arg_0, vec4<bool>(arg_1.x, false, global3.d, false), ~(-47854i), !arg_1), arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(arg_0.e, arg_0.b.x, func_2(arg_0.b, Struct_5(Struct_3(Struct_2(u_input.d, global3.c, arg_1, -1i, arg_1), u_input.c, global2[_wgslsmith_index_u32(4294967295u, 6u)], global3.c.e), -184f, arg_0.d.x), 10893i, global2[_wgslsmith_index_u32(var_0.e, 6u)]).c.b))), _wgslsmith_sub_i32(global3.e, var_0.d.x)), -24378i & u_input.b.x, Struct_2(27428u, func_2(vec3<f32>(1f, _wgslsmith_f_op_f32(-arg_0.b.x), -1740f), Struct_5(func_2(vec3<f32>(-283f, -1029f, arg_0.b.x), Struct_5(Struct_3(Struct_2(3454u, global3.c, arg_1, global3.c.a, arg_1), u_input.c, global2[_wgslsmith_index_u32(var_0.e, 6u)], arg_0.e), arg_0.b.x, arg_0.c), var_0.c, global2[_wgslsmith_index_u32(arg_0.e, 6u)]), _wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_mult_i32(global3.c.d.x, global3.e)), 2147483647i, global2[_wgslsmith_index_u32(38288u, 6u)]).a.b, !func_2(global3.c.b, Struct_5(Struct_3(global2[_wgslsmith_index_u32(13881u, 6u)], u_input.c, global2[_wgslsmith_index_u32(1u, 6u)], 46754u), -449f, global3.c.a), firstLeadingBit(arg_0.a), func_2(vec3<f32>(-187f, -440f, arg_0.b.x), Struct_5(Struct_3(Struct_2(var_0.e, Struct_1(-67614i, vec3<f32>(-1430f, -605f, 116f), 2147483647i, var_0.d, global3.c.e), arg_1, u_input.b.x, arg_1), vec3<u32>(5772u, var_0.e, global3.c.e), Struct_2(global3.c.e, Struct_1(global3.c.d.x, vec3<f32>(arg_0.b.x, var_0.b.x, 217f), -2147483647i, global1[_wgslsmith_index_u32(arg_0.e, 20u)], 38679u), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), u_input.b.x, arg_1), 109073u), 326f, 0i), global3.c.a, global2[_wgslsmith_index_u32(52704u, 6u)]).c).c.e, arg_0.c, func_2(vec3<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * global3.a.x)), Struct_5(func_2(global3.c.b, Struct_5(Struct_3(global2[_wgslsmith_index_u32(var_0.e, 6u)], vec3<u32>(10827u, arg_0.e, global3.c.e), Struct_2(u_input.d, Struct_1(u_input.a, vec3<f32>(global3.a.x, 637f, 537f), global3.e, vec4<i32>(2147483647i, -2147483647i, -20816i, 1i), 10537u), arg_1, 2147483647i, vec4<bool>(true, arg_1.x, false, false)), var_0.e), 1175f, 45193i), -1i, Struct_2(49506u, Struct_1(15610i, global3.c.b, 4044i, var_0.d, 1u), vec4<bool>(arg_1.x, true, false, arg_1.x), arg_0.a, vec4<bool>(arg_1.x, false, global3.b, arg_1.x))), _wgslsmith_f_op_f32(-781f - var_0.b.x), _wgslsmith_clamp_i32(-27803i, -21881i, -1i)), firstTrailingBit(func_6(Struct_4(vec2<f32>(global3.a.x, 524f), true, arg_0, true, 2147483647i), u_input.c.x, u_input.c)), Struct_2(arg_0.e, arg_0, arg_1, _wgslsmith_mult_i32(u_input.a, -2147483647i), arg_1)).a.c));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1481f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-852f, 353f)) * arg_0.b.zz)))), true, global3.c, var_1.c.c.x, arg_0.c);
    return Struct_5(Struct_3(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.b.x, 570f, 1624f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -377f, -935f))), Struct_5(var_1, -1892f, -16602i), u_input.a, Struct_2(~0u, Struct_1(48512i, vec3<f32>(394f, var_2.a.x, arg_0.b.x), var_2.e, global3.c.d, 18176u), func_2(vec3<f32>(var_2.c.b.x, -244f, var_0.b.x), Struct_5(Struct_3(Struct_2(var_1.c.a, arg_0, vec4<bool>(var_1.c.c.x, true, false, arg_1.x), var_2.e, vec4<bool>(var_2.d, true, false, var_1.a.c.x)), vec3<u32>(0u, arg_0.e, 4294967295u), global2[_wgslsmith_index_u32(u_input.c.x, 6u)], 16665u), 1653f, 1i), global3.e, var_1.a).c.e, _wgslsmith_clamp_i32(62240i, var_1.c.d, 35211i), vec4<bool>(arg_1.x, false, true, var_1.c.e.x))).a, max(func_5(func_2(var_1.a.b.b, Struct_5(Struct_3(Struct_2(1346u, global3.c, vec4<bool>(true, true, global3.d, false), var_2.e, var_1.c.c), var_1.b, var_1.c, 22503u), -1060f, -13178i), global3.e, global2[_wgslsmith_index_u32(2900u, 6u)])).ywy, _wgslsmith_div_vec3_u32(var_1.b, reverseBits(vec3<u32>(var_0.e, 4294967295u, 33749u)))), func_2(_wgslsmith_f_op_vec3_f32(var_2.c.b - _wgslsmith_f_op_vec3_f32(var_1.a.b.b * vec3<f32>(var_0.b.x, -253f, 769f))), Struct_5(func_2(var_1.a.b.b, Struct_5(var_1, var_2.a.x, -2147483647i), 0i, Struct_2(4294967295u, Struct_1(-43202i, var_0.b, -52703i, vec4<i32>(arg_0.a, 1i, var_0.c, var_2.e), u_input.c.x), arg_1, -1i, vec4<bool>(var_1.a.e.x, global3.b, false, global3.b))), -2069f, 1i), ~(-1i), Struct_2(1u, func_2(arg_0.b, Struct_5(Struct_3(global2[_wgslsmith_index_u32(69480u, 6u)], u_input.c, Struct_2(20599u, global3.c, var_1.a.c, var_0.a, vec4<bool>(false, var_1.a.e.x, arg_1.x, true)), arg_0.e), var_1.c.b.b.x, 2147483647i), var_0.d.x, Struct_2(77247u, arg_0, arg_1, global3.e, vec4<bool>(false, var_1.c.c.x, arg_1.x, false))).a.b, arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 1i), global3.c.d.yyy), func_2(global3.c.b, Struct_5(Struct_3(Struct_2(var_1.c.a, var_1.a.b, var_1.c.e, 48266i, vec4<bool>(arg_1.x, arg_1.x, true, true)), u_input.c, Struct_2(arg_0.e, Struct_1(var_0.c, vec3<f32>(global3.c.b.x, 275f, -258f), 25110i, vec4<i32>(var_2.e, 0i, -3527i, var_0.a), var_1.d), vec4<bool>(true, var_2.d, true, true), 25372i, vec4<bool>(var_1.c.c.x, var_1.a.e.x, global3.d, var_2.d)), 76102u), 3009f, var_1.c.b.a), u_input.b.x, Struct_2(4294967295u, arg_0, var_1.c.e, var_0.a, var_1.a.c)).c.e)).c, ~_wgslsmith_add_u32(36953u, arg_0.e)), 2101f, ~arg_0.d.x);
}

fn func_8(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.b.x, arg_2.a.x, -172f, arg_0.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-813f, arg_0.a.a.b.b.x, -1695f, 1568f)))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-554f)))), _wgslsmith_f_op_f32(round(-2529f)), -568f, arg_2.c.b.x));
    global3 = func_1(func_1(arg_2));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(734f, arg_3.x))), _wgslsmith_f_op_f32(func_4(~global3.c.e, 426f, arg_0.a.a.b)), _wgslsmith_f_op_f32(arg_2.c.b.x * arg_2.c.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-939f, -1483f, var_0.x)));
    let var_2 = func_7(global3.c, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.a.c.b.b * vec3<f32>(arg_2.c.b.x, 2546f, -289f)))) * vec3<f32>(653f, 334f, arg_3.x)), arg_0, firstTrailingBit(-6068i), Struct_2(abs(global3.c.e) >> (~28289u % 32u), Struct_1(_wgslsmith_add_i32(arg_2.c.c, arg_1.x), arg_0.a.c.b.b, -u_input.b.x, global1[_wgslsmith_index_u32(~global3.c.e, 20u)], _wgslsmith_div_u32(global3.c.e, 96055u)), func_2(_wgslsmith_f_op_vec3_f32(var_1 * vec3<f32>(-1375f, var_1.x, -1019f)), arg_0, 6900i, func_7(Struct_1(1i, global3.c.b, 2147483647i, vec4<i32>(arg_1.x, 4922i, -31489i, -44382i), 55471u), vec4<bool>(global3.d, false, true, global3.d)).a.c).c.e, 2147483647i, vec4<bool>(true, true, true, arg_2.b))).a.e).a.c.c.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-457f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * arg_3.x)), global3.a.x, _wgslsmith_div_f32(func_2(func_7(arg_2.c, vec4<bool>(false, arg_0.a.a.e.x, arg_0.a.a.e.x, false)).a.a.b.b, Struct_5(arg_0.a, global3.a.x, arg_2.c.c), arg_0.a.a.d, global2[_wgslsmith_index_u32(arg_0.a.d, 6u)]).a.b.b.x, 429f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.x)))) * arg_3.x))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(global3.c.d.wzx ^ min(abs(global3.c.d.yxx) & (u_input.b << (u_input.c % vec3<u32>(32u))), global3.c.d.xwx), global3.c.d.wxw);
    var var_1 = -2147483647i >> (global3.c.e % 32u);
    let var_2 = func_8(func_7(Struct_1(-1i, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1927f, global3.c.b.x, global3.c.b.x))), func_6(func_1(Struct_4(global3.c.b.xz, global3.d, global3.c, global3.b, -3300i)), ~u_input.c.x, _wgslsmith_mod_vec3_u32(vec3<u32>(26347u, global3.c.e, 13527u), u_input.c)), max(func_3(global3.c, var_0.x), ~vec4<i32>(-1i, global3.c.a, 0i, var_0.x)), firstTrailingBit(1u)), !vec4<bool>(global3.d, global3.d, global3.d, global3.b)), max(vec2<i32>(abs(max(global3.c.a, -14704i)), -global3.e), vec2<i32>(2147483647i, _wgslsmith_mult_i32(0i, abs(-12946i)))), func_1(func_1(func_1(Struct_4(global3.c.b.xz, true, global3.c, global3.d, -2147483647i)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.b.x, _wgslsmith_f_op_f32(global3.c.b.x + global3.a.x))), -197f));
    let var_3 = -2147483647i;
    var var_4 = _wgslsmith_f_op_f32(min(206f, func_7(global3.c, func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_2.c.b.b * global3.c.b))), Struct_5(Struct_3(global2[_wgslsmith_index_u32(0u, 6u)], u_input.c, Struct_2(45572u, global3.c, var_2.c.c, u_input.a, vec4<bool>(global3.b, var_2.a.e.x, var_2.c.c.x, var_2.c.c.x)), 1u), -1472f, -var_2.a.b.a), _wgslsmith_dot_vec4_i32(vec4<i32>(9774i, 5991i, var_3, u_input.a) ^ vec4<i32>(var_3, 0i, -65663i, 1i), max(vec4<i32>(var_0.x, var_3, var_3, var_0.x), global3.c.d)), global2[_wgslsmith_index_u32(0u, 6u)]).c.e).a.c.b.b.x));
    var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)) + 1f);
    let var_5 = global3.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_8(func_7(Struct_1(min(var_3, var_3), _wgslsmith_f_op_vec3_f32(global3.c.b + var_2.a.b.b), _wgslsmith_dot_vec2_i32(global3.c.d.zx, var_2.c.b.d.xz), global3.c.d, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.e, 14269u, global3.c.e, u_input.d), vec4<u32>(1u, global3.c.e, 64448u, 4294967295u))), !vec4<bool>(global3.d, var_2.a.c.x, global3.b, false)), vec2<i32>(var_0.x, 1i), func_1(func_1(Struct_4(global3.c.b.xx, var_2.c.c.x, global3.c, var_2.c.e.x, var_2.c.d))), global3.c.b.xx).c.b.d.xx, ~1u);
}

