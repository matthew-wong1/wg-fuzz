struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(557f, -432f, Struct_1(15734u, true, vec2<i32>(1i, -1i))), Struct_3(-830f, 1594f, Struct_1(4294967295u, false, vec2<i32>(-52606i, i32(-2147483648)))), Struct_3(-676f, -665f, Struct_1(4294967295u, false, vec2<i32>(25262i, -15986i))), Struct_3(294f, -751f, Struct_1(41895u, true, vec2<i32>(i32(-2147483648), -24108i))), Struct_3(-1000f, -556f, Struct_1(0u, true, vec2<i32>(-34221i, -2730i))), Struct_3(-758f, -655f, Struct_1(68153u, true, vec2<i32>(1i, -12103i))), Struct_3(-734f, 966f, Struct_1(1u, true, vec2<i32>(2147483647i, 56247i))), Struct_3(-1227f, -276f, Struct_1(30755u, false, vec2<i32>(0i, 31257i))), Struct_3(371f, 145f, Struct_1(1u, false, vec2<i32>(-23861i, -1077i))), Struct_3(-1101f, -1085f, Struct_1(1u, false, vec2<i32>(2147483647i, -11834i))), Struct_3(1245f, -1000f, Struct_1(60293u, true, vec2<i32>(47067i, 2147483647i))), Struct_3(1000f, -269f, Struct_1(23868u, false, vec2<i32>(-25210i, i32(-2147483648)))), Struct_3(160f, 677f, Struct_1(4294967295u, true, vec2<i32>(-10093i, -44091i))), Struct_3(2173f, -861f, Struct_1(92190u, false, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_3(-1802f, -1189f, Struct_1(56611u, false, vec2<i32>(19100i, i32(-2147483648)))), Struct_3(373f, 1370f, Struct_1(1u, true, vec2<i32>(-1i, -34960i))), Struct_3(948f, 390f, Struct_1(0u, false, vec2<i32>(7107i, -1i))));

var<private> global3: array<i32, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> f32 {
    global2 = array<Struct_3, 17>();
    var var_0 = vec2<u32>(1u, ~4844u);
    return -510f;
}

fn func_3() -> vec2<f32> {
    global3 = array<i32, 28>();
    global0 = array<Struct_2, 29>();
    let var_0 = -(~vec2<i32>(-1i, 2147483647i));
    var var_1 = _wgslsmith_div_vec3_u32(~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 245u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.c))), vec3<u32>(~u_input.c, 22175u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 66803u, u_input.a.x), vec3<u32>(4294967295u, 11623u, u_input.c)))) << (_wgslsmith_clamp_vec3_u32(~firstTrailingBit(~vec3<u32>(u_input.c, 30496u, u_input.a.x)), ~(~(vec3<u32>(1u, 32724u, u_input.c) << (vec3<u32>(14314u, 1u, 0u) % vec3<u32>(32u)))), ~(~(~vec3<u32>(42248u, 11257u, 105279u)))) % vec3<u32>(32u));
    var var_2 = -435f;
    return vec2<f32>(2167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f + 1107f) + 671f));
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-1000f * -366f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(460f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), true))))));
    global3 = array<i32, 28>();
    let var_1 = Struct_1(_wgslsmith_mod_u32(u_input.c, u_input.c), true | any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(vec2<i32>(min(u_input.b << (u_input.a.x % 32u), min(global3[_wgslsmith_index_u32(u_input.c, 28u)], 2147483647i)), countOneBits(-2147483647i) & ~arg_1), vec2<i32>(1i, arg_1), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    global1 = select(1i, abs(-u_input.b) << (abs(_wgslsmith_mod_u32(var_1.a, 0u)) % 32u), ~(-12342i) < u_input.d.x) << (min(countOneBits(max(min(1u, 33311u), _wgslsmith_add_u32(u_input.c, 6659u))), ~7858u) % 32u);
    global1 = u_input.b;
    return u_input.b;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    global2 = array<Struct_3, 17>();
    let var_0 = ~vec2<u32>(8527u, 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1222f, -1467f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(623f, 567f) - vec2<f32>(493f, -137f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b, arg_1.a.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a, -1020f))))));
    global3 = array<i32, 28>();
    let var_2 = u_input.a;
    return reverseBits(countOneBits(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_4(func_2(_wgslsmith_f_op_f32(func_1()), _wgslsmith_mult_i32(u_input.b, -21980i)), Struct_4(Struct_3(-699f, 1306f, Struct_1(u_input.a.x, true, u_input.d)), Struct_3(-335f, -869f, Struct_1(90237u, false, u_input.d)), u_input.a.x), vec3<u32>(_wgslsmith_div_u32(0u, 5287u), max(u_input.a.x, u_input.a.x), _wgslsmith_add_u32(u_input.c, 41532u)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true))), max(24278u, ~abs(u_input.a.x))) << (17382u % 32u), 28u)];
    let var_0 = _wgslsmith_mult_vec3_u32(abs(~select(countOneBits(vec3<u32>(1012u, 1u, u_input.c)), max(vec3<u32>(u_input.c, u_input.a.x, 41817u), vec3<u32>(u_input.c, 4294967295u, u_input.c)), vec3<bool>(true, true, true))), _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 49819u, 0u), vec3<u32>(4294967295u, u_input.c, u_input.a.x)), abs(~vec3<u32>(4294967295u, 4294967295u, 0u))) << (~(~firstTrailingBit(vec3<u32>(44947u, u_input.c, 22443u))) % vec3<u32>(32u)));
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c | max(~u_input.a.x, ~u_input.c), firstTrailingBit(u_input.c & _wgslsmith_sub_u32(0u, var_0.x))), 17u)], Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -496f)), _wgslsmith_f_op_f32(trunc(-259f)), Struct_1(var_0.x, false, select(abs(vec2<i32>(u_input.b, 57007i)), select(vec2<i32>(u_input.e, -22689i), u_input.d, false), true))), ~(~1u));
    global2 = array<Struct_3, 17>();
    var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -628f), var_1.a.b)), _wgslsmith_f_op_f32(var_1.a.a * -1581f), Struct_1(abs(select(var_1.a.c.a, var_1.a.c.a, var_1.a.c.b)), !any(vec3<bool>(false, false, var_1.a.c.b)), u_input.d)), var_1.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.x, _wgslsmith_mod_u32(33277u, 50418u) << (abs(var_1.c) % 32u)), func_4(-global3[_wgslsmith_index_u32(_wgslsmith_add_u32(61357u, u_input.c), 28u)], Struct_4(Struct_3(var_1.b.b, 865f, var_1.b.c), var_1.a, 4294967295u), select(vec3<u32>(var_0.x, var_0.x, 34173u), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.c.a, 50639u, 0u), var_0), false), var_1.b.c.b)));
    global0 = array<Struct_2, 29>();
    let var_2 = 1532f;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -2147483647i, _wgslsmith_div_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(var_1.a.c.c.x, 28128i, global3[_wgslsmith_index_u32(4294967295u, 28u)], 13324i)), countOneBits(vec4<i32>(21805i, global3[_wgslsmith_index_u32(u_input.c, 28u)] >> (u_input.a.x % 32u), u_input.e, var_1.b.c.c.x))), var_1.a.c.c.x);
}

