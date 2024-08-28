struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(1u, 0u, 4294967295u, 11848u), vec4<u32>(33243u, 60029u, 4294967295u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    global2 = array<vec4<u32>, 2>();
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-642f, global1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-182f, 149f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -433f) + vec2<f32>(-911f, -2035f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1508f, global1.x))))), vec2<f32>(global1.x, -293f), any(!vec3<bool>(arg_1, arg_1, true))))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f + 1f))));
    let var_0 = false;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(396f, -184f, -272f, 430f), vec4<f32>(global1.x, global1.x, global1.x, -1879f)))))), vec2<i32>(19596i ^ ~(-u_input.b), -abs(-8165i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -16858i, u_input.b), select(vec3<i32>(43742i, -32155i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(u_input.b, u_input.b, -1i), true)) << (~max(44304u >> (u_input.a % 32u), u_input.a) % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-931f, 1000f))))))));
    var var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(abs(-126f));
    var var_4 = 41066u;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 409f, -1000f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1383f, global1.x, var_1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(730f, 997f, global1.x, -677f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, global1.x, 490f, 724f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 832f, global1.x, global1.x) * vec4<f32>(var_1.x, var_1.x, -772f, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, global1.x, global1.x, 493f)))))))));
}

fn func_2(arg_0: vec3<u32>) -> vec2<i32> {
    let var_0 = 115292u;
    global2 = array<vec4<u32>, 2>();
    global0 = u_input.b;
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(597f)) - global1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2569f * global1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), global1.x)), global1.x), ~firstLeadingBit(vec2<i32>(u_input.b, -37188i)) << (vec2<u32>(12653u, max(arg_0.x, var_0)) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), -vec2<i32>(-22710i, 1i)), 1585f, func_1(func_1(-vec2<i32>(u_input.b, u_input.b), all(vec3<bool>(true, true, false))).b >> (vec2<u32>(arg_0.x, ~var_0) % vec2<u32>(32u)), true));
    let var_2 = Struct_2(func_1(vec2<i32>(-var_1.d.b.x, 10195i), true), Struct_1(var_1.d.a, var_1.a.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) + _wgslsmith_f_op_f32(737f - global1.x)) + var_1.c))), var_1.a);
    return countOneBits(~var_1.b.b);
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = Struct_1(arg_0.a.a, arg_0.b.b);
    let var_1 = 52037u;
    let var_2 = func_1(select(_wgslsmith_mod_vec2_i32(arg_0.d.b, arg_0.a.b) | var_0.b, arg_0.a.b, false), any(select(vec3<bool>(false, u_input.a <= 1u, all(vec4<bool>(false, true, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true))).a.xx;
    global0 = arg_0.a.b.x;
    var var_3 = var_0.a.x;
    return ~(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~func_4(Struct_2(func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 61597i), vec2<i32>(1i, u_input.b)), all(vec4<bool>(false, false, false, false))), func_1(min(vec2<i32>(u_input.b, u_input.b), vec2<i32>(492i, u_input.b)), true), -369f, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-299f, 1049f, -708f, global1.x) + vec4<f32>(global1.x, -668f, -298f, -1216f)), func_2(vec3<u32>(u_input.a, 4294967295u, 4294967295u))))), 2u)];
    let var_1 = func_1(-(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(3632i, u_input.b))) >> (abs(vec2<u32>(var_0.x, u_input.a)) % vec2<u32>(32u))), true || ((12587u | ~u_input.a) != ~64709u));
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(-251f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(var_1.a.x)))), var_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2437f)))), ~func_2(max(var_0.xzx, var_0.yxy))), Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 855f, global1.x, 640f) + vec4<f32>(495f, -315f, -1442f, global1.x))), var_1.a, vec4<bool>(true, true, true, true))), var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)), func_1(var_1.b, true));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), ~var_2.d.b);
    global2 = array<vec4<u32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), 14486i), 1i, _wgslsmith_div_i32(var_2.a.b.x, -79584i), u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -365f), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1804f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1055f, var_2.b.a.x) * var_1.a.x) + var_2.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), max(select(-countOneBits(vec4<i32>(var_3.b.x, u_input.b, u_input.b, -1i)), vec4<i32>(~2147483647i, 1i, u_input.b, 0i), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false))), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-51799i, var_2.d.b.x, u_input.b, -22521i) ^ vec4<i32>(u_input.b, -1i, -12016i, u_input.b), vec4<i32>(var_3.b.x, -38706i, -26302i, var_3.b.x)))), vec4<u32>(abs(var_0.x), ~abs(var_0.x), 4294967295u, ~(~1u << (func_4(Struct_2(var_2.d, var_3, 260f, var_1)) % 32u))));
}

