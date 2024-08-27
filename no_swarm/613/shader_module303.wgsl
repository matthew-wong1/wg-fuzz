struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 24>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 0u, 24479u, 71960u);

var<private> global3: u32 = 1u;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(10814i, vec3<bool>(true, true, true), 1u), Struct_1(2147483647i, vec3<bool>(true, false, true), 4294967295u), Struct_1(54433i, vec3<bool>(false, false, true), 4294967295u), Struct_1(1i, vec3<bool>(false, true, false), 3014u), Struct_1(11562i, vec3<bool>(false, false, true), 45366u), Struct_1(i32(-2147483648), vec3<bool>(false, false, true), 46089u), Struct_1(i32(-2147483648), vec3<bool>(true, false, false), 4294967295u), Struct_1(-31099i, vec3<bool>(true, false, true), 1u), Struct_1(-18238i, vec3<bool>(false, false, true), 126u), Struct_1(-48562i, vec3<bool>(true, true, false), 1u), Struct_1(36531i, vec3<bool>(false, true, true), 4294967295u), Struct_1(1i, vec3<bool>(false, true, true), 1u), Struct_1(-44396i, vec3<bool>(true, false, false), 0u), Struct_1(1i, vec3<bool>(true, true, true), 29987u), Struct_1(-28350i, vec3<bool>(true, true, false), 0u), Struct_1(-36467i, vec3<bool>(false, false, true), 34675u), Struct_1(i32(-2147483648), vec3<bool>(true, true, false), 78733u), Struct_1(-13982i, vec3<bool>(true, true, true), 48972u), Struct_1(25454i, vec3<bool>(true, true, true), 106567u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-158f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a, arg_1.a)))), -2815f)));
    var var_1 = _wgslsmith_dot_vec3_u32(countOneBits((select(global2.yyy, global2.ywx, arg_1.b.x) << (reverseBits(u_input.c) % vec3<u32>(32u))) & vec3<u32>(~1u, ~u_input.d, global2.x)), vec3<u32>(u_input.c.x, ~(~1u), u_input.c.x));
    let var_2 = global4[_wgslsmith_index_u32(reverseBits(global2.x), 19u)];
    let var_3 = global4[_wgslsmith_index_u32(71866u, 19u)];
    let var_4 = Struct_1(~firstTrailingBit(-(~var_2.a)), !select(select(var_2.b, !vec3<bool>(var_2.b.x, false, var_3.b.x), vec3<bool>(false, var_2.b.x, false)), vec3<bool>(select(var_2.b.x, var_2.b.x, false), !arg_1.b.x, true), select(var_3.b, !var_2.b, select(arg_1.b, vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), true))), var_2.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~1u), 24u)] + -599f) + -3065f);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(vec4<f32>(global0.x, -615f, -526f, _wgslsmith_f_op_f32(func_3(arg_0.a.a, Struct_4(_wgslsmith_f_op_f32(666f + 194f), !vec3<bool>(arg_0.a.b.x, arg_1.b.x, arg_1.b.x)), _wgslsmith_mult_i32(0i, -arg_1.a)))), ~reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.c, arg_0.a.c, 4294967295u, 0u) ^ vec4<u32>(u_input.b.x, arg_1.c, arg_0.a.c, 8510u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, arg_0.a.c), vec4<u32>(41652u, arg_2, 80040u, arg_0.a.c), vec4<u32>(1u, 29429u, 25330u, 12223u)))));
    let var_1 = _wgslsmith_mult_i32(arg_1.a, ~_wgslsmith_mod_i32(arg_0.a.a, ~u_input.a.x));
    let var_2 = arg_1.b.x;
    global1 = array<f32, 24>();
    var var_3 = Struct_4(1276f, vec3<bool>(false, var_1 == 16891i, min(u_input.c.x, _wgslsmith_dot_vec4_u32(var_0.b, var_0.b)) < ~(~u_input.b.x)));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_3(global4[_wgslsmith_index_u32(abs(firstTrailingBit(1u) ^ u_input.d), 19u)], false, u_input.a.xy);
    global2 = ~vec4<u32>(16651u, ~select(_wgslsmith_sub_u32(global2.x, 1u), 46103u, false | var_0.b), var_0.a.c, ~arg_0.c);
    global4 = array<Struct_1, 19>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-774f)), _wgslsmith_f_op_f32(max(global0.x, -761f)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-404f, global0.x)), 984f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1194f, -680f, global0.x, 1000f))) + vec4<f32>(181f, 922f, -1011f, -1143f))), vec4<u32>(55014u, _wgslsmith_mod_u32(0u, reverseBits(global2.x)), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2.zx, global2.ww), _wgslsmith_add_u32(4294967295u, 0u))), firstLeadingBit(1u)));
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_sub_u32(~(global2.x >> (4294967295u % 32u)), ~firstTrailingBit(1u));
    global1 = array<f32, 24>();
    var_0 = 1u;
    var var_1 = any(vec3<bool>(false && any(func_2(Struct_3(Struct_1(23729i, vec3<bool>(true, true, false), global2.x), true, u_input.a.zw), global4[_wgslsmith_index_u32(37641u, 19u)], u_input.d).b), all(vec2<bool>(true, true)), all(vec3<bool>(true, true, any(vec4<bool>(true, false, true, true))))));
    var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~(~u_input.b.x), 4294967295u, ~(~global2.x), 28757u), vec4<u32>(~1u, select(26290u, global2.x, !any(vec3<bool>(false, false, true))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 4294967295u)), ~(~arg_0.b)), 74174u));
    return Struct_4(global1[_wgslsmith_index_u32(arg_0.b.x & firstTrailingBit(u_input.b.x), 24u)], func_2(Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-24521i, u_input.a.x, u_input.a.x, 35006i)), vec3<bool>(false, true, true), 1u), true, ~vec2<i32>(0i, u_input.a.x)), Struct_1(_wgslsmith_add_i32(1i, 1i >> (global2.x % 32u)), vec3<bool>(any(vec3<bool>(false, false, false)), all(vec4<bool>(false, false, false, false)), true), 11892u), ~17458u).b);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec4<u32>) -> vec2<f32> {
    var var_0 = func_5(func_4(Struct_1(min(-2147483647i, arg_1.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.x, 2147483647i), u_input.a.wwz), select(!arg_0.b, !vec3<bool>(true, arg_0.b.x, arg_0.b.x), true), arg_2.x), arg_1.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1128f - global1[_wgslsmith_index_u32(1u, 24u)])), 809f)));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(196f, global0.x), _wgslsmith_f_op_f32(step(863f, 447f)))))), func_4(Struct_1(~arg_1.x << (1u % 32u), !arg_0.b, arg_2.x), _wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.a.x)).a.x));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f), -668f);
    let var_3 = func_4(func_2(Struct_3(global4[_wgslsmith_index_u32(34865u, 19u)], any(arg_0.b) | all(vec2<bool>(true, false)), vec2<i32>(u_input.a.x, -2147483647i)), global4[_wgslsmith_index_u32(~(~arg_2.x), 19u)], arg_2.x), arg_1.x);
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -570f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(global0.x + -818f)))), var_3.a.yy, true));
}

fn func_1() -> f32 {
    let var_0 = global0.x;
    global1 = array<f32, 24>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(func_5(func_4(func_2(Struct_3(Struct_1(u_input.a.x, vec3<bool>(false, false, false), u_input.d), true, vec2<i32>(29528i, u_input.a.x)), Struct_1(28808i, vec3<bool>(true, true, false), 0u), u_input.c.x), _wgslsmith_clamp_i32(1i, u_input.a.x, 1i))), vec4<i32>(-1i, -_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x, 1i), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.c, u_input.c), global2.zzw), ~(~u_input.d), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x) >> (u_input.c.zy % vec2<u32>(32u)), vec2<u32>(global2.x, global2.x))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(997f, global0.x, global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global0.x, 766f, global0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1460f, -1040f, global0.x), vec4<f32>(-1156f, global0.x, global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 24u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1077f, 1088f, 1348f, global0.x)))) + vec4<f32>(550f, global1[_wgslsmith_index_u32(~(global2.x & 0u), 24u)], global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) - _wgslsmith_f_op_f32(f32(-1f) * -2090f)))), vec4<u32>(u_input.b.x, u_input.b.x, countOneBits(global2.x), 48531u & ~(global2.x ^ 4294967295u)));
    let var_2 = Struct_1(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a.wxw), -vec3<i32>(-38952i, 1i, u_input.a.x))) << (7363u % 32u), select(vec3<bool>((u_input.a.x != -2147483647i) | (55048u > global2.x), true, select(select(true, true, true), true, true)), vec3<bool>(true, func_2(Struct_3(Struct_1(25717i, vec3<bool>(false, false, false), 26083u), true, vec2<i32>(-56423i, 19240i)), Struct_1(37914i, vec3<bool>(false, false, true), global2.x), _wgslsmith_clamp_u32(19717u, 21718u, global2.x)).b.x, true), !(_wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_4(368f, vec3<bool>(true, true, false)), u_input.a.x)) < -302f)), abs(~(25721u | func_2(Struct_3(global4[_wgslsmith_index_u32(1u, 19u)], false, u_input.a.wx), global4[_wgslsmith_index_u32(41787u, 19u)], 11526u).c)));
    return global1[_wgslsmith_index_u32(global2.x, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-1725f + global0.x), _wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 24u)] - global1[_wgslsmith_index_u32(20696u, 24u)])) + vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), -1012f, -1337f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), -386f, _wgslsmith_f_op_f32(func_1()), func_5(Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 24u)], -528f, global1[_wgslsmith_index_u32(global2.x, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec4<u32>(global2.x, global2.x, 0u, 306u))).a), func_4(func_2(Struct_3(global4[_wgslsmith_index_u32(global2.x, 19u)], false, vec2<i32>(-2396i, 0i)), Struct_1(u_input.a.x, vec3<bool>(true, false, true), 0u), global2.x), ~1i).a)));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 1000f), -533f))), global0.x);
    var var_1 = Struct_3(Struct_1(u_input.a.x, vec3<bool>(!select(true, false, false), true, false), 0u), false, u_input.a.yx & (~firstLeadingBit(u_input.a.zy) & (_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)) >> (vec2<u32>(global2.x, 0u) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(var_1.c.x, min(26075i, u_input.a.x))), ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.c, var_1.c), var_1.a.a), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-3284i, -1i, var_1.c.x, u_input.a.x), vec4<i32>(u_input.a.x, var_1.c.x, u_input.a.x, 2147483647i)), _wgslsmith_add_vec4_i32(-u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.a, -14163i, -2147483647i, var_1.c.x), vec4<i32>(var_1.c.x, -1i, 39871i, u_input.a.x)))), abs(var_1.c.x)), _wgslsmith_mod_vec4_i32(u_input.a, -vec4<i32>(_wgslsmith_mod_i32(2147483647i, -74501i), var_1.c.x >> (0u % 32u), u_input.a.x, -12366i)));
    var_1 = Struct_3(var_1.a, (!(!var_1.b) && (_wgslsmith_f_op_f32(var_0.x - -507f) != _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 24u)] - -1423f))) || true, u_input.a.yz);
    var var_3 = var_1.a.b.xx;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1625f, global1[_wgslsmith_index_u32(1u, 24u)])) * vec2<f32>(var_0.x, 2462f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.wz, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-882f, 130f)))), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, var_0.x) - _wgslsmith_div_vec2_f32(var_0.zx, var_0.yz)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zw, i32(-1i) * -1i, u_input.c);
}

