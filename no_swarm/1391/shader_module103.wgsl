struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = Struct_1(1u, i32(-1i) * -abs(arg_0), ~_wgslsmith_add_vec3_u32(u_input.b, ~(~u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(161f, _wgslsmith_f_op_f32(min(-994f, _wgslsmith_f_op_f32(f32(-1f) * -644f)))))), true);
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_1 = !(!select(!all(vec2<bool>(var_0.e, var_0.e)), !(var_0.d <= 690f), !var_0.e));
    let var_2 = -2147483647i;
    return !vec4<bool>(any(vec2<bool>(true, true)), !(!var_0.e), var_0.e, var_0.e);
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 4>();
    let var_0 = Struct_2(~(~_wgslsmith_mult_vec3_u32(min(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, u_input.e.x)), firstLeadingBit(u_input.b))));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_5(_wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i), Struct_4(true, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(19012u, u_input.e.x, 11902u, 3074u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.d, var_0.a.x, 4294967295u))), reverseBits(vec4<u32>(u_input.e.x, var_0.a.x, u_input.b.x, 0u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, 1u, u_input.d, 21929u), vec4<u32>(45019u, 4294967295u, 14916u, var_0.a.x))), global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(41760u, 4u)]));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.d.d)));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_1, 4>();
    let var_0 = ~4294967295u;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3())));
    let var_2 = arg_2.xxw;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1477f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(502f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(781f)), -1165f)))))));
    return global0[_wgslsmith_index_u32(select(0u, ~_wgslsmith_div_u32(0u, u_input.e.x), arg_0.a), 4u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_3(~(-9183i) < u_input.a);
    global0 = array<Struct_1, 4>();
    var var_1 = firstTrailingBit(4294967295u) >> (firstTrailingBit(17377u) % 32u);
    var_1 = 13301u;
    global0 = array<Struct_1, 4>();
    return func_2(Struct_3(func_1(-abs(arg_0.b)).x), func_2(Struct_3(any(select(vec3<bool>(false, true, arg_0.e), vec3<bool>(var_0.a, arg_0.e, var_0.a), true))), -2147483647i, _wgslsmith_div_vec4_i32(select(vec4<i32>(arg_0.b, u_input.a, u_input.a, -1i), -vec4<i32>(11298i, arg_0.b, arg_0.b, u_input.a), vec4<bool>(arg_0.e, true, arg_0.e, true)), select(vec4<i32>(u_input.a, arg_0.b, 1i, u_input.a) << (vec4<u32>(60919u, 0u, arg_0.a, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.a, arg_0.b, 26532i, u_input.a) ^ vec4<i32>(arg_0.b, arg_0.b, arg_0.b, 0i), arg_0.e)), arg_0.b).b, _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(38526i, -30920i, arg_0.b, arg_0.b) >> (~vec4<u32>(arg_0.c.x, 4294967295u, 34248u, u_input.b.x) % vec4<u32>(32u))), select(firstTrailingBit(vec4<i32>(18182i, u_input.a, arg_0.b, 41540i) | vec4<i32>(u_input.a, arg_0.b, arg_0.b, u_input.a)), vec4<i32>(arg_0.b, u_input.a, ~(-2147483647i), 1i), vec4<bool>(false, true, u_input.a >= arg_0.b, true))), u_input.a ^ ~(i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~(u_input.c.x & ~37215u), 99202u, 4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 30515u), ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 45334u), u_input.e) & max(u_input.e, vec2<u32>(u_input.c.x, u_input.c.x)))));
    var var_1 = Struct_1(119608u, u_input.a, ((_wgslsmith_mult_vec3_u32(vec3<u32>(5417u, u_input.c.x, var_0.x), var_0.xwy) ^ select(vec3<u32>(var_0.x, 51877u, 41986u), var_0.xzy, vec3<bool>(true, false, true))) >> (~vec3<u32>(u_input.d, u_input.b.x, u_input.c.x) % vec3<u32>(32u))) & var_0.www, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(699f - -946f)), any(func_1(-33778i)));
    let var_2 = Struct_4(true, vec4<u32>(~firstTrailingBit(~1u), countOneBits(~reverseBits(var_1.c.x)), countOneBits(50920u) >> (~_wgslsmith_clamp_u32(17423u, 0u, 0u) % 32u), 4294967295u), Struct_1(~1u, -7559i, max(var_0.www, vec3<u32>(_wgslsmith_div_u32(var_1.a, u_input.d), _wgslsmith_mult_u32(var_1.a, 46667u), u_input.e.x)), var_1.d, var_1.d >= _wgslsmith_f_op_f32(629f - _wgslsmith_f_op_f32(-var_1.d))), func_4(func_2(Struct_3(var_1.e != var_1.e), reverseBits(i32(-1i) * -225i), -vec4<i32>(var_1.b, 1i, -35934i, -2147483647i), _wgslsmith_div_i32(abs(var_1.b), 59635i)), var_1.d));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(step(334f, _wgslsmith_f_op_f32(1101f + var_2.d.d))), func_2(Struct_3(false), firstTrailingBit(-u_input.a) >> (_wgslsmith_mult_u32(~69437u, min(4294967295u, 0u)) % 32u), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1.b, var_1.b, 29849i), vec4<i32>(u_input.a, -2147483647i, var_2.c.b, 0i)), ~0i, u_input.a), 34840i).d);
    let var_4 = !vec2<bool>(false, all(!(!vec2<bool>(false, var_2.c.e))));
    var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_3.x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(-1014f)), 1322f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.d, 1170f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_2.c.d))))), select(vec2<bool>(var_2.c.e && var_4.x, var_2.d.b > 51767i), func_1(~var_2.d.b).xz, vec2<bool>(var_2.d.e && false, var_2.c.e)))));
    var var_5 = vec2<u32>(~(~(~(~79217u))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_2.d.d)), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.c.d)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1160f)))), 1000f), ~1i, var_1.b, _wgslsmith_clamp_vec4_i32(min(~vec4<i32>(var_1.b, -14427i, u_input.a, var_1.b), firstLeadingBit(vec4<i32>(0i, u_input.a, 2147483647i, 1i))), vec4<i32>(var_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, 2147483647i, 2147483647i), vec4<i32>(0i, var_1.b, 0i, 0i) | vec4<i32>(0i, -2147483647i, 3242i, var_2.c.b)), var_2.d.b, max(var_2.d.b, 0i) | var_2.c.b), firstTrailingBit(-abs(vec4<i32>(var_1.b, -1i, 1i, -1i)))));
}

