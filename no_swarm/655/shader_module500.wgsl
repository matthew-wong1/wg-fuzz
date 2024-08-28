struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(false, 114f, Struct_1(vec3<f32>(512f, 1578f, -1853f), 64645u)), Struct_2(false, -473f, Struct_1(vec3<f32>(255f, -399f, -2347f), 4294967295u)), Struct_2(true, -1111f, Struct_1(vec3<f32>(-955f, -883f, 1056f), 0u)), Struct_2(false, -1000f, Struct_1(vec3<f32>(220f, -1842f, 322f), 96664u)), Struct_2(true, 298f, Struct_1(vec3<f32>(-971f, -1679f, 877f), 1u)), Struct_2(false, 180f, Struct_1(vec3<f32>(-656f, 1248f, -731f), 16290u)), Struct_2(false, 699f, Struct_1(vec3<f32>(618f, 1085f, -294f), 1u)));

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(false, -882f, Struct_1(vec3<f32>(-527f, -268f, 792f), 3292u));

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<f32>(585f, -204f, -1794f), 101292u), Struct_1(vec3<f32>(-2180f, 311f, 979f), 4294967295u), Struct_1(vec3<f32>(-1012f, -205f, 1477f), 1u), Struct_1(vec3<f32>(695f, -2415f, 362f), 26234u), Struct_1(vec3<f32>(1898f, 2503f, 1000f), 4294967295u), Struct_1(vec3<f32>(-388f, 1000f, -406f), 4294967295u), Struct_1(vec3<f32>(-1086f, -566f, -1542f), 0u), Struct_1(vec3<f32>(267f, -136f, -1576f), 1u), Struct_1(vec3<f32>(-669f, 1769f, 666f), 4294967295u), Struct_1(vec3<f32>(245f, 313f, -1224f), 4294967295u), Struct_1(vec3<f32>(-383f, 538f, -239f), 47456u), Struct_1(vec3<f32>(468f, 190f, -1000f), 72579u), Struct_1(vec3<f32>(-1414f, -1152f, 1221f), 1u), Struct_1(vec3<f32>(1958f, 544f, -202f), 18249u), Struct_1(vec3<f32>(114f, 499f, -1000f), 1u), Struct_1(vec3<f32>(-180f, -864f, 423f), 0u), Struct_1(vec3<f32>(212f, 702f, -363f), 1u), Struct_1(vec3<f32>(-1356f, 1316f, -1532f), 103755u), Struct_1(vec3<f32>(1283f, -800f, -950f), 1u), Struct_1(vec3<f32>(-1240f, 792f, 1032f), 33395u), Struct_1(vec3<f32>(370f, -580f, 291f), 0u), Struct_1(vec3<f32>(676f, 237f, -1062f), 0u), Struct_1(vec3<f32>(561f, 2019f, -658f), 0u), Struct_1(vec3<f32>(1000f, 468f, -1596f), 12321u), Struct_1(vec3<f32>(1042f, -651f, -539f), 24219u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> vec2<i32> {
    global1 = array<Struct_2, 7>();
    let var_0 = global3.a;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.c.a - arg_0.c.a), select(28585u, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(78136u, global0.b)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.c.b, global2.c.b), vec2<u32>(4294967295u, 107217u))), -25227i == u_input.a.x));
    global2 = arg_0;
    var var_2 = Struct_2(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x + 2181f)))))), global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~var_1.b, ~52200u), 25u)]);
    return ~(~u_input.a.wy);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(3835u, 7u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(global2.c.a.x, -690f)), _wgslsmith_f_op_f32(abs(arg_2.a.x))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-220f, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1000f))))))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.a.x)))))));
    let var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -1000f)), var_2.a.x)), 727f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - 1098f)));
    let var_4 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a + vec3<f32>(global0.a.x, -663f, 563f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.c.a.x)), _wgslsmith_f_op_f32(step(arg_1.a.x, -649f)), _wgslsmith_div_f32(-929f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(select(var_0.b, global3.b, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(575f, var_3)))), var_0.c.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-163f))) * _wgslsmith_f_op_f32(round(var_4.a.x)))));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    global4 = array<Struct_1, 25>();
    var var_0 = abs(-reverseBits(_wgslsmith_clamp_vec2_i32(~u_input.a.zy, -vec2<i32>(-1i, -1i), func_2(Struct_2(global2.a, -2438f, Struct_1(global2.c.a, 676u))))));
    var var_1 = global3.c.b;
    global1 = array<Struct_2, 7>();
    let var_2 = select(select(vec3<bool>(false, global3.a, false), !(!vec3<bool>(true, false, global2.a)), any(vec3<bool>(any(vec3<bool>(true, global3.a, global3.a)), all(vec4<bool>(global2.a, global3.a, global3.a, global2.a)), all(vec4<bool>(false, true, false, global3.a))))), !vec3<bool>(_wgslsmith_div_f32(global2.c.a.x, global0.a.x) >= _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.a.x, u_input.a.x, 2500i), global2.c, Struct_1(vec3<f32>(global3.b, global0.a.x, global3.c.a.x), 17529u), global2.c)), global2.a, _wgslsmith_f_op_f32(-global0.a.x) < global3.b), true);
    return ~_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(global2.c.b), ~global3.c.b, 23773u), ~max(vec3<u32>(global3.c.b, 0u, global3.c.b), vec3<u32>(23060u, global0.b, global0.b)) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(79155u, 1u, 1u), vec3<u32>(global2.c.b, 0u, global3.c.b)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(42284u, global0.b, 47641u), vec3<u32>(0u, 54908u, 13194u))));
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    global1 = array<Struct_2, 7>();
    var var_0 = global1[_wgslsmith_index_u32(arg_0.x, 7u)];
    global2 = global1[_wgslsmith_index_u32(abs(arg_0.x & global3.c.b), 7u)];
    var_0 = Struct_2(true && any(!vec4<bool>(var_0.a, true, true, global3.a)), -906f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x - var_0.b)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global3.c.a.x))), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(global3.c.b, var_0.c.b, global2.c.b, global2.c.b)), countOneBits(vec4<u32>(0u, 4869u, var_0.c.b, 3718u)) >> (min(vec4<u32>(15949u, 30125u, global2.c.b, 0u), vec4<u32>(4294967295u, var_0.c.b, 1u, arg_0.x)) % vec4<u32>(32u)))));
    let var_1 = !((false != ((var_0.a != var_0.a) || global3.a)) | (true || !all(vec2<bool>(global3.a, global2.a))));
    return Struct_2(var_1, global2.b, global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(~global0.b, 1u) << (~_wgslsmith_clamp_u32(global2.c.b, arg_0.x, global2.c.b) % 32u)), 25u)]);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    global3 = Struct_2(!select(any(vec2<bool>(arg_1, global2.a)) && all(vec2<bool>(global3.a, false)), select(true, true, false), false || (-237f <= global3.c.a.x)), global3.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c.a))), global2.c.b));
    return Struct_2(select(all(!select(vec3<bool>(true, false, global3.a), vec3<bool>(global3.a, true, true), vec3<bool>(arg_1, true, true))), all(!vec4<bool>(global2.a, arg_0.a, true, global2.a)) && func_4(~vec3<u32>(global0.b, 45301u, global0.b)).a, !(global3.c.a.x == -204f)), -798f, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(15711u, _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(global2.c.b), arg_0.c.b ^ global3.c.b, ~global0.b, 16503u), ~vec4<u32>(global2.c.b, global3.c.b, global2.c.b, global2.c.b)), global2.c.b), 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(_wgslsmith_dot_vec3_i32(max(u_input.a.yyy, u_input.a.xxx), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a.x, -26018i), u_input.a.yxy)))), global2.a);
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, select(max(select(-10496i, 10307i, true), _wgslsmith_dot_vec2_i32(u_input.a.yw, u_input.a.xw)), max(-1i, _wgslsmith_div_i32(-1i, u_input.a.x)), var_0.a)), u_input.a.x, ~(-1i >> (countOneBits(~1u) % 32u)));
    let var_2 = ~_wgslsmith_mult_vec4_u32(firstLeadingBit(~firstLeadingBit(vec4<u32>(global0.b, 1u, 0u, 50082u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global3.c.b, 1u, 4294967295u, var_0.c.b) & vec4<u32>(50406u, var_0.c.b, 4294967295u, 18532u), vec4<u32>(4294967295u, 1u, var_0.c.b, global2.c.b) >> (vec4<u32>(67765u, 4294967295u, var_0.c.b, global3.c.b) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a.x, global2.c.a.x, -509f, -1661f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global3.c.a.x, global0.a.x, global0.a.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.a.x, 411f, global0.a.x, global0.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-938f, global3.b, -2422f, var_0.c.a.x))))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(-global2.c.a.x), -617f, 1382f)))));
    var var_4 = ~reverseBits(countOneBits(18598u)) & global0.b;
    var var_5 = u_input.a;
    let var_6 = func_4(~var_2.xwy).c;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(global0.b, 4294967295u)) | var_2.wx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(420f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3.c.a.x, var_3.x)), _wgslsmith_f_op_f32(min(-815f, global3.c.a.x)))))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1i, i32(-1i) * -2359i, _wgslsmith_dot_vec3_i32(u_input.a.xxw, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), firstTrailingBit(u_input.a)) & vec4<i32>(2147483647i, -_wgslsmith_mod_i32(var_5.x, 0i), 0i, reverseBits(var_5.x) ^ (var_5.x & u_input.a.x)), -98227i, global2.b);
}

