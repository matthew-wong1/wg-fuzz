struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, true, true, false, true, true, true, false);

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(-37041i, -1i, 0i, 0i), vec4<i32>(-58405i, 0i, 42461i, 0i), vec4<i32>(40558i, -32110i, -42637i, -54073i), vec4<i32>(37294i, i32(-2147483648), 23343i, -1i), vec4<i32>(11393i, 18132i, -11506i, 4911i), vec4<i32>(1i, -1i, -29520i, -25330i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(25096i, -48809i, -21729i, -1i), vec4<i32>(4422i, 10379i, 19074i, -1i), vec4<i32>(-9237i, 0i, 1i, -39293i), vec4<i32>(14337i, i32(-2147483648), 17410i, 12321i), vec4<i32>(2147483647i, i32(-2147483648), 16265i, 13878i), vec4<i32>(22538i, 2147483647i, -14295i, 49676i), vec4<i32>(102064i, -28470i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), 0i, 76022i, 4527i), vec4<i32>(-1i, -39717i, -28438i, -36849i), vec4<i32>(-6332i, -4154i, -1i, i32(-2147483648)), vec4<i32>(1i, 0i, 49547i, -1i), vec4<i32>(1i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(1i, -22914i, -63342i, 2147483647i), vec4<i32>(1i, 2147483647i, 61892i, 14671i), vec4<i32>(34129i, 0i, 15445i, -25151i), vec4<i32>(51826i, -1i, -29590i, -61721i), vec4<i32>(i32(-2147483648), -30217i, -53427i, i32(-2147483648)), vec4<i32>(0i, -1i, i32(-2147483648), 41703i), vec4<i32>(-1i, 24369i, 2302i, 2147483647i), vec4<i32>(37133i, 0i, 2147483647i, -37706i), vec4<i32>(0i, i32(-2147483648), -42292i, -64815i));

var<private> global3: Struct_4;

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = Struct_2(any(vec3<bool>(false, true, true)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(39063u, global3.b, 24312u, 108307u), vec4<u32>(global3.b, global3.a.a.c, 8191u, 39792u)), countOneBits(vec4<u32>(u_input.a.x, 0u, 27857u, global3.a.a.c)), true) << (max((vec4<u32>(0u, u_input.a.x, 56143u, u_input.a.x) | vec4<u32>(4294967295u, 9538u, 1u, global3.a.a.c)) ^ (vec4<u32>(u_input.a.x, 1u, global3.b, u_input.a.x) >> (vec4<u32>(u_input.a.x, 45514u, 4294967295u, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.a.a.c, 0u, global3.a.a.c, global3.a.a.c), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 8513u, global3.b), vec4<u32>(global3.a.a.c, 7392u, 170247u, global3.b)))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, 515f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-229f, -806f) - vec2<f32>(431f, 745f))))))), global3.a.a);
    let var_1 = !var_0.a;
    var_0 = Struct_2(var_1, countOneBits(var_0.b), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x) - vec2<f32>(var_0.c.x, 1360f)))))), Struct_1(var_0.d.b.x & max(global3.a.c >> (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.a, arg_0), vec2<i32>(-2147483647i, 46997i))), global3.a.d, _wgslsmith_div_u32(~global3.a.a.c, _wgslsmith_mod_u32(var_0.d.c, 4294967295u)) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.b.x), u_input.a), min(global3.a.a.c, global3.a.a.c), 79836u)));
    var var_2 = Struct_3(global3.a.a, vec4<bool>(arg_0 <= arg_0, var_0.a, all(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 8u)], true, false, global0[_wgslsmith_index_u32(var_0.d.c, 8u)]), vec4<bool>(var_0.a, true, global3.a.b.x, global3.a.b.x), any(vec2<bool>(true, false)))), -(-29877i | global3.a.c) < _wgslsmith_add_i32(arg_0, -41778i << (0u % 32u))), _wgslsmith_div_i32(arg_0, var_0.d.a), vec4<i32>(-1i, abs(~(var_0.d.a << (var_0.b.x % 32u))), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, global3.a.d.x), ~global3.a.d.x) >> (firstLeadingBit(abs(0u)) % 32u), abs(-abs(var_0.d.a))));
    global4 = array<Struct_1, 18>();
    return ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~6650u, ~1u) | ~(vec2<u32>(var_2.a.c, 2559u) | var_0.b.yy), ~min(vec2<u32>(u_input.a.x, 0u), abs(vec2<u32>(var_0.b.x, var_2.a.c))), vec2<u32>(25159u << (1u % 32u), u_input.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_4(arg_0.a, arg_1.x);
    var var_1 = 152f;
    var_0 = arg_0;
    var var_2 = vec4<bool>(any(global3.a.b.zxx), true, true, arg_0.a.b.x);
    var var_3 = firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-33157i, _wgslsmith_sub_i32(-1i, global3.a.c)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.c, -2147483647i), vec2<i32>(var_0.a.c, arg_0.a.a.b.x), vec2<i32>(0i, arg_0.a.a.b.x)) & vec2<i32>(global3.a.a.b.x, 23138i)));
    return _wgslsmith_f_op_f32(1104f + _wgslsmith_f_op_f32(2220f * -1290f));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_4 {
    let var_0 = global3.a.d.xz;
    var var_1 = _wgslsmith_f_op_f32(1896f - _wgslsmith_f_op_f32(abs(arg_0.x)));
    var var_2 = true;
    let var_3 = vec3<f32>(612f, -554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(global3.a, ~u_input.a.x), ~vec3<u32>(10345u, 54857u, global3.a.a.c) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1.c, 1u), vec3<u32>(1u, arg_1.c, 72264u)) % vec3<u32>(32u)), func_3(global3.a.d.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(-661f * _wgslsmith_f_op_f32(f32(-1f) * -425f)))));
    let var_4 = Struct_4(global3.a, ~arg_1.c);
    return Struct_4(Struct_3(Struct_1(_wgslsmith_mod_i32(global3.a.d.x, max(2147483647i, 3882i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_4.a.a.a, -21690i, var_4.a.c, var_4.a.d.x), var_4.a.a.b), arg_1.b | arg_1.b), 0u), !arg_2, min((-28324i & global3.a.d.x) | (-1i >> (arg_1.c % 32u)), _wgslsmith_dot_vec3_i32(arg_1.b.yzx, arg_1.b.xxz)), ~(abs(vec4<i32>(-10624i, var_4.a.d.x, -42708i, 11055i)) & _wgslsmith_mult_vec4_i32(arg_1.b, global2[_wgslsmith_index_u32(1u, 28u)]))), ~92957u);
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> vec3<u32> {
    return vec3<u32>(57521u, _wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(423f, arg_1, arg_1, -370f))), Struct_1(global3.a.d.x, ~vec4<i32>(20233i, -2147483647i, -1i, global3.a.a.b.x), arg_0.a.a.c), func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-932f, arg_1, 1479f, -673f))), Struct_1(global3.a.a.b.x, global3.a.a.b, u_input.a.x), arg_0.a.b).a.b).b, select(arg_2, _wgslsmith_sub_u32(u_input.a.x, arg_0.a.a.c), false || (arg_0.a.c > global3.a.c))), global3.a.a.c);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>) -> Struct_3 {
    global2 = array<vec4<i32>, 28>();
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-844f - arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))), _wgslsmith_f_op_vec2_f32(exp2(arg_1.zy)));
    global2 = array<vec4<i32>, 28>();
    global0 = array<bool, 8>();
    var var_1 = func_5(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(646f, var_0.x, 404f, _wgslsmith_div_f32(-537f, arg_1.x))), Struct_1(max(~global3.a.c, 1i), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global3.a.a.a, -4186i, global3.a.a.a), global2[_wgslsmith_index_u32(18064u, 28u)]), -vec4<i32>(2147483647i, 1i, global3.a.d.x, 31491i)), 4294967295u >> (0u % 32u)), !select(select(vec4<bool>(global3.a.b.x, true, global3.a.b.x, global0[_wgslsmith_index_u32(arg_0.x, 8u)]), vec4<bool>(global3.a.b.x, false, true, false), vec4<bool>(false, global3.a.b.x, false, false)), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(4294967295u, 8u)]), !global3.a.b.x)), arg_1.x, ~_wgslsmith_clamp_u32(~arg_0.x, _wgslsmith_dot_vec2_u32(abs(arg_0.zy), vec2<u32>(1u, 1u)), ~(~global3.b)));
    return global3.a;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2) -> vec2<u32> {
    global4 = array<Struct_1, 18>();
    let var_0 = max(vec2<u32>(countOneBits(arg_0.a.a.c), 4294967295u), u_input.a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1950f), arg_2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + arg_2.c.x)))), _wgslsmith_f_op_f32(-arg_2.c.x)));
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(arg_2.d.b.x, global3.a.c), -arg_1.d.x), select(arg_1.a.a, _wgslsmith_clamp_i32(arg_1.a.a, -2147483647i, 32937i), false))), vec2<i32>(-2147483647i, abs(~0i)));
    let var_3 = func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, ~_wgslsmith_div_u32(59080u, var_0.x)), arg_2.b.zxx, vec3<u32>(u_input.a.x, arg_0.a.a.c, ~global3.a.a.c) | abs(~arg_2.b.wwy)), _wgslsmith_f_op_vec3_f32(abs(var_1)));
    return ~_wgslsmith_add_vec2_u32(max(var_0, reverseBits(arg_2.b.zz)), vec2<u32>(~var_3.a.c, (arg_1.a.c | global3.b) << (var_0.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 18>();
    global2 = array<vec4<i32>, 28>();
    let var_0 = ~(~(func_6(Struct_4(Struct_3(global3.a.a, global3.a.b, 17197i, global2[_wgslsmith_index_u32(4294967295u, 28u)]), 16126u), func_1(vec3<u32>(u_input.a.x, 81605u, 11219u), vec3<f32>(681f, 485f, -2065f)), Struct_2(global3.a.b.x, vec4<u32>(16012u, global3.b, global3.a.a.c, 4294967295u), vec2<f32>(-848f, -663f), Struct_1(global3.a.c, global3.a.d, 52884u))) | vec2<u32>(_wgslsmith_add_u32(global3.b, 0u), u_input.a.x)));
    let var_1 = true;
    let var_2 = 10959u;
    var var_3 = ~(~_wgslsmith_sub_i32(1i, 2385i));
    global3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, -1000f, -1377f, 975f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-421f, -347f, 567f, -741f)), global3.a.b)))), func_1(vec3<u32>(var_2, abs(54798u), 1u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1768f)), _wgslsmith_f_op_f32(f32(-1f) * -876f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(464f * -1366f) - _wgslsmith_f_op_f32(max(-1295f, -1364f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-293f + 1028f))))).a, vec4<bool>(!any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(global3.a.a.c, 8u)], true)), any(global3.a.b), global3.a.b.x, global0[_wgslsmith_index_u32(func_5(Struct_4(func_2(vec4<f32>(363f, 1344f, 952f, 404f), global3.a.a, vec4<bool>(global3.a.b.x, true, global0[_wgslsmith_index_u32(var_0.x, 8u)], false)).a, ~1u), _wgslsmith_f_op_f32(trunc(3231f)), 37936u).x, 8u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f)))), min(~(~vec2<u32>(1u, 0u)), vec2<u32>(~_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_0.x, u_input.a.x)), u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2036f), _wgslsmith_f_op_f32(f32(-1f) * -888f))), 1000f)), 214f, 754f, _wgslsmith_div_f32(-944f, _wgslsmith_f_op_f32(f32(-1f) * -365f))), var_0, ~(~(~_wgslsmith_clamp_u32(31859u, 98158u, 101143u))));
}

