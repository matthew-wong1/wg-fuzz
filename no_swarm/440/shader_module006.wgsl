struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(0u, 7075u), vec2<u32>(62619u, 4294967295u), vec2<u32>(8859u, 4294967295u), vec2<u32>(4294967295u, 88907u), vec2<u32>(4294967295u, 7560u), vec2<u32>(60657u, 19341u), vec2<u32>(0u, 0u), vec2<u32>(76336u, 4294967295u), vec2<u32>(1u, 10528u), vec2<u32>(0u, 27786u), vec2<u32>(12480u, 11439u), vec2<u32>(35047u, 72132u), vec2<u32>(14112u, 1u), vec2<u32>(23319u, 39820u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(14168u, 15249u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_0 = -select(u_input.c, _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 1i, -17778i, u_input.b.x)), firstLeadingBit(u_input.c)), vec4<bool>(select(true, true, true), 0i >= u_input.c.x, true, !(u_input.a.x != 0u)));
    let var_1 = Struct_2(64722u, max(u_input.c.zyy, -(~firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), reverseBits(~vec2<i32>(var_0.x, var_0.x ^ 2147483647i)));
    let var_2 = ~vec4<i32>(countOneBits(var_1.b.x), firstLeadingBit(_wgslsmith_sub_i32(0i, var_1.c.x)) >> (~_wgslsmith_add_u32(0u, var_1.a) % 32u), 27518i, 36575i);
    return -1000f;
}

fn func_2() -> Struct_3 {
    global0 = array<vec2<u32>, 17>();
    global0 = array<vec2<u32>, 17>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(757f * 435f), _wgslsmith_f_op_f32(ceil(-1000f)), 1000f);
    var var_1 = Struct_3(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(54557u | u_input.a.x, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(u_input.d, u_input.a.x)), ~u_input.a) ^ u_input.a.x), 17u)], Struct_1(u_input.c, u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) * _wgslsmith_f_op_f32(ceil(-1188f))), _wgslsmith_f_op_f32(floor(122f)), _wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(u_input.c.ywx, vec3<i32>(-30997i, 2147483647i, u_input.c.x))), _wgslsmith_sub_vec3_i32(u_input.b.wyz, u_input.c.yww | vec3<i32>(u_input.c.x, 36911i, u_input.c.x)))), u_input.b.x, select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, false, true), true), all(vec2<bool>(true, true)) & true), vec3<bool>(true, true, true), vec3<bool>(!select(false, true, true), select(all(vec3<bool>(true, true, false)), all(vec3<bool>(true, true, false)), false), false)));
    var var_2 = Struct_2(u_input.a.x << ((u_input.d << ((var_1.b.x & 1u) % 32u)) % 32u), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(29449i), 15339i, ~0i), countOneBits(~var_1.c.e))), vec2<i32>(2147483647i, 0i));
    return Struct_3(true, ~var_1.b, Struct_1(firstLeadingBit(firstLeadingBit(u_input.c >> (vec4<u32>(1u, u_input.d, u_input.d, 4294967295u) % vec4<u32>(32u)))), 2147483647i, _wgslsmith_f_op_f32(exp2(var_1.c.c)), _wgslsmith_f_op_f32(step(1911f, _wgslsmith_f_op_f32(-var_1.c.d))), vec3<i32>(i32(-1i) * -22370i, abs(-39407i), u_input.c.x)), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, u_input.c.x), 56903i) << (17272u % 32u), var_1.e);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> bool {
    let var_0 = func_2().c.a.xz;
    let var_1 = func_2();
    var var_2 = Struct_2(u_input.a.x, ~(vec3<i32>(-1i) * -(~vec3<i32>(arg_2.d, var_1.d, 12920i))), var_0);
    var var_3 = Struct_2(25739u, arg_2.c.a.yyz, func_2().c.e.xy);
    let var_4 = func_2().c;
    return true | !(!all(arg_1));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-740f, 306f) + vec2<f32>(-1672f, arg_1.d)))) * _wgslsmith_f_op_vec2_f32(arg_0.wz - arg_0.wy))));
    let var_1 = false;
    var var_2 = func_4(select(select(vec3<bool>(var_1, any(vec4<bool>(var_1, false, false, true)), -2147483647i > arg_2), vec3<bool>(any(vec2<bool>(false, true)), !var_1, all(vec3<bool>(var_1, var_1, var_1))), 0i > arg_2), !vec3<bool>(!var_1, var_1 != false, any(vec2<bool>(var_1, var_1))), -2147483647i == (_wgslsmith_mult_i32(u_input.c.x, arg_2) ^ u_input.c.x)), select(vec4<bool>(true != any(vec4<bool>(var_1, var_1, true, true)), true, !any(vec3<bool>(var_1, false, false)), !any(vec4<bool>(var_1, false, false, false))), !(!(!vec4<bool>(var_1, var_1, var_1, false))), vec4<bool>(false, all(vec2<bool>(true, var_1)), false, true)), func_2());
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1166f, _wgslsmith_f_op_f32(max(arg_1.c, _wgslsmith_f_op_f32(ceil(1128f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1193f, _wgslsmith_f_op_f32(select(func_2().c.d, _wgslsmith_f_op_f32(1000f - arg_1.d), func_2().a)))));
    var var_4 = Struct_2(_wgslsmith_dot_vec2_u32((vec2<u32>(0u, 0u) ^ vec2<u32>(u_input.d, 1u)) << (max(u_input.a, abs(vec2<u32>(1u, 7484u))) % vec2<u32>(32u)), u_input.a), _wgslsmith_add_vec3_i32(abs(~vec3<i32>(-2147483647i, 17517i, -19450i)), vec3<i32>(-2147483647i, (arg_1.e.x ^ u_input.b.x) << (~14445u % 32u), arg_2)), max(u_input.c.wy, u_input.c.xz));
    return Struct_2(_wgslsmith_add_u32(1u, 0u), -(vec3<i32>(abs(2147483647i), countOneBits(-2147483647i), _wgslsmith_add_i32(u_input.b.x, -59587i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(15825u, 4065u, 365u), ~vec3<u32>(1u, 60619u, var_4.a)) % vec3<u32>(32u))), firstTrailingBit(~firstLeadingBit(-u_input.b.xx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(-(~(~u_input.b)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, -2147483647i)), -vec2<i32>(u_input.c.x, 1i)), u_input.b.x, -firstTrailingBit(u_input.c.x)), -1755f, _wgslsmith_f_op_f32(step(347f, -851f)), vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, -11636i, 2147483647i)), u_input.b.x);
    var_0 = Struct_2(countOneBits(~4294967295u), vec3<i32>(-reverseBits(1i ^ u_input.b.x), var_0.b.x, _wgslsmith_div_i32(1i, abs(23448i)) >> (firstTrailingBit(~320u) % 32u)), u_input.b.yx);
    let var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(677f, 1216f)), _wgslsmith_f_op_f32(ceil(698f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(250f, 497f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-295f, 150f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(760f, 399f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(604f, 755f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -946f) - vec2<f32>(-584f, 1450f)), func_2().e.x)))))), -u_input.c.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-876f * 771f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(f32(-1f) * -431f)), true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(f32(-1f) * -513f))));
}

