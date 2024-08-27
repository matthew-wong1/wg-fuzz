struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -30535i;

var<private> global1: Struct_4;

var<private> global2: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(47553i, 5792i, 1i, 11309i), vec4<i32>(14829i, -36639i, i32(-2147483648), 31608i), vec4<i32>(26607i, 21241i, -73369i, 2147483647i), vec4<i32>(2147483647i, -16200i, -36467i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, 0i, -4322i), vec4<i32>(26728i, 70737i, 2147483647i, -38837i), vec4<i32>(42930i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(-11542i, 1i, -7811i, -7392i), vec4<i32>(2147483647i, 18874i, 1i, 1i), vec4<i32>(2147483647i, -1i, 3736i, 23398i), vec4<i32>(-65765i, -5988i, -3627i, -1i), vec4<i32>(26510i, 1i, -1i, -40500i), vec4<i32>(-40800i, 32278i, 1i, 24742i), vec4<i32>(-513i, -23117i, -1i, 18743i), vec4<i32>(20633i, 2147483647i, 2147483647i, 0i), vec4<i32>(-1i, 23144i, -16949i, 33086i), vec4<i32>(-10827i, 29301i, 0i, 2147483647i), vec4<i32>(0i, -23445i, -22175i, 2147483647i), vec4<i32>(2147483647i, 725i, 12779i, 1i), vec4<i32>(1i, -1i, 0i, 23969i));

var<private> global3: i32;

var<private> global4: array<vec3<bool>, 20> = array<vec3<bool>, 20>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_0.c, arg_0.c)))), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(648f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c), 827f))) - global1.b.x));
    let var_1 = global1.a.c.a;
    global3 = global1.c.x;
    var var_2 = !(!(!select(global4[_wgslsmith_index_u32(1u, 20u)], select(vec3<bool>(false, true, false), vec3<bool>(false, true, arg_0.a.x), arg_0.a.x), arg_0.a.x)));
    var var_3 = true;
    return ~1595u;
}

fn func_2() -> i32 {
    let var_0 = vec4<i32>(-17661i, global1.d, -u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, global1.c.x, u_input.b.x) | ~_wgslsmith_dot_vec4_i32(vec4<i32>(-75072i, 12040i, 1i, -13391i), global2[_wgslsmith_index_u32(global1.a.b.a.x, 20u)]));
    var var_1 = vec4<u32>(countOneBits(firstLeadingBit(~_wgslsmith_sub_u32(1u, u_input.a))), func_3(Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), global1.c, _wgslsmith_div_f32(-1048f, _wgslsmith_f_op_f32(-global1.b.x)), 0i)), _wgslsmith_div_u32(global1.a.a.x, u_input.a), firstLeadingBit(~0u));
    global4 = array<vec3<bool>, 20>();
    let var_2 = Struct_4(Struct_2(global1.a.d.a, global1.a.c, Struct_1(global1.a.b.a), global1.a.c), vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -989f))), vec4<i32>(u_input.b.x, i32(-1i) * -39092i, ~min(max(global1.d, global1.c.x), ~global1.c.x), 11023i), var_0.x);
    let var_3 = 832f;
    return 0i;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_i32(3448i, 2147483647i);
    global0 = func_2();
    var var_1 = global4[_wgslsmith_index_u32(global1.a.c.a.x, 20u)];
    let var_2 = !select(select(vec2<bool>(all(vec2<bool>(var_1.x, var_1.x)), 1u <= global1.a.d.a.x), select(select(vec2<bool>(var_1.x, var_1.x), var_1.zx, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x != var_1.x), var_1.xx), !(!var_1.xx), vec2<bool>(!var_1.x, select(arg_2.a.x, arg_2.a.x, false) != _wgslsmith_add_u32(global1.a.b.a.x, arg_2.a.x)));
    var var_3 = arg_2.a.x;
    return reverseBits(_wgslsmith_mult_i32(40583i, _wgslsmith_sub_i32(arg_1, u_input.b.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    global3 = 6223i;
    var var_0 = Struct_4(global1.a, vec2<f32>(1338f, _wgslsmith_f_op_f32(exp2(arg_0.x))), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(11192i, ~2147483647i, select(-u_input.b.x, global1.d, -1041f <= global1.b.x)), abs(_wgslsmith_dot_vec3_i32(global1.c.wwz, u_input.b)), firstTrailingBit(u_input.b.x)), u_input.b.x);
    global3 = ~arg_2;
    let var_1 = _wgslsmith_clamp_i32(-reverseBits(arg_2 << (6872u % 32u)) ^ _wgslsmith_div_i32(2491i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, global1.c.x), var_0.c.wy)), -2147483647i, u_input.b.x);
    return ~2147483647i;
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_mult_i32(abs(2147483647i), ~(~(~firstLeadingBit(arg_0))));
    global1 = Struct_4(Struct_2(abs(vec4<u32>(_wgslsmith_div_u32(arg_1.b.a.x, 4294967295u), _wgslsmith_add_u32(global1.a.c.a.x, global1.a.b.a.x), ~18870u, ~arg_1.c.a.x)), Struct_1(~vec4<u32>(0u, 4294967295u, 0u, 1u) & vec4<u32>(global1.a.a.x, arg_1.a.x, arg_1.d.a.x, arg_1.a.x)), arg_1.b, arg_1.d), global1.b, vec4<i32>(-1i, arg_0, -45116i, func_2()), abs(-19089i));
    global4 = array<vec3<bool>, 20>();
    global2 = array<vec4<i32>, 20>();
    global3 = _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, func_2()), abs(0i));
    return Struct_1(~vec4<u32>(~29481u, firstTrailingBit(arg_1.a.x), firstTrailingBit(_wgslsmith_clamp_u32(8795u, arg_1.a.x, 0u)), _wgslsmith_add_u32(max(arg_1.a.x, 29566u), 27071u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 5189i;
    let var_0 = vec2<f32>(-837f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1191f, 509f)))));
    var var_1 = Struct_4(Struct_2(~(~global1.a.b.a), Struct_1(~vec4<u32>(u_input.c, global1.a.a.x, 31752u, global1.a.c.a.x)), func_5(func_4(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.b.x, 180f, -1097f), vec3<f32>(-404f, global1.b.x, -702f))), global1.a.d, func_1(global2[_wgslsmith_index_u32(u_input.c, 20u)], u_input.b.x, global1.a.b)), Struct_2(_wgslsmith_sub_vec4_u32(global1.a.d.a, vec4<u32>(global1.a.d.a.x, u_input.c, u_input.a, global1.a.b.a.x)), global1.a.d, global1.a.c, Struct_1(global1.a.a))), global1.a.b), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0 + _wgslsmith_f_op_vec2_f32(ceil(global1.b))))), vec4<i32>(global1.c.x, ~_wgslsmith_sub_i32(31980i, global1.c.x), max(~u_input.b.x, u_input.b.x | global1.c.x), -2147483647i) | vec4<i32>(83950i, countOneBits(global1.d), 0i, global1.d), ~u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(-var_1.b.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(global1.b.x + 1579f), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(var_0.x * var_1.b.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-523f, 1446f, -2208f, -1038f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-796f, var_0.x, 1130f, var_2)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-826f, global1.b.x, 335f, global1.b.x) * vec4<f32>(264f, var_1.b.x, var_2, 1277f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -224f, -1000f, 1143f), vec4<f32>(454f, var_0.x, global1.b.x, var_1.b.x), vec4<bool>(true, true, false, false))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b.x, global1.b.x, 383f, var_0.x), vec4<f32>(global1.b.x, global1.b.x, 1977f, -234f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_2, 1000f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-355f, _wgslsmith_f_op_f32(var_2 - var_1.b.x), _wgslsmith_f_op_f32(trunc(1000f)), 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(456f, var_1.b.x, var_0.x, -662f), vec4<f32>(-1539f, global1.b.x, -1363f, 134f))))), false))));
    var_1 = Struct_4(Struct_2(global1.a.c.a, func_5(select(var_1.c.x << (0u % 32u), u_input.b.x | 1i, -1881f > var_0.x), var_1.a), Struct_1(~(~vec4<u32>(global1.a.d.a.x, 0u, global1.a.b.a.x, 66000u))), Struct_1(firstLeadingBit(vec4<u32>(16320u, 0u, 0u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(-var_0), vec4<i32>(func_4(var_3.yxz, func_5(global1.d, var_1.a), var_1.c.x >> (firstLeadingBit(4294967295u) % 32u)), 2147483647i, var_1.c.x, -68201i), var_1.d);
    global3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-var_1.c.x, u_input.b.x), vec2<i32>(_wgslsmith_div_i32(-u_input.b.x, global1.d), 44789i >> (func_3(Struct_3(vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.a, 20u)], var_0.x, 15975i)) % 32u))) | 2147483647i;
    global0 = global1.c.x;
    var var_4 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(abs(global1.c.yzy), firstTrailingBit(countOneBits(vec3<i32>(u_input.b.x, -1i, global1.d)))), -2147483647i), var_1.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(max(global1.b.x, var_0.x)), var_1.b.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1384f, _wgslsmith_f_op_f32(abs(var_0.x)), var_3.x), var_3.xxx))), i32(-1i) * -func_2(), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u << ((global1.a.b.a.x << (global1.a.d.a.x % 32u)) % 32u), u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.d.a.x, 57855u, 67031u, var_1.a.d.a.x), vec4<u32>(4294967295u, 1450u, 14698u, global1.a.b.a.x)) | var_1.a.d.a.x, 4294967295u), global1.a.a));
}

