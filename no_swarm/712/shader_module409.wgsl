struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: Struct_4;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_3, 7>();
    let var_0 = global1.b;
    let var_1 = _wgslsmith_add_i32(abs(_wgslsmith_sub_i32(u_input.d.x, reverseBits(u_input.d.x | u_input.a))), firstTrailingBit(u_input.c.x));
    global0 = array<Struct_3, 7>();
    var var_2 = Struct_3(_wgslsmith_mult_u32(~(~_wgslsmith_mod_u32(global1.a.a, u_input.b.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(76u, 27385u, 44331u, global1.a.a)), vec4<u32>(global1.c.x, u_input.e.x, global1.a.b.x, 38295u) & ~global1.a.b)), _wgslsmith_sub_vec4_u32(~global1.a.b, vec4<u32>(u_input.e.x, 4294967295u, 4294967295u, select(4294967295u & u_input.b.x, _wgslsmith_div_u32(1u, u_input.b.x), var_1 >= var_1))));
    return ~(~_wgslsmith_clamp_u32(var_2.a, global1.a.a, ~_wgslsmith_clamp_u32(0u, global1.c.x, 28664u)));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    var var_0 = reverseBits(global1.c);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -599f), global1.d.a, arg_2.a);
    var var_2 = 1u;
    var var_3 = Struct_3(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-769f - 1116f)))), Struct_1(-1073f)), select(_wgslsmith_div_vec4_u32(~(~global1.a.b), firstTrailingBit(vec4<u32>(1u, 72976u, 54623u, var_0.x) << (vec4<u32>(29498u, 8354u, global1.c.x, var_0.x) % vec4<u32>(32u)))), vec4<u32>(0u, (u_input.e.x << (19912u % 32u)) ^ _wgslsmith_add_u32(34922u, var_0.x), ~u_input.b.x, min(~u_input.b.x, var_0.x)), true));
    var_0 = vec3<u32>(4294967295u << (_wgslsmith_mod_u32(~var_3.b.x, ~62711u) % 32u), _wgslsmith_dot_vec2_u32(var_3.b.wz, firstLeadingBit(~_wgslsmith_mult_vec2_u32(var_3.b.zw, global1.a.b.zy))), ~abs(~var_3.b.x));
    return ~16914i;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = func_2(-abs(-(~(-19335i))), arg_0.wx, Struct_1(1f));
    var_0 = -61577i << (abs(global1.a.a) % 32u);
    var var_1 = all(vec2<bool>(select(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(trunc(-1695f)) >= _wgslsmith_f_op_f32(-arg_0.x), true), false));
    global1 = Struct_4(Struct_3(24452u, ~firstTrailingBit(vec4<u32>(1u, u_input.e.x, 0u, 23903u))), arg_0.zz, (firstLeadingBit(~global1.a.b.wyy) ^ _wgslsmith_clamp_vec3_u32(global1.a.b.wyz >> (vec3<u32>(u_input.e.x, global1.c.x, u_input.e.x) % vec3<u32>(32u)), global1.a.b.wzx, ~vec3<u32>(1u, 4294967295u, global1.c.x))) ^ vec3<u32>(_wgslsmith_clamp_u32(~global1.c.x, 4294967295u, _wgslsmith_mod_u32(28237u, u_input.b.x)), _wgslsmith_add_u32(u_input.e.x, 1u) | u_input.e.x, 0u), global1.d);
    var var_2 = reverseBits(~_wgslsmith_div_vec2_i32(u_input.d.zy & u_input.d.xx, u_input.d.yx) | ~min(_wgslsmith_div_vec2_i32(u_input.c, u_input.d.xz), abs(vec2<i32>(u_input.d.x, u_input.c.x))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, global1.b.x) - vec3<f32>(global1.d.a, 1000f, global1.d.a))))), Struct_1(_wgslsmith_f_op_f32(746f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)))), -_wgslsmith_div_i32(u_input.c.x, var_2.x), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1358f, -409f, global1.b.x, global1.d.a), vec4<f32>(-1518f, global1.b.x, -1357f, global1.b.x))) - vec4<f32>(global1.d.a, global1.b.x, global1.d.a, global1.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(global1.d.a + global1.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1083f))), 135f, 736f))));
    global1 = Struct_4(Struct_3(countOneBits(var_0.d), global1.a.b), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.a + -1375f), -665f), -1592f), ~vec3<u32>(u_input.b.x, 53788u, 62383u), Struct_1(_wgslsmith_f_op_f32(trunc(1293f))));
    var_0 = Struct_2(var_0.a, func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.d.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-658f - 554f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(func_1(vec4<f32>(-2134f, 1021f, global1.d.a, -2069f)).b.a * var_0.b.a))).b, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.c.x, 1i, var_0.c, u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.d.x, var_0.c, 20218i), vec4<i32>(-17513i, var_0.c, 1i, -19292i))), -vec4<i32>(var_0.c, -1i, u_input.a, u_input.a)), ~firstLeadingBit(vec4<i32>(u_input.d.x, -2147483647i, 2147483647i, var_0.c))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, var_0.d, global1.a.b.x, u_input.e.x), vec4<u32>(global1.c.x, 55793u, global1.a.b.x, 22513u) | vec4<u32>(4294967295u, 376u, u_input.e.x, 76622u)), vec4<u32>(0u << (global1.c.x % 32u), var_0.d, _wgslsmith_mod_u32(u_input.b.x, var_0.d), ~u_input.e.x)), var_0.d, u_input.b.x));
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -753f, var_0.a.x, -213f) - vec4<f32>(-1051f, 670f, 616f, var_0.a.x))))))));
    let var_1 = Struct_3(abs(global1.c.x), global1.a.b);
    let var_2 = 887f;
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(691f + -1329f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2, var_2)) - global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -528f)), var_2)))).b;
    var_0 = func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(137f, var_0.b.a, 176f, var_2) - vec4<f32>(var_0.b.a, var_2, -275f, 241f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a, global1.d.a, 456f, 360f), vec4<f32>(265f, var_0.b.a, 1154f, global1.d.a), vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-907f, var_2, var_0.a.x, var_0.a.x), vec4<f32>(global1.d.a, var_0.a.x, 505f, -629f)))), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(-u_input.d.x >> (34565u % 32u), ~reverseBits(2147483647i), u_input.c.x)), var_2);
}

