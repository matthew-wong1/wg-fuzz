struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<f32, 18> = array<f32, 18>(-1685f, -105f, -218f, 1485f, -391f, 1000f, 1160f, 1007f, -388f, 1308f, -1251f, 977f, 1000f, 1000f, -719f, 807f, 995f, 2423f);

var<private> global2: array<Struct_4, 14>;

var<private> global3: array<i32, 15>;

var<private> global4: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<f32>) -> bool {
    global1 = array<f32, 18>();
    global2 = array<Struct_4, 14>();
    global2 = array<Struct_4, 14>();
    global2 = array<Struct_4, 14>();
    var var_0 = _wgslsmith_mult_i32(min(u_input.b.x, 11974i), _wgslsmith_div_i32(1i, global4.b));
    return false;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global0 = u_input.c.x;
    var var_0 = ~(u_input.c >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, ~u_input.c.x, arg_0.d.e, ~55472u), reverseBits(~vec4<u32>(global4.e, 92861u, 4294967295u, 4294967295u))) % vec4<u32>(32u)));
    let var_1 = any(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false), false)));
    var var_2 = select(vec3<bool>(any(vec2<bool>(true, any(vec2<bool>(true, true)))), var_1, select(true, true, true)), !select(vec3<bool>(true, func_2(false, var_0.xwy, arg_2, vec3<f32>(946f, 276f, 1481f)), global1[_wgslsmith_index_u32(1u, 18u)] < global1[_wgslsmith_index_u32(27149u, 18u)]), vec3<bool>(arg_0.b.a >= global4.b, true, !var_1), var_1), select(false, !(!var_1), var_1));
    let var_3 = 1357f;
    return select(_wgslsmith_clamp_u32(~max(4294967295u, _wgslsmith_add_u32(1u, 19774u)), global4.e, ~abs(~0u)), 11853u, var_1);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = ~(~u_input.c.wy) << (u_input.c.zx % vec2<u32>(32u));
    var var_1 = !any(vec2<bool>(false, true));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~18672u, 18u)]))), _wgslsmith_f_op_f32(select(-633f, global1[_wgslsmith_index_u32(67722u | func_1(Struct_4(4712i, arg_0, global3[_wgslsmith_index_u32(global4.e, 15u)], arg_0, u_input.b), global4.d, global4.d), 18u)], true))));
    var var_3 = ~max(u_input.c.x | (u_input.c.x << (u_input.c.x % 32u)), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c.xxy), select(vec3<u32>(var_0.x, u_input.c.x, 728u), u_input.c.xzz, vec3<bool>(true, true, false))));
    let var_4 = arg_2.zz;
    return Struct_1(~u_input.c.xz, vec4<u32>(arg_0.e, global4.e, abs(~u_input.c.x), abs(global4.e)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_3 {
    global2 = array<Struct_4, 14>();
    let var_0 = _wgslsmith_div_u32(4705u, u_input.c.x);
    global2 = array<Struct_4, 14>();
    let var_1 = global4.d;
    let var_2 = vec3<bool>(false, true, false);
    return Struct_3(_wgslsmith_div_i32((-u_input.b.x | 0i) | global4.a, ~(~var_1.a)), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10170u, firstLeadingBit(~var_0), _wgslsmith_add_u32(_wgslsmith_mult_u32(global4.e, 4294967295u), _wgslsmith_div_u32(var_0, 1u))), 15u)], 13349i), -(global3[_wgslsmith_index_u32(countOneBits(u_input.c.x), 15u)] << (0u % 32u)), Struct_2(2147483647i), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec2<i32>(-_wgslsmith_sub_i32(~global3[_wgslsmith_index_u32(u_input.c.x, 15u)], ~494i), global4.b);
    global4 = Struct_3(_wgslsmith_div_i32(20753i, 29160i), global3[_wgslsmith_index_u32(20141u, 15u)], _wgslsmith_mult_i32(~1i, 0i ^ ~u_input.a), global4.d, global4.e);
    var var_1 = func_4(func_3(Struct_3(abs(global3[_wgslsmith_index_u32(func_1(global2[_wgslsmith_index_u32(38169u, 14u)], Struct_2(var_0.x), global4.d), 15u)]), firstLeadingBit(var_0.x), 1i, global4.d, ~(~41853u)), Struct_2((i32(-1i) * -59975i) >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 267f, 1761f))), vec2<i32>(-10133i, global3[_wgslsmith_index_u32(4294967295u, 15u)] >> (u_input.c.x % 32u)) ^ vec2<i32>(-1i | u_input.a, _wgslsmith_add_i32(774i, 858i))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.c.x, 18u)]))), global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(0u)), 18u)]), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(659f + -1378f), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 18u)])))))));
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17136u, 18u)]);
    var var_3 = Struct_4(-_wgslsmith_add_i32(1289i, ~(~global4.b)), Struct_3(var_1.a, -2147483647i, min(11655i, -1i), var_1.d, 4294967295u), var_0.x ^ _wgslsmith_mult_i32(global4.a, global4.c), func_4(Struct_1(_wgslsmith_add_vec2_u32(~u_input.c.yz, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 62354u), vec2<u32>(global4.e, global4.e))), select(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(102488u, global4.e, global4.e, global4.e)), _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(21048u, var_1.e, 0u, u_input.c.x)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1119f, 941f)))), u_input.b);
    var var_4 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~countOneBits(u_input.c), 1u, 233f, func_4(func_3(Struct_3(var_3.d.b, global3[_wgslsmith_index_u32(83291u, 15u)], global3[_wgslsmith_index_u32(global4.e, 15u)], Struct_2(global4.c), 41663u), func_4(Struct_1(u_input.c.xz, vec4<u32>(u_input.c.x, global4.e, 67485u, u_input.c.x)), vec2<f32>(956f, -532f)).d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1416f, global1[_wgslsmith_index_u32(var_1.e, 18u)], 1265f))), vec2<i32>(24740i, 1i) >> (u_input.c.wx % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, global1[_wgslsmith_index_u32(global4.e, 18u)]))).e & ~global4.e);
}

