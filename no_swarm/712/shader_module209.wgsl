struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 22297i;

var<private> global1: Struct_3;

var<private> global2: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), -39169i, -1i), vec3<i32>(12547i, 24929i, i32(-2147483648)), vec3<i32>(1i, -42048i, 12330i), vec3<i32>(1i, -1i, -37556i), vec3<i32>(1i, 2147483647i, 4619i), vec3<i32>(2147483647i, -14310i, 2147483647i), vec3<i32>(i32(-2147483648), 8096i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 36093i), vec3<i32>(-1i, 2147483647i, -12762i), vec3<i32>(28451i, i32(-2147483648), 20297i), vec3<i32>(-1i, -1i, 0i), vec3<i32>(-29316i, -1i, 49022i), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(-5724i, 0i, -16562i), vec3<i32>(0i, 38301i, -1i), vec3<i32>(23537i, 1i, 2147483647i), vec3<i32>(6292i, 0i, 1i), vec3<i32>(0i, i32(-2147483648), 1i), vec3<i32>(9995i, 1i, -3700i), vec3<i32>(-9537i, 1i, 2095i));

var<private> global3: f32 = -1296f;

var<private> global4: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_1 = Struct_3(Struct_1(global1.a.a >> (min(min(vec3<u32>(7899u, 0u, 1u), vec3<u32>(4294967295u, 0u, 14584u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 56632u), vec3<u32>(0u, 0u, 0u))) % vec3<u32>(32u))));
    let var_2 = Struct_1(-vec3<i32>(countOneBits(global1.a.a.x), _wgslsmith_div_i32(-1i << (0u % 32u), _wgslsmith_mult_i32(global1.a.a.x, 1i)), ~(-56832i)));
    global2 = array<vec3<i32>, 21>();
    var var_3 = any(select(!vec4<bool>(true, false, any(vec2<bool>(false, true)), any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true))));
    return _wgslsmith_f_op_f32(step(var_0, -2045f));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_4) -> f32 {
    let var_0 = arg_2.a.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_1.x), _wgslsmith_f_op_f32(257f * 1052f)))), -369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(func_3(arg_2.a, vec4<f32>(arg_1.x, 305f, arg_1.x, -1564f), arg_2.b)), arg_1.x))));
    global1 = arg_2.a;
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.a.a.x, -59479i, global1.a.a.x), firstTrailingBit(vec3<i32>(0i, -43616i, var_0.a.x)), vec3<i32>(var_0.a.x, 2147483647i, arg_2.d)), vec3<i32>(arg_2.a.a.a.x, arg_2.b.a.x, u_input.a) & (global1.a.a >> (vec3<u32>(4294967295u, 5130u, 1u) % vec3<u32>(32u))))));
    let var_3 = arg_2;
    return arg_1.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), 1262f, _wgslsmith_f_op_f32(sign(-1114f)), _wgslsmith_div_f32(arg_3.x, 146f)))))));
    global3 = _wgslsmith_f_op_f32(653f * _wgslsmith_div_f32(_wgslsmith_div_f32(-1029f, _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(2556f - 1380f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true), vec3<f32>(-588f, -1491f, var_0.x), Struct_4(Struct_3(Struct_1(global2[_wgslsmith_index_u32(63217u, 21u)])), Struct_1(vec3<i32>(1i, global1.a.a.x, 1i)), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), 2147483647i, Struct_1(global2[_wgslsmith_index_u32(1u, 21u)]))))))))));
    global1 = Struct_3(Struct_1(-(~(~vec3<i32>(u_input.a, -2147483647i, -1i)))));
    var var_1 = !vec3<bool>(true, all(global4[_wgslsmith_index_u32(1u, 18u)]), any(vec4<bool>(true, !arg_2.x, any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), global1.a.a.x != u_input.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-825f, arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(157f, arg_3.x, var_0.x, -553f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, arg_3.x, -1133f)))))) + vec4<f32>(_wgslsmith_f_op_f32(min(590f, 393f)), _wgslsmith_f_op_f32(step(-546f, -207f)), _wgslsmith_f_op_f32(max(417f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(func_2(select(var_1.xx, !vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(ceil(var_0.zzx)), Struct_4(Struct_3(arg_1), Struct_1(global1.a.a), !vec4<bool>(arg_2.x, arg_2.x, true, var_1.x), arg_1.a.x, Struct_1(vec3<i32>(2147483647i, arg_1.a.x, arg_1.a.x)))))));
    return Struct_3(Struct_1(arg_1.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    global4 = array<vec3<bool>, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(580f, _wgslsmith_div_f32(646f, -267f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1009f, 1000f), vec2<f32>(-128f, -1430f))) + vec2<f32>(1000f, -525f)) + vec2<f32>(_wgslsmith_f_op_f32(-1108f - 1000f), 1559f)))));
    var var_1 = countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(31636u, 0u), _wgslsmith_sub_u32(1u, 1u)), vec2<u32>(0u, select(57039u, 34312u, false))), vec2<u32>(select(44113u, _wgslsmith_dot_vec2_u32(vec2<u32>(95698u, 63160u), vec2<u32>(76366u, 18871u)), false), 1u)));
    global3 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(565f + 179f))))));
    var var_2 = Struct_2(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 322f), _wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), vec3<f32>(var_0.x, var_0.x, 951f), Struct_4(arg_1, Struct_1(global2[_wgslsmith_index_u32(7977u, 21u)]), vec4<bool>(false, false, true, false), global1.a.a.x, Struct_1(arg_1.a.a)))), -1169f, _wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), vec3<f32>(var_0.x, var_0.x, 275f), Struct_4(arg_1, global1.a, vec4<bool>(false, false, true, false), -47155i, Struct_1(arg_0.a))))))), false, Struct_1(-firstTrailingBit(min(arg_2.a, arg_1.a.a))), arg_1.a);
    return 172f > var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 21>();
    var var_0 = -11976i;
    var var_1 = Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-989f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f + 600f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1154f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1384f), 328f)))), func_4(global1.a, func_1(vec2<i32>(~13393i, ~u_input.a), Struct_1(select(vec3<i32>(global1.a.a.x, u_input.a, global1.a.a.x), global2[_wgslsmith_index_u32(1u, 21u)], vec3<bool>(false, false, false))), vec2<bool>(any(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, true))), vec3<f32>(_wgslsmith_f_op_f32(-458f - 173f), 1000f, 1154f)), global1.a), func_1(min(global1.a.a.zz, vec2<i32>(_wgslsmith_mult_i32(global1.a.a.x, 0i), min(2147483647i, u_input.a))), global1.a, select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(false, false, true, false)), true), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1125f, -1296f, -243f) - vec3<f32>(115f, 1000f, 1436f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1014f, -1000f, 618f))) - vec3<f32>(522f, -898f, -336f))).a, func_1(firstLeadingBit(global1.a.a.zx), func_1(global1.a.a.yz, Struct_1(~global2[_wgslsmith_index_u32(1u, 21u)]), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1614f, 370f) * vec3<f32>(-793f, -1000f, 481f)) + _wgslsmith_div_vec3_f32(vec3<f32>(1286f, 413f, 299f), vec3<f32>(1869f, -847f, 402f)))).a, !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec3<f32>(_wgslsmith_f_op_f32(func_3(func_1(global1.a.a.xz, global1.a, vec2<bool>(false, false), vec3<f32>(1000f, 620f, -106f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-897f, -1931f, 317f, 698f)), Struct_1(vec3<i32>(-8846i, global1.a.a.x, 2147483647i)))), _wgslsmith_f_op_f32(263f * _wgslsmith_f_op_f32(f32(-1f) * -223f)), -617f)).a);
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global1.a.a.x, min(6245i, _wgslsmith_clamp_i32(global1.a.a.x, -1i, -2147483647i))), -32480i), ~_wgslsmith_mod_vec2_i32(-var_1.a.a.yy, var_1.e.a.xy));
    let var_2 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(45501u, 1u), vec2<u32>(17276u, 0u))) >> (abs(1u) % 32u), 21u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))) + vec4<f32>(-432f, -383f, _wgslsmith_div_f32(var_1.b.x, -666f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(var_1.b.x, 401f), func_4(var_1.e, Struct_3(global1.a), Struct_1(vec3<i32>(u_input.a, global1.a.a.x, u_input.a))))))), (-31178i | abs(u_input.a << (95862u % 32u))) == 13652i, func_1(vec2<i32>(_wgslsmith_dot_vec3_i32(func_1(var_1.d.a.xx, Struct_1(vec3<i32>(-2147483647i, global1.a.a.x, 1i)), vec2<bool>(false, true), var_1.b.zxw).a.a, abs(vec3<i32>(global1.a.a.x, global1.a.a.x, 34130i))), -global1.a.a.x), global1.a, select(!select(vec2<bool>(var_1.c, true), vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, var_1.c)), vec2<bool>(false, var_1.c), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.x, var_1.b.x, -1905f), var_1.b.xwz)) * _wgslsmith_f_op_vec3_f32(-var_1.b.yzx)))).a, Struct_1(_wgslsmith_div_vec3_i32(-(global1.a.a ^ global2[_wgslsmith_index_u32(80556u, 21u)]), -vec3<i32>(17380i, -4823i, 1i))));
    let var_3 = Struct_2(func_1(vec2<i32>(1i, 2147483647i), func_1(global1.a.a.xx, func_1(vec2<i32>(var_1.e.a.x, -44232i), func_1(vec2<i32>(global1.a.a.x, var_2.d.a.x), Struct_1(var_1.d.a), vec2<bool>(true, var_2.c), var_1.b.xxw).a, vec2<bool>(false, var_1.c), var_2.b.xzz).a, !(!vec2<bool>(var_2.c, var_1.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(326f, 160f, var_1.b.x) * _wgslsmith_f_op_vec3_f32(var_2.b.zyz - var_2.b.xwz))).a, vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-621f, -2417f, 385f) * vec3<f32>(var_2.b.x, var_1.b.x, 526f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1257f, var_2.b.x, -1510f)), vec3<f32>(var_1.b.x, -341f, var_1.b.x)))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, 499f, var_2.b.x, 228f))))), false, Struct_1(~global2[_wgslsmith_index_u32(~1u, 21u)] ^ abs(vec3<i32>(var_2.e.a.x, global1.a.a.x, var_1.d.a.x))), var_2.a);
    var var_4 = Struct_2(func_1(~(-reverseBits(global1.a.a.zx)), var_3.a, select(!(!vec2<bool>(false, var_2.c)), !select(vec2<bool>(true, var_3.c), vec2<bool>(false, false), true), func_4(var_2.e, Struct_3(Struct_1(global1.a.a)), Struct_1(vec3<i32>(-13100i, 38571i, -13636i))) == var_3.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b.x, 408f, -1292f))))).a, vec4<f32>(_wgslsmith_div_f32(-1367f, -644f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1522f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) - _wgslsmith_f_op_f32(-1037f * var_1.b.x)) + _wgslsmith_f_op_f32(-1133f - -573f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x)))), !var_3.c, func_1(vec2<i32>(-_wgslsmith_clamp_i32(0i, -2147483647i, 0i), ~var_3.a.a.x), func_1(vec2<i32>(-18355i, var_3.e.a.x >> (51132u % 32u)), Struct_1(vec3<i32>(var_3.a.a.x, global1.a.a.x, 2147483647i)), vec2<bool>(553f >= var_2.b.x, true), vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x - var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -540f))).a, vec2<bool>(var_3.c, var_2.c | !var_3.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(929f))), _wgslsmith_f_op_f32(869f * var_2.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(753f)))))).a, Struct_1(min(select(min(var_1.a.a, global2[_wgslsmith_index_u32(8717u, 21u)]), ~vec3<i32>(u_input.a, var_3.d.a.x, 2147483647i), select(global4[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(true, var_2.c, true), global4[_wgslsmith_index_u32(68756u, 18u)])), _wgslsmith_sub_vec3_i32(~vec3<i32>(3291i, var_3.d.a.x, u_input.a), vec3<i32>(var_2.d.a.x, var_1.e.a.x, var_1.e.a.x)))));
    let var_5 = Struct_3(Struct_1(-(~var_1.e.a << (select(vec3<u32>(1u, 0u, 0u), vec3<u32>(60289u, 0u, 4294967295u), global4[_wgslsmith_index_u32(34559u, 18u)]) % vec3<u32>(32u)))));
    var var_6 = Struct_2(Struct_1(-(_wgslsmith_mult_vec3_i32(vec3<i32>(var_3.d.a.x, -22258i, -31930i), vec3<i32>(var_5.a.a.x, -2147483647i, -23171i)) | global1.a.a)), vec4<f32>(_wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_f_op_f32(func_2(!(!vec2<bool>(var_4.c, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(189f, -1222f, -989f)), Struct_4(Struct_3(var_4.d), Struct_1(global1.a.a), !vec4<bool>(false, var_4.c, true, true), _wgslsmith_add_i32(var_3.a.a.x, var_5.a.a.x), func_1(vec2<i32>(var_3.d.a.x, -7111i), global1.a, vec2<bool>(false, var_2.c), vec3<f32>(-490f, 173f, var_2.b.x)).a))), _wgslsmith_f_op_f32(-var_3.b.x), 834f), any(!select(select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(true, var_4.c), vec2<bool>(false, var_1.c)), vec2<bool>(true, false), vec2<bool>(false, false))), func_1(max(select(_wgslsmith_sub_vec2_i32(var_3.a.a.zy, vec2<i32>(global1.a.a.x, var_4.d.a.x)), var_3.a.a.yy, false), var_5.a.a.yx), func_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(22245i, 53323i), var_5.a.a.yy), var_2.d.a.yy), Struct_1(min(vec3<i32>(var_4.a.a.x, 62871i, -1i), var_4.d.a)), vec2<bool>(true, var_3.c), var_2.b.www).a, vec2<bool>(!(var_4.c || var_3.c), var_4.c), var_1.b.xwz).a, global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.yzx, vec2<f32>(_wgslsmith_f_op_f32(436f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f))), _wgslsmith_f_op_f32(-var_4.b.x)), 414f, ~(~abs(reverseBits(vec4<u32>(42571u, 842u, 49093u, 1u)))));
}

