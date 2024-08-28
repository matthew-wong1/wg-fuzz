struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<i32>(0i, -26990i), vec3<bool>(false, false, true), vec2<u32>(4294967295u, 80190u), vec4<i32>(1i, -62712i, 1i, i32(-2147483648)), vec2<bool>(true, false)), Struct_1(vec2<i32>(-31760i, -47555i), vec3<bool>(false, false, true), vec2<u32>(1u, 2269u), vec4<i32>(-32202i, 2147483647i, 1i, 21139i), vec2<bool>(false, false)), Struct_1(vec2<i32>(i32(-2147483648), -11358i), vec3<bool>(true, true, false), vec2<u32>(1u, 1u), vec4<i32>(0i, -9729i, 29049i, 0i), vec2<bool>(false, true)), Struct_1(vec2<i32>(24549i, i32(-2147483648)), vec3<bool>(false, true, false), vec2<u32>(17345u, 1u), vec4<i32>(0i, 2580i, 2147483647i, -11799i), vec2<bool>(false, false)), Struct_1(vec2<i32>(-7083i, 1i), vec3<bool>(false, false, false), vec2<u32>(33615u, 37824u), vec4<i32>(9570i, -2610i, -21396i, -19586i), vec2<bool>(false, true)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(true, false, true), vec2<u32>(53050u, 23740u), vec4<i32>(0i, -32503i, 1i, -1i), vec2<bool>(true, true)), Struct_1(vec2<i32>(-31291i, 2147483647i), vec3<bool>(true, true, true), vec2<u32>(1u, 4294967295u), vec4<i32>(2413i, -13965i, -26735i, 23824i), vec2<bool>(true, true)), Struct_1(vec2<i32>(16126i, -1i), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 87870u), vec4<i32>(4978i, -63592i, 0i, -63313i), vec2<bool>(false, false)), Struct_1(vec2<i32>(2147483647i, 0i), vec3<bool>(true, true, true), vec2<u32>(4294967295u, 12098u), vec4<i32>(i32(-2147483648), 14498i, i32(-2147483648), 1i), vec2<bool>(true, true)), Struct_1(vec2<i32>(2147483647i, -1i), vec3<bool>(true, false, false), vec2<u32>(8303u, 4294967295u), vec4<i32>(-1i, 1i, 45995i, 35235i), vec2<bool>(true, false)), Struct_1(vec2<i32>(43576i, -1i), vec3<bool>(false, true, false), vec2<u32>(1u, 1u), vec4<i32>(2147483647i, -30262i, -1i, -1i), vec2<bool>(false, true)), Struct_1(vec2<i32>(-8741i, -48182i), vec3<bool>(true, false, false), vec2<u32>(77425u, 1u), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -6404i), vec2<bool>(true, false)), Struct_1(vec2<i32>(-14866i, 0i), vec3<bool>(true, true, false), vec2<u32>(44552u, 51982u), vec4<i32>(1i, 27320i, i32(-2147483648), 0i), vec2<bool>(false, true)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<bool>(true, false, true), vec2<u32>(45835u, 1u), vec4<i32>(23059i, -12225i, -2812i, 0i), vec2<bool>(true, true)), Struct_1(vec2<i32>(8329i, -1i), vec3<bool>(true, false, true), vec2<u32>(4294967295u, 62630u), vec4<i32>(i32(-2147483648), -15270i, 78795i, 197i), vec2<bool>(false, true)), Struct_1(vec2<i32>(11114i, 2147483647i), vec3<bool>(true, true, false), vec2<u32>(0u, 27320u), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 63710i), vec2<bool>(true, false)), Struct_1(vec2<i32>(37121i, 20689i), vec3<bool>(false, false, true), vec2<u32>(1u, 0u), vec4<i32>(2097i, -17393i, 0i, -49094i), vec2<bool>(true, true)));

var<private> global2: vec4<u32>;

var<private> global3: Struct_1;

var<private> global4: array<i32, 8> = array<i32, 8>(-51953i, -1i, -2058i, 11502i, -12654i, -20062i, 1i, -85451i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> bool {
    var var_0 = any(vec2<bool>(global3.e.x, false));
    var var_1 = false;
    var var_2 = Struct_1(vec2<i32>(arg_1.a.x ^ _wgslsmith_add_i32(-2147483647i, 0i ^ global3.d.x), global4[_wgslsmith_index_u32(~40375u, 8u)]), arg_1.b, vec2<u32>(_wgslsmith_mult_u32(select(u_input.c.x, global2.x, true), ~50506u) & reverseBits(1u), 0u), _wgslsmith_mod_vec4_i32(global3.d, firstLeadingBit(vec4<i32>(u_input.a, -84753i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 22694i, 1i), arg_1.d.xyw), countOneBits(0i)))), global0.xz);
    var var_3 = 49677i;
    let var_4 = 1u << (global3.c.x % 32u);
    return var_2.c.x >= ~_wgslsmith_mult_u32(firstTrailingBit(arg_1.c.x & 88580u), ~(~4294967295u));
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(483f * 1845f);
    var var_1 = arg_0;
    global1 = array<Struct_1, 17>();
    let var_2 = !vec2<bool>(all(vec4<bool>(arg_0.c.x > global3.c.x, !global3.e.x, all(arg_0.b), true)), all(select(!vec4<bool>(false, arg_0.e.x, false, global0.x), vec4<bool>(arg_0.e.x, true, global0.x, true), vec4<bool>(true, global0.x, arg_0.b.x, var_1.e.x))));
    var var_3 = select(!var_2, select(global0.zy, !vec2<bool>(12140u <= global2.x, false), select(var_1.e, select(!var_1.b.zz, vec2<bool>(var_2.x, var_2.x), global3.b.x || global0.x), vec2<bool>(true, !var_2.x))), var_1.e);
    return !vec2<bool>(global0.x, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(100f, 1157f)) * 1f), _wgslsmith_f_op_f32(f32(-1f) * -709f))) + _wgslsmith_f_op_f32(select(746f, 364f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1075f)) - 465f), 1f)));
    let var_1 = Struct_1(-_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(global3.d.yx, arg_0.d.xy), vec2<i32>(1i, 0i)), global3.d.yy), arg_0.b, vec2<u32>(countOneBits(u_input.d) ^ ~4294967295u, countOneBits(58692u)), arg_0.d, func_4(Struct_1(vec2<i32>(arg_0.d.x ^ global3.d.x, _wgslsmith_mod_i32(2147483647i, 58646i)), vec3<bool>(global3.b.x, func_3(arg_0.d.yx, arg_0), any(vec2<bool>(global3.b.x, true))), ~global3.c, ~vec4<i32>(global4[_wgslsmith_index_u32(arg_0.c.x, 8u)], 45592i, arg_0.a.x, u_input.b.x) ^ -u_input.b, !vec2<bool>(arg_1.x, false))));
    global1 = array<Struct_1, 17>();
    let var_2 = vec4<u32>(1u, 1u, ~((arg_0.c.x ^ (var_1.c.x ^ 24923u)) | 55381u), _wgslsmith_dot_vec3_u32(~(~global2.wzw), global2.xww));
    global0 = !arg_0.b;
    return ~1u;
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(firstTrailingBit(select(select(u_input.b.wy, vec2<i32>(global4[_wgslsmith_index_u32(81311u, 8u)], u_input.b.x), !vec2<bool>(global3.e.x, true)), vec2<i32>(_wgslsmith_mod_i32(global3.d.x, global3.d.x), global4[_wgslsmith_index_u32(abs(1u), 8u)]), vec2<bool>(true, true))), vec3<bool>(global3.b.x == true, any(select(!vec3<bool>(true, global3.e.x, global0.x), !global3.b, true)), global0.x), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global3.c, (vec2<u32>(0u, global2.x) | vec2<u32>(12339u, global3.c.x)) >> (_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(global2.x, 4294967295u)) % vec2<u32>(32u))), ~max(vec2<u32>(arg_0.x, global3.c.x), ~u_input.c)), global3.d >> (vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 45941u), ~global3.c), global2.x, ~_wgslsmith_sub_u32(global3.c.x, 4294967295u)) % vec4<u32>(32u)), !vec2<bool>(any(vec3<bool>(false, global0.x, global0.x)), func_4(global1[_wgslsmith_index_u32(16283u, 17u)]).x));
}

fn func_1(arg_0: f32) -> f32 {
    global1 = array<Struct_1, 17>();
    global2 = u_input.e | vec4<u32>(~(~_wgslsmith_mod_u32(19678u, 4294967295u)), u_input.d, ~_wgslsmith_mod_u32(countOneBits(global2.x), ~83773u), 66618u);
    var var_0 = func_5(vec4<u32>(u_input.d, reverseBits(4294967295u), 0u, ~func_2(global1[_wgslsmith_index_u32(~34939u, 17u)], global0.zx)));
    var var_1 = func_4(func_5(~vec4<u32>(4294967295u, ~u_input.c.x, ~global3.c.x, 4294967295u)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-156f, arg_0) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 372f))))), vec2<f32>(-820f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2159f, arg_0, var_0.e.x)) * arg_0)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.yyw;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1016f, _wgslsmith_f_op_f32(func_1(681f)), 452f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2322f, -300f, -657f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1489f, 1382f, 624f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-163f, 144f, 1000f) - vec3<f32>(2327f, -2423f, -199f)))));
    let var_2 = Struct_1(_wgslsmith_mod_vec2_i32(~u_input.b.wy, global3.a), func_5(~u_input.e).b, vec2<u32>(2136u >> (~(~u_input.d) % 32u), global2.x), firstLeadingBit(firstLeadingBit(u_input.b)), global0.zx);
    let var_3 = global1[_wgslsmith_index_u32(min(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(var_2.c.x), firstTrailingBit(1u), u_input.d, 28724u) >> (_wgslsmith_mult_vec4_u32(u_input.e, firstTrailingBit(u_input.e)) % vec4<u32>(32u)), abs(firstLeadingBit(u_input.e) << (firstTrailingBit(u_input.e) % vec4<u32>(32u))))), 17u)];
    var var_4 = func_5(vec4<u32>(var_3.c.x, func_5(u_input.e).c.x, 1u, global3.c.x));
    var var_5 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-450f * 1525f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), 273f))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 336f)), -665f, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + 974f)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(136f, var_1.x, 1097f, 1142f)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(1366f, var_1.x))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-775f)) - _wgslsmith_f_op_f32(490f * -129f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(637f)))), ~vec4<i32>(17132i, _wgslsmith_dot_vec2_i32(var_3.a, vec2<i32>(0i, -2311i)) >> (max(48816u, global2.x) % 32u), -382i << (0u % 32u), global3.a.x), vec3<i32>(_wgslsmith_add_i32(16420i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(0i, -2147483647i)), var_3.a.x)), var_3.d.x, ~global4[_wgslsmith_index_u32(~(~var_4.c.x), 8u)]));
}

