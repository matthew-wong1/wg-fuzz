struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true);

var<private> global1: array<u32, 32> = array<u32, 32>(0u, 0u, 20678u, 18551u, 88783u, 7644u, 8138u, 39697u, 94064u, 0u, 13548u, 1u, 37715u, 106908u, 74032u, 29052u, 1u, 32208u, 1u, 1u, 4294967295u, 4294967295u, 1u, 49238u, 4294967295u, 69272u, 0u, 8461u, 34939u, 10509u, 87178u, 104741u);

var<private> global2: i32 = 7935i;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-688f, -2139f, -1546f, 852f))))) + vec4<f32>(_wgslsmith_f_op_f32(max(-493f, 1084f)), _wgslsmith_f_op_f32(-320f - -2427f), -1533f, _wgslsmith_f_op_f32(min(-1034f, -1197f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1663f, -2312f, 784f, 1000f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-667f, -1000f, 1931f, 2372f), vec4<f32>(397f, 780f, -1036f, 638f))))))));
    global1 = array<u32, 32>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1110f + var_0.x), 452f, 737f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f * _wgslsmith_f_op_f32(-112f * -155f))));
    global0 = Struct_2(all(!(!(!vec2<bool>(global0.a, false)))));
    global2 = _wgslsmith_add_i32(arg_0, 1i);
    return u_input.a;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(372f - 1509f));
    var var_1 = ~(vec3<i32>(arg_2, firstTrailingBit(arg_2) << (31555u % 32u), _wgslsmith_mult_i32(u_input.a.x, -65506i)) ^ vec3<i32>(2147483647i, 1i ^ u_input.a.x, -(~u_input.b)));
    var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.a, u_input.a ^ -func_3(-34991i)), vec3<i32>(-u_input.b, arg_2, var_1.x));
    var var_2 = arg_1.yz;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - -3586f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-714f + var_0))))))));
    return !vec4<bool>(select(global0.a, true, true), true, global0.a, (_wgslsmith_add_i32(u_input.a.x, arg_2) == 10581i) || !global0.a);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = abs(-((-u_input.a.yz & u_input.a.xz) | _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(51381i, 50891i)), u_input.a.zz)));
    var var_1 = Struct_1(vec4<bool>(true, var_0.x < _wgslsmith_dot_vec4_i32(-vec4<i32>(9818i, 22294i, u_input.b, u_input.a.x), firstLeadingBit(vec4<i32>(66439i, -20083i, 10580i, var_0.x))), (_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(48249u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(102u, 32u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16581u, 32u)], 32u)], 32u)], 32u)], 32u)], 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], global1[_wgslsmith_index_u32(66393u, 32u)])) != global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]) & false, func_2(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29853u, 32u)], 32u)] ^ 4294967295u, 32u)], ~(vec3<u32>(global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], 32u)], 32u)], 4294967295u) >> (vec3<u32>(21625u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)]) % vec3<u32>(32u))), abs(_wgslsmith_dot_vec2_i32(u_input.a.yy, var_0))).x), -min(abs(var_0.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, -1i), u_input.b)), vec2<i32>(u_input.a.x, func_3(u_input.a.x).x), !(!arg_0.xyw), abs(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, global1[_wgslsmith_index_u32(max(~4294967295u, ~18281u), 32u)]), 32u)]));
    let var_2 = var_1.d.xy;
    return ~var_1.e;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_2(any(arg_0.d.yz));
    var var_1 = Struct_2(true);
    let var_2 = Struct_2(false);
    global2 = 2147483647i & -u_input.a.x;
    var var_3 = ~abs(vec4<u32>(arg_0.e, max(arg_0.e, arg_0.e), func_4(func_2(1u, vec3<u32>(118u, global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), u_input.a.x), var_2, true, Struct_2(false)), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(11520u, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6741u, 32u)], 32u)], 1u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], 1u, 31385u))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(u_input.b, ~u_input.a.x ^ _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.b), func_1(Struct_1(vec4<bool>(false, true, global0.a, global0.a), -1i, u_input.a.zx, vec3<bool>(false, false, global0.a), 10062u), -690f, Struct_2(global0.a), global0.a))));
    global0 = Struct_2(false);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1681f, 1600f, _wgslsmith_div_f32(-1264f, -373f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1191f), _wgslsmith_f_op_f32(-1824f - 462f), _wgslsmith_f_op_f32(f32(-1f) * -1218f), 1664f)), vec4<f32>(2143f, -578f, _wgslsmith_f_op_f32(round(-345f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(176f + -142f) + -308f)))));
    var var_1 = Struct_1(!(!vec4<bool>(global0.a & global0.a, func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)], 62821u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24940u, 32u)], 32u)]), u_input.a.x).x, true, global0.a)), 0i, _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-14169i, u_input.b)) ^ countOneBits(abs(vec2<i32>(0i, 39827i))), _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_sub_vec2_i32(u_input.a.zx, u_input.a.zx)), vec2<i32>(~u_input.a.x, ~u_input.a.x), u_input.a.zy), abs(u_input.a.yz)), !func_2(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4763u, 32u)], 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)], 4294967295u)), ~vec3<u32>(68484u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(31757u, 32u)], 32u)], 15213u)), countOneBits(vec3<u32>(1u, global1[_wgslsmith_index_u32(6436u, 32u)], 1u)), firstTrailingBit(~u_input.b)).yxw, 4294967295u);
    global0 = Struct_2(true);
    let var_2 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1477f * var_0.x))), 1246f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(101375u, var_1.e), vec2<u32>(56011u, var_1.e), true), ~vec2<u32>(var_1.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47219u, 32u)], 32u)])), ~firstLeadingBit(~vec2<u32>(global1[_wgslsmith_index_u32(70632u, 32u)], var_1.e))), ~(~select(vec2<i32>(0i, var_1.b), reverseBits(var_1.c), vec2<bool>(false, false))));
}

