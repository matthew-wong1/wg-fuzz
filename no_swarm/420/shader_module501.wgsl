struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14>;

var<private> global1: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(true, vec3<u32>(1u, 26794u, 101u)), Struct_5(true, vec3<u32>(1u, 0u, 4294967295u)), Struct_5(true, vec3<u32>(2059u, 54863u, 47521u)), Struct_5(true, vec3<u32>(4294967295u, 11762u, 0u)), Struct_5(false, vec3<u32>(44886u, 3980u, 1u)), Struct_5(false, vec3<u32>(12961u, 0u, 16216u)), Struct_5(false, vec3<u32>(941u, 58711u, 31359u)), Struct_5(false, vec3<u32>(13650u, 88370u, 0u)), Struct_5(true, vec3<u32>(23048u, 19652u, 102986u)), Struct_5(true, vec3<u32>(1u, 0u, 16694u)), Struct_5(true, vec3<u32>(4922u, 4294967295u, 0u)), Struct_5(true, vec3<u32>(4294967295u, 26u, 123965u)), Struct_5(true, vec3<u32>(85861u, 0u, 1u)), Struct_5(false, vec3<u32>(1u, 25755u, 4294967295u)), Struct_5(true, vec3<u32>(4294967295u, 63088u, 33891u)), Struct_5(true, vec3<u32>(1u, 0u, 70387u)), Struct_5(true, vec3<u32>(20839u, 0u, 5234u)), Struct_5(false, vec3<u32>(4294967295u, 18844u, 1u)), Struct_5(true, vec3<u32>(4294967295u, 30097u, 1u)), Struct_5(true, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_5(true, vec3<u32>(41772u, 1u, 1u)), Struct_5(true, vec3<u32>(28854u, 47544u, 16764u)), Struct_5(false, vec3<u32>(19781u, 0u, 99827u)), Struct_5(false, vec3<u32>(1u, 0u, 9615u)), Struct_5(true, vec3<u32>(26479u, 4294967295u, 4294967295u)), Struct_5(true, vec3<u32>(1u, 4294967295u, 0u)), Struct_5(false, vec3<u32>(4294967295u, 5181u, 0u)), Struct_5(true, vec3<u32>(118911u, 4684u, 35624u)), Struct_5(true, vec3<u32>(31849u, 4294967295u, 0u)));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(205f, 350f), vec2<u32>(0u, 4294967295u), 1u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global1 = array<Struct_5, 29>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.e.x, 29u)];
    let var_1 = abs(~u_input.d);
    let var_2 = Struct_3(any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((var_0.b ^ vec3<u32>(0u, global2.b.x, var_0.b.x)) ^ min(u_input.e.xzw, u_input.e.yyx), max(vec3<u32>(7699u, var_0.b.x, u_input.e.x), _wgslsmith_mult_vec3_u32(u_input.e.yxy, vec3<u32>(u_input.e.x, 94945u, 22308u)))), 14u)]), Struct_2((_wgslsmith_f_op_f32(-global2.a.x) == _wgslsmith_f_op_f32(f32(-1f) * -1493f)) && !var_0.a), vec4<u32>(~0u, ~u_input.e.x, _wgslsmith_mod_u32(abs(var_0.b.x), global2.c) | _wgslsmith_clamp_u32(1u, u_input.e.x, global2.b.x & var_0.b.x), firstTrailingBit(countOneBits(0u))), Struct_2(all(vec4<bool>(true, select(false, var_0.a, false), true, 4294967295u >= u_input.e.x))), min(-vec4<i32>(-26443i, -27982i, -13723i, firstLeadingBit(-2147483647i)), countOneBits(-select(vec4<i32>(23216i, -9063i, var_1, -14190i), vec4<i32>(u_input.c.x, 0i, var_1, u_input.a.x), false))));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global2.a)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(470f, global2.a.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.a.x, global2.a.x), global2.a)))) - _wgslsmith_f_op_vec2_f32(-global2.a))), var_2.c.wz, _wgslsmith_div_u32(1u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, global2.c), vec3<u32>(global2.c, u_input.e.x, 1u) | vec3<u32>(u_input.e.x, 101161u, var_0.b.x))));
    return global2.a.x;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(global2.c), 29u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1937f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), arg_0, select(any(vec2<bool>(true, var_0.a)), ~10249u >= _wgslsmith_clamp_u32(1u, 53020u, global2.b.x), true))));
    let var_2 = reverseBits(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(~vec3<i32>(7806i, 1i, arg_1), ~vec3<i32>(u_input.c.x, arg_2, arg_2)));
    global0 = array<vec2<bool>, 14>();
    let var_3 = abs(~_wgslsmith_mod_u32(select(48416u, u_input.b.x, true) & _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), global2.b.x));
    return var_2.x;
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_4 {
    let var_0 = ~(~_wgslsmith_dot_vec3_u32(arg_3 << ((arg_3 >> (arg_3 % vec3<u32>(32u))) % vec3<u32>(32u)), select(select(u_input.e.ywz, arg_3, vec3<bool>(false, true, arg_0.c.a)), vec3<u32>(u_input.e.x, global2.b.x, arg_0.a.b.x), arg_0.d & arg_0.c.a)));
    let var_1 = !vec4<bool>(arg_1.x, any(select(select(vec3<bool>(true, true, arg_1.x), vec3<bool>(true, false, true), arg_0.c.a), !vec3<bool>(arg_1.x, true, false), select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(false, true, arg_0.b.x), vec3<bool>(true, arg_1.x, arg_0.b.x)))), false, false);
    let var_2 = all(select(!select(select(vec2<bool>(arg_0.b.x, arg_1.x), arg_0.b, vec2<bool>(var_1.x, false)), !var_1.xw, true), arg_1, any(var_1)));
    global0 = array<vec2<bool>, 14>();
    let var_3 = firstTrailingBit(vec3<u32>(arg_0.a.b.x, 4294967295u, _wgslsmith_div_u32(30559u, u_input.e.x)));
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = func_4(Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(global2.a.x)), 2679f), u_input.b, ~u_input.b.x & _wgslsmith_mod_u32(5393u, arg_1)), select(select(global0[_wgslsmith_index_u32(~320u, 14u)], select(arg_2, vec2<bool>(arg_0.x, arg_0.x), arg_0.x), !vec2<bool>(arg_0.x, arg_2.x)), arg_2, vec2<bool>(true, true)), Struct_2(true), arg_2.x, firstTrailingBit(-arg_3.x)), select(select(select(arg_0.xx, vec2<bool>(false, false), all(vec3<bool>(false, false, true))), vec2<bool>(true, true), arg_0.zx), !vec2<bool>(!arg_0.x, arg_2.x), arg_2.x), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(51116i, u_input.a.x, -2147483647i, arg_3.x)) ^ vec4<i32>(-20193i, 1i, 0i, -5182i), firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.a.x, arg_3.x, 21054i, u_input.d)))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, select(1i, arg_3.x, arg_0.x), ~u_input.c.x, func_2(-1000f, 14291i, -9371i)), ~min(vec4<i32>(655i, 0i, 35543i, arg_3.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, arg_3.x)), -(~vec4<i32>(-16170i, -1i, arg_3.x, u_input.a.x))), ~(~(~u_input.e.zzw)));
    global2 = Struct_1(global2.a, select(u_input.b >> (global2.b % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(min(_wgslsmith_mod_vec2_u32(global2.b, vec2<u32>(u_input.e.x, 40196u)), _wgslsmith_sub_vec2_u32(global2.b, vec2<u32>(u_input.e.x, u_input.e.x))), vec2<u32>(29831u, 61855u)), false), u_input.e.x);
    var var_1 = false;
    global1 = array<Struct_5, 29>();
    var var_2 = Struct_5(arg_2.x, vec3<u32>(_wgslsmith_clamp_u32(abs(~1839u), var_0.a.b.x, _wgslsmith_mult_u32(19490u, select(arg_1, 28092u, var_0.c.a))), countOneBits(reverseBits(93233u) >> (global2.b.x % 32u)), ~28201u));
    return func_4(var_0, vec2<bool>(!(!(!var_0.d)), any(arg_0.yx) && true), select(abs(vec4<i32>(~1i, u_input.d, -24598i, firstTrailingBit(var_0.e))), select(vec4<i32>(arg_3.x, i32(-1i) * -2147483647i, var_0.e >> (var_0.a.c % 32u), i32(-1i) * -29774i), min(vec4<i32>(u_input.d, arg_3.x, 0i, var_0.e), select(vec4<i32>(24739i, var_0.e, -605i, arg_3.x), vec4<i32>(var_0.e, arg_3.x, u_input.a.x, var_0.e), true)), !select(vec4<bool>(true, arg_2.x, var_2.a, true), vec4<bool>(true, arg_2.x, true, true), vec4<bool>(var_2.a, true, true, false))), !(!vec4<bool>(arg_0.x, arg_0.x, var_0.c.a, arg_2.x))), var_2.b);
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> u32 {
    var var_0 = true;
    global1 = array<Struct_5, 29>();
    var_0 = !arg_1.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_1.a.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.a.x * 493f) + -352f)))));
    global2 = func_1(!(!vec3<bool>(arg_1.b.x, arg_1.a.a.x != global2.a.x, false && arg_1.b.x)), func_1(!(!vec3<bool>(arg_1.b.x, false, arg_1.d)), _wgslsmith_dot_vec4_u32(u_input.e ^ vec4<u32>(0u, 19289u, global2.b.x, 0u), ~vec4<u32>(arg_1.a.c, 5709u, 75599u, arg_1.a.b.x)), !(!vec2<bool>(arg_1.d, true)), vec3<i32>(19861i, countOneBits(u_input.c.x), u_input.c.x)).a.c << (0u % 32u), vec2<bool>(!arg_1.d, all(vec3<bool>(!arg_1.b.x, any(vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x)), true))), vec3<i32>(arg_1.e, _wgslsmith_add_i32(arg_1.e, max(arg_1.e, -74657i)) & -23324i, arg_1.e)).a;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(global2.a, _wgslsmith_sub_vec2_u32(vec2<u32>(~(57727u ^ u_input.b.x), global2.b.x), global2.b), ~(~func_5(global2.a.x, func_1(vec3<bool>(true, true, false), 0u, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], vec3<i32>(-2147483647i, u_input.a.x, u_input.d)))));
    global2 = func_1(vec3<bool>(!func_1(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), ~15801u, global0[_wgslsmith_index_u32(min(0u, 1u), 14u)], select(vec3<i32>(1i, u_input.a.x, 26023i), vec3<i32>(2147483647i, u_input.d, u_input.d), true)).d, all(vec4<bool>(true, true, true, true)), true), _wgslsmith_mult_u32(firstLeadingBit(func_4(Struct_4(Struct_1(vec2<f32>(global2.a.x, global2.a.x), vec2<u32>(29414u, 4294967295u), global2.b.x), vec2<bool>(true, true), Struct_2(false), true, u_input.d), vec2<bool>(true, true), vec4<i32>(-7993i, 11817i, -2147483647i, 4576i), vec3<u32>(0u, global2.c, 0u) >> (u_input.e.xxz % vec3<u32>(32u))).a.b.x), max(u_input.e.x, u_input.e.x)), global0[_wgslsmith_index_u32(990u, 14u)], max(-(vec3<i32>(u_input.a.x, 1i, u_input.d) << (u_input.e.www % vec3<u32>(32u))), reverseBits(vec3<i32>(-2147483647i, u_input.c.x, u_input.d))) | countOneBits(vec3<i32>(u_input.c.x, 1i, max(u_input.c.x, 15883i)))).a;
    global1 = array<Struct_5, 29>();
    var var_0 = global0[_wgslsmith_index_u32(abs(u_input.b.x), 14u)];
    var_0 = !vec2<bool>(var_0.x, !(u_input.d != (-17837i ^ u_input.c.x)));
    let var_1 = Struct_3(any(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.c, global2.b.x), func_4(Struct_4(Struct_1(global2.a, u_input.b, 4294967295u), vec2<bool>(false, var_0.x), Struct_2(var_0.x), false, u_input.a.x), global0[_wgslsmith_index_u32(50732u, 14u)], vec4<i32>(77036i, u_input.d, 3917i, 649i), u_input.e.wxz).a.b)), 14u)]), func_1(vec3<bool>(var_0.x, false, (-1470f < global2.a.x) && any(vec4<bool>(true, false, false, var_0.x))), ~(~global2.c), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 1u), vec2<u32>(0u, 16102u))), 14u)], ~vec3<i32>(0i, -u_input.d, abs(u_input.c.x))).c, u_input.e, Struct_2(all(select(!vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, var_0.x, false, false)))), vec4<i32>(~(-56016i), select(-(~1i), u_input.a.x, var_0.x), -2147483647i, ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.c.x, u_input.d, u_input.d), vec3<bool>(var_0.x, false, var_0.x)), -vec3<i32>(u_input.a.x, 18272i, u_input.c.x))));
    var var_2 = countOneBits(0i) >> (global2.c % 32u);
    var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-var_1.e.x, ~1316i)), ~(var_1.e.yw | var_1.e.yx) << ((~global2.b & var_1.c.wy) % vec2<u32>(32u))), u_input.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(-345f - _wgslsmith_f_op_f32(f32(-1f) * -1511f)), global2.a.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, 1000f, 1000f) * vec3<f32>(-664f, 1287f, -2191f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, -478f) - vec3<f32>(-393f, global2.a.x, global2.a.x))))), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_u32(~var_1.c.x, 17228u ^ var_1.c.x)) & 0u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1001f, -1771f))), global2.a.x, _wgslsmith_f_op_f32(trunc(global2.a.x)), -607f), var_3.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, -343f, global2.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, global2.a.x) - vec3<f32>(1956f, -991f, 1272f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(904f, 274f, global2.a.x))))))));
}

