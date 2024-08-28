struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    var var_0 = ~arg_2.x;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), 1887f, arg_0), select(~(arg_1.yw ^ select(vec2<u32>(arg_3, 4294967295u), vec2<u32>(u_input.a.x, 1u), vec2<bool>(false, false))), vec2<u32>(12807u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 1u, global0[_wgslsmith_index_u32(77849u, 25u)]), arg_1.yyz)), true && ((u_input.a.x >= 11971u) | true)), _wgslsmith_clamp_i32(firstLeadingBit(_wgslsmith_add_i32(39634i, 1i)), -(~arg_2.x) << (max(~global0[_wgslsmith_index_u32(u_input.a.x, 25u)], u_input.a.x) % 32u), i32(-1i) * -(i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, -446f, arg_0)) - vec3<f32>(arg_0, _wgslsmith_f_op_f32(ceil(645f)), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1382f)), arg_0))));
    let var_2 = select(!(!vec4<bool>(41342u >= var_1.b.x, true, var_1.b.x >= arg_1.x, arg_2.x >= var_1.c)), !(!(!select(vec4<bool>(var_1.e, var_1.e, true, false), vec4<bool>(true, var_1.e, false, var_1.e), false))), select(!vec4<bool>(any(vec3<bool>(true, false, true)), any(vec2<bool>(var_1.e, var_1.e)), false, select(true, false, var_1.e)), !(!vec4<bool>(var_1.e, var_1.e, true, var_1.e)), !select(!vec4<bool>(var_1.e, var_1.e, var_1.e, var_1.e), select(vec4<bool>(true, var_1.e, var_1.e, var_1.e), vec4<bool>(var_1.e, var_1.e, true, var_1.e), vec4<bool>(false, false, var_1.e, var_1.e)), select(vec4<bool>(var_1.e, false, var_1.e, true), vec4<bool>(var_1.e, var_1.e, var_1.e, var_1.e), var_1.e))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, 141f, -1055f), var_1.d), var_1.a))), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(46535u, 0u), ~u_input.a.yz, ~arg_1.zx) << (vec2<u32>(1u, ~var_1.b.x) % vec2<u32>(32u))), reverseBits(_wgslsmith_sub_i32(min(arg_2.x, -75860i) | arg_2.x, _wgslsmith_mod_i32(2147483647i, 2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, arg_0))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f))), var_2.x);
    let var_4 = var_2.yxw;
    return _wgslsmith_f_op_f32(arg_0 - 491f);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(arg_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a) + arg_1.a), vec3<bool>(true, all(vec4<bool>(false, true, arg_1.e, true)), true | !arg_1.e))), ~u_input.a.xy, _wgslsmith_mod_i32(~arg_0, -25990i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_3(arg_1.d.x, _wgslsmith_mult_vec4_u32(arg_2, vec4<u32>(arg_2.x, 29463u, arg_1.b.x, 4294967295u)), vec4<i32>(arg_0, arg_0, 55561i, arg_1.c), ~u_input.a.x)), 1f)), arg_1.e);
    global0 = array<u32, 25>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(max(-799f, 340f)), arg_1.d.x) * _wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, -293f, -260f) - vec3<f32>(-937f, arg_1.a.x, arg_1.a.x)))), ~_wgslsmith_div_vec2_u32(~var_0.b, min(vec2<u32>(49106u, 0u), var_0.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(-2147483647i), 1i), ~_wgslsmith_add_vec2_i32(vec2<i32>(var_0.c, arg_1.c), vec2<i32>(var_0.c, 0i))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), vec3<f32>(-1471f, 174f, _wgslsmith_f_op_f32(var_0.a.x - 1000f)))), true), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), arg_1.a.x, arg_1.d.x), vec2<u32>(~(~global0[_wgslsmith_index_u32(109064u, 25u)]), reverseBits(_wgslsmith_mult_u32(38260u, u_input.a.x))), min(2147483647i, ~(~(-1i))), _wgslsmith_f_op_vec3_f32(abs(arg_1.d)), false), countOneBits(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, global0[_wgslsmith_index_u32(1u, 25u)], 88423u, arg_2.x), vec4<u32>(7717u, 49319u, arg_2.x, 45632u)), global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], var_0.b.x), 25u)]) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(13529u, 4294967295u)), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 218u) % vec3<u32>(32u))));
    let var_2 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.b.d, var_1.a.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.d.x, arg_1.d.x, var_0.a.x), arg_1.a)), var_0.e)) + vec3<f32>(arg_1.a.x, 397f, _wgslsmith_f_op_f32(round(var_0.a.x)))), vec2<u32>(firstTrailingBit(u_input.a.x) << (4294967295u % 32u), firstLeadingBit(arg_1.b.x ^ 93266u)), select(_wgslsmith_dot_vec3_i32(~vec3<i32>(18054i, 11337i, arg_0), -vec3<i32>(-1i, arg_0, arg_0)), -18376i, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.d.x), var_0.a.x, -1420f)), true), vec3<u32>(~(~_wgslsmith_sub_u32(32061u, 0u)), 15080u, u_input.a.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.b.d.xy - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), 1f, true)), _wgslsmith_f_op_f32(f32(-1f) * -892f))), var_2.b.a.zz));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d));
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    global0 = array<u32, 25>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(42912i, -2147483647i), 1i), select(0i, _wgslsmith_div_i32(25761i, 310i), true)), Struct_1(vec3<f32>(-363f, -1502f, _wgslsmith_f_op_f32(-559f * -1832f)), firstTrailingBit(~u_input.a.zy), _wgslsmith_add_i32(1i, abs(-1i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-561f, 620f, -1789f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-485f, 1000f, -314f) - vec3<f32>(931f, 694f, -939f)))), 21180u > global0[_wgslsmith_index_u32(firstTrailingBit(96502u), 25u)]), u_input.a)), u_input.a.xy, -3185i, _wgslsmith_div_vec3_f32(vec3<f32>(-1268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-886f))), _wgslsmith_f_op_f32(floor(-514f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(277f, -1349f, 322f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -827f, 637f) + vec3<f32>(-2251f, 2009f, 764f))) * vec3<f32>(1682f, _wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(trunc(213f))))), var_0);
    var var_2 = ~(~vec3<i32>(var_1.c, -1i, ~(~var_1.c)));
    var_2 = ~_wgslsmith_clamp_vec3_i32(firstLeadingBit(-vec3<i32>(-2147483647i, var_2.x, 64271i)) | -(~vec3<i32>(-7272i, 38571i, -2147483647i)), vec3<i32>(-7751i, _wgslsmith_mod_i32(2147483647i, -var_2.x), var_2.x >> (~var_1.b.x % 32u)), vec3<i32>(var_1.c, min(~0i, var_1.c), -46422i));
    return Struct_2(var_1, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-1316f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.x)) - -681f)), reverseBits(reverseBits(select(var_1.b, vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec2<bool>(var_1.e, var_0)))), countOneBits(-2147483647i), _wgslsmith_f_op_vec3_f32(step(var_1.a, vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))), _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(var_1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], 0u, 52464u)) >= 1u), u_input.a.xzw);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> vec2<f32> {
    let var_0 = firstLeadingBit(vec3<u32>(~(_wgslsmith_add_u32(21791u, arg_1) << (select(global0[_wgslsmith_index_u32(1u, 25u)], 6347u, true) % 32u)), 46381u, ~max(abs(u_input.a.x), arg_0.a.b.x)));
    var var_1 = func_1().a;
    var var_2 = abs(countOneBits(firstLeadingBit(min(_wgslsmith_mult_vec3_u32(var_0, u_input.a.wzw), ~u_input.a.wzx))));
    var_2 = arg_0.c;
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~20803u, ~max(16492u, 21616u)), min((var_1.b.x >> (var_1.b.x % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 0u, 0u, 26931u), vec4<u32>(arg_1, 4294967295u, 0u, var_2.x)) % 32u), _wgslsmith_clamp_u32(var_0.x, 1u, _wgslsmith_sub_u32(arg_1, var_0.x)))), countOneBits(max(_wgslsmith_add_vec2_u32(~vec2<u32>(37746u, 1u), abs(u_input.a.zy)), abs(~var_1.b))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.a.zy))) * var_1.d.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(320f, -564f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1399f, 1850f)))) - _wgslsmith_f_op_vec2_f32(func_4(func_1(), firstTrailingBit(abs(global0[_wgslsmith_index_u32(min(1u, 31318u), 25u)])))));
    var var_1 = false;
    var_1 = all(select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), true), !func_1().a.e));
    let var_2 = 4294967295u;
    let var_3 = _wgslsmith_f_op_f32(-var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f, 197f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, var_0.x), var_0, vec2<bool>(true, true))) + vec2<f32>(303f, -1480f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2497f - var_3) - _wgslsmith_f_op_vec3_f32(func_2(30614i, Struct_1(vec3<f32>(var_3, 1051f, 1628f), u_input.a.wy, -2147483647i, vec3<f32>(212f, var_3, var_3), true), vec4<u32>(global0[_wgslsmith_index_u32(22009u, 25u)], 0u, var_2, 4294967295u))).x), _wgslsmith_f_op_f32(trunc(var_3))), func_1().b.e)));
}

