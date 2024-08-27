struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_4, 1>;

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global3: array<bool, 4>;

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<f32>(-1311f, 181f, 1000f)), Struct_1(vec3<f32>(-784f, 1024f, -112f)), Struct_1(vec3<f32>(441f, -553f, 1000f)), Struct_1(vec3<f32>(964f, -577f, -1129f)), Struct_1(vec3<f32>(701f, 560f, -1009f)), Struct_1(vec3<f32>(-184f, -371f, -481f)), Struct_1(vec3<f32>(1090f, 321f, 1948f)), Struct_1(vec3<f32>(-1207f, 803f, -633f)), Struct_1(vec3<f32>(-1754f, -516f, 626f)), Struct_1(vec3<f32>(532f, 1000f, 636f)), Struct_1(vec3<f32>(-561f, -1000f, -1748f)), Struct_1(vec3<f32>(-451f, -1000f, 382f)), Struct_1(vec3<f32>(-1000f, -2948f, 116f)), Struct_1(vec3<f32>(-396f, -1000f, 305f)), Struct_1(vec3<f32>(-746f, -732f, 1000f)), Struct_1(vec3<f32>(413f, 1129f, -324f)), Struct_1(vec3<f32>(-299f, 1068f, 1477f)), Struct_1(vec3<f32>(-341f, -226f, -2090f)), Struct_1(vec3<f32>(-1383f, 112f, 549f)), Struct_1(vec3<f32>(624f, -109f, -1643f)), Struct_1(vec3<f32>(748f, 447f, 410f)), Struct_1(vec3<f32>(-1261f, 1027f, 249f)), Struct_1(vec3<f32>(-598f, 380f, 1488f)), Struct_1(vec3<f32>(1000f, 1109f, -2388f)), Struct_1(vec3<f32>(-207f, -1000f, -1459f)), Struct_1(vec3<f32>(1083f, -1296f, -137f)), Struct_1(vec3<f32>(951f, -139f, 849f)), Struct_1(vec3<f32>(-2578f, -684f, 774f)), Struct_1(vec3<f32>(-639f, -1000f, 1382f)), Struct_1(vec3<f32>(893f, -669f, -891f)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-886f, _wgslsmith_f_op_f32(f32(-1f) * -580f), _wgslsmith_f_op_f32(1448f - _wgslsmith_f_op_f32(trunc(-505f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1465f, -725f, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(804f, -996f, 790f) * vec3<f32>(-871f, -176f, 1223f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, 537f, -682f))), global3[_wgslsmith_index_u32(u_input.a, 4u)]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec2<i32> {
    global1 = array<Struct_4, 1>();
    var var_0 = firstLeadingBit(select(countOneBits(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(59394u, global0.x, 81484u, 0u), vec4<u32>(43085u, 49670u, 1u, u_input.a)), vec4<u32>(0u, global0.x, 15989u, u_input.a)), true)) & vec4<u32>(~(~u_input.a), abs(6542u), _wgslsmith_mult_u32(~min(20152u, 1u), 0u), abs(~57040u >> ((global0.x & global0.x) % 32u)));
    var var_1 = !select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32((var_0.x ^ 37302u) << (var_0.x % 32u), 4u)], !(!global3[_wgslsmith_index_u32(1u, 4u)])), !select(vec2<bool>(false, global3[_wgslsmith_index_u32(27221u, 4u)]), vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(global0.x, 4u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 4u)], global3[_wgslsmith_index_u32(u_input.a, 4u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 4u)]), global3[_wgslsmith_index_u32(4294967295u, 4u)])));
    return vec2<i32>(19284i, arg_3.x | ~(-2147483647i));
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    var var_0 = ~vec2<i32>(~9946i & (_wgslsmith_mult_i32(-29031i, 0i) >> (_wgslsmith_div_u32(0u, global0.x) % 32u)), ~(-1i));
    let var_1 = -(~vec2<i32>(var_0.x, -1i));
    var_0 = vec2<i32>(u_input.d, u_input.b);
    var var_2 = !any(arg_0.d.zxy);
    let var_3 = true;
    return Struct_2(arg_0.e.a, global4[_wgslsmith_index_u32(~global0.x, 30u)], func_3(Struct_2(-11442i, func_1(~vec4<u32>(global0.x, 78749u, global0.x, 85878u)), var_1), u_input.c, vec2<i32>(min(2147483647i, _wgslsmith_add_i32(var_1.x, var_1.x)), u_input.d), min(u_input.c, _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.x, u_input.d, 0i, 28337i), max(vec4<i32>(1406i, u_input.d, var_0.x, arg_0.c.c.x), vec4<i32>(u_input.c.x, -13165i, var_1.x, 1i))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    global4 = array<Struct_1, 30>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1, ~1u) & ~43959u, 1u)];
    var var_1 = func_2(arg_2).b;
    let var_2 = arg_2.e.b;
    var var_3 = (u_input.d ^ firstLeadingBit((arg_3 & u_input.d) ^ u_input.c.x)) >= firstLeadingBit(1i);
    return global1[_wgslsmith_index_u32(~global0.x, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = func_4(u_input.c.zyx, _wgslsmith_div_u32(global0.x, 0u), Struct_4(global4[_wgslsmith_index_u32(global0.x, 30u)], -vec2<i32>(-1i, -42016i), Struct_2(select(u_input.c.x, var_0.x, global3[_wgslsmith_index_u32(9421u, 4u)]) | -1i, func_1(~vec4<u32>(93784u, global0.x, global0.x, u_input.a)), u_input.c.zw), !(!(!vec4<bool>(global3[_wgslsmith_index_u32(3653u, 4u)], global3[_wgslsmith_index_u32(u_input.a, 4u)], global3[_wgslsmith_index_u32(6733u, 4u)], false))), func_2(global1[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(1u, global0.x)), 1u)])), var_0.x);
    global3 = array<bool, 4>();
    var var_2 = vec2<u32>(2779u, _wgslsmith_dot_vec4_u32(~select(vec4<u32>(global0.x, u_input.a, 0u, global0.x) & vec4<u32>(global0.x, 1u, u_input.a, 4294967295u), ~vec4<u32>(0u, 74884u, global0.x, u_input.a), global3[_wgslsmith_index_u32(u_input.a, 4u)]), vec4<u32>(firstLeadingBit(global0.x), min(select(u_input.a, 11388u, true), 4294967295u), 89910u, global0.x)));
    global0 = firstLeadingBit(firstLeadingBit(firstTrailingBit(select(vec2<u32>(u_input.a, global0.x), vec2<u32>(0u, 1u), true) >> (firstTrailingBit(vec2<u32>(22170u, 1u)) % vec2<u32>(32u)))));
    var var_3 = vec3<i32>(1i, -_wgslsmith_div_i32(1i, 1i), 0i);
    let var_4 = u_input.c.x;
    let var_5 = func_1(~(~(~vec4<u32>(80347u, var_2.x, 1u, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(19809u, abs(_wgslsmith_clamp_vec2_u32(select(reverseBits(vec2<u32>(var_2.x, u_input.a)), max(vec2<u32>(24041u, 0u), vec2<u32>(4294967295u, global0.x)), vec2<bool>(var_1.d.x, false)), min(_wgslsmith_sub_vec2_u32(vec2<u32>(85671u, global0.x), vec2<u32>(var_2.x, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 10205u), vec2<u32>(77590u, 44863u))), _wgslsmith_div_vec2_u32(vec2<u32>(var_2.x, 3040u), firstLeadingBit(vec2<u32>(u_input.a, 0u))))), vec3<i32>(~(~var_3.x ^ -2147483647i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-2147483647i), var_4), var_0.x), -_wgslsmith_add_i32(-60116i, i32(-1i) * -1591i)), -var_0, _wgslsmith_sub_i32(-var_4, _wgslsmith_mult_i32(func_4(vec3<i32>(var_4, var_4, var_4), ~4294967295u, func_4(u_input.c.www, 39588u, var_1, var_0.x), var_0.x).c.a, -16289i)));
}

