struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 983i;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<u32>(1u, 35947u, 7845u), vec4<f32>(1975f, 1318f, 1029f, 312f)), Struct_1(vec3<u32>(1u, 9237u, 1u), vec4<f32>(-1928f, -1271f, 138f, 164f)), Struct_1(vec3<u32>(66155u, 0u, 68710u), vec4<f32>(765f, -1730f, 101f, -1709f)), Struct_1(vec3<u32>(24791u, 1u, 7568u), vec4<f32>(-1162f, -1067f, -130f, -256f)), Struct_1(vec3<u32>(34292u, 49575u, 59058u), vec4<f32>(-769f, 832f, 415f, -1000f)), Struct_1(vec3<u32>(1u, 4294967295u, 15739u), vec4<f32>(-1555f, 1156f, -1314f, 1000f)), Struct_1(vec3<u32>(42031u, 4294967295u, 4294967295u), vec4<f32>(1196f, -859f, 1000f, -1069f)), Struct_1(vec3<u32>(1u, 6575u, 1u), vec4<f32>(970f, -239f, 1000f, -1828f)), Struct_1(vec3<u32>(53085u, 33858u, 1u), vec4<f32>(652f, 918f, 1515f, -179f)), Struct_1(vec3<u32>(39225u, 0u, 2390u), vec4<f32>(-559f, -276f, 414f, 426f)), Struct_1(vec3<u32>(1u, 0u, 1u), vec4<f32>(1654f, 205f, -182f, 474f)), Struct_1(vec3<u32>(13364u, 4294967295u, 4294967295u), vec4<f32>(-884f, -143f, 530f, -2260f)), Struct_1(vec3<u32>(4294967295u, 59230u, 1u), vec4<f32>(-1000f, -930f, 3570f, -1652f)), Struct_1(vec3<u32>(4294967295u, 83930u, 20476u), vec4<f32>(-1107f, -1878f, 2045f, -777f)), Struct_1(vec3<u32>(58275u, 0u, 0u), vec4<f32>(566f, 950f, 127f, 464f)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(1749f, -1759f, 1000f, -238f)), Struct_1(vec3<u32>(6265u, 84250u, 0u), vec4<f32>(229f, -973f, -541f, 897f)), Struct_1(vec3<u32>(69001u, 4294967295u, 19017u), vec4<f32>(289f, -1246f, -856f, -1188f)), Struct_1(vec3<u32>(1u, 24080u, 53776u), vec4<f32>(-267f, 665f, -1019f, -446f)), Struct_1(vec3<u32>(0u, 1u, 22709u), vec4<f32>(1468f, -1471f, 216f, 1085f)), Struct_1(vec3<u32>(4294967295u, 22641u, 31003u), vec4<f32>(299f, 627f, -113f, -315f)), Struct_1(vec3<u32>(1u, 1u, 1u), vec4<f32>(1273f, -787f, 399f, 1275f)), Struct_1(vec3<u32>(0u, 55099u, 0u), vec4<f32>(-900f, -1046f, -1846f, 1009f)), Struct_1(vec3<u32>(15125u, 45085u, 0u), vec4<f32>(133f, -1319f, 1283f, -264f)), Struct_1(vec3<u32>(30600u, 1u, 2768u), vec4<f32>(1000f, -818f, 496f, 664f)), Struct_1(vec3<u32>(0u, 130829u, 46543u), vec4<f32>(-188f, -753f, 510f, 210f)));

var<private> global2: Struct_1 = Struct_1(vec3<u32>(32713u, 4294967295u, 1u), vec4<f32>(-1789f, -835f, 262f, 1079f));

var<private> global3: u32 = 1u;

var<private> global4: u32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec3<u32> {
    global4 = 33863u;
    let var_0 = _wgslsmith_f_op_f32(floor(-408f));
    global0 = -arg_0.x;
    global0 = arg_0.x;
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 26u)];
    return _wgslsmith_add_vec3_u32(vec3<u32>(global2.a.x, 33569u, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(33673u, 38943u), reverseBits(abs(var_1.a.x)))), var_1.a);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + global2.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-153f, global2.b.x))))))) * -548f);
    global4 = max(func_2(vec3<i32>(63642i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.c.x, -52938i), vec4<i32>(u_input.c.x, 2147483647i, -9217i, 2147483647i)), vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, -1i)), i32(-1i) * -4936i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global2.b.xww)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(292f, 2658f, global2.b.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global2.b.yxy, vec3<f32>(1232f, -627f, 405f)))), all(vec2<bool>(true, true)))), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-606f - var_0))).x, global2.a.x & firstTrailingBit(49220u));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global2.b.x, -1164f)), global2.b.x)) < var_0;
    let var_2 = _wgslsmith_add_vec3_u32(~firstLeadingBit(~_wgslsmith_div_vec3_u32(global2.a, vec3<u32>(1u, u_input.a, 1u))), countOneBits(~_wgslsmith_clamp_vec3_u32(global2.a, _wgslsmith_mod_vec3_u32(global2.a, vec3<u32>(11264u, 83127u, u_input.a)), select(vec3<u32>(51532u, u_input.a, 39069u), vec3<u32>(71012u, global2.a.x, global2.a.x), vec3<bool>(true, var_1, var_1)))));
    global3 = 4294967295u;
    return _wgslsmith_mult_u32(~4294967295u << ((u_input.a >> (4294967295u % 32u)) % 32u), ~_wgslsmith_mod_u32(~var_2.x, global2.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = array<Struct_1, 26>();
    let var_0 = vec4<bool>(any(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), u_input.d.x == u_input.c.x)), true, true, true);
    global4 = ~u_input.a;
    var var_1 = ~(~func_2(~min(vec3<i32>(1i, u_input.d.x, 2147483647i), u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.wyx)), vec2<f32>(global2.b.x, arg_0.b.x)));
    var_1 = vec3<u32>(0u, ~12587u, _wgslsmith_add_u32(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mult_u32(arg_0.a.x, arg_1.a.x)), arg_1.a.x), ~func_2(vec3<i32>(u_input.c.x, -1i, 0i) << (vec3<u32>(66604u, 824u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(373f, arg_1.b.x, 777f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, arg_1.b.x))).x));
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(0u, 26u)];
    var var_1 = -2147483647i;
    let var_2 = Struct_1(var_0.a >> (~vec3<u32>(countOneBits(var_0.a.x), func_1(global1[_wgslsmith_index_u32(63632u, 26u)], Struct_1(vec3<u32>(1u, var_0.a.x, var_0.a.x), global2.b), -905f), 0u) % vec3<u32>(32u)), var_0.b);
    var_1 = ~u_input.c.x;
    var var_3 = vec2<bool>(true, true);
    var var_4 = u_input.b;
    let var_5 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.d.x, (56373i ^ u_input.b) ^ _wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(u_input.c.x, 0i)), -1i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global2.b), vec4<f32>(var_2.b.x, -1927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(388f)) + _wgslsmith_div_f32(var_0.b.x, global2.b.x)), 1377f))), u_input.d.x, abs(vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(u_input.a), 4294967295u << (u_input.a % 32u)), _wgslsmith_sub_u32(~10615u, ~var_2.a.x), _wgslsmith_add_u32(57529u, 31407u << (0u % 32u)))), var_2.b.yxx);
}

