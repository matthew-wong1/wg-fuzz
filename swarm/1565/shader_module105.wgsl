struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(110577u, 0u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 18677u), vec2<u32>(0u, 39815u), vec2<u32>(26317u, 29893u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 10915u), vec2<u32>(10460u, 4294967295u), vec2<u32>(5568u, 14043u), vec2<u32>(1u, 88421u), vec2<u32>(45366u, 39229u), vec2<u32>(88574u, 1u), vec2<u32>(0u, 0u), vec2<u32>(26910u, 5814u), vec2<u32>(11169u, 4294967295u), vec2<u32>(16172u, 4294967295u), vec2<u32>(21209u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(18458u, 40625u), vec2<u32>(77586u, 4294967295u), vec2<u32>(16365u, 85271u), vec2<u32>(23212u, 13536u), vec2<u32>(4294967295u, 43538u), vec2<u32>(74541u, 1u), vec2<u32>(4294967295u, 9897u));

var<private> global2: array<Struct_5, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = true;
    let var_0 = _wgslsmith_mod_u32(~1u, 8162u);
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_mod_i32(-1066i, u_input.d)), u_input.d, -1716i, u_input.d), -vec4<i32>(u_input.d, -1i, ~(-20521i), -1i)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(~48899u, 1u, 1u), vec3<u32>(u_input.b.x & 1u, _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(6287u, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)]), 4294967295u)), 1u, all(vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, ~43208u), vec3<u32>(~arg_0, ~arg_0, 1267u)), 99566u);
    var_1 = Struct_1(vec4<i32>(u_input.d, -_wgslsmith_clamp_i32(-30246i, u_input.d, -30860i) << ((~68899u ^ var_0) % 32u), _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(34098i, 0i), vec2<i32>(var_1.a.x, u_input.d))), var_1.a.x, u_input.d), abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, -2147483647i, -15271i), var_1.a), ~var_1.a))), var_0, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 27068u), global1[_wgslsmith_index_u32(0u, 26u)])), var_0, ~(u_input.b.x << (var_1.b % 32u))), ~var_1.c), ~(~(~_wgslsmith_add_u32(u_input.e, u_input.b.x))));
    var_1 = Struct_1(vec4<i32>(56618i, 1i, -6840i, var_1.a.x), ~(~0u), ~_wgslsmith_div_vec3_u32(min(~vec3<u32>(arg_0, 1u, 4294967295u), var_1.c), firstTrailingBit(var_1.c)), min(~(~var_0), arg_0));
    return ~var_1.b;
}

fn func_2(arg_0: vec2<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(vec4<i32>(u_input.d, 9060i, arg_0.x, arg_0.x) >> (vec4<u32>(u_input.c, 36143u, 35002u, 57155u) % vec4<u32>(32u))) | countOneBits(~vec4<i32>(26252i, -2147483647i, -36098i, u_input.d)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.c, 4294967295u, 1u), vec4<u32>(u_input.e, 0u, 35947u, u_input.e) << (vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) & ~1u, u_input.a ^ select(u_input.a, min(u_input.a, u_input.a), vec3<bool>(true, false, false)), 17199u));
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a.a, ~(~1u), vec3<u32>(~var_0.a.c.x, abs(var_0.a.b), func_3(4294967295u)), var_0.a.c.x)), 2036u, ~(~_wgslsmith_clamp_i32(2147483647i, u_input.d, var_0.a.a.x) ^ 12429i), Struct_2(Struct_1(vec4<i32>(arg_0.x, abs(u_input.d), arg_0.x, _wgslsmith_clamp_i32(-1i, arg_0.x, -2147483647i)), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(var_0.a.d, 26u)], vec2<u32>(101767u, 2807u)), reverseBits(u_input.a), 4294967295u)));
    let var_2 = vec4<bool>(any(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), all(vec3<bool>(!any(vec2<bool>(false, false)), true, false)), any(vec4<bool>(true, true, true, true)), 13655i == min(11885i, var_0.a.a.x));
    let var_3 = -var_1.d.a.a.yxw;
    let var_4 = Struct_4(u_input.a, var_1, Struct_3(var_1.a, u_input.e ^ 11576u, abs(1i), Struct_2(Struct_1(var_0.a.a, var_0.a.c.x, firstLeadingBit(var_0.a.c), u_input.e))));
    return all(select(!var_2, var_2, select(var_2, !select(var_2, vec4<bool>(false, false, true, false), var_2.x), true)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> vec2<i32> {
    var var_0 = vec3<bool>(!func_2(arg_2.zx), !(false | arg_1), true || (any(vec3<bool>(false, false, false)) || (-886f == _wgslsmith_f_op_f32(floor(1000f)))));
    var_0 = select(!(!vec3<bool>(true, true, var_0.x)), select(!vec3<bool>(var_0.x, false & arg_1, arg_1), vec3<bool>(!all(var_0.xz), func_2(vec2<i32>(arg_2.x, u_input.d)), var_0.x), arg_1), any(select(var_0.yx, vec2<bool>(false, func_2(vec2<i32>(-30258i, -2147483647i))), select(var_0.yz, vec2<bool>(var_0.x, arg_1), !var_0.yx))));
    var var_1 = arg_0;
    var var_2 = global2[_wgslsmith_index_u32(reverseBits(min(arg_0, select(~arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, arg_0)) & select(arg_0, arg_0, var_0.x), !(!var_0.x)))), 11u)];
    let var_3 = max(u_input.e, _wgslsmith_mod_u32(~(~min(u_input.c, arg_0)), arg_0 | u_input.a.x));
    return arg_2.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = -(_wgslsmith_add_vec2_i32(vec2<i32>(~u_input.d, abs(u_input.d)), func_1(~u_input.b.x, all(vec4<bool>(false, true, true, false)), -vec4<i32>(u_input.d, u_input.d, u_input.d, 5499i))) ^ _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d, -22565i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-385i, -860i), vec2<i32>(-1i, 0i), vec2<i32>(1i, 0i))), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.d, u_input.d), -vec2<i32>(2147483647i, 1i))));
    var var_1 = Struct_5(global1[_wgslsmith_index_u32(1u << (~(u_input.b.x << (u_input.c % 32u)) % 32u), 26u)] >> (u_input.a.zx % vec2<u32>(32u)));
    let var_2 = _wgslsmith_sub_i32(-(71835i ^ func_1(u_input.a.x, true, min(vec4<i32>(var_0.x, -1i, var_0.x, -1i), vec4<i32>(-45374i, 1i, var_0.x, -1i))).x), -1i);
    var var_3 = Struct_4(~vec3<u32>(~(~u_input.b.x), select(firstLeadingBit(38321u), 1u, select(false, false, true)), 1u), Struct_3(Struct_2(Struct_1(vec4<i32>(var_2, var_0.x, 0i, var_2), u_input.c, reverseBits(u_input.a), u_input.e)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 43735u, 35083u), vec4<u32>(1u, var_1.a.x, 0u, 23201u)) & max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.a.x, 4294967295u), vec3<u32>(var_1.a.x, 4294967295u, var_1.a.x)), u_input.b.x), var_2, Struct_2(Struct_1(reverseBits(vec4<i32>(u_input.d, var_2, 2147483647i, 30442i)), 0u, ~vec3<u32>(1u, var_1.a.x, 0u), ~1u))), Struct_3(Struct_2(Struct_1(-vec4<i32>(0i, 48292i, -16543i, -2147483647i), 0u, u_input.a, _wgslsmith_div_u32(4294967295u, u_input.e))), 1u, u_input.d, Struct_2(Struct_1(~vec4<i32>(-16293i, u_input.d, u_input.d, var_2), 4294967295u, min(vec3<u32>(u_input.e, 1u, 4294967295u), vec3<u32>(64837u, var_1.a.x, 4294967295u)), 4294967295u))));
    let var_4 = var_3.c;
    var var_5 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~countOneBits(var_1.a.x >> (0u % 32u))), var_3.b.a.a.c.x), 11u)];
    var var_6 = -u_input.d;
    var var_7 = Struct_5(firstLeadingBit(countOneBits(~firstLeadingBit(var_4.d.a.c.yy))));
    let x = u_input.a;
    s_output = StorageBuffer(67928i, ~(~_wgslsmith_add_vec3_u32(var_4.d.a.c, vec3<u32>(18222u, 4294967295u, 1u))), 1u, ~select(~vec4<u32>(24851u, 0u, var_4.d.a.b, var_4.b) & min(vec4<u32>(var_1.a.x, var_4.b, 4294967295u, var_3.b.d.a.d), vec4<u32>(1u, 4294967295u, u_input.c, var_1.a.x)), countOneBits(~vec4<u32>(var_3.a.x, u_input.a.x, var_4.b, 45975u)), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true))));
}

