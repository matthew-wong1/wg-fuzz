struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 49035u);

var<private> global1: array<f32, 22> = array<f32, 22>(-364f, 668f, 813f, -276f, 2083f, -714f, -911f, -3075f, -162f, -1098f, 642f, 787f, 1000f, 2361f, 1016f, 993f, 257f, 500f, -719f, -570f, -1371f, -683f);

var<private> global2: i32;

var<private> global3: array<i32, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = -1156f;
    var var_1 = u_input.a;
    var var_2 = Struct_4(-767f, arg_0);
    var var_3 = ~(~(-2147483647i));
    let var_4 = _wgslsmith_div_i32(~_wgslsmith_div_i32(~1i, 2147483647i), 27778i);
    return _wgslsmith_dot_vec3_i32(~(-u_input.a), u_input.a);
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    var var_0 = Struct_3(-func_3(arg_0.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(52397u, 22u)], 205f, 1000f), vec3<f32>(-471f, arg_0.b.a.x, -1277f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-510f, 408f, arg_0.a) - vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 22u)], 1761f, arg_0.a)))))))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-740f, -363f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2194f, arg_0.a) + vec2<f32>(974f, 563f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1760f, 635f, -2576f, arg_0.a))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.a.x, -996f, -870f, 1386f), vec4<f32>(arg_0.b.a.x, -1148f, 559f, 340f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.b.a.x, 748f, 175f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, arg_0.a, 967f, 573f)))));
    global0 = countOneBits(firstLeadingBit(~reverseBits(vec3<u32>(global0.x, 44766u, u_input.d))));
    global3 = array<i32, 22>();
    let var_1 = Struct_3(abs(reverseBits(-(u_input.a.x | var_0.a))), var_0.d.wwz, var_0.c, _wgslsmith_f_op_vec4_f32(-var_0.d));
    let var_2 = reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(global0.x, 22u)], -8656i, var_0.a | -2147483647i, ~global3[_wgslsmith_index_u32(32741u, 22u)]), ~(-vec4<i32>(-1i, global3[_wgslsmith_index_u32(26728u, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], var_1.a) ^ (vec4<i32>(-1i, var_0.a, 1i, var_1.a) >> (vec4<u32>(0u, 52715u, 61902u, 35632u) % vec4<u32>(32u))))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.yz)), ~((~vec3<u32>(global0.x, 0u, u_input.d) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, 11883u, 0u)) % vec3<u32>(32u))) >> (firstTrailingBit(~vec3<u32>(global0.x, global0.x, u_input.d)) % vec3<u32>(32u))), vec4<u32>(1u, u_input.d >> (abs(~u_input.d) % 32u), reverseBits(countOneBits(_wgslsmith_dot_vec2_u32(global0.yy, global0.yy))), _wgslsmith_mult_u32(abs(~4294967295u), _wgslsmith_add_u32(u_input.d, u_input.d))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(1017f, _wgslsmith_f_op_f32(min(-883f, 397f))), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~50317u, 22u)] + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(848f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    global1 = array<f32, 22>();
    let var_1 = global3[_wgslsmith_index_u32(~1u ^ _wgslsmith_div_u32(~global0.x, u_input.d), 22u)];
    global2 = -(~(u_input.c & firstLeadingBit(2147483647i)));
    let var_2 = func_2(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1538f + _wgslsmith_f_op_f32(ceil(-1072f)))), Struct_1(vec2<f32>(-386f, arg_1))));
    return ~(~firstTrailingBit(min(vec3<u32>(global0.x, 26798u, 1u), vec3<u32>(0u, 17131u, var_2.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(1321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31038u, 22u)] + global1[_wgslsmith_index_u32(u_input.d, 22u)]) * _wgslsmith_f_op_f32(f32(-1f) * -2561f)) + _wgslsmith_f_op_f32(f32(-1f) * -137f))));
    global1 = array<f32, 22>();
    global3 = array<i32, 22>();
    let var_1 = countOneBits(max(vec3<u32>(reverseBits(global0.x | 12506u), 76784u, u_input.d), vec3<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_div_u32(u_input.d, 37195u)), _wgslsmith_mod_u32(~u_input.d, 0u), 11309u)));
    global3 = array<i32, 22>();
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, ~_wgslsmith_dot_vec3_u32(var_1, func_1(vec2<i32>(1i, u_input.b), -360f, vec2<bool>(false, false), vec3<f32>(var_0, global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)])))), 22u)] <= _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.e, _wgslsmith_div_vec2_i32(-u_input.e, -u_input.a.xz)), abs(u_input.e) & ~vec2<i32>(1i, u_input.e.x));
    var var_3 = Struct_3(u_input.e.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 22u)], 1523f, -221f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, var_0, var_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(140f, global1[_wgslsmith_index_u32(4294967295u, 22u)], -1592f), vec3<f32>(global1[_wgslsmith_index_u32(1u, 22u)], -508f, global1[_wgslsmith_index_u32(var_1.x, 22u)])))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(Struct_4(global1[_wgslsmith_index_u32(global0.x, 22u)], Struct_1(vec2<f32>(-2563f, global1[_wgslsmith_index_u32(1u, 22u)])))).a.x, var_0))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-258f + global1[_wgslsmith_index_u32(var_1.x, 22u)]) * var_0)), var_0, 1636f, -206f));
    global3 = array<i32, 22>();
    let var_4 = 1593f;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, vec2<f32>(347f, 406f));
}

