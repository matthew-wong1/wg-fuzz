struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), 2419f, -1166f), true));
    var var_2 = u_input.b.zy;
    let var_3 = Struct_2(u_input.b.x ^ reverseBits(~var_2.x));
    var_2 = vec2<u32>(_wgslsmith_div_u32(var_3.a, var_2.x) >> (u_input.b.x % 32u), var_3.a);
    return -1i;
}

fn func_3() -> f32 {
    var var_0 = vec4<bool>(true, ~abs(u_input.c) == ~abs(u_input.d.x), any(vec4<bool>(false, !select(false, true, true), true, true)), !(max(4294967295u, _wgslsmith_sub_u32(u_input.c, 5924u)) > ~1u));
    var var_1 = Struct_2(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mult_u32(~777u, _wgslsmith_clamp_u32(u_input.b.x, 58680u, u_input.d.x)) & reverseBits(countOneBits(31807u)), max(53687u, max(u_input.d.x, 53683u)) | ~(~u_input.c)));
    let var_2 = var_0.yy;
    var_0 = !select(select(!vec4<bool>(var_2.x, var_0.x, var_2.x, false), !vec4<bool>(var_2.x, false, false, true), all(var_0.xyz)), vec4<bool>(any(vec2<bool>(false, var_2.x)), true, true, all(!vec3<bool>(false, var_0.x, true))), true);
    var_0 = select(!vec4<bool>(~22758u == u_input.b.x, true, true, var_0.x), select(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_0.x, false, true, var_0.x))), !(!vec4<bool>(false, var_2.x, true, var_0.x)), false), false);
    return 1000f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: u32) -> i32 {
    var var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x));
    let var_1 = Struct_4(2558i, _wgslsmith_mult_vec2_u32(u_input.d.xx, ~(~vec2<u32>(arg_3, u_input.d.x))), abs(reverseBits(select(41793i ^ u_input.e.x, min(3676i, -44502i), true))), arg_0);
    var_0 = -500f;
    var_0 = _wgslsmith_f_op_f32(func_3());
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i, -(~((26544i | u_input.a.x) << (u_input.c % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(u_input.e.x), u_input.a.x, ~44652i, _wgslsmith_add_i32(42324i, -2147483647i)) >> ((u_input.d & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 43290u, 63250u, u_input.c), u_input.d, u_input.d)) % vec4<u32>(32u)), vec4<i32>(~_wgslsmith_mult_i32(u_input.e.x, -13064i), max(func_1(), 2147483647i), _wgslsmith_div_i32(-u_input.e.x, 1i), u_input.a.x << (~0u % 32u))), 1i);
    var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, countOneBits(u_input.a.x), ~var_0.x, ~var_0.x), vec4<i32>(-(~var_0.x), select(-2147483647i, firstLeadingBit(10261i), false), 2147483647i, u_input.e.x ^ _wgslsmith_mod_i32(1i, var_0.x)), -vec4<i32>(_wgslsmith_add_i32(1i, -1i), 0i, ~31363i, func_2(Struct_1(vec3<f32>(-1917f, -848f, -1370f)), vec2<bool>(true, true), vec4<bool>(true, true, true, true), u_input.c))), -(~(~(~vec4<i32>(u_input.e.x, 21942i, u_input.a.x, 0i)))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-425f * 746f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f + -1000f))))));
    let var_2 = Struct_5(!vec4<bool>(true, select(true, true, true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false))), false), 4294967295u, ~vec3<u32>(~abs(u_input.c), u_input.c, select(firstTrailingBit(4294967295u), ~4294967295u, all(vec4<bool>(false, false, false, true)))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(690f, _wgslsmith_div_f32(280f, -1037f), _wgslsmith_f_op_f32(-437f - -597f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-237f * -1841f))))));
    var_1 = -1000f;
    let var_3 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~(~2707i), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-179f, 758f, true)) * _wgslsmith_f_op_f32(round(-185f))))));
}

