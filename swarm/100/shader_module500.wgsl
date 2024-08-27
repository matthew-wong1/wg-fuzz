struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 18>;

var<private> global2: array<u32, 19> = array<u32, 19>(0u, 85173u, 43686u, 10429u, 1u, 4294967295u, 84511u, 21005u, 1u, 4686u, 25155u, 0u, 3983u, 4294967295u, 17511u, 35686u, 59114u, 0u, 1u);

var<private> global3: array<Struct_3, 4>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, reverseBits(20681u)), global2[_wgslsmith_index_u32(min(~7666u, u_input.b) ^ 7866u, 19u)], 1u, ~u_input.b), ~min(~vec4<u32>(global2[_wgslsmith_index_u32(8449u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(2193u, 19u)], 31189u) ^ abs(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], u_input.a, global2[_wgslsmith_index_u32(u_input.b, 19u)])), ~vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(47467u, 19u)], 95815u, global2[_wgslsmith_index_u32(u_input.b, 19u)])));
    let var_1 = Struct_2(_wgslsmith_mult_i32(39278i, 1i), Struct_1(vec2<u32>(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)] >> (global2[_wgslsmith_index_u32(u_input.b, 19u)] % 32u)), 9436u), 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.xzw, var_0.zyw), ~0u), 1u, _wgslsmith_div_u32(var_0.x, var_0.x) ^ ~u_input.a, ~(~153846u)), firstTrailingBit(firstTrailingBit(vec4<u32>(4294967295u, var_0.x, var_0.x, 16558u))) | vec4<u32>(1u, 52471u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38040u, 19u)], 19u)], 1u, select(u_input.b, 0u, true))), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, 2147483647i)), firstLeadingBit(vec2<i32>(26135i, 0i))) ^ 0i, _wgslsmith_clamp_i32(~0i, -1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, -31886i, -16101i), _wgslsmith_sub_i32(1i, -1i)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(all(vec3<bool>(true, true, true)), true, true)), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, abs(4294967295u) <= (global2[_wgslsmith_index_u32(var_0.x, 19u)] & global2[_wgslsmith_index_u32(var_0.x, 19u)])), vec3<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), !select(true, true, false), true)));
    var var_2 = i32(-1i) * -2147483647i;
    global1 = array<vec3<i32>, 18>();
    let var_3 = any(!(!(!(!var_1.e.yx))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f)), -582f));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    return arg_2.b.a.x;
}

fn func_2() -> Struct_2 {
    var var_0 = 1i;
    global0 = ~func_4(Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3()), vec3<f32>(-450f, 241f, 566f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-649f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2011f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1320f)), -258f), Struct_2(_wgslsmith_div_i32(abs(2147483647i), -51537i), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(60948u, u_input.a)), _wgslsmith_clamp_u32(30165u, 79899u, 45268u)), vec4<u32>(select(global2[_wgslsmith_index_u32(7259u, 19u)], 4294967295u, false), 0u, 66111u, ~u_input.a), ~vec2<i32>(-2147483647i, 39212i), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), -788f, _wgslsmith_div_f32(-718f, 150f), _wgslsmith_f_op_f32(trunc(-812f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(597f, -999f, 1198f, 2251f))), vec4<f32>(1f, 1f, 1f, 1f))), vec4<bool>(true, true, true, true))));
    global1 = array<vec3<i32>, 18>();
    let var_1 = vec2<u32>(_wgslsmith_add_u32(300u, _wgslsmith_div_u32(4294967295u, u_input.a)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b, u_input.b), 19u)], u_input.b, ~1u), 1u));
    let var_2 = reverseBits(_wgslsmith_div_i32(reverseBits(0i), -3708i));
    return Struct_2(var_2, Struct_1(var_1, u_input.a), abs(abs(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])))), abs(countOneBits(vec2<i32>(var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(216i, 28877i, var_2, 2787i), vec4<i32>(2147483647i, var_2, 2147483647i, -15406i))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = true;
    let var_1 = ~vec3<i32>(arg_1.d.x, min(-14998i, _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-34171i, -1i, arg_1.a, arg_1.d.x), vec4<i32>(-18271i, -21952i, -29845i, -1i)))), 2147483647i);
    var var_2 = arg_1.e.zx;
    global0 = 17432u;
    global2 = array<u32, 19>();
    return Struct_2(_wgslsmith_add_i32(firstTrailingBit(arg_1.a), 1i), arg_1.b, select(arg_1.c, arg_1.c, vec4<bool>(select(arg_2.x, arg_1.e.x, arg_1.e.x), true, !var_2.x, true)), vec2<i32>(_wgslsmith_mod_i32(1i, var_1.x), firstTrailingBit(_wgslsmith_clamp_i32(1i, 2147483647i, 9195i))), arg_1.e);
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = ~arg_2.a;
    global1 = array<vec3<i32>, 18>();
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b.a.x, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(17141u, 19u)]), 19u)], countOneBits(u_input.a)) << (firstLeadingBit(42869u) % 32u)), ~arg_2.b.a);
    let var_3 = Struct_2(-20271i, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, arg_0.a.x, -957f, -256f)))), func_2(), arg_2.e.xz).b, arg_2.c, abs(vec2<i32>(~(-var_0), arg_2.d.x)), !arg_2.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) + _wgslsmith_f_op_f32(f32(-1f) * -944f));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_6(Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(902f, -1035f, 1381f), vec3<f32>(-538f, -159f, -1000f))))), 279f, func_5(vec4<f32>(1243f, 1f, -383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f - 334f))), func_2(), vec2<bool>(true, true)), !func_2().e.x));
    return Struct_1(~(countOneBits(vec2<u32>(1u, u_input.b)) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.b))), ~8140u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<Struct_3, 4>();
    var var_1 = min(~(~2147483647i), _wgslsmith_div_i32(~func_2().d.x, ~(33063i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 444i, 63284i, -2147483647i), vec4<i32>(60266i, 24476i, -41063i, -1i)))));
    var var_2 = Struct_2(1i, var_0, ~_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(0u, 75578u, var_0.b, 1u)), firstTrailingBit(vec4<u32>(var_0.a.x, global2[_wgslsmith_index_u32(u_input.b, 19u)], var_0.a.x, 4294967295u))), abs(-vec2<i32>(2147483647i, min(-2147483647i, 0i))), !(!func_5(vec4<f32>(-584f, 1301f, -954f, 487f), func_2(), vec2<bool>(true, true)).e));
    global2 = array<u32, 19>();
    var_1 = -var_2.a;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1468f);
    var var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(var_2.d.x, var_2.a) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))), vec2<i32>(var_2.a, -16348i)), var_2.d.x, _wgslsmith_div_i32(-2147483647i, countOneBits(countOneBits(33984i)))), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-67849i, var_2.d.x, var_2.d.x), global1[_wgslsmith_index_u32(u_input.a, 18u)] & global1[_wgslsmith_index_u32(u_input.a, 18u)]), (var_2.a ^ 28539i) | (-10052i >> (global2[_wgslsmith_index_u32(1u, 19u)] % 32u)), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(736f * -583f), _wgslsmith_f_op_f32(sign(1570f))))), -117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-446f * -1000f) - -2207f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(467f)), 339f)) - 1f)), var_2.c.x, _wgslsmith_sub_i32(~(-(~var_4.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(var_2.c.x, 18u)], vec3<i32>(-1i, -23410i, var_4.x))), var_2.d)));
}

