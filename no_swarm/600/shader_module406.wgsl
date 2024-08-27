struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec3<f32>(-140f, -834f, 1320f), 21058u, 1u);

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    global2 = Struct_1(vec3<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -947f) <= global1.b.x), any(global1.a.zz), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) + global2.b), vec3<bool>(global2.a.x & false, true, global2.a.x | global2.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(607f, -861f, global1.b.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-544f, 156f, -2225f), global2.b, false))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global2.b.x, global2.b.x) * global2.b))))), 4294967295u, ~1u);
    return _wgslsmith_f_op_vec3_f32(-global2.b);
}

fn func_2() -> vec4<i32> {
    global2 = Struct_1(!(!(!(!global1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b))))), 17089u, firstLeadingBit(min(4294967295u, u_input.c.x)) ^ (global2.d ^ ~firstTrailingBit(850u)));
    let var_0 = select(~max(~vec2<i32>(38908i, u_input.a.x), vec2<i32>(-62799i, 1i) ^ vec2<i32>(u_input.b, 19243i)) ^ ~u_input.a, u_input.a, global2.a.xx);
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1.b))))))), u_input.c.x, abs(41169u));
    var var_1 = Struct_1(select(global1.a, !vec3<bool>(global2.a.x, global2.b.x <= global1.b.x, global1.a.x), global1.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1.b.x, -399f), _wgslsmith_f_op_f32(select(618f, global2.b.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -1847f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global1.b)), global2.b, (global2.c <= 39206u) || global1.a.x))), ~15690u, ~4294967295u);
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(327f, global2.b.x, global2.b.x))))))), abs(var_1.d), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x & global2.c, _wgslsmith_mult_u32(1u, 4294967295u), 19693u, ~0u), ~vec4<u32>(global2.d, global1.d, u_input.c.x, 39174u)), global1.d));
    return vec4<i32>(firstLeadingBit(-var_0.x), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i) << (u_input.c % vec2<u32>(32u)), -(~u_input.a))), var_0.x, _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(var_0.x, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.b, var_0.x, u_input.b), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.x, 3341i, -2147483647i), vec4<i32>(45728i, u_input.a.x, var_0.x, 1i)), abs(vec4<i32>(u_input.d, 0i, 2147483647i, u_input.a.x))))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    global0 = true;
    var var_0 = -(~u_input.a.x);
    var_0 = ~_wgslsmith_add_i32(-37266i, -11762i);
    let var_1 = _wgslsmith_mult_vec4_i32(func_2(), _wgslsmith_div_vec4_i32(vec4<i32>(-838i, countOneBits(u_input.a.x), u_input.a.x, -u_input.d << (u_input.c.x % 32u)), vec4<i32>(35381i, _wgslsmith_sub_i32(-90295i >> (u_input.c.x % 32u), -2147483647i), abs(~(-7992i)), -1i)));
    let var_2 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b)), global2.b))), 25054u, u_input.c.x);
    return ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, global2.d), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(0u, u_input.c.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global2.c), vec2<u32>(global2.d, 23229u) ^ u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a.x || true;
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global2.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-477f, global1.b.x, -242f) + _wgslsmith_f_op_vec3_f32(global2.b * vec3<f32>(-862f, -1461f, global2.b.x)))))), 40148u, func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(global1.d), global2.c), abs(vec2<u32>(global1.d, 0u))), select(true, true, global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(398f, 250f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.x)) + -470f)), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1149f - global2.b.x)), global2.b.x)));
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-16899i, u_input.b, abs(min(u_input.b, -7150i))), -vec3<i32>(u_input.d, u_input.b, i32(-1i) * -1i) >> (~(~vec3<u32>(42880u, global1.d, 4294967295u)) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(var_0.b.yx))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1.b.x) - vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + 1216f), _wgslsmith_f_op_f32(1509f + var_0.b.x))))));
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, countOneBits(vec2<u32>(_wgslsmith_mod_u32(global1.d, 23207u), func_1(u_input.c.x, global1.a.x, var_0.b.x, vec3<f32>(global2.b.x, var_0.b.x, global1.b.x))))), vec2<u32>(~(~_wgslsmith_sub_u32(global1.d, global2.d)), max(select(var_0.c, ~global1.d, all(vec4<bool>(true, true, true, false))), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(var_1.xz), u_input.a), var_1.x), _wgslsmith_mod_i32(~(-var_1.x), var_1.x), 0i, ~reverseBits(~u_input.a.x)), 32484u, 14317u);
}

