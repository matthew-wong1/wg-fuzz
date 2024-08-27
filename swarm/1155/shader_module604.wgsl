struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(-1i, 72367u, 1u)), Struct_2(Struct_1(-70684i, 96631u, 88029u)), Struct_2(Struct_1(-53598i, 4294967295u, 1u)), Struct_2(Struct_1(0i, 1u, 4294967295u)), Struct_2(Struct_1(i32(-2147483648), 0u, 15249u)), Struct_2(Struct_1(6851i, 1u, 13875u)), Struct_2(Struct_1(-8655i, 1u, 26786u)), Struct_2(Struct_1(90390i, 54855u, 1u)), Struct_2(Struct_1(2147483647i, 42748u, 47546u)), Struct_2(Struct_1(-1i, 34143u, 47100u)), Struct_2(Struct_1(27203i, 8873u, 4294967295u)), Struct_2(Struct_1(3708i, 4294967295u, 0u)), Struct_2(Struct_1(i32(-2147483648), 4294967295u, 43671u)));

var<private> global1: array<f32, 24> = array<f32, 24>(993f, 376f, 1454f, 3568f, -1844f, -299f, 916f, 557f, -341f, -262f, 830f, -1000f, 1251f, -231f, 1133f, 1841f, 1730f, -618f, 1928f, -629f, 539f, -898f, 182f, 704f);

var<private> global2: vec2<bool>;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(-10820i, 17945u, 89288u)), Struct_1(-29649i, 0u, 1u), vec2<f32>(-264f, 1098f));

var<private> global4: array<vec2<i32>, 25>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    global1 = array<f32, 24>();
    var var_0 = Struct_1(~_wgslsmith_dot_vec3_i32(firstLeadingBit(select(vec3<i32>(-46743i, -1i, -16680i), vec3<i32>(global3.a.a.a, global3.b.a, 17237i), vec3<bool>(true, global2.x, global2.x))), vec3<i32>(select(1i, global3.a.a.a, global2.x), global3.a.a.a, 0i)), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.b, 0u, global3.b.c, u_input.b)), vec4<u32>(14026u, reverseBits(4294967295u), _wgslsmith_sub_u32(global3.b.c, 41745u), global3.a.a.b)), 1u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-349f + 609f), -934f, 1112f);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.c.x, 1473f, -986f))))) * vec3<f32>(458f, -635f, -695f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1185f, -918f, -1165f))))));
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(1u >> (u_input.a.x % 32u), max(0u, 4294967295u), var_0.b), 4294967295u), 13u)], Struct_1(global3.a.a.a, ~4294967295u, u_input.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.zz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1360f, -592f))))));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c.x, var_1.x, 167f)))))), vec3<f32>(1000f, -1235f, _wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(382f, var_2.c.x, 454f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.c.x, -486f, var_2.c.x)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(342f, -1000f)), 116f, -151f)))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_5(1u, Struct_3(global0[_wgslsmith_index_u32(global3.b.b, 13u)], arg_0.a, global3.c), u_input.a.x);
    global1 = array<f32, 24>();
    var var_1 = global3.b;
    var var_2 = var_0.b.a.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global3.c.x, global1[_wgslsmith_index_u32(0u, 24u)])), vec3<f32>(-349f, global1[_wgslsmith_index_u32(var_2.c, 24u)], 1000f), global2.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(176f, global3.c.x, -246f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-694f, global3.c.x, var_0.b.c.x)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - 236f));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_2, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))), _wgslsmith_f_op_f32(func_2(global3.a)), _wgslsmith_f_op_f32(365f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2190f * global1[_wgslsmith_index_u32(global3.a.a.b, 24u)]) - _wgslsmith_f_op_f32(f32(-1f) * -115f))), 1f) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(329f))))), _wgslsmith_f_op_vec3_f32(func_3()).x, 359f, global1[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_sub_u32(27838u, 1u)), 24u)]));
    global0 = array<Struct_2, 13>();
    var var_1 = -(~global3.a.a.a);
    let var_2 = -1i;
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(global3.a.a.a, global3.a.a.a, 27847i, global3.b.a)), vec4<i32>(var_2, -69315i, var_2, var_2) >> (vec4<u32>(24380u, u_input.a.x, 1u, 0u) % vec4<u32>(32u))), abs(vec4<i32>(var_2, 1i, 13285i, var_2))), max(~max(u_input.b, global3.a.a.b), 26026u), 110686u));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    global2 = vec2<bool>(true, global2.x);
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(1i, 27306i), global3.b.a, 1i), -vec3<i32>(~(-20740i), global3.b.a ^ abs(global3.b.a), -global3.a.a.a << (u_input.b % 32u)));
    let var_1 = vec2<u32>(select(u_input.a.x, _wgslsmith_div_u32(~4294967295u, _wgslsmith_clamp_u32(35551u, 11358u, global3.a.a.c)), u_input.b < arg_0.b.b), ~7320u);
    let var_2 = global3.c.x;
    var var_3 = -181f;
    return Struct_4(arg_0.a.a.a, global3.c.x, _wgslsmith_add_i32(-global3.a.a.a, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-3068i, 2147483647i), global4[_wgslsmith_index_u32(110660u, 25u)]), var_0.zx)) | _wgslsmith_mult_i32(var_0.x, ~global3.a.a.a), select(!vec4<bool>(any(vec4<bool>(false, global2.x, global2.x, global2.x)), true | global2.x, any(vec3<bool>(global2.x, global2.x, true)), any(vec2<bool>(false, true))), !vec4<bool>(true, global2.x, any(vec4<bool>(global2.x, global2.x, false, false)), global2.x), !select(!vec4<bool>(false, global2.x, true, true), select(vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, true, global2.x, global2.x), global2.x), !vec4<bool>(true, false, global2.x, global2.x))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_5 {
    return Struct_5(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-385f, arg_0.b, -1678f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(499f, -274f, arg_0.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(233f, global1[_wgslsmith_index_u32(1882u, 24u)], global1[_wgslsmith_index_u32(global3.a.a.b, 24u)]) * _wgslsmith_div_vec3_f32(vec3<f32>(-1287f, arg_0.b, global1[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec3<f32>(arg_0.b, arg_0.b, global3.c.x))))).a.b, Struct_3(func_1(vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], -1254f), -167f, _wgslsmith_f_op_f32(select(1126f, 903f, true)))), global3.a.a, global3.c), 52566u);
}

fn func_6(arg_0: Struct_5, arg_1: vec2<f32>) -> Struct_5 {
    var var_0 = Struct_1(1i << (_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(30280u, u_input.a.x, global3.b.b), vec3<u32>(56650u, 0u, global3.a.a.b)), ~(global3.a.a.b | arg_0.a)) % 32u), ~(~1u), max(_wgslsmith_dot_vec2_u32(firstLeadingBit(~u_input.a), _wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a, arg_0.b.b.c), u_input.a))), 23433u));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_sub_i32(1i, 1i);
    global3 = func_5(func_4(arg_0.b), !func_4(Struct_3(global3.a, func_1(vec3<f32>(894f, 491f, 193f)).a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.c.x, -513f) - vec2<f32>(-465f, global1[_wgslsmith_index_u32(7936u, 24u)])))).d.zxx).b;
    var var_3 = arg_0.b;
    return func_5(Struct_4(global3.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.c.x)) - _wgslsmith_f_op_f32(arg_1.x * var_1.b.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -756f), global3.c.x))), firstLeadingBit(0i ^ _wgslsmith_clamp_i32(2147483647i, arg_0.b.a.a.a, var_1.b.b.a)), func_4(func_5(Struct_4(var_1.b.a.a.a, 969f, var_1.b.b.a, vec4<bool>(true, true, true, true)), vec3<bool>(global2.x, global2.x, global2.x)).b).d), vec3<bool>(true, 20246i >= var_3.a.a.a, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    var var_1 = func_6(func_5(func_4(Struct_3(func_1(vec3<f32>(1000f, 1238f, var_0)), func_1(vec3<f32>(-2333f, var_0, global1[_wgslsmith_index_u32(u_input.b, 24u)])).a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, -720f))))), vec3<bool>(any(!vec4<bool>(true, global2.x, false, false)), all(!vec4<bool>(false, global2.x, global2.x, true)), 4294967295u != ~global3.b.b)), vec2<f32>(1082f, -298f));
    let var_2 = -1951f;
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-316f, 123f, 411f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-373f, var_0), var_2, 869f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_1.b.c.x, global3.c.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.c.x, var_0, var_1.b.c.x))))))));
    global2 = vec2<bool>(true, func_4(var_1.b).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, ~select(var_1.b.b.c, 74175u, global2.x), _wgslsmith_dot_vec2_u32(u_input.a, min(vec2<u32>(7493u, 124764u), u_input.a))), ~(~select(1u, ~25583u, true)), 1000f, _wgslsmith_div_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, 4294967295u), u_input.a), vec2<u32>(1u, ~1u), global2.x), u_input.a), global4[_wgslsmith_index_u32(~1u, 25u)]);
}

