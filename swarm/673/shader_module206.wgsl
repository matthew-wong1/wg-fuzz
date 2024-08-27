struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<bool>;

var<private> global2: array<i32, 2> = array<i32, 2>(-1i, 4068i);

var<private> global3: array<vec2<bool>, 18>;

var<private> global4: array<i32, 18> = array<i32, 18>(1i, 59077i, -1i, 75420i, -1i, -69497i, 35323i, 1i, 0i, 2147483647i, -1i, -59180i, -15064i, 13906i, 2147483647i, 0i, i32(-2147483648), -1481i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(~u_input.b.zxw, any(vec3<bool>(firstTrailingBit(u_input.a.x) != 0u, _wgslsmith_mult_u32(54318u, 46909u) == (0u & u_input.b.x), all(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, false), vec2<bool>(false, global1.x))))), _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(u_input.b.x, 28079u))), _wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.a.wy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-776f, -1175f, 291f, -137f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(647f, -118f, -280f, -1472f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1570f, -2150f, 1677f, -1615f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-875f, -1074f, -423f, -342f))), any(vec4<bool>(true, global1.x, false, true)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 473f, -213f, -206f), vec4<f32>(-1337f, 1025f, -687f, 931f), vec4<bool>(global1.x, false, global1.x, false)))), vec4<f32>(2027f, _wgslsmith_f_op_f32(329f + 547f), _wgslsmith_f_op_f32(round(-174f)), _wgslsmith_f_op_f32(f32(-1f) * -1415f)), all(!vec4<bool>(global1.x, global1.x, true, true))))), -1108f);
    var_0 = Struct_1(select(~var_0.a, var_0.a, select(vec3<bool>(all(vec3<bool>(false, global1.x, false)), var_0.b, false), vec3<bool>(all(vec3<bool>(false, true, false)), global1.x & global1.x, var_0.b || var_0.b), !select(vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, global1.x, true)))), global4[_wgslsmith_index_u32(317u, 18u)] != (_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(global0.x, global4[_wgslsmith_index_u32(var_0.a.x, 18u)])), vec2<i32>(global4[_wgslsmith_index_u32(0u, 18u)], global4[_wgslsmith_index_u32(u_input.b.x, 18u)]) & vec2<i32>(40139i, global2[_wgslsmith_index_u32(0u, 2u)])) >> (var_0.a.x % 32u)), var_0.a.zx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1586f))))), _wgslsmith_f_op_f32(round(var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) + _wgslsmith_f_op_f32(-var_0.e)), _wgslsmith_f_op_f32(-var_0.d.x)), -1167f);
    let var_1 = Struct_2(var_0.a, Struct_1(~(vec3<u32>(u_input.b.x, var_0.c.x, 74240u) >> (select(u_input.a.xyx, vec3<u32>(4462u, 1u, var_0.c.x), var_0.b) % vec3<u32>(32u))), all(global3[_wgslsmith_index_u32(var_0.a.x, 18u)]), ~(~max(var_0.c, vec2<u32>(1u, 0u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.x))), _wgslsmith_f_op_f32(var_0.d.x - var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(881f - var_0.e)))), 193f), Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a << (u_input.b % vec4<u32>(32u))), _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 0u) | u_input.b.x, ~var_0.a.x >> (10451u % 32u)), true, min(abs(u_input.b.xz), ~(~var_0.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d * var_0.d) - _wgslsmith_f_op_vec4_f32(-var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2399f, 1266f) + var_0.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, 128f))))));
    global0 = abs(select(vec2<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 18u)], max(abs(global4[_wgslsmith_index_u32(63651u, 18u)]), 1i)), vec2<i32>(~(-global4[_wgslsmith_index_u32(u_input.b.x, 18u)]), -(~(-18065i))), vec2<bool>(-global0.x <= global0.x, true)));
    var var_2 = abs(vec3<i32>((min(-1i, global4[_wgslsmith_index_u32(var_1.a.x, 18u)]) >> (var_0.a.x % 32u)) | min(i32(-1i) * -2147483647i, ~10281i), i32(-1i) * -(~0i), -(~max(2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, 552f) + vec3<f32>(-268f, 197f, var_1.b.e)))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_1(abs(u_input.a.zyy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(696f * arg_2.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.d.x)) * arg_2.d.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, arg_2.a.x), vec2<u32>(arg_1.x, arg_0.x) >> (firstLeadingBit(arg_2.a.zy) % vec2<u32>(32u))), vec4<f32>(arg_2.e, arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.e, -1496f)), arg_2.e), arg_2.e);
    global2 = array<i32, 2>();
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3());
    global2 = array<i32, 2>();
    var var_2 = select(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(global4[_wgslsmith_index_u32(arg_1.x, 18u)], -1i, -2147483647i), firstTrailingBit(vec3<i32>(-34010i, global2[_wgslsmith_index_u32(4294967295u, 2u)], u_input.c))), -vec3<i32>(-22798i, arg_3.x, u_input.c)), ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.c, 8716i, global0.x), vec3<i32>(u_input.c, u_input.c, -2147483647i), false), max(vec3<i32>(global0.x, global4[_wgslsmith_index_u32(18015u, 18u)], global4[_wgslsmith_index_u32(arg_2.a.x, 18u)]), vec3<i32>(global0.x, -1i, 0i)))), ~abs(vec3<i32>(2147483647i, ~(-2147483647i), ~39417i)), var_0.b);
    return _wgslsmith_f_op_f32(f32(-1f) * -470f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec4<u32>(6278u, u_input.b.x, 1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(1u, u_input.a.x)), Struct_1(u_input.a.xzy, false, vec2<u32>(u_input.b.x, u_input.b.x), vec4<f32>(-1102f, 1353f, 134f, 466f), -1000f), ~vec2<i32>(global0.x, 2147483647i))))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(602f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(298f)) * -527f)))));
    global2 = array<i32, 2>();
    global3 = array<vec2<bool>, 18>();
    let var_1 = vec3<u32>(32553u, 1u, ~u_input.a.x);
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 20560u), reverseBits(abs(vec3<u32>(13348u, var_1.x, u_input.a.x)))), countOneBits(var_1)), vec3<u32>(abs(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 4294967295u) << ((var_1.x ^ 0u) % 32u), _wgslsmith_mult_u32(u_input.b.x, 13360u) | ~var_1.x) & select(vec3<u32>(var_1.x, ~4294967295u, ~var_1.x), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)), u_input.a.x ^ u_input.a.x, _wgslsmith_mod_u32(1u, 4294967295u)), select(all(vec2<bool>(false, global1.x)), true, false | global1.x)));
    return Struct_1(abs(firstTrailingBit(~vec3<u32>(0u, 4294967295u, u_input.b.x))), true, var_1.zz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -989f, _wgslsmith_f_op_f32(f32(-1f) * -2092f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, 1123f, 403f, -1038f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1308f, var_0, 1341f) + vec4<f32>(var_0, var_0, -242f, var_0)))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_1.x, var_1.x, 741u, 29440u), ~vec4<u32>(0u, 1u, 4294967295u, 22844u), global1.x), u_input.a >> ((u_input.a & vec4<u32>(0u, 67528u, var_1.x, var_1.x)) % vec4<u32>(32u))), u_input.a.wz, Struct_1(u_input.b.zxy, global1.x | global1.x, firstTrailingBit(u_input.a.yz & var_1.xy), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -500f, 610f, var_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f - var_0))), vec2<i32>(global0.x, i32(-1i) * -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 18>();
    let var_0 = func_1();
    global2 = array<i32, 2>();
    let var_1 = global0.x;
    global3 = array<vec2<bool>, 18>();
    let var_2 = var_0;
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global4[_wgslsmith_index_u32(abs(var_3.c.x), 18u)], abs(-30007i)), _wgslsmith_f_op_f32(sign(var_2.e)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(var_2.d.x - -1447f), 1f) + var_0.d.xxz)), _wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, global0.x) | vec3<i32>(653i, -2147483647i, u_input.c), ~vec3<i32>(global0.x, u_input.c, u_input.c), vec3<i32>(0i, global4[_wgslsmith_index_u32(u_input.b.x, 18u)], global4[_wgslsmith_index_u32(1u, 18u)]) ^ vec3<i32>(-49886i, global4[_wgslsmith_index_u32(1u, 18u)], 57847i))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-35984i, 22258i, global2[_wgslsmith_index_u32(u_input.b.x, 2u)]), (vec3<i32>(global0.x, 2147483647i, -41742i) & vec3<i32>(-35508i, global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(72285u, 2u)])) ^ -vec3<i32>(global4[_wgslsmith_index_u32(1u, 18u)], u_input.c, global4[_wgslsmith_index_u32(47309u, 18u)]))));
}

