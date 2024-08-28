struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(4294967295u, 0u), vec2<u32>(59275u, 51934u), vec2<u32>(0u, 0u), vec2<u32>(1u, 31758u), vec2<u32>(33642u, 4294967295u));

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: array<Struct_3, 29>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<bool> {
    global1 = array<vec3<i32>, 24>();
    global0 = array<vec2<u32>, 5>();
    global2 = array<Struct_3, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))))), _wgslsmith_f_op_f32(1333f + arg_2.x)));
    var var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    return select(vec3<bool>(true, true | !all(vec4<bool>(false, false, true, false)), true), vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true))), true, true), !(select(0i, max(u_input.e, 0i), false) <= -30184i));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> vec4<i32> {
    global1 = array<vec3<i32>, 24>();
    let var_0 = u_input.d;
    let var_1 = arg_2.a;
    var var_2 = arg_1.a.a;
    let var_3 = vec4<bool>(!(func_1(arg_2.c.b, vec4<u32>(arg_2.c.b.x, arg_2.c.b.x, arg_2.a.a.b.x, u_input.c), vec4<f32>(-1120f, 762f, -1220f, 348f), arg_2.a.a).x & false) || false, arg_0, arg_0, any(select(vec2<bool>(false, true), !vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_0))) | arg_0);
    return ~(-(~reverseBits(arg_2.b)));
}

fn func_3() -> f32 {
    var var_0 = select(-abs(vec3<i32>(-58750i, abs(u_input.d), 2147483647i)), vec3<i32>(min(~14645i, 5846i), u_input.e | ~abs(2147483647i), _wgslsmith_sub_i32(1i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1366f, 1195f))))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1792f) + -515f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-355f, 419f, false)) - 193f)));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x | _wgslsmith_mult_u32(4294967295u, 1u), u_input.b.x), abs(max(vec2<u32>(~70878u, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1896u, u_input.b.x)) >> (_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(11744u, 5u)], vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))));
    var var_2 = u_input.c;
    var_0 = abs(select(~_wgslsmith_sub_vec3_i32(select(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], false), global1[_wgslsmith_index_u32(48733u, 24u)]), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.b.zw, ~u_input.b.xx), 24u)], any(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, true, false))));
    let var_3 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 228f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) * -513f), 339f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec3_u32(~(~select(u_input.b.xyx, ~vec3<u32>(0u, 23172u, u_input.c), func_1(vec2<u32>(36594u, 43851u), vec4<u32>(28498u, 4294967295u, u_input.b.x, u_input.c), vec4<f32>(478f, -903f, -815f, 1273f), Struct_1(vec2<i32>(u_input.e, u_input.e), global0[_wgslsmith_index_u32(u_input.c, 5u)])))), ~(~u_input.b.zyy), ~(~reverseBits(_wgslsmith_mod_vec3_u32(u_input.b.wyx, vec3<u32>(u_input.b.x, 60772u, u_input.b.x)))));
    let var_1 = firstTrailingBit(firstTrailingBit(-_wgslsmith_mult_vec4_i32(func_2(true, Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.d, u_input.e), vec2<u32>(0u, u_input.b.x))), vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.d), Struct_1(vec2<i32>(-18096i, u_input.d), global0[_wgslsmith_index_u32(u_input.c, 5u)])), global2[_wgslsmith_index_u32(u_input.c, 29u)]), ~vec4<i32>(u_input.e, 0i, 5374i, 2147483647i))));
    var var_2 = !(!(!(_wgslsmith_f_op_f32(func_3()) >= 788f)));
    global1 = array<vec3<i32>, 24>();
    let var_3 = vec2<i32>(u_input.a, min(var_1.x, -1i));
    global2 = array<Struct_3, 29>();
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 2147483647i, var_0.x & ~_wgslsmith_div_u32(var_0.x, u_input.b.x), var_1.x, func_2(4294967295u >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, u_input.b.x), _wgslsmith_add_vec3_u32(u_input.b.xxy, u_input.b.zxx)), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, 1i), var_0.xy)), firstTrailingBit(-var_1), Struct_1(~var_3, vec2<u32>(var_0.x, var_0.x))), Struct_3(Struct_2(Struct_1(vec2<i32>(-18187i, 2147483647i), vec2<u32>(var_0.x, 1u))), min(firstTrailingBit(var_1), -vec4<i32>(0i, var_3.x, 54530i, -12920i)), Struct_1(-var_3, ~vec2<u32>(47412u, var_0.x)))).yw);
}

