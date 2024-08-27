struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 2541u;

var<private> global1: array<f32, 17> = array<f32, 17>(-1000f, 264f, 852f, -1853f, -563f, 1187f, -800f, -1193f, -747f, 1685f, 1268f, -671f, 148f, -1440f, -157f, -273f, 210f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = arg_0.xw;
    global0 = 43279u;
    var var_1 = -(~1i);
    let var_2 = true;
    let var_3 = Struct_1(vec4<i32>(0i, 15564i, ~(arg_0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, arg_1.a.x), vec2<u32>(arg_1.b, u_input.b.x)) % 32u)), _wgslsmith_add_i32(1i >> (arg_3.c.x % 32u), -arg_1.e) | _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_3.a.x, u_input.a), arg_3.a.xx)), !arg_3.e, _wgslsmith_mod_vec3_u32(arg_3.c >> (~(~arg_3.c) % vec3<u32>(32u)), arg_3.c), -(~vec2<i32>(_wgslsmith_div_i32(arg_1.e, u_input.a), _wgslsmith_div_i32(0i, arg_3.d.x))), any(!vec2<bool>(any(vec2<bool>(false, false)), false)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.b, 17u)], 1212f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-295f + -576f), _wgslsmith_div_f32(-253f, arg_1.d)))))));
}

fn func_2() -> StorageBuffer {
    global0 = u_input.b.x & _wgslsmith_div_u32(u_input.b.x, 35496u);
    let var_0 = reverseBits(countOneBits(14244i));
    let var_1 = Struct_2(reverseBits(vec2<u32>(max(1u, 4294967295u) ^ countOneBits(u_input.b.x), 28332u)), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a), Struct_2(u_input.b, 0u, vec4<f32>(-1747f, 287f, global1[_wgslsmith_index_u32(4294967295u, 17u)], 477f), global1[_wgslsmith_index_u32(u_input.b.x, 17u)], u_input.a), 1u, Struct_1(vec4<i32>(3554i, -1i, -2147483647i, 0i), false, vec3<u32>(u_input.b.x, 41335u, u_input.b.x), vec2<i32>(21734i, 0i), true))), _wgslsmith_f_op_f32(func_3(vec4<i32>(var_0, var_0, var_0, -2147483647i), Struct_2(vec2<u32>(4294967295u, 0u), u_input.b.x, vec4<f32>(151f, 2586f, 2420f, global1[_wgslsmith_index_u32(0u, 17u)]), global1[_wgslsmith_index_u32(1u, 17u)], 2147483647i), _wgslsmith_mod_u32(u_input.b.x, 86015u), Struct_1(vec4<i32>(u_input.a, u_input.a, 0i, 2147483647i), true, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec2<i32>(var_0, u_input.a), false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), countOneBits(vec3<u32>(u_input.b.x, 18861u, 1u))), 17u)], 757f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(9148u, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)], true)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 17u)] * global1[_wgslsmith_index_u32(30608u, 17u)]), true)), -387f)) - global1[_wgslsmith_index_u32(~u_input.b.x, 17u)]), -1643i);
    let var_2 = ~u_input.a;
    global0 = firstTrailingBit(~(~_wgslsmith_clamp_u32(u_input.b.x, 1u, select(63973u, 57646u, false))));
    return StorageBuffer(~max(firstLeadingBit(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), firstLeadingBit(~vec3<u32>(49058u, var_1.a.x, 61584u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.c.zyx) - vec3<f32>(_wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 17u)]), true)), global1[_wgslsmith_index_u32(u_input.b.x, 17u)], _wgslsmith_f_op_f32(exp2(var_1.d)))), 0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f)), _wgslsmith_f_op_f32(max(672f, _wgslsmith_f_op_f32(exp2(var_1.d)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.x, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]) - -571f))), vec4<u32>(~(~(~4294967295u)), var_1.b, _wgslsmith_mult_u32(~var_1.b, 1u), 0u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> StorageBuffer {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~1u, 5224u, 1u, ~0u) ^ vec4<u32>(max(1u, u_input.b.x), 1u, 61471u, max(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_add_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(54108u, 77959u, 48811u, 1u), vec4<u32>(31079u, u_input.b.x, 3905u, 0u)))));
    global0 = _wgslsmith_dot_vec3_u32(~(~var_0.wxy), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 30297u, u_input.b.x), vec3<u32>(u_input.b.x, var_0.x, var_0.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 4294967295u, u_input.b.x), vec3<u32>(var_0.x, 1u, u_input.b.x), var_0.zyy) % vec3<u32>(32u))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, var_0.x, u_input.b.x) >> (var_0.zwy % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u)))));
    let var_1 = true;
    let var_2 = min(-2147483647i, _wgslsmith_dot_vec3_i32(-abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-64016i, 4112i, u_input.a), vec3<i32>(u_input.a, 2147483647i, 0i))), countOneBits(-max(vec3<i32>(u_input.a, 4207i, u_input.a), vec3<i32>(u_input.a, 1i, -1i)))));
    global0 = var_0.x;
    global0 = var_0.x;
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(vec3<u32>(var_0.x, ~(~4926u), 1u)), select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1 || (56338i > var_2), var_1 != select(var_1, false, true), var_1), var_1));
}

