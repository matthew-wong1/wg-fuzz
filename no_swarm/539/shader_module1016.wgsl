struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-2185f, -1077f, -636f), Struct_1(-390f, vec3<bool>(false, false, true)));

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<f32>(633f, 763f, 707f), Struct_1(1279f, vec3<bool>(false, true, true))), Struct_2(vec3<f32>(-1086f, -1123f, -244f), Struct_1(797f, vec3<bool>(true, true, true))), Struct_2(vec3<f32>(400f, 148f, 2092f), Struct_1(-2421f, vec3<bool>(false, true, true))), Struct_2(vec3<f32>(415f, 1895f, -204f), Struct_1(114f, vec3<bool>(false, false, false))), Struct_2(vec3<f32>(-491f, -1000f, 1000f), Struct_1(-662f, vec3<bool>(true, true, false))), Struct_2(vec3<f32>(1000f, -589f, 1000f), Struct_1(363f, vec3<bool>(true, true, true))), Struct_2(vec3<f32>(-276f, -629f, 359f), Struct_1(578f, vec3<bool>(false, false, true))), Struct_2(vec3<f32>(586f, 1271f, -373f), Struct_1(459f, vec3<bool>(false, false, false))), Struct_2(vec3<f32>(-734f, -758f, -544f), Struct_1(754f, vec3<bool>(false, true, false))), Struct_2(vec3<f32>(1146f, 1051f, -660f), Struct_1(-869f, vec3<bool>(false, false, true))), Struct_2(vec3<f32>(-1472f, 2197f, 1376f), Struct_1(273f, vec3<bool>(true, false, true))), Struct_2(vec3<f32>(509f, -901f, -1233f), Struct_1(-376f, vec3<bool>(true, true, true))), Struct_2(vec3<f32>(-1922f, -1104f, 520f), Struct_1(-1561f, vec3<bool>(false, true, true))), Struct_2(vec3<f32>(1000f, -416f, 1000f), Struct_1(383f, vec3<bool>(true, false, true))), Struct_2(vec3<f32>(-733f, -1184f, 597f), Struct_1(1926f, vec3<bool>(true, true, false))), Struct_2(vec3<f32>(673f, -868f, 772f), Struct_1(1000f, vec3<bool>(false, true, false))));

var<private> global2: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = global0.b;
    var var_1 = ~(-(-1i ^ _wgslsmith_mult_i32(_wgslsmith_div_i32(arg_2, u_input.e.x), _wgslsmith_sub_i32(u_input.e.x, -71885i))));
    var_0 = arg_1;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(min(_wgslsmith_mod_vec2_u32(global2.d.yy, vec2<u32>(global2.d.x, 14174u)), global2.d.zz), ~vec2<u32>(u_input.c, 41704u)), ~(~(~u_input.c) ^ _wgslsmith_mod_u32(global2.d.x, u_input.c))), 16u)];
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), arg_1.a), var_0.b);
    return _wgslsmith_clamp_i32(global2.c, ~global2.a.x, 9987i);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global1 = array<Struct_2, 16>();
    global2 = Struct_3(firstTrailingBit(-(~_wgslsmith_div_vec2_i32(global2.a, vec2<i32>(global2.c, -2147483647i)))), vec2<bool>(true, global2.b.x), -_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 26077i), _wgslsmith_add_vec2_i32(global2.a, vec2<i32>(u_input.b.x, -23278i))) >> (u_input.c % 32u), vec3<u32>(~min(arg_0.x, 0u), ~(~4294967295u), u_input.c) << ((global2.d | global2.d) % vec3<u32>(32u)));
    let var_0 = arg_0.wz;
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    return _wgslsmith_f_op_f32(global0.b.a * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    global1 = array<Struct_2, 16>();
    let var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_f32(sign(global0.b.a));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(max(global2.d.x, u_input.c), 1u, min(u_input.c, 1u), _wgslsmith_div_u32(global2.d.x, u_input.c)))))));
    let var_3 = reverseBits(_wgslsmith_mod_vec4_u32(((vec4<u32>(u_input.c, 34571u, 0u, global2.d.x) & vec4<u32>(9579u, 25238u, 51382u, 1u)) >> (vec4<u32>(4294967295u, 0u, 0u, 55324u) % vec4<u32>(32u))) ^ vec4<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 92349u, 4294967295u), min(global2.d.x, global2.d.x), 1u), firstLeadingBit(~vec4<u32>(u_input.c, 0u, 0u, 32585u)) << (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(41637u, global2.d.x, 56184u, 1u)), ~vec4<u32>(u_input.c, 1u, 96527u, global2.d.x), min(vec4<u32>(2444u, 22425u, global2.d.x, global2.d.x), vec4<u32>(global2.d.x, global2.d.x, global2.d.x, 4294967295u))) % vec4<u32>(32u))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(-min(~select(u_input.d.zw, vec2<i32>(global2.c, -31499i), false), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.a, 0i), u_input.d.zy), u_input.e)), global0.b.b.yy, ~min(~func_1(vec2<bool>(true, global0.b.b.x), global0.b, -1i, global0.b.a), i32(-1i) * -17195i), vec3<u32>(global2.d.x, func_2(_wgslsmith_f_op_f32(f32(-1f) * -760f), vec3<bool>(u_input.c > global2.d.x, u_input.b.x <= global2.c, u_input.a != global2.a.x)), firstLeadingBit(countOneBits(u_input.c))));
    global1 = array<Struct_2, 16>();
    let var_0 = global0.b.b.x;
    global0 = global1[_wgslsmith_index_u32(u_input.c, 16u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-1352f, -128f), -2423f, _wgslsmith_f_op_f32(-global0.b.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-714f, -21559i);
}

