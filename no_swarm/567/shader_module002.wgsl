struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec3<i32>;

var<private> global2: f32 = -1160f;

var<private> global3: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global1 = max(abs(-(~firstTrailingBit(vec3<i32>(u_input.a, 2147483647i, -18188i)))), ~(~(~vec3<i32>(u_input.b, global1.x, 0i) & vec3<i32>(-1i, u_input.a, 2147483647i))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-611f)))));
    let var_1 = vec3<u32>(~_wgslsmith_sub_u32(countOneBits(19251u) & (u_input.c & u_input.d.x), max(u_input.d.x, 19771u)), _wgslsmith_sub_u32(firstLeadingBit(13284u | (u_input.c ^ u_input.d.x)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d.x, 0u, u_input.c) >> (vec4<u32>(18154u, u_input.c, u_input.d.x, 1u) % vec4<u32>(32u)), ~vec4<u32>(u_input.d.x, 1u, u_input.c, 1u)), min(~3661u, 39477u))), u_input.d.x);
    let var_2 = _wgslsmith_sub_u32(94046u, ~reverseBits(~u_input.c ^ 52875u));
    var var_3 = abs(-vec4<i32>(min(_wgslsmith_clamp_i32(global1.x, 12156i, -1i), ~u_input.b), global1.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.x, -24750i, u_input.a, u_input.b)), min(vec4<i32>(global1.x, global1.x, global1.x, u_input.a), vec4<i32>(-1i, global1.x, u_input.a, global1.x))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 0i, global1.x, global1.x), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, u_input.b, 44935i, global1.x), vec4<i32>(1i, u_input.a, 1220i, -2147483647i)))));
    return ~(-1i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = func_3() >> (16212u % 32u);
    global2 = arg_0.c;
    var var_1 = arg_1.d;
    var var_2 = abs(vec3<u32>(~firstTrailingBit(0u), ~u_input.d.x, u_input.d.x) & select(~(~vec3<u32>(0u, arg_0.a.x, 0u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(650u, 59413u, arg_1.d), vec3<u32>(arg_1.a.x, 1u, arg_1.a.x)), vec3<u32>(arg_1.d, arg_1.d, 0u)), select(true, true, true) & true));
    var var_3 = false;
    return _wgslsmith_clamp_vec3_i32(~(~(-select(vec3<i32>(global1.x, -2147483647i, global1.x), vec3<i32>(-26976i, -9119i, global1.x), false))), ~(-vec3<i32>(2147483647i, max(-58421i, -1i), 20880i)), reverseBits((~vec3<i32>(global1.x, u_input.b, u_input.a) & vec3<i32>(-1i, global1.x, -1i)) >> (~(vec3<u32>(arg_1.d, 0u, arg_1.a.x) & vec3<u32>(4294967295u, arg_1.a.x, 0u)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global1 = -func_2(Struct_1(~(u_input.d ^ u_input.d), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(-659f, -1346f), 33285u), global0[_wgslsmith_index_u32(~max(_wgslsmith_div_u32(18437u, u_input.d.x), ~u_input.c), 17u)]);
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d.x, u_input.d.x), 17u)];
    let var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(1723f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * arg_0.x)), 103f))), var_0.c, var_0.a.x);
    var var_2 = Struct_1(~vec3<u32>(~19651u, countOneBits(u_input.d.x), ~16407u) ^ _wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, u_input.c, 44524u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(52728u, u_input.d.x, var_1.d), var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -906f) * _wgslsmith_f_op_f32(-var_1.c)), -1372f, countOneBits(_wgslsmith_sub_u32(~u_input.c, 53383u)) | var_1.a.x);
    var var_3 = ~(vec4<u32>(_wgslsmith_clamp_u32(60068u, 0u, _wgslsmith_div_u32(u_input.d.x, 1u)), 18911u, max(~u_input.d.x, ~var_0.d), ~(~0u)) << (abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(44900u, 0u, 0u, var_1.d)), ~vec4<u32>(9437u, var_1.a.x, var_1.d, u_input.d.x))) % vec4<u32>(32u)));
    return Struct_1(vec3<u32>(0u, var_0.d, max(28366u, abs(~var_3.x))), -1482f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.c)))), max(0u, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(47341u, 17u)];
    global2 = var_0.c;
    var var_1 = 50109i;
    global2 = _wgslsmith_f_op_f32(417f * _wgslsmith_f_op_f32(-var_0.b));
    let var_2 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.b, 934f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_div_f32(163f, 704f), _wgslsmith_f_op_f32(trunc(var_0.b))) + vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.b)), 114f, var_0.b))));
    let var_3 = select(~vec3<i32>(-9165i << (~u_input.c % 32u), u_input.b, ~global1.x), ~firstTrailingBit(max(vec3<i32>(u_input.a, u_input.b, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(-28555i, global1.x, 0i)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(144f, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-var_0.c)))) * var_0.c), ~var_3.x, min(vec2<i32>(5070i, _wgslsmith_clamp_i32(-2273i, var_3.x, -2147483647i) ^ select(var_3.x, -2147483647i, false)), select(~firstTrailingBit(vec2<i32>(-18954i, global1.x)), abs(vec2<i32>(u_input.a, u_input.b)), true)), _wgslsmith_dot_vec3_u32(countOneBits(var_0.a), (_wgslsmith_clamp_vec3_u32(var_2.a, var_2.a, var_0.a) << (~u_input.d % vec3<u32>(32u))) & var_0.a), var_0.a.xz);
}

