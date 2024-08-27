struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(1000f, 1000f, -1157f), vec3<f32>(895f, 657f, -1181f), vec3<f32>(711f, 1544f, -1000f), vec3<f32>(471f, -1328f, -1000f), vec3<f32>(1602f, 342f, 528f), vec3<f32>(-2538f, -384f, 931f), vec3<f32>(280f, 1000f, -319f), vec3<f32>(-1659f, -1379f, 984f), vec3<f32>(-196f, -477f, -1970f), vec3<f32>(1000f, -709f, 161f), vec3<f32>(1000f, -1247f, 828f), vec3<f32>(957f, 224f, 920f), vec3<f32>(-1000f, 438f, 927f), vec3<f32>(232f, -861f, 1000f), vec3<f32>(-637f, 1000f, -265f), vec3<f32>(382f, 1556f, -1078f), vec3<f32>(-407f, -463f, -659f), vec3<f32>(272f, -1616f, -208f), vec3<f32>(802f, 382f, 166f), vec3<f32>(-1316f, 1209f, 824f), vec3<f32>(1000f, 2057f, -1032f), vec3<f32>(-623f, 1000f, 1239f), vec3<f32>(1427f, -946f, 1032f), vec3<f32>(506f, 513f, -1029f), vec3<f32>(-1434f, -692f, -1404f), vec3<f32>(-471f, 1631f, 625f), vec3<f32>(-492f, 1000f, -1412f));

var<private> global3: array<i32, 29> = array<i32, 29>(3237i, i32(-2147483648), 66158i, -12731i, -1i, -9283i, 25685i, -29769i, 32870i, -12153i, 1i, 59462i, i32(-2147483648), -1i, -13828i, 0i, 0i, 80148i, i32(-2147483648), -32976i, 0i, 18731i, 1i, 56705i, -1250i, -32443i, 2147483647i, 35189i, 51984i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global3 = array<i32, 29>();
    var var_0 = ~abs(arg_1.b.wy << (vec2<u32>(u_input.c, ~arg_2) % vec2<u32>(32u)));
    var var_1 = abs(~(~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(0u, 1u)), arg_1.c.zy, reverseBits(vec2<u32>(53451u, var_0.x)))));
    global3 = array<i32, 29>();
    var_1 = ~vec2<u32>(countOneBits(13842u), arg_2);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_0)))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = array<vec3<f32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(floor(-864f)), Struct_1(select(arg_0.a, arg_0.a, arg_0.a.x), vec4<u32>(arg_0.c.x, u_input.c, arg_0.c.x, u_input.c), ~arg_0.c, vec2<i32>(global0.x, -1i), !arg_0.a.x), ~1u)))));
    let var_1 = abs(u_input.a.zx);
    global0 = vec2<i32>(firstTrailingBit(-26019i), ~global3[_wgslsmith_index_u32(~reverseBits(arg_0.c.x), 29u)]);
    let var_2 = ~(~arg_0.b.x) >= ~u_input.c;
    return Struct_1(vec3<bool>(true, var_2, !(!any(arg_0.a))), (arg_0.b << (~abs(vec4<u32>(arg_0.c.x, 38357u, 4294967295u, 38097u)) % vec4<u32>(32u))) ^ select(arg_0.b, vec4<u32>(abs(0u), u_input.c, arg_0.c.x, arg_0.b.x), ~u_input.d < -u_input.a.x), vec3<u32>(arg_0.c.x, _wgslsmith_sub_u32(~u_input.c, abs(arg_0.b.x)) << (_wgslsmith_dot_vec4_u32(firstLeadingBit(arg_0.b), firstTrailingBit(vec4<u32>(1u, 4294967295u, 0u, 1u))) % 32u), ~(arg_0.b.x | ~arg_0.b.x)), vec2<i32>(-2147483647i | arg_0.d.x, global0.x), true);
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> u32 {
    return ~(~countOneBits(~min(56537u, 4294967295u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = countOneBits(_wgslsmith_add_u32(1u, func_4(func_2(Struct_1(arg_1.a, vec4<u32>(arg_1.c.x, 0u, u_input.c, 0u), arg_3.b.zyw, vec2<i32>(-1i, arg_3.d.x), arg_3.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_2.x)))))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -728f)) + arg_2.x);
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(1u, arg_1.b.x), _wgslsmith_add_u32(~87672u, u_input.c));
    var var_2 = func_2(func_2(arg_1));
    var var_3 = arg_0;
    return firstLeadingBit(-max(-2147483647i, 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 29>();
    global2 = array<vec3<f32>, 27>();
    var var_0 = false;
    global0 = -u_input.a.yw;
    global0 = vec2<i32>(-_wgslsmith_div_i32(firstTrailingBit(func_1(30347i, Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, u_input.c, u_input.c, 46920u), vec3<u32>(u_input.c, 5278u, 4294967295u), u_input.a.yx, true), global2[_wgslsmith_index_u32(u_input.c, 27u)], Struct_1(vec3<bool>(false, true, false), vec4<u32>(0u, 31469u, 36045u, u_input.c), vec3<u32>(85094u, u_input.c, u_input.c), u_input.a.yx, false))), ~u_input.b), 2147483647i ^ select(global0.x, global0.x, all(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.c << (67631u % 32u), abs(u_input.c)), min(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 65056u, 48298u), vec3<u32>(u_input.c, 1u, u_input.c)))), ~(~(~vec2<u32>(1u, 14405u))), reverseBits(countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 12431u, u_input.c, 51924u), vec4<u32>(85298u, u_input.c, u_input.c, u_input.c)))), -u_input.b);
}

