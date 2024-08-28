struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(-42175i, 2523i), vec4<i32>(-13248i, -53128i, 50240i, 33025i), vec4<i32>(10803i, 37033i, 20085i, 27481i)));

var<private> global3: vec2<u32> = vec2<u32>(0u, 99819u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    return -1457f;
}

fn func_2(arg_0: Struct_3) -> bool {
    global3 = u_input.d.xx;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1424f)))) * _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(-global0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_0.b.x, _wgslsmith_div_f32(187f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-185f, -681f), _wgslsmith_div_f32(arg_0.b.x, 152f)))), arg_0.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, _wgslsmith_div_f32(-736f, _wgslsmith_f_op_f32(1204f + arg_0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(arg_0)))));
    let var_2 = 1u;
    var var_3 = true;
    return any(arg_0.a.zw);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: i32) -> vec3<i32> {
    var var_0 = !(!func_2(Struct_3(vec4<bool>(false, true, false, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, -206f, global0.x, 689f)), max(vec4<i32>(global2.a.b.x, arg_2, 8570i, global1.x), vec4<i32>(-1i, -47083i, arg_1.x, global1.x)), -u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(177f, global0.x, 1485f, global0.x)))));
    var var_1 = Struct_2(Struct_1(global2.a.c.xy, global2.a.c, ~vec4<i32>(-62227i, _wgslsmith_dot_vec4_i32(global2.a.c, global2.a.b), arg_2 & -2147483647i, abs(u_input.a))));
    var_0 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-355f, _wgslsmith_f_op_f32(trunc(-834f)), -1192f)));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-543f + global0.x), _wgslsmith_f_op_f32(-1000f + -1000f), global0.x, _wgslsmith_f_op_f32(var_2.x - global0.x)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, -116f, var_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-436f, global0.x, 628f, 986f) + vec4<f32>(894f, global0.x, 1414f, -1664f)))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-441f, 604f, -127f, global0.x) * vec4<f32>(var_2.x, -1624f, 2160f, 208f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 1676f, global0.x), vec4<f32>(-1000f, global0.x, -1269f, var_2.x)))))));
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = false;
    var var_1 = Struct_2(Struct_1(~arg_1.zz, (global2.a.b & -global2.a.b) ^ vec4<i32>(reverseBits(u_input.a), u_input.a, global2.a.a.x, 2147483647i), arg_2.a.b));
    let var_2 = Struct_1(global2.a.a, max(-(~var_1.a.c), -(vec4<i32>(-1i) * -global2.a.c)), vec4<i32>(-((global1.x | 0i) ^ _wgslsmith_clamp_i32(arg_2.a.c.x, 39248i, 1i)), ~u_input.a ^ 29386i, i32(-1i) * -1i, _wgslsmith_add_i32(i32(-1i) * -45210i, firstLeadingBit(-2147483647i))));
    global2 = Struct_2(arg_2.a);
    var var_3 = _wgslsmith_f_op_f32(global0.x + global0.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(!vec4<bool>(true, false, true, all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -187f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) * 1083f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) - _wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1729f, global0.x, global0.x, -1475f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, -714f, -695f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), ~((vec4<i32>(-1i) * -global2.a.b) >> (min(~vec4<u32>(u_input.d.x, global3.x, u_input.d.x, 0u), vec4<u32>(0u, 1u, 42540u, 1u) & vec4<u32>(0u, 0u, 60974u, global3.x)) % vec4<u32>(32u))), firstLeadingBit(2147483647i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1014f, 1f, _wgslsmith_f_op_f32(ceil(global0.x)), 273f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(169f, global0.x, global0.x, -198f))) * vec4<f32>(global0.x, 951f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, 146f, -1028f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1089f, 798f, 1352f, -1299f)))))))));
    let var_1 = firstLeadingBit(u_input.a);
    let var_2 = func_4(~(-var_0.d), -_wgslsmith_sub_vec3_i32(func_1(vec2<u32>(1u, 1u), ~vec3<i32>(var_0.c.x, global2.a.b.x, 1i), firstTrailingBit(1i)), var_0.c.xzw), Struct_2(Struct_1(vec2<i32>(-global1.x, 31839i), min(vec4<i32>(2147483647i, global2.a.b.x, var_0.c.x, 65722i), global2.a.c), vec4<i32>(-2147483647i, 0i, global2.a.b.x, global2.a.c.x) << (vec4<u32>(global3.x, u_input.b, 1u, 37896u) % vec4<u32>(32u)))));
    var var_3 = countOneBits(max(vec4<u32>(_wgslsmith_div_u32(14045u, global3.x), ~u_input.c, u_input.b << (4294967295u % 32u), abs(u_input.d.x)) & firstLeadingBit(~vec4<u32>(52638u, global3.x, 0u, u_input.b)), vec4<u32>(u_input.d.x, ~_wgslsmith_mult_u32(u_input.c, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(global3.x, 4294967295u)), ~(~527u))));
    var var_4 = vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-global0.x), -561f, 297f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.x);
}

