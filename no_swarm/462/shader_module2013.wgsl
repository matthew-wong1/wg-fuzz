struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<Struct_3, 13>;

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<f32>(-892f, -1974f, -462f, -114f), 12041u), Struct_2(vec4<f32>(-697f, -417f, -305f, -135f), 0u), Struct_2(vec4<f32>(-1497f, -826f, -774f, 1061f), 28839u), Struct_2(vec4<f32>(-665f, 690f, -461f, -417f), 4557u), Struct_2(vec4<f32>(-936f, -804f, -493f, 655f), 5559u), Struct_2(vec4<f32>(948f, 426f, -669f, -1908f), 1u), Struct_2(vec4<f32>(1045f, 252f, 695f, 2925f), 0u), Struct_2(vec4<f32>(351f, -1757f, 847f, 542f), 0u), Struct_2(vec4<f32>(1364f, 481f, -660f, 1017f), 4294967295u), Struct_2(vec4<f32>(-1324f, -1000f, 184f, 1621f), 1u), Struct_2(vec4<f32>(-468f, 1039f, -656f, -1774f), 4294967295u), Struct_2(vec4<f32>(-125f, 360f, 1666f, 180f), 17963u), Struct_2(vec4<f32>(-384f, 603f, -513f, 1336f), 7940u), Struct_2(vec4<f32>(-1472f, 1000f, 780f, 1718f), 21176u), Struct_2(vec4<f32>(-1564f, -694f, -261f, -513f), 4294967295u), Struct_2(vec4<f32>(1327f, 184f, -1499f, 1088f), 8941u), Struct_2(vec4<f32>(-1000f, 657f, 150f, -498f), 1u), Struct_2(vec4<f32>(-210f, -790f, 639f, 439f), 122384u), Struct_2(vec4<f32>(-1052f, -432f, 749f, 1402f), 41836u), Struct_2(vec4<f32>(1351f, 1489f, 505f, 508f), 10889u), Struct_2(vec4<f32>(-331f, -979f, -758f, 280f), 0u), Struct_2(vec4<f32>(-668f, -330f, -211f, 763f), 4294967295u), Struct_2(vec4<f32>(-443f, 494f, -1000f, 1319f), 73283u), Struct_2(vec4<f32>(-907f, 551f, -1077f, -365f), 23834u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> u32 {
    return arg_2.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_1.b;
    let var_1 = global1[_wgslsmith_index_u32(10338u, 13u)];
    return arg_0.b;
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(46202u, 13u)];
    global1 = array<Struct_3, 13>();
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(min(10306u, arg_0.x), 4294967295u, ~arg_0.x, 2682u), ~(var_0.a.e & vec4<u32>(var_0.a.e.x, 70611u, 28348u, 56851u))) << (select(var_0.a.e, arg_0, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(22453u, max(func_2(arg_0.x, var_0.a, vec4<u32>(arg_0.x, 4294967295u, 0u, 25156u)), func_3(global2[_wgslsmith_index_u32(var_0.b.x, 24u)], Struct_1(arg_0.yyw, false, var_0.a.c, u_input.a, arg_0), arg_0.wy))), 11u)]) % vec4<u32>(32u));
    var var_2 = vec2<bool>(true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) * _wgslsmith_f_op_f32(abs(var_0.a.c.x)))));
    var_2 = !vec2<bool>(var_2.x, var_2.x);
    return var_0.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 13>();
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    global1 = array<Struct_3, 13>();
    global2 = array<Struct_2, 24>();
    global1 = array<Struct_3, 13>();
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(func_1(~vec4<u32>(1u, 67789u, 21087u, 0u)), min(-2147483647i, u_input.a)), -u_input.a, 21074i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -41497i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, ~u_input.a))), vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1i, u_input.a)), vec2<i32>(firstLeadingBit(-47926i), i32(-1i) * -6816i)), _wgslsmith_clamp_i32(select(u_input.a, ~u_input.a, global0[_wgslsmith_index_u32(4294967295u, 11u)]), u_input.a, -u_input.a), reverseBits(u_input.a)));
    global0 = array<bool, 11>();
    var var_1 = Struct_1(~(~vec3<u32>(1u, 1u, 1u)) >> (min(min(vec3<u32>(18630u, 49080u, 0u), ~vec3<u32>(54103u, 51561u, 8873u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~abs(~vec2<u32>(34724u, 59531u)), vec2<u32>(1u, 1u)), 11u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) * _wgslsmith_f_op_f32(select(467f, -414f, true))), -1000f)), 0i, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), func_3(global2[_wgslsmith_index_u32(1050u, 24u)], Struct_1(vec3<u32>(0u, 1u, 46466u), false, vec3<f32>(-125f, 1250f, 1299f), var_0.x, vec4<u32>(9247u, 0u, 41095u, 1u)), vec2<u32>(0u, 14861u)) ^ ~0u, 1u), min(_wgslsmith_mod_vec4_u32(select(vec4<u32>(53456u, 4294967295u, 0u, 48478u), vec4<u32>(0u, 8309u, 0u, 0u), vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(32101u, 11u)])), vec4<u32>(59161u, 13184u, 25258u, 4294967295u)), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), firstLeadingBit(firstTrailingBit(select(vec4<u32>(4294967295u, 8609u, 50135u, 0u), vec4<u32>(1u, 0u, 121737u, 30819u), global0[_wgslsmith_index_u32(4294967295u, 11u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-min(var_0.zx, vec2<i32>(u_input.a, var_1.d)))), ~abs(var_0.zw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.c.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.c.x, 882f), var_1.c.zz))))) * _wgslsmith_f_op_vec2_f32(sign(var_1.c.zz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(select(-1000f, var_1.c.x, global0[_wgslsmith_index_u32(var_1.e.x, 11u)])))), -1949f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(211f, var_1.c.x), vec2<f32>(var_1.c.x, var_1.c.x)), var_1.c.yz))), var_1.c.zy);
}

