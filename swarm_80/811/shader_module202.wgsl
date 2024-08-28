struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(809f, -789f), vec2<f32>(-1000f, 448f), vec2<f32>(1518f, 1904f), vec2<f32>(-659f, -762f), vec2<f32>(655f, 1277f), vec2<f32>(776f, -1012f), vec2<f32>(-969f, 574f), vec2<f32>(607f, -1632f), vec2<f32>(-363f, 465f), vec2<f32>(-486f, -216f), vec2<f32>(-261f, -1100f), vec2<f32>(-104f, 323f), vec2<f32>(235f, -477f));

var<private> global1: u32;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    var var_0 = false;
    global2 = array<Struct_1, 22>();
    return vec4<bool>((~(15276u & u_input.c) | 12906u) == reverseBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, u_input.b.x), select(92934u, u_input.c, arg_0.a))), arg_0.a, true || (arg_0.a || arg_0.a), !(_wgslsmith_dot_vec3_u32(vec3<u32>(16781u, 33296u, 13510u) << (vec3<u32>(u_input.b.x, u_input.b.x, 90606u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(46910u, u_input.c, u_input.b.x), vec3<u32>(u_input.c, u_input.b.x, u_input.c))) < ~1u));
}

fn func_3(arg_0: bool) -> Struct_1 {
    global2 = array<Struct_1, 22>();
    global2 = array<Struct_1, 22>();
    global2 = array<Struct_1, 22>();
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_1 = abs(vec4<i32>(var_0.d, firstTrailingBit(var_0.e), -20520i, _wgslsmith_mod_i32(11911i, u_input.a.x)));
    return Struct_1(any(vec3<bool>(true, var_0.a, 0i < var_0.e)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, -1008f)) - _wgslsmith_f_op_f32(var_0.b.x * -2146f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f)), _wgslsmith_f_op_f32(f32(-1f) * -1161f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.b)) - _wgslsmith_f_op_vec3_f32(var_0.b + var_0.b)), var_0.b)), abs(-min(var_0.e & var_0.d, _wgslsmith_div_i32(-1i, -62665i))), -countOneBits(var_0.e), var_1.x);
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 22>();
    var var_0 = func_3(any(func_2(Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 998f, -674f)), u_input.d, -u_input.a.x, min(u_input.a.x, -46300i)), _wgslsmith_f_op_f32(f32(-1f) * -492f))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~(~u_input.b), abs(vec2<u32>(firstLeadingBit(0u), 57845u))), select(u_input.b.x, _wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(52226u, u_input.b.x)), var_0.a) ^ _wgslsmith_add_u32(u_input.c, 1u), _wgslsmith_sub_u32(9490u >> (~4294967295u % 32u), 1u)), 22u)];
    var_0 = func_3(!var_1.a);
    var_1 = func_3(false);
    return Struct_1((false || !(true | var_0.a)) & all(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_0.a, true, false), var_1.a == var_1.a)), var_0.b, 1i >> (u_input.c % 32u), -1i, -2147483647i);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global2 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().b.x + -266f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -362f)))));
    global2 = array<Struct_1, 22>();
    var var_1 = false;
    global2 = array<Struct_1, 22>();
    return func_3(func_3(true).a || true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec2<bool> {
    var var_0 = firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.c, arg_2), ~vec4<u32>(7531u, 97930u, arg_2, 4294967295u)), 4294967295u << (~u_input.c % 32u), abs(u_input.b.x))) | vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2, 4294967295u, 26428u), vec3<u32>(arg_2, u_input.c, u_input.b.x), vec3<bool>(false, arg_1.a, arg_1.a)) >> (min(vec3<u32>(1u, 1u, 15068u), vec3<u32>(arg_2, 1u, 7072u)) % vec3<u32>(32u)), vec3<u32>(~4294967295u, firstTrailingBit(4294967295u), ~0u)), 28635u << (_wgslsmith_mod_u32(35515u, _wgslsmith_clamp_u32(arg_2, u_input.b.x, 4294967295u)) % 32u), firstLeadingBit(u_input.c) & 40444u, max(max(arg_2 ^ 1339u, ~4294967295u), firstLeadingBit(~0u)));
    return select(!select(vec2<bool>(true, true), func_2(Struct_1(true, vec3<f32>(arg_0.b.x, arg_1.b.x, arg_0.b.x), 1i, arg_0.e, arg_3), _wgslsmith_f_op_f32(arg_1.b.x + 2380f)).wy, func_2(func_3(true), 471f).ww), select(vec2<bool>(true, arg_1.a | arg_0.a), select(select(vec2<bool>(arg_0.a, arg_1.a), select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_0.a, true), vec2<bool>(true, arg_1.a)), arg_0.a), !vec2<bool>(true, arg_0.a), !vec2<bool>(arg_1.a, arg_1.a)), !select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false), vec2<bool>(true, false)), !vec2<bool>(false, arg_1.a), !vec2<bool>(arg_1.a, false))), !(!func_2(Struct_1(false, vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), -15414i, arg_3, -1i), arg_1.b.x).ww));
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~(u_input.b.x & 0u), u_input.b.x) >> (_wgslsmith_mult_u32(~abs(71265u), ~(~u_input.b.x)) % 32u), ~_wgslsmith_add_u32(u_input.b.x, u_input.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 34552u), vec2<u32>(4294967295u, 4294967295u)) % 32u))), 22u)];
    global1 = ~(_wgslsmith_mult_u32(0u & u_input.b.x, u_input.c << (~u_input.b.x % 32u)) << (reverseBits(36419u) % 32u));
    global0 = array<vec2<f32>, 13>();
    var var_1 = ~u_input.a.yz;
    var var_2 = global2[_wgslsmith_index_u32(~(~4294967295u), 22u)];
    return global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x) << (u_input.b.x % 32u), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-44757i);
    global0 = array<vec2<f32>, 13>();
    global0 = array<vec2<f32>, 13>();
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_2 = func_6(select(select(!select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, var_1.a), var_1.a), select(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, false), true), !vec2<bool>(var_1.a, true), vec2<bool>(true, false)), select(vec2<bool>(var_1.a, true), !vec2<bool>(false, var_1.a), vec2<bool>(false, true))), func_5(global2[_wgslsmith_index_u32(u_input.c, 22u)], func_4(_wgslsmith_f_op_vec3_f32(-var_1.b), func_1(), var_0 >> (4294967295u % 32u)), _wgslsmith_sub_u32(u_input.c, 1u), -49591i), !vec2<bool>(func_2(Struct_1(var_1.a, vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x), var_0, 2612i, u_input.d), 383f).x, !var_1.a)), i32(-1i) * -1i, _wgslsmith_dot_vec4_u32(min(max(vec4<u32>(67483u, 31706u, u_input.c, u_input.c), vec4<u32>(37445u, u_input.b.x, u_input.b.x, 31158u)), ~vec4<u32>(11848u, u_input.b.x, 4294967295u, u_input.c)), vec4<u32>(~u_input.c, ~69922u, 4294967295u, 51946u)) <= 1u, func_4(var_1.b, global2[_wgslsmith_index_u32(1u, 22u)], u_input.a.x).b.x);
    var var_3 = select(vec3<bool>(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(234f, var_1.b.x, 674f) - vec3<f32>(335f, -124f, -1000f))), func_6(vec2<bool>(true, true), _wgslsmith_add_i32(50049i, -2147483647i), false, 309f), ~1i).a, !func_4(_wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(var_2.b.x, 255f, var_1.b.x)), global2[_wgslsmith_index_u32(~u_input.b.x, 22u)], var_1.e).a, true), vec3<bool>(_wgslsmith_f_op_f32(-var_1.b.x) <= _wgslsmith_f_op_f32(trunc(2112f)), !(!(!var_2.a)), var_2.a), func_4(var_2.b, global2[_wgslsmith_index_u32(~(u_input.b.x >> (_wgslsmith_add_u32(u_input.c, 0u) % 32u)), 22u)], firstTrailingBit(var_2.e) ^ select(var_1.d, _wgslsmith_div_i32(var_1.d, u_input.a.x), func_3(var_2.a).a)).a);
    global2 = array<Struct_1, 22>();
    let var_4 = !func_2(var_2, 302f).zxz;
    let var_5 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(1i << (u_input.b.x % 32u), vec4<i32>(~1i | ~var_2.d, (-67035i ^ var_2.d) >> ((u_input.c | 4294967295u) % 32u), reverseBits(var_2.d), func_3(var_3.x).d) >> (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(21480u, u_input.c, 93146u, u_input.b.x)), ~(~vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.c))) % vec4<u32>(32u)));
}

