struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(4294967295u, 26703u, 4294967295u), 1i);

var<private> global1: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(-22862i, -31401i), vec2<i32>(2536i, 2147483647i), vec2<i32>(19699i, 1i), vec2<i32>(1i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(-28749i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(7739i, 25105i), vec2<i32>(-13079i, -50071i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(67491i, 26767i));

var<private> global2: array<vec3<u32>, 1>;

var<private> global3: vec3<i32> = vec3<i32>(1i, 0i, 2147483647i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2481f))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-815f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(422f + -130f))))));
    global1 = array<vec2<i32>, 11>();
    let var_1 = _wgslsmith_add_u32(reverseBits(abs(firstTrailingBit(global0.a.x))), ~countOneBits(~abs(27749u)));
    var var_2 = Struct_1(abs(max(vec3<u32>(arg_0.a.x ^ 4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 0u), ~vec3<u32>(var_1, global0.a.x, arg_0.a.x))), ~abs(~(-1i)));
    global3 = vec3<i32>(global0.b & (-15288i & (_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(44086u, 11u)]) >> (~arg_0.a.x % 32u))), firstLeadingBit(-28681i) | _wgslsmith_div_i32(global0.b, -1170i), arg_2);
    return var_0;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f) + arg_3.x);
    var var_1 = Struct_1(firstLeadingBit(~(~(~vec3<u32>(113638u, 110893u, 0u)))), reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(4294967295u, 11u)] & vec2<i32>(-1i, u_input.b), ~vec2<i32>(global3.x, 34411i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -42792i), global3.xy))));
    var var_2 = 4294967295u;
    var var_3 = true;
    var_0 = _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, global0.a.xz)), ~global0.a.x, u_input.a.x), global3.x | -36786i), countOneBits(_wgslsmith_mult_u32(4294967295u >> (_wgslsmith_sub_u32(1u, var_1.a.x) % 32u), 1u)), global0.b, false));
    return _wgslsmith_add_i32(min(_wgslsmith_mult_i32(u_input.b, max(0i, 0i)) ^ -10173i, -1i), 2147483647i);
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(339f));
    let var_1 = select(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), select(false, false, false))), vec3<bool>(true, true | (510f != _wgslsmith_f_op_f32(trunc(-1000f))), !(any(vec3<bool>(true, true, true)) || true)), select(vec3<bool>(false, false, any(vec3<bool>(true, true, true))), select(vec3<bool>(any(vec2<bool>(true, true)), false, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), true), !(!all(vec3<bool>(false, true, true)))));
    var var_2 = 1f;
    let var_3 = var_1.x;
    var var_4 = Struct_1(_wgslsmith_add_vec3_u32(max(global0.a, vec3<u32>(u_input.a.x, ~1u, u_input.a.x | 0u)), vec3<u32>(select(abs(u_input.a.x), 1u, var_1.x), global0.a.x >> (arg_2 % 32u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), vec3<u32>(arg_2, 0u, 22824u))))), arg_1.x);
    return Struct_1(global0.a | ~vec3<u32>(1u, countOneBits(0u), arg_2), -12479i);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0.b;
    let var_1 = select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(false, true)), vec2<bool>(true, true));
    let var_2 = var_1.x;
    let var_3 = arg_0;
    var var_4 = ~85452u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(23807u, reverseBits(u_input.a.x)), arg_0.a.x), max(vec2<u32>(13146u, 1u), min(var_3.a.xz, global0.a.xy)) | var_3.a.xx) % 32u);
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = ~min(0i << (abs(arg_0.a.x) % 32u), global3.x);
    var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(global3.x, -global0.b), (min(-global0.b, 7362i) >> (global0.a.x % 32u)) | (0i & ((u_input.b ^ global0.b) >> (0u % 32u))));
    let var_1 = func_5(func_4(_wgslsmith_div_i32(~6568i, global0.b), vec4<i32>(-u_input.b, arg_0.b, global0.b, _wgslsmith_add_i32(arg_0.b, func_2(arg_1, vec2<f32>(arg_1, arg_2), 21895i, vec4<f32>(-226f, arg_2, arg_2, -134f)))), _wgslsmith_div_u32(global0.a.x, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1064f, 171f, -1340f) * vec3<f32>(arg_2, arg_2, -1141f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, arg_1) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(981f, arg_2, -972f))), vec3<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(false, true, true)))))), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-19884i, global3.x, 31755i) | vec3<i32>(global3.x, -2147483647i, u_input.b), -vec3<i32>(-1i, -72749i, global0.b)), 48724i), -1i));
    global3 = _wgslsmith_add_vec3_i32(vec3<i32>(var_1.b & ~(~1i), 2156i, global0.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global3.x, func_5(Struct_1(vec3<u32>(2618u, 41215u, 8493u), 0i), vec3<f32>(arg_2, 1000f, 2544f), ~vec2<i32>(u_input.b, 2147483647i)).b), ~max(select(vec3<i32>(28820i, 19889i, u_input.b), vec3<i32>(-30684i, u_input.b, global0.b), vec3<bool>(false, true, false)), firstLeadingBit(vec3<i32>(-25651i, -12666i, -1551i))), ~reverseBits(vec3<i32>(var_1.b, -13682i, 2147483647i))));
    global2 = array<vec3<u32>, 1>();
    return 4294967295u >> (var_1.a.x % 32u);
}

fn func_6(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    global2 = array<vec3<u32>, 1>();
    var var_0 = func_5(func_5(func_4(func_2(arg_1.x, arg_1, -1i ^ global0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2099f, arg_1.x, arg_1.x, arg_1.x) + vec4<f32>(414f, 1080f, -801f, arg_1.x))), ~reverseBits(vec4<i32>(40i, -25945i, u_input.b, -28198i)), _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], firstLeadingBit(global0.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(trunc(arg_1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1041f, 1025f, arg_1.x), vec3<f32>(1040f, arg_1.x, 2437f))))), vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2801i, -1i, 13736i)), ~vec3<i32>(0i, global0.b, global0.b)), global3.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(833f, -364f)), arg_1.x), arg_1.x, -1229f))), global1[_wgslsmith_index_u32(u_input.a.x, 11u)]);
    var var_1 = vec4<bool>(true, select(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), -1i == global3.x), false, true);
    var var_2 = Struct_1(~func_4(u_input.b, vec4<i32>(global3.x, _wgslsmith_sub_i32(global0.b, -22020i), 0i, 1i << (1u % 32u)), u_input.a.x).a, i32(-1i) * -u_input.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-985f, -1252f, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, -284f, 160f, -1279f)), select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(abs(499f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(456f - arg_1.x)), 199f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1076f, arg_1.x, 698f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1196f, arg_1.x, arg_1.x, -495f), vec4<f32>(771f, -900f, arg_1.x, 365f), false))))));
    return func_5(func_5(Struct_1(min(var_0.a, vec3<u32>(var_2.a.x, global0.a.x, arg_0.x)) ^ global0.a, ~(-global0.b)), vec3<f32>(var_3.x, -421f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, 632f), _wgslsmith_f_op_f32(f32(-1f) * -259f)))), global1[_wgslsmith_index_u32(firstLeadingBit(0u), 11u)]), var_3.zww, ~(vec2<i32>(-1i) * -(~global3.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec2<u32>(u_input.a.x << (max(func_1(Struct_1(vec3<u32>(u_input.a.x, global0.a.x, global0.a.x), global3.x), -906f, -207f), 0u) % 32u), countOneBits(countOneBits(func_4(-1i, vec4<i32>(-1i, -2147483647i, global0.b, 40i), global0.a.x).a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1068f, 762f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1442f, 1000f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2493f, 280f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, -1285f)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), any(vec3<bool>(true, true, true))))));
    global0 = Struct_1(var_0.a, ~global3.x);
    let var_1 = vec3<u32>(abs(firstLeadingBit(1u)) << (var_0.a.x % 32u), _wgslsmith_mod_u32(1u, firstTrailingBit(global0.a.x)), ~(~global0.a.x));
    var var_2 = ~(~(~global0.a.xy));
    global2 = array<vec3<u32>, 1>();
    let var_3 = var_0;
    global3 = reverseBits(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(6883i, global0.b, global3.x), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1i, 0i), vec3<i32>(var_0.b, var_0.b, global3.x)), -vec3<i32>(var_0.b, global0.b, 1i)) | (_wgslsmith_mult_vec3_i32(vec3<i32>(48309i, var_0.b, var_3.b), vec3<i32>(global0.b, 12728i, global3.x)) << (var_3.a % vec3<u32>(32u))), -select(countOneBits(vec3<i32>(0i, var_3.b, var_0.b)), -vec3<i32>(global0.b, var_3.b, u_input.b), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), true), vec3<bool>(true, true, true))));
    var var_4 = !(!vec2<bool>(select(false, true, false) || false, true));
    global1 = array<vec2<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(572f, -1320f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 141f), vec2<f32>(582f, -515f), vec2<bool>(var_4.x, var_4.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(465f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1197f), _wgslsmith_f_op_f32(select(315f, 1909f, false))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)))));
}

