struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(1i, 5221i), vec2<i32>(-31016i, 0i), vec2<i32>(2500i, -1297i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, 0i), vec2<i32>(1i, -22240i), vec2<i32>(13316i, -3489i), vec2<i32>(1i, -23280i), vec2<i32>(6621i, 18137i), vec2<i32>(18551i, -26879i), vec2<i32>(1i, 5318i), vec2<i32>(-1i, 17820i), vec2<i32>(2147483647i, -29739i), vec2<i32>(2147483647i, 10207i), vec2<i32>(-42i, 2147483647i), vec2<i32>(-1i, 4835i), vec2<i32>(-41169i, -1i), vec2<i32>(2147483647i, 1i));

var<private> global1: array<vec4<i32>, 10>;

var<private> global2: array<u32, 12>;

var<private> global3: array<i32, 23> = array<i32, 23>(-59160i, i32(-2147483648), 9094i, 43675i, 0i, -111128i, i32(-2147483648), 2147483647i, 2147483647i, -33665i, 23703i, i32(-2147483648), 32067i, -1i, -39185i, -3699i, 39910i, 0i, 0i, 1i, -35824i, -1i, 35076i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec3<u32> {
    global1 = array<vec4<i32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f * 495f) + _wgslsmith_f_op_f32(-1027f + 888f))))) + _wgslsmith_f_op_f32(-832f - 718f));
    var var_1 = vec2<f32>(1306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)));
    var var_2 = -abs(min(abs(vec4<i32>(u_input.b.x, -69261i, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.d) ^ u_input.e), firstLeadingBit(global1[_wgslsmith_index_u32(1u, 10u)])));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_1.x * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))))));
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec2<i32> {
    let var_0 = ~13152u;
    var var_1 = false;
    let var_2 = Struct_2(Struct_1(reverseBits(func_2()), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), ~(~46017u));
    let var_3 = vec2<bool>(false, !var_2.a.b);
    var var_4 = arg_2;
    return abs(u_input.b.yy);
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    var var_0 = vec2<bool>(true || (u_input.e.x < u_input.e.x), -2031f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -797f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-924f))))));
    return vec2<i32>(countOneBits(-(~u_input.b.x)), 17231i);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(min(abs(vec3<u32>(80877u, u_input.c.x, 0u)), _wgslsmith_clamp_vec3_u32(select(u_input.a.xyy, u_input.c, vec3<bool>(arg_1, arg_1, false)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 13927u), u_input.a.xww), func_2())), all(vec3<bool>(all(vec2<bool>(arg_1, true)), arg_1, false))), ~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~abs(6236u), 12u)], 12u)]);
    var var_1 = Struct_2(var_0.a, ~83998u);
    let var_2 = ~global2[_wgslsmith_index_u32(755u, 12u)];
    let var_3 = Struct_3(Struct_1(~(~u_input.c) << (~func_2() % vec3<u32>(32u)), true), var_1.a, !(!all(select(vec4<bool>(true, arg_1, arg_1, var_1.a.b), vec4<bool>(false, arg_1, false, true), false))));
    let var_4 = 7473u;
    return abs(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(func_1(~u_input.c.x, ~u_input.a, vec4<f32>(1f, 1f, 1f, 1f)) ^ func_3(~u_input.a), select(~global2[_wgslsmith_index_u32(41354u, 12u)] <= 4294967295u, all(vec4<bool>(true, true, true, true)), true));
    var var_1 = func_1(reverseBits(abs(u_input.a.x)), ~(~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, -1000f, -712f, 1505f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1207f, -120f, -607f, 283f)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-607f)), _wgslsmith_div_f32(-439f, 881f), _wgslsmith_f_op_f32(abs(-1045f)), -846f)))).x;
    var var_2 = vec3<u32>(func_2().x, ~(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c.x, 1u << (min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(64968u, 12u)], 12u)], global2[_wgslsmith_index_u32(12974u, 12u)]) % 32u)), ~_wgslsmith_div_u32(abs(0u), var_0.x << (15331u % 32u))));
    global2 = array<u32, 12>();
    var var_3 = Struct_3(Struct_1(select(firstLeadingBit(vec3<u32>(var_0.x, var_2.x, global2[_wgslsmith_index_u32(u_input.a.x, 12u)])), u_input.c, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true), Struct_1(var_0.wyx, true | !any(vec3<bool>(true, true, true))), any(vec3<bool>(true, firstLeadingBit(global2[_wgslsmith_index_u32(var_0.x, 12u)]) == ~var_0.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(457f)))), -1643f)), global3[_wgslsmith_index_u32(4294967295u, 23u)], firstLeadingBit(4294967295u), _wgslsmith_div_vec2_u32(abs(firstTrailingBit(vec2<u32>(61403u, u_input.a.x))) ^ vec2<u32>(~var_3.b.a.x, var_0.x), u_input.c.yy & vec2<u32>(firstLeadingBit(var_2.x), 4294967295u)));
}

