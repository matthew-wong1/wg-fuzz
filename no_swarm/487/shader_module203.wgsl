struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<u32>(42101u, 48419u, 21192u, 0u)), Struct_1(vec4<u32>(45650u, 65977u, 20696u, 0u)), Struct_1(vec4<u32>(1u, 0u, 45019u, 54823u)), Struct_1(vec4<u32>(12835u, 4294967295u, 26350u, 96086u)), Struct_1(vec4<u32>(4294967295u, 50842u, 1u, 0u)), Struct_1(vec4<u32>(4294967295u, 11905u, 14329u, 16642u)), Struct_1(vec4<u32>(72523u, 32387u, 30303u, 12729u)), Struct_1(vec4<u32>(40491u, 1u, 44573u, 31180u)), Struct_1(vec4<u32>(47620u, 0u, 24272u, 0u)), Struct_1(vec4<u32>(14988u, 22358u, 1u, 30489u)), Struct_1(vec4<u32>(73961u, 66223u, 0u, 43787u)), Struct_1(vec4<u32>(46287u, 4294967295u, 1u, 1u)), Struct_1(vec4<u32>(1u, 1u, 0u, 23255u)), Struct_1(vec4<u32>(132919u, 1u, 4294967295u, 37980u)), Struct_1(vec4<u32>(1u, 0u, 13022u, 44541u)), Struct_1(vec4<u32>(4294967295u, 38601u, 18141u, 0u)), Struct_1(vec4<u32>(8942u, 1u, 56156u, 21910u)), Struct_1(vec4<u32>(58496u, 19437u, 7045u, 59991u)));

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true));

var<private> global2: f32;

var<private> global3: f32 = -349f;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> i32 {
    global0 = array<Struct_1, 18>();
    var var_0 = firstTrailingBit(max(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(19014u, arg_0.x), arg_0.yz))), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, 86041u), arg_0.yy) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(46335u, u_input.c), u_input.b.xy) % vec2<u32>(32u))));
    global1 = array<vec4<bool>, 5>();
    global0 = array<Struct_1, 18>();
    let var_1 = 77415u;
    return abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), max(vec2<i32>(u_input.a, u_input.a), firstTrailingBit(vec2<i32>(u_input.a, arg_1.a)))) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1 << (arg_0.x % 32u), arg_0.x), 7009u) % 32u));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global4 = ~min(arg_3.b.a.x, ~reverseBits(abs(25553u)));
    let var_0 = Struct_3(func_3(_wgslsmith_mult_vec3_u32(arg_3.b.a.xxz, arg_3.b.a.zyw), Struct_3(-u_input.a)));
    var var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(arg_3.b.a, reverseBits(u_input.d)), vec4<u32>(arg_3.b.a.x, 4294967295u, arg_3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.x, 8725u, arg_3.b.a.x, 1u), vec4<u32>(arg_3.a.x, arg_3.b.a.x, arg_3.a.x, u_input.b.x))), arg_3.b.a), ~arg_3.b.a);
    var var_2 = -u_input.a >> (u_input.c % 32u);
    var var_3 = 912f;
    return global0[_wgslsmith_index_u32(~1u, 18u)];
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: i32) -> vec3<i32> {
    let var_0 = func_2(all(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2 < 85710u, true, all(vec4<bool>(false, false, true, false)), false), true)), true, false, Struct_2(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~arg_0.a.wy, vec2<u32>(0u, arg_1)), ~vec2<u32>(arg_2, arg_1)), Struct_1(arg_0.a)));
    let var_1 = 35802i;
    let var_2 = func_2(true, true, false, Struct_2(max(firstLeadingBit(abs(arg_0.a.xx)), vec2<u32>(firstLeadingBit(12418u), firstLeadingBit(u_input.b.x))), func_2(true, true, true, Struct_2(u_input.b.xx, func_2(false, true, true, Struct_2(var_0.a.ww, Struct_1(var_0.a)))))));
    let var_3 = arg_1;
    var var_4 = func_3(~vec3<u32>(~arg_1, arg_0.a.x, ~var_0.a.x) ^ arg_0.a.yxz, Struct_3(reverseBits(arg_3 >> ((arg_2 ^ 67123u) % 32u))));
    return -(vec3<i32>(1i, -52506i, 50175i) & _wgslsmith_sub_vec3_i32(select(-vec3<i32>(-5088i, u_input.a, -4809i), vec3<i32>(1i, -25334i, 34455i) | vec3<i32>(arg_3, 0i, arg_3), 1u < var_0.a.x), firstLeadingBit(vec3<i32>(0i, 0i, 0i)) ^ max(vec3<i32>(arg_3, -8887i, -54234i), vec3<i32>(u_input.a, u_input.a, var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0[_wgslsmith_index_u32(~4294967295u, 18u)], 109152u, 0u, _wgslsmith_mult_i32(abs(_wgslsmith_add_i32(-u_input.a, 2147483647i)), ~u_input.a));
    global4 = u_input.d.x;
    var var_1 = 4294967295u;
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(592f, -1839f)) - -1755f))));
    var var_2 = vec4<u32>(u_input.b.x, ~_wgslsmith_mult_u32(~(u_input.d.x ^ u_input.b.x), 42519u), ~_wgslsmith_mult_u32(~(~4294967295u), u_input.d.x), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), ~(~vec3<u32>(307u, u_input.c, 4046u))) & _wgslsmith_mult_u32(u_input.c, 4294967295u));
    let var_3 = ~vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_2.x), vec2<u32>(1u, var_2.x)), 1u, ~(4294967295u | u_input.c)) & select(~_wgslsmith_add_vec4_u32(~u_input.d, u_input.d), abs(u_input.d), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, ~4294967295u), 5u)]);
    let var_4 = -var_0;
    let var_5 = Struct_1(u_input.d);
    let var_6 = 130f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1533f, 580f));
}

