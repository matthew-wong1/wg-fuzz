struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global2: array<Struct_4, 11>;

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(false, false, select(_wgslsmith_mod_i32(firstTrailingBit(-992i), 26582i), global3.a.b.x, any(vec4<bool>(true, true, true, true))) > _wgslsmith_clamp_i32(u_input.c, -6757i, global3.a.b.x), !(_wgslsmith_div_f32(855f, _wgslsmith_f_op_f32(f32(-1f) * -331f)) == global0.x));
    let var_1 = !any(!vec2<bool>(select(var_0.x, false, true), true));
    var var_2 = ~(~(~(~global3.a.b.zx))) ^ _wgslsmith_div_vec2_i32(global3.a.b.xx, global3.a.b.zy);
    var var_3 = ~vec4<i32>(-4583i, -(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.c, global3.a.b.x), vec3<i32>(u_input.c, var_2.x, -1996i)) | u_input.c), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1732i, global3.a.b.x), u_input.c)), global3.a.b.x);
    let var_4 = global3.a;
    return global0.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + _wgslsmith_f_op_f32(min(-256f, -1272f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(min(global0.x, 1019f)))), 381f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - _wgslsmith_f_op_f32(-547f - global0.x)), global0.x, false)), global0.x), vec4<f32>(_wgslsmith_f_op_f32(func_3()), -980f, global0.x, -391f)));
    let var_1 = ~_wgslsmith_mult_u32(u_input.b.x, abs(_wgslsmith_clamp_u32(~global3.a.a.x, arg_1.a.x, select(arg_1.a.x, global3.a.a.x, true))));
    var var_2 = _wgslsmith_mult_i32(countOneBits(global3.a.b.x ^ arg_1.b.x), global3.a.b.x);
    var var_3 = global3.a.a;
    let var_4 = 0u;
    return global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(firstTrailingBit(arg_1.a.x), var_3.x), 11u)];
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_5) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1232f, _wgslsmith_f_op_f32(trunc(-2602f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.b.x * -624f), _wgslsmith_div_f32(584f, 1000f))), arg_3.b.x)), arg_3.b, select((arg_0.a.a.x & func_2(global1[_wgslsmith_index_u32(arg_3.d.x, 24u)], Struct_1(vec3<u32>(u_input.b.x, arg_2.a.a.x, 4294967295u), arg_0.a.b)).a.a.x) >= (arg_3.c << (arg_3.d.x % 32u)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) | ((arg_3.d.x | arg_0.a.a.x) != _wgslsmith_sub_u32(u_input.b.x, u_input.a)), !(!(arg_2.a.a.x == global3.a.a.x)))));
    var var_1 = select(select(select(vec4<bool>(false, true, select(true, false, false), true), vec4<bool>(true, false, any(vec2<bool>(false, true)), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), _wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(global3.a.a.x, arg_2.a.a.x)) <= ~u_input.a), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, false, false)) && (true | all(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(max(-471f, _wgslsmith_f_op_f32(-arg_1.x))) >= 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-global0.x)) < _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(arg_1.x * global0.x), arg_0.a.b.x >= 0i))));
    var var_2 = Struct_5(max(~vec2<u32>(~arg_3.c, func_2(vec3<bool>(false, false, var_1.x), global3.a).a.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.a.x, u_input.b.x), vec2<u32>(max(2399u, 17264u), arg_0.a.a.x))), var_0, 25013u, u_input.b.zz);
    let var_3 = vec2<u32>(global3.a.a.x, 0u);
    global1 = array<vec3<bool>, 24>();
    return Struct_3(min(_wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(9910u, u_input.a, arg_2.a.a.x, 42417u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.a.x, arg_3.c, 0u, 52487u), vec4<u32>(102392u, 4294967295u, 7432u, arg_0.a.a.x))), ~(~vec4<u32>(23367u, 15854u, 0u, global3.a.a.x) & vec4<u32>(4294967295u, arg_0.a.a.x, u_input.b.x, u_input.a))), arg_3.b.x, -vec3<i32>(0i, max(u_input.c, arg_0.a.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.b.x, global3.a.b.x, arg_0.a.b.x, -1i), vec4<i32>(-31976i, global3.a.b.x, 0i, arg_2.a.b.x)), ~vec4<i32>(arg_0.a.b.x, arg_0.a.b.x, 2147483647i, -1i))), max(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.b.x, 1i), arg_2.a.b.zy), -arg_2.a.b.x));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_3) -> Struct_5 {
    var var_0 = vec2<u32>(~(~(~(~0u))), u_input.a);
    global3 = arg_0;
    var var_1 = func_2(!select(global1[_wgslsmith_index_u32(19985u, 24u)], select(select(vec3<bool>(false, arg_1, arg_1), global1[_wgslsmith_index_u32(27003u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]), !vec3<bool>(arg_1, false, arg_1), select(global1[_wgslsmith_index_u32(17842u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], arg_1)), vec3<bool>(!arg_1, any(global1[_wgslsmith_index_u32(47569u, 24u)]), false)), global3.a);
    let var_2 = arg_2.b > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(147f + -1000f));
    var var_3 = u_input.b.xz;
    return Struct_5(vec2<u32>(var_0.x, 1u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_4(Struct_4(global3.a), vec3<f32>(-330f, 211f, arg_2.b), Struct_4(var_1.a), Struct_5(vec2<u32>(1u, 75424u), vec4<f32>(-1310f, arg_2.b, arg_2.b, -834f), 0u, arg_2.a.yw)).b, _wgslsmith_f_op_f32(550f - global0.x), func_4(arg_0, vec3<f32>(global0.x, 423f, -1342f), arg_0, Struct_5(arg_0.a.a.yy, vec4<f32>(global0.x, arg_2.b, global0.x, global0.x), var_1.a.a.x, arg_0.a.a.xx)).b, arg_2.b))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.b)) + arg_2.b), _wgslsmith_f_op_f32(select(342f, arg_2.b, true)), _wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_f_op_f32(f32(-1f) * -990f)))), ~(var_0.x & ~35124u), vec2<u32>(u_input.a, abs(var_3.x)));
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_5) -> i32 {
    var var_0 = Struct_1(~firstTrailingBit(~firstTrailingBit(vec3<u32>(22664u, arg_3.c, arg_3.c))), ~firstLeadingBit(global3.a.b));
    return arg_1.x;
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    var var_0 = func_6(arg_0.x, global3.a.b.xx, 1u, func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 21403u, u_input.a, 26765u), vec4<u32>(u_input.b.x, 33289u, global3.a.a.x, 2856u)), 11u)], any(vec4<bool>(true, arg_0.x, true, arg_0.x)), func_4(Struct_4(global3.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -353f, -1000f))), func_2(vec3<bool>(false, arg_0.x, true), Struct_1(global3.a.a, vec3<i32>(59633i, 2147483647i, global3.a.b.x))), Struct_5(u_input.b.yz, vec4<f32>(global0.x, -1000f, -1000f, -2250f), 1u, global3.a.a.zy)))) >> (_wgslsmith_mod_u32(global3.a.a.x, ~_wgslsmith_div_u32(u_input.b.x, max(4294967295u, 91945u))) % 32u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -163f);
    let var_2 = Struct_4(func_2(vec3<bool>(arg_0.x, !arg_0.x, all(!arg_0.yy)), func_2(!select(global1[_wgslsmith_index_u32(1u, 24u)], vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, false, false)), func_2(vec3<bool>(arg_0.x, arg_0.x, true), global3.a).a).a).a);
    var var_3 = var_2.a;
    return func_2(!vec3<bool>(any(vec2<bool>(arg_0.x, arg_0.x)) & any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), false, true), func_2(select(!vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(true, false, true), any(vec4<bool>(false, false, false, arg_0.x))), func_2(select(vec3<bool>(arg_0.x, true, true), arg_0, select(global1[_wgslsmith_index_u32(16456u, 24u)], arg_0, vec3<bool>(arg_0.x, true, false))), func_2(select(global1[_wgslsmith_index_u32(global3.a.a.x, 24u)], vec3<bool>(false, arg_0.x, true), arg_0), Struct_1(vec3<u32>(31178u, 5511u, 80215u), var_2.a.b)).a).a).a);
}

fn func_7(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: Struct_5) -> bool {
    global3 = arg_0;
    global0 = arg_3.b.ywx;
    global2 = array<Struct_4, 11>();
    let var_0 = arg_3.b.x;
    global2 = array<Struct_4, 11>();
    return !arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_7(func_1(vec3<bool>(var_0, any(vec2<bool>(var_0, false)), any(vec2<bool>(true, var_0)))), max(global3.a.a.x, reverseBits(4294967295u)) == 40154u, 1i, func_5(global2[_wgslsmith_index_u32(max(10105u << (1u % 32u), reverseBits(u_input.a)), 11u)], true, func_4(global2[_wgslsmith_index_u32((681u >> (u_input.a % 32u)) << (~33142u % 32u), 11u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1839f, 195f)) - vec3<f32>(159f, 459f, -1021f)), func_1(vec3<bool>(var_0, false, var_0)), func_5(global2[_wgslsmith_index_u32(~global3.a.a.x, 11u)], var_0, Struct_3(vec4<u32>(global3.a.a.x, u_input.a, u_input.a, global3.a.a.x), 1303f, vec3<i32>(-1i, 0i, 5425i), -32574i)))));
    let var_2 = !var_1;
    let var_3 = !(!any(vec3<bool>(true, true, var_2)));
    var var_4 = var_3;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec3_i32(-(~vec3<i32>(-483i, 22995i, u_input.c)), global3.a.b), 23421i);
}

