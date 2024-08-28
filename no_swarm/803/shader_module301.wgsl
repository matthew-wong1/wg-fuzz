struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(34002u, 1u, 105243u, 132171u, 45936u, 23847u, 76072u, 25610u, 13002u, 4294967295u, 4294967295u, 1u, 0u, 1u);

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: u32 = 58288u;

var<private> global3: array<bool, 8> = array<bool, 8>(false, false, true, true, false, true, false, false);

var<private> global4: vec2<i32> = vec2<i32>(-1i, 2147483647i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> f32 {
    global2 = 4330u;
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(ceil(-680f));
    let var_2 = ~select(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(1i, var_0.d, arg_1.a.e.x, global4.x)), var_0.a.e), vec4<i32>(abs(global4.x), -60578i, _wgslsmith_add_i32(-35987i, 1i), arg_1.a.e.x), vec4<bool>(all(select(vec4<bool>(var_0.b, true, false, arg_1.b), vec4<bool>(arg_1.a.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 8u)], true, true), false)), select(var_0.b, var_0.a.b.x, arg_0), global1.x, all(vec3<bool>(arg_1.b, true, arg_1.a.c))));
    global0 = array<u32, 14>();
    return -678f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_4(Struct_2(Struct_1(arg_0.a, !vec2<bool>(global3[_wgslsmith_index_u32(67760u, 8u)], arg_0.b.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(24765u, 4294967295u, 27717u, 4294967295u)), u_input.b), 8u)], 0u, ~vec4<i32>(global4.x, u_input.a.x, -15692i, u_input.a.x) & reverseBits(arg_0.e)), false, ~((vec4<u32>(u_input.b.x, 0u, 66673u, arg_1.x) >> (vec4<u32>(arg_0.d, 4294967295u, 1906u, arg_1.x) % vec4<u32>(32u))) ^ u_input.b), -1i, -790f));
    var var_1 = Struct_3(global1.xx);
    let var_2 = Struct_3(global1.zz);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)) * arg_0.a)))) - var_0.a.e);
    var var_4 = var_0.a.c.x;
    return arg_0.e.yy;
}

fn func_2() -> i32 {
    global4 = func_4(Struct_1(_wgslsmith_f_op_f32(func_3(false, Struct_2(Struct_1(-1000f, global1.zx, global3[_wgslsmith_index_u32(1u, 8u)], u_input.b.x, vec4<i32>(-5730i, u_input.a.x, 14103i, u_input.a.x)), all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 8u)], true)), u_input.b & u_input.b, u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -261f)))), !vec2<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 8u)], true, false)), !global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 8u)]), false, u_input.b.x, ~abs(-vec4<i32>(-39365i, u_input.a.x, -25039i, u_input.a.x))), u_input.b.yww ^ vec3<u32>(111099u, _wgslsmith_clamp_u32(~4294967295u, ~83572u, 91354u), (405u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)]) << (1u % 32u)));
    var var_0 = vec2<bool>(!(select(all(global1.yz), true, global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(106416u, 14u)], 8u)]) && (all(vec3<bool>(false, true, false)) & false)), true);
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(903f)), vec2<bool>(true, var_0.x), var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], vec4<i32>(firstTrailingBit(global4.x), firstTrailingBit(global4.x), global4.x, countOneBits(u_input.a.x))), false, u_input.b, -1i | _wgslsmith_mult_i32(-u_input.a.x, global4.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(106f)) + 949f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2223f, -222f)))))));
    let var_2 = vec2<bool>(false, ~(~u_input.b.x) < 112374u);
    let var_3 = -346f;
    return abs(var_1.a.a.e.x);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(473f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1000f, 1505f, global3[_wgslsmith_index_u32(u_input.b.x, 8u)])))))));
    global3 = array<bool, 8>();
    let var_1 = !vec4<bool>(global1.x, func_2() < -16477i, true, true);
    global1 = var_1.xyz;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(-621f)), !select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 8u)]), !var_1.wy, vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 8u)], false)), global1.x, _wgslsmith_div_u32(reverseBits(global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), _wgslsmith_mod_vec4_i32(abs(min(vec4<i32>(2180i, 14405i, 0i, -2147483647i), vec4<i32>(global4.x, 4777i, 3901i, u_input.a.x))), vec4<i32>(-14633i << (global0[_wgslsmith_index_u32(50680u, 14u)] % 32u), -12131i, -8355i, 1i))), all(!select(select(var_1, var_1, vec4<bool>(global1.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 8u)], false, global1.x)), var_1, !global3[_wgslsmith_index_u32(u_input.b.x, 8u)])), vec4<u32>(~9001u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 14u)], u_input.b.x), ~(-12363i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1000f));
    return var_2.a.d > var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~4294967295u);
    var var_0 = ~u_input.b.x;
    global1 = select(vec3<bool>(!func_1(), true, global1.x), select(select(!select(vec3<bool>(false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61641u, 14u)], 14u)], 8u)], global3[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(!vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 8u)], global3[_wgslsmith_index_u32(1u, 8u)], global1.x), vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 14u)], 8u)], false, true), !vec3<bool>(global1.x, false, false)), select(!vec3<bool>(global1.x, global3[_wgslsmith_index_u32(47980u, 8u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 8u)], false), !vec3<bool>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22203u, 14u)], 14u)], 8u)], global3[_wgslsmith_index_u32(20072u, 8u)], global1.x))), !(!vec3<bool>(global3[_wgslsmith_index_u32(12639u, 8u)], false, false)), vec3<bool>(u_input.b.x >= max(4294967295u, u_input.b.x), func_1(), !select(false, global1.x, true))), true);
    var_0 = ~countOneBits(0u);
    var var_1 = firstTrailingBit(~(-2147483647i)) >= ~1i;
    let var_2 = select(1u, reverseBits(u_input.b.x), -313f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1548f)))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1279f)), select(select(global1.zy, !global1.xz, !global1.xy), !vec2<bool>(true, global3[_wgslsmith_index_u32(var_2, 8u)]), global1.zz), global1.x, global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(4294967295u | global0[_wgslsmith_index_u32(19417u, 14u)], 4294967295u), 4294967295u >> (var_2 % 32u)), 14u)], -(~firstLeadingBit(vec4<i32>(global4.x, 2147483647i, -28641i, global4.x)))), global3[_wgslsmith_index_u32(~(~u_input.b.x), 8u)], abs(abs(_wgslsmith_mult_vec4_u32(min(vec4<u32>(4658u, 4294967295u, 1u, u_input.b.x), u_input.b), vec4<u32>(u_input.b.x, 4294967295u, var_2, 46580u)))), 0i, -554f);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-38077i, var_3.d, var_3.a.e.x, u_input.a.x), vec4<i32>(-1i, -2147483647i, var_3.a.e.x, 0i)), -23256i), ~var_3.a.e.yzw), ~(_wgslsmith_div_vec3_i32(var_3.a.e.wxy, vec3<i32>(-1i, -52221i, global4.x)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a.x, var_3.d), var_3.a.e.xwz)), !(false & var_3.a.b.x) && true), select(min(vec4<u32>(reverseBits(global0[_wgslsmith_index_u32(129167u, 14u)]), min(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 9094u), max(var_3.a.d, var_3.c.x), 1u | u_input.b.x), vec4<u32>(~var_3.c.x, 54212u, ~1u, abs(74808u))), ~(~u_input.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(709f - -876f), var_3.a.a)) <= -1051f));
}

