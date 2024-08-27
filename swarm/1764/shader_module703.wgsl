struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<i32, 27> = array<i32, 27>(6009i, 32402i, -1i, 2147483647i, 38930i, -32009i, 0i, -34572i, -19823i, -37791i, 2147483647i, -28118i, 1i, 2147483647i, 2147483647i, -24515i, -15144i, 2147483647i, 11587i, -87910i, -12316i, -47237i, -23221i, 1i, 1i, 2147483647i, 2147483647i);

var<private> global2: array<Struct_3, 9>;

var<private> global3: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = all(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, false)), vec3<bool>(0u > u_input.a, false, global1[_wgslsmith_index_u32(4294967295u, 27u)] <= -2147483647i), vec3<bool>(true, true, true)));
    global2 = array<Struct_3, 9>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1236f, 661f)));
    let var_2 = global2[_wgslsmith_index_u32(1u, 9u)];
    let var_3 = vec2<i32>(var_2.b.c, min(~(~_wgslsmith_div_i32(global1[_wgslsmith_index_u32(35612u, 27u)], var_2.b.c)), _wgslsmith_div_i32(max(var_2.b.c, -2147483647i), -var_2.b.c) & var_2.b.c));
    return i32(-1i) * -global1[_wgslsmith_index_u32(0u, 27u)];
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(abs(arg_2.x) << ((arg_0.d << (41693u % 32u)) % 32u), 1i)), -1i);
    global1 = array<i32, 27>();
    var var_1 = ~(_wgslsmith_sub_u32(4294967295u, u_input.a) << (reverseBits(10148u) % 32u));
    global1 = array<i32, 27>();
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(max(_wgslsmith_mult_i32(arg_2.x, ~var_0), _wgslsmith_mod_i32(-1i, arg_0.c)), 1i), func_3(), func_3());
    return vec4<u32>(~(~(u_input.a << (arg_1.b.d % 32u))) | reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(10395u, 44015u, 4294967295u, 3600u), firstTrailingBit(vec4<u32>(8118u, arg_0.d, arg_1.b.d, arg_1.b.d)))), ~_wgslsmith_dot_vec4_u32(select(max(vec4<u32>(arg_1.b.d, 4294967295u, 77085u, 4294967295u), vec4<u32>(0u, arg_1.b.d, u_input.a, arg_1.b.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.d, 4294967295u, 0u, arg_1.a.d), vec4<u32>(4294967295u, 4294967295u, u_input.a, arg_0.d), vec4<u32>(1u, arg_1.b.d, 4294967295u, 18307u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.d, 30963u, 4294967295u), vec3<u32>(38735u, 0u, 4294967295u)), 29u)]), vec4<u32>(arg_0.d, u_input.a, arg_1.a.d, 0u) >> (select(vec4<u32>(0u, arg_0.d, u_input.a, 0u), vec4<u32>(26816u, arg_0.d, u_input.a, arg_0.d), vec4<bool>(arg_1.c, arg_0.b, false, true)) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(countOneBits(arg_1.b.d), 3019u, ~1u), ~vec3<u32>(0u, u_input.a | arg_0.d, min(arg_0.d, arg_0.d))), ~0u);
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> vec3<i32> {
    global1 = array<i32, 27>();
    let var_0 = ~max(41780u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(arg_0.x, u_input.a) | ~arg_0));
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    global2 = array<Struct_3, 9>();
    return reverseBits(max(~(_wgslsmith_div_vec3_i32(vec3<i32>(21959i, 2147483647i, global1[_wgslsmith_index_u32(1u, 27u)]), vec3<i32>(0i, 2147483647i, 34630i)) >> (abs(vec3<u32>(arg_0.x, 1u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(0i), abs(global1[_wgslsmith_index_u32(u_input.a, 27u)]), ~5737i), ~(~vec3<i32>(14909i, -35843i, -44372i)))));
}

fn func_1() -> vec3<i32> {
    var var_0 = global2[_wgslsmith_index_u32(~4294967295u, 9u)];
    var var_1 = vec2<f32>(1f, 1f);
    let var_2 = -countOneBits(vec2<i32>(max(-54012i, ~var_0.a.c), global1[_wgslsmith_index_u32(~(~23946u), 27u)]));
    let var_3 = ~_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, 107734u) & ~var_0.b.d, 1245u), 1u);
    var var_4 = func_4(~vec2<u32>(_wgslsmith_dot_vec4_u32(func_2(Struct_1(var_0.c, var_0.a.a, var_2.x, 1u), global2[_wgslsmith_index_u32(34486u, 9u)], vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 27u)])), vec4<u32>(1u, var_3, 1u, 4294967295u)), u_input.a), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(847f, var_1.x)) * -701f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_div_f32(var_1.x, var_1.x))));
    return -vec3<i32>(var_0.b.c, min((var_2.x >> (var_3 % 32u)) >> (var_0.b.d % 32u), global1[_wgslsmith_index_u32(~var_0.a.d, 27u)]), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(countOneBits(-9154i), func_1(), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1372f), -408f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -294f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1567f)))) * -941f)), Struct_2(Struct_1(true, false, ~reverseBits(7160i), u_input.a >> (reverseBits(u_input.a) % 32u))), Struct_1(any(vec4<bool>(true, true, true, true)), true, 6343i, 1u));
    let var_1 = Struct_4(~global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(33522u, 15913u), var_0.e.d), 27u)] << ((_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, var_0.d.a.d)), ~vec2<u32>(var_0.d.a.d, 1u)) ^ 34894u) % 32u), countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], _wgslsmith_mod_i32(-1i, global1[_wgslsmith_index_u32(var_0.d.a.d, 27u)]), var_0.d.a.c) | (vec3<i32>(-1i) * -vec3<i32>(-1i, global1[_wgslsmith_index_u32(0u, 27u)], -14812i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(-var_0.c)), var_0.c, true))), Struct_2(Struct_1(~var_0.d.a.d <= 1507u, any(vec2<bool>(true, true)), -2147483647i, u_input.a)), var_0.d.a);
    var var_2 = func_2(Struct_1(true, true, 1i, ~var_0.d.a.d), Struct_3(Struct_1(true, var_0.d.a.b, -2147483647i, _wgslsmith_mult_u32(func_2(Struct_1(var_1.d.a.a, var_1.e.a, var_0.a, var_1.e.d), global2[_wgslsmith_index_u32(48788u, 9u)], var_0.b.yy).x, u_input.a)), Struct_1(!all(vec3<bool>(var_1.d.a.a, false, true)), true, select(abs(20206i), -var_0.b.x, all(vec3<bool>(var_0.d.a.b, true, true))), abs(~u_input.a)), true | var_1.d.a.b), -((-var_1.b.yy << (_wgslsmith_add_vec2_u32(vec2<u32>(48471u, 9399u), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))) >> (abs(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))).x;
    var_2 = 0u;
    var_2 = u_input.a;
    global2 = array<Struct_3, 9>();
    var var_3 = ~vec3<i32>(_wgslsmith_mult_i32(var_0.e.c, -14466i), var_1.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.c, 1i, var_1.d.a.c, var_1.d.a.c), vec4<i32>(global1[_wgslsmith_index_u32(var_1.e.d, 27u)], var_1.e.c, var_0.e.c, -14834i)) | reverseBits(global1[_wgslsmith_index_u32(var_0.e.d, 27u)]), -2147483647i));
    global1 = array<i32, 27>();
    let var_4 = _wgslsmith_f_op_f32(-2257f - 569f);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x);
}

