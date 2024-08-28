struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-17821i, i32(-2147483648), 0i);

var<private> global1: Struct_3;

var<private> global2: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = global1.b.x != 2173f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.b.x, global1.b.x))))));
    return global1.a;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    global1 = Struct_3(_wgslsmith_div_i32(global1.a, global1.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1724f, 1941f) + global1.b))))));
    var var_0 = arg_1.b.x >> (~arg_1.b.x % 32u);
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-11881i, -(~314i), reverseBits(~_wgslsmith_mult_i32(1i, 2147483647i)), _wgslsmith_div_i32((-2147483647i >> (arg_1.b.x % 32u)) | (global0.x >> (arg_1.b.x % 32u)), ~global1.a | -arg_0)), -vec4<i32>(abs(u_input.a.x), 2147483647i | func_3(arg_1.b.wyy, 24416i, u_input.a.x), -38200i << (select(arg_1.b.x, 12589u, arg_1.a.x) % 32u), func_3(vec3<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), 2147483647i, firstTrailingBit(arg_0))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, global1.a, 2147483647i) >> (reverseBits(arg_1.b) % vec4<u32>(32u)), vec4<i32>(arg_1.d, abs(1i), -arg_0, abs(2147483647i)), vec4<i32>(-2147483647i, -1i, ~1i, global1.a | 86991i)));
    var var_2 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(_wgslsmith_add_u32(251u, arg_1.b.x), min(arg_1.b.x, arg_1.b.x), arg_1.b.x)) & ~arg_1.b.yyz, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, 4294967295u), arg_1.b), ~73299u, reverseBits(arg_1.b.x)), _wgslsmith_div_u32(~arg_1.b.x, 4294967295u)), arg_1.b.x, arg_1.b.x));
    var var_3 = arg_1.c;
    return Struct_3(-33448i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b, _wgslsmith_f_op_vec2_f32(global1.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, -125f)))) * global1.b));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_2(reverseBits(_wgslsmith_div_vec3_i32(~vec3<i32>(global0.x, 9346i, 2147483647i), _wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, arg_0.c, 18204i), countOneBits(vec3<i32>(53245i, -6604i, 2147483647i))))), arg_0.a.x != false, global0.yx, arg_2.b.x);
    global1 = func_2(global0.x, arg_0);
    global0 = var_0.a;
    var_0 = Struct_2(-(abs(min(var_0.a, var_0.a)) << (vec3<u32>(select(0u, arg_3, true), firstTrailingBit(50786u), 1u | arg_0.b.x) % vec3<u32>(32u))), any(vec3<bool>(var_0.b, !arg_0.a.x, all(vec4<bool>(true, true, arg_2.a.x, false)))) | any(vec4<bool>(true, true | arg_1.x, true, true)), ~vec2<i32>(_wgslsmith_mod_i32(~var_0.a.x, -2147483647i), i32(-1i) * -2147483647i), 4294967295u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 602f, 403f, _wgslsmith_f_op_f32(global1.b.x + -560f)));
    return ~arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, func_1(Struct_1(vec3<bool>(true, false, true), vec4<u32>(47601u, 0u, 12993u, 4155u), -56682i, global0.x), vec2<bool>(true, true), Struct_1(vec3<bool>(false, true, true), vec4<u32>(14090u, 4294967295u, 1u, 4294967295u), 0i, -80585i), 0u), reverseBits(4294967295u), 11317u), firstLeadingBit(~vec4<u32>(68837u, 70954u, 65222u, 0u))), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, 91870u), ~4294967295u, ~0u, ~82080u));
    let var_1 = global1.b.x;
    global1 = Struct_3(_wgslsmith_clamp_i32(-func_3(reverseBits(var_0.yww), u_input.a.x, ~56413i), ~(-global0.x), 0i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b.x, global1.b.x))), global1.b, global2[_wgslsmith_index_u32(func_1(Struct_1(vec3<bool>(true, true, true), vec4<u32>(22077u, 17467u, var_0.x, 4294967295u), -45656i, 2147483647i), vec2<bool>(false, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(0u, 1u, 4294967295u, 27349u), global0.x, global0.x), 0u), 20u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-290f, global1.b.x) * vec2<f32>(-1000f, -545f)))));
    var_0 = ~abs(reverseBits(~vec4<u32>(31097u, var_0.x, var_0.x, var_0.x) ^ min(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 28050u, var_0.x, 1u))));
    let var_2 = var_0.x;
    let var_3 = Struct_3(~_wgslsmith_add_i32(0i, -global0.x & global0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-433f, global1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -2672f)) - global1.b));
    let var_4 = Struct_3(-(-27417i & firstLeadingBit(global1.a)), func_2(_wgslsmith_dot_vec2_i32(~(~vec2<i32>(2147483647i, global0.x)), max(vec2<i32>(global0.x, -32751i), vec2<i32>(-14003i, u_input.a.x))), Struct_1(vec3<bool>(true, true, true), min(vec4<u32>(var_0.x, var_0.x, var_0.x, 26707u), ~vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), global1.a, -5025i)).b);
    let var_5 = !(!vec4<bool>(all(vec4<bool>(true, false, true, false)), select(false, false, true) | all(vec4<bool>(true, true, false, false)), select(all(vec3<bool>(false, false, true)), true, true), select(true, all(vec2<bool>(true, true)), false)));
    var var_6 = Struct_3(~global1.a, _wgslsmith_f_op_vec2_f32(-global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_6.b.x, _wgslsmith_f_op_f32(-var_3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1270f), -2026f), vec4<f32>(881f, var_6.b.x, _wgslsmith_f_op_f32(530f - 1000f), _wgslsmith_f_op_f32(floor(-2472f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -750f, -603f, global1.b.x) - vec4<f32>(var_3.b.x, global1.b.x, -444f, -484f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.b.x, var_6.b.x, -975f, -271f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(329f, 201f, -1000f, var_6.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.x, 909f, var_4.b.x, var_3.b.x))))), ~(max(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), ~vec4<u32>(41042u, var_0.x, 23539u, var_0.x)) << (vec4<u32>(_wgslsmith_add_u32(var_0.x, 4294967295u), var_0.x, reverseBits(1u), var_0.x) % vec4<u32>(32u))), -550f, abs(vec3<i32>(_wgslsmith_add_i32(~(-5397i), var_3.a), _wgslsmith_sub_i32(var_4.a, var_4.a), min(5894i, abs(var_6.a)))));
}

