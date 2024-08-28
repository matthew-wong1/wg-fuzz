struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 22>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<f32>(-1000f, -1097f, 1544f, 315f), vec2<u32>(4294967295u, 0u));

var<private> global3: array<vec4<i32>, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec3<i32>(~select(_wgslsmith_mod_i32(-2147483647i, abs(-2147483647i)), countOneBits(~13907i), !global2.a.x), 1i, i32(-1i) * -1i);
    global1 = array<Struct_1, 22>();
    global0 = firstTrailingBit(_wgslsmith_div_vec3_u32(u_input.b, u_input.b >> (_wgslsmith_add_vec3_u32(vec3<u32>(79805u, global0.x, u_input.a.x), vec3<u32>(global0.x, global0.x, u_input.a.x) >> (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = !global2.a.x;
    var_1 = !(!(!all(select(vec2<bool>(false, global2.a.x), global2.a, vec2<bool>(false, true)))));
    return select(~(~1u), 93334u, true);
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> f32 {
    var var_0 = !(!arg_1);
    let var_1 = global1[_wgslsmith_index_u32(select(_wgslsmith_add_u32(countOneBits(~(~4294967295u)), 0u), select(func_3(), ~0u, false), true), 22u)];
    var var_2 = select(vec3<bool>(!all(select(vec4<bool>(false, true, arg_1.x, global2.a.x), vec4<bool>(false, false, false, var_1.a.x), var_0.x)), true | all(!vec2<bool>(true, var_1.a.x)), global2.a.x), !vec3<bool>(!arg_1.x & !var_1.a.x, true, global2.c.x >= abs(global2.c.x)), true);
    var_0 = vec3<bool>(!(all(!vec3<bool>(global2.a.x, var_1.a.x, var_1.a.x)) | all(!vec3<bool>(false, true, var_1.a.x))), any(vec4<bool>(false, select(!arg_1.x, global2.a.x && var_1.a.x, any(vec2<bool>(global2.a.x, var_1.a.x))), !all(arg_1), true)), var_1.a.x);
    let var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0, ~4294967295u), 43926u), 14u)], select(vec4<i32>(reverseBits(-16776i), reverseBits(-2147483647i), ~1355i, -2147483647i), -vec4<i32>(-1335i, 2147483647i, 2147483647i, -27466i), !(!vec4<bool>(global2.a.x, true, arg_1.x, global2.a.x)))), -_wgslsmith_mult_i32(0i << (1u % 32u), 26872i), 1i);
    return _wgslsmith_f_op_f32(-398f - _wgslsmith_f_op_f32(round(-1934f)));
}

fn func_1(arg_0: vec3<i32>) -> vec3<i32> {
    let var_0 = global2.b.x;
    var var_1 = vec3<bool>(any(!select(!vec3<bool>(true, global2.a.x, global2.a.x), select(vec3<bool>(global2.a.x, global2.a.x, false), vec3<bool>(global2.a.x, false, false), vec3<bool>(true, true, false)), !vec3<bool>(false, global2.a.x, global2.a.x))), any(select(select(global2.a, vec2<bool>(global2.a.x, true), false), select(vec2<bool>(global2.a.x, true), !vec2<bool>(global2.a.x, false), global2.a), global2.a.x)), global2.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.wzz), _wgslsmith_f_op_vec3_f32(round(global2.b.wxw))) + _wgslsmith_div_vec3_f32(vec3<f32>(-243f, global2.b.x, 433f), _wgslsmith_f_op_vec3_f32(-global2.b.yxx))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -949f), _wgslsmith_f_op_f32(func_2(~u_input.a.x, !vec3<bool>(global2.a.x, global2.a.x, global2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))))));
    var var_3 = var_2.xy;
    var var_4 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(max(-2147483647i, arg_0.x), arg_0.x), abs(-1i), -26160i), arg_0), -arg_0 >> (vec3<u32>(_wgslsmith_mod_u32(~45680u, 4294967295u), _wgslsmith_mult_u32(9747u, global2.c.x) & (u_input.b.x << (0u % 32u)), u_input.b.x) % vec3<u32>(32u)));
    return vec3<i32>(1i, var_4.x, arg_0.x ^ _wgslsmith_mod_i32(~arg_0.x, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 14>();
    var var_0 = func_1(~(-(~(~vec3<i32>(2147483647i, 0i, 14050i)))));
    var var_1 = Struct_1(!(!global2.a), vec4<f32>(_wgslsmith_div_f32(254f, _wgslsmith_f_op_f32(select(global2.b.x, _wgslsmith_f_op_f32(select(global2.b.x, global2.b.x, true)), global2.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global2.b.x, global2.b.x)), _wgslsmith_f_op_f32(exp2(global2.b.x)))), global2.b.x, _wgslsmith_f_op_f32(floor(765f))), vec2<u32>(global2.c.x, 1u));
    global0 = _wgslsmith_sub_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(min(1u, min(global2.c.x, 10829u)), var_1.c.x, 59797u)));
    global2 = Struct_1(vec2<bool>(true, !(var_0.x < firstTrailingBit(var_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(var_1.b)))), global2.c);
    global0 = _wgslsmith_mult_vec3_u32(select(min(_wgslsmith_sub_vec3_u32(select(u_input.b, vec3<u32>(31669u, u_input.a.x, 13586u), false), u_input.b & u_input.b), vec3<u32>(~var_1.c.x, _wgslsmith_clamp_u32(33922u, 4294967295u, 15161u), global2.c.x >> (var_1.c.x % 32u))), ~u_input.b >> (max(vec3<u32>(4294967295u, global2.c.x, 15040u), select(vec3<u32>(1u, 34697u, global0.x), vec3<u32>(83523u, u_input.b.x, 4294967295u), vec3<bool>(false, var_1.a.x, false))) % vec3<u32>(32u)), vec3<bool>(abs(var_1.c.x) < max(global0.x, 1u), global2.a.x, false)), ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 7166u, 38473u), vec3<u32>(48270u, u_input.b.x, var_1.c.x)) | ~vec3<u32>(global0.x, 1u, 7909u), ~vec3<u32>(global2.c.x, var_1.c.x, 0u)));
    let var_2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_1.b), var_0.x);
}

