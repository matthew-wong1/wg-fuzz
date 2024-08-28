struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-44542i, 1i, 0i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(2389i, 14397i, 1i), vec3<i32>(32405i, -1i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, 4850i), vec3<i32>(-1i, -27542i, 4720i), vec3<i32>(-22557i, -1i, -1i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(0i, 16832i, -12158i), vec3<i32>(-3440i, -32887i, 14115i), vec3<i32>(21790i, -59524i, 2147483647i), vec3<i32>(15903i, 2147483647i, i32(-2147483648)), vec3<i32>(25408i, 57821i, 0i), vec3<i32>(1i, i32(-2147483648), -19465i), vec3<i32>(-1i, -25609i, -28583i), vec3<i32>(-12580i, -4495i, 0i), vec3<i32>(0i, 54387i, -48420i), vec3<i32>(40801i, -67838i, -29370i), vec3<i32>(11929i, i32(-2147483648), -1i), vec3<i32>(-13651i, -1i, i32(-2147483648)), vec3<i32>(-16902i, i32(-2147483648), -5276i), vec3<i32>(-1i, 23191i, -38621i), vec3<i32>(-29053i, 21452i, -18740i), vec3<i32>(-10431i, 0i, -13810i), vec3<i32>(i32(-2147483648), 2147483647i, 27850i), vec3<i32>(0i, 27627i, -1i), vec3<i32>(2147483647i, 7961i, 2147483647i), vec3<i32>(0i, 74385i, -76149i), vec3<i32>(-78194i, 52141i, 1i), vec3<i32>(29829i, 27929i, -16682i), vec3<i32>(4688i, i32(-2147483648), -36265i));

var<private> global1: array<u32, 30> = array<u32, 30>(16389u, 4294967295u, 42129u, 0u, 59653u, 48683u, 36222u, 38521u, 27637u, 4294967295u, 4294967295u, 0u, 1u, 20184u, 0u, 12139u, 10076u, 1u, 12740u, 45277u, 1u, 0u, 22041u, 11784u, 16803u, 4294967295u, 0u, 4294967295u, 1u, 49136u);

var<private> global2: vec3<f32>;

var<private> global3: f32 = 592f;

var<private> global4: array<bool, 8>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(421f))), -countOneBits(-17581i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, -11443i, 70745i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, -2147483647i, u_input.d.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.e, -40540i)), countOneBits(vec4<i32>(u_input.d.x, u_input.b.x, 19413i, u_input.e))))), firstLeadingBit(_wgslsmith_mod_i32(reverseBits(-32978i), abs(u_input.d.x))) | -2147483647i, Struct_1(-621f, -(u_input.b.x ^ abs(u_input.b.x)), select(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.b.x), vec2<i32>(-32055i, u_input.d.x)), _wgslsmith_clamp_i32(0i, 2147483647i, u_input.e), _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(0u, 32u)], u_input.d), 8720i), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -85911i, 0i, 5998i), vec4<i32>(23270i, u_input.e, u_input.b.x, 2147483647i)), vec4<i32>(-1i, u_input.d.x, 23408i, u_input.e) & vec4<i32>(-1i, -2147483647i, u_input.e, u_input.e), false), !all(vec4<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)], 8u)], true, global4[_wgslsmith_index_u32(73505u, 8u)], global4[_wgslsmith_index_u32(0u, 8u)])))), ~_wgslsmith_mult_u32(min(global1[_wgslsmith_index_u32(39261u, 30u)], 30245u), firstLeadingBit(~7902u)));
    global4 = array<bool, 8>();
    let var_1 = var_0.a.a;
    var var_2 = _wgslsmith_mod_vec3_u32(abs(abs(u_input.c.yxz) & ~u_input.c.zyx), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(abs(u_input.c.xxy), u_input.a), firstLeadingBit(~u_input.a), u_input.a)) ^ max(~select(u_input.a & vec3<u32>(65319u, u_input.c.x, 1u), _wgslsmith_mult_vec3_u32(u_input.a, u_input.c.xzy), global4[_wgslsmith_index_u32(~1u, 8u)]), max(abs(vec3<u32>(63156u, u_input.a.x, u_input.c.x) << (u_input.a % vec3<u32>(32u))), u_input.c.wwz));
    let var_3 = var_0.a;
    return _wgslsmith_div_vec4_i32(~(var_1.c | var_0.a.a.c), var_0.a.a.c);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<f32> {
    global4 = array<bool, 8>();
    var var_0 = Struct_3(Struct_2(arg_1), 1i, Struct_1(811f, -27709i, func_3()), ~min(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], 0u));
    var var_1 = vec3<i32>(~func_3().x, abs(abs(_wgslsmith_div_i32(685i, 1i))), ~(~(~(~(-2147483647i)))));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.a), var_0.a.a.a));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(arg_1.a, 594f, !global4[_wgslsmith_index_u32(29112u, 8u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-478f)), arg_0.x))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.wx)), global2.zx), arg_0.xz)));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = vec4<i32>(arg_0, ~(~arg_0), _wgslsmith_sub_i32(arg_0, firstTrailingBit(firstTrailingBit(~arg_0))), -45014i ^ u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(global2.x * -1014f)), global2.x, _wgslsmith_div_f32(1254f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-751f)) - _wgslsmith_f_op_f32(step(global2.x, global2.x))), 1i, vec4<i32>(arg_0 ^ 2147483647i, 7307i, ~(-2147483647i), ~var_0.x)))));
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, -1000f, global2.x))))))));
    global3 = var_1.x;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * -143f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-803f, -575f, -940f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(519f, -447f, -658f), vec3<f32>(-1364f, global2.x, var_1.x))), vec3<f32>(global2.x, 1052f, global2.x), vec3<bool>(global4[_wgslsmith_index_u32(40382u, 8u)], global4[_wgslsmith_index_u32(u_input.c.x, 8u)], false)))), vec3<bool>(true, true, !all(vec2<bool>(true, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14728u, 30u)], 8u)]))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, global2.x), 1167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), 1029f))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(arg_1), 1i, Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(-548f, -1000f, 977f, -589f), Struct_1(-1370f, arg_2.a.b, vec4<i32>(arg_2.a.b, arg_2.a.b, 0i, arg_3)))).x), u_input.d.x, arg_1.c), ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 78807u, 8097u), ~u_input.c.zxy) >> (1u % 32u)));
    var var_1 = 1u;
    let var_2 = Struct_3(arg_2, arg_2.a.b, arg_1, 4294967295u);
    let var_3 = u_input.c.x;
    var_1 = var_0.d;
    return arg_2;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    let var_0 = countOneBits(u_input.a >> (~u_input.c.ywy % vec3<u32>(32u)));
    let var_1 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, -2422f, arg_0.x) - arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_1.a.a, global2.x))))), _wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_f_op_f32(step(-1109f, -557f)), arg_1.a.a))), arg_1.a, Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(arg_0.x, global2.x, arg_0.x))), Struct_1(_wgslsmith_f_op_f32(1000f * arg_0.x), i32(-1i) * -7322i, vec4<i32>(-2147483647i, arg_2.x, u_input.b.x, u_input.d.x)), Struct_2(Struct_1(-759f, 1i, vec4<i32>(u_input.d.x, 0i, u_input.e, 1i))), countOneBits(_wgslsmith_clamp_i32(u_input.b.x, arg_1.a.c.x, u_input.d.x))).a), 1i);
    return _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2.x;
    var var_0 = 2147483647i;
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, global2.x, -100f)))))))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_i32(u_input.b.x, u_input.b.x)))), Struct_1(global2.x, u_input.d.x, vec4<i32>(firstTrailingBit(u_input.d.x), u_input.d.x, -30730i, u_input.e)), Struct_2(Struct_1(_wgslsmith_div_f32(776f, global2.x), -55559i, vec4<i32>(u_input.d.x, u_input.b.x, u_input.b.x, 426i))), min(firstTrailingBit(-1i), u_input.d.x & 31524i)), vec2<i32>(-1i) * -max(~u_input.d.yy, func_3().zy), true);
    let var_2 = !vec4<bool>(global4[_wgslsmith_index_u32(~(~u_input.a.x), 8u)], global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 66414u), 8u)], all(vec2<bool>(var_1 != global1[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(37075u, 8u)] & global4[_wgslsmith_index_u32(1280u, 8u)])), any(select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 8u)], true), vec3<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48094u, 30u)], 8u)], global4[_wgslsmith_index_u32(u_input.c.x, 8u)], global4[_wgslsmith_index_u32(u_input.c.x, 8u)]), true), !vec3<bool>(global4[_wgslsmith_index_u32(34835u, 8u)], true, global4[_wgslsmith_index_u32(10317u, 8u)]), select(vec3<bool>(global4[_wgslsmith_index_u32(var_1, 8u)], global4[_wgslsmith_index_u32(4294967295u, 8u)], true), vec3<bool>(true, false, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 8u)], true, global4[_wgslsmith_index_u32(62016u, 8u)])))));
    global1 = array<u32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) * vec4<f32>(global2.x, 159f, global2.x, global2.x)), vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, -863f, -1667f, global2.x) + vec4<f32>(1588f, global2.x, global2.x, global2.x))), var_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, global2.x, global2.x, 698f)), _wgslsmith_div_vec4_f32(vec4<f32>(987f, -193f, -1283f, -728f), vec4<f32>(global2.x, global2.x, 466f, global2.x))) + vec4<f32>(-427f, _wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(global2.x, global2.x, 1493f, 1311f), Struct_1(global2.x, u_input.d.x, vec4<i32>(u_input.e, u_input.e, u_input.d.x, u_input.b.x)))).x, _wgslsmith_f_op_f32(f32(-1f) * -1104f), global2.x))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(9230u, min(var_1, 4294967295u >> (_wgslsmith_div_u32(u_input.a.x, global1[_wgslsmith_index_u32(var_1, 30u)]) % 32u))), 30u)], ~u_input.a, _wgslsmith_f_op_f32(-1247f + 1009f));
}

