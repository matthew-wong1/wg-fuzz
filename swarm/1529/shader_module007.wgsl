struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 11>;

var<private> global2: array<vec4<u32>, 11>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    global1 = array<Struct_2, 11>();
    let var_0 = select(-reverseBits(-arg_0.c.a.zzz), _wgslsmith_mult_vec3_i32(arg_0.b.a.zxy, -(reverseBits(vec3<i32>(u_input.b.x, 20047i, 1i)) ^ (arg_0.c.a.xzx | arg_0.b.a.yxw))), true);
    global1 = array<Struct_2, 11>();
    var var_1 = Struct_3(-u_input.b.x | -countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.x, arg_1.x, arg_0.c.a.x), arg_0.c.a)), arg_0.b, arg_0.c);
    global0 = var_0.x;
    return Struct_1(-vec4<i32>(-u_input.b.x, var_1.a, reverseBits(arg_1.x >> (45613u % 32u)), 0i), vec2<bool>((true || all(vec3<bool>(var_1.b.b.x, false, false))) && (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(107876u, 3343u, u_input.c)) < 4294967295u), true));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = func_2(Struct_3(-14093i, Struct_1(vec4<i32>(-1i) * -vec4<i32>(arg_0.b.a.x, -2147483647i, 82523i, arg_0.b.a.x), vec2<bool>(arg_0.b.b.x, arg_0.b.b.x != true)), arg_0.b), ~select(vec2<i32>(u_input.b.x, 1i), _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, vec2<i32>(u_input.b.x, arg_0.b.a.x)), !vec2<bool>(arg_0.c.b.x, true)) >> (vec2<u32>(u_input.a, max(u_input.a, ~33299u)) % vec2<u32>(32u)));
    global1 = array<Struct_2, 11>();
    var_0 = arg_0.c;
    var var_1 = i32(-1i) * -68568i;
    var_1 = var_0.a.x;
    return -394f;
}

fn func_3(arg_0: i32, arg_1: i32) -> vec4<i32> {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(arg_1, arg_0) ^ _wgslsmith_mult_i32(min(7717i, arg_0) ^ 13197i, -13032i), arg_0, select(firstTrailingBit(_wgslsmith_clamp_i32(u_input.b.x, 21128i, -1i) >> (countOneBits(u_input.a) % 32u)), -arg_1, (true | any(vec3<bool>(false, false, true))) | true), 8001i);
    var var_1 = countOneBits(55224u);
    let var_2 = ~_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(1u, ~u_input.a)) << (0u % 32u);
    global2 = array<vec4<u32>, 11>();
    return ~var_0;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~arg_1), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(75172u, 5423u, arg_1)), ~vec3<u32>(arg_1, 1u, arg_1)))), 11u)];
    var var_1 = vec3<u32>(~(~arg_1), ~(~(~_wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.a))), countOneBits(1331u));
    var var_2 = ~reverseBits(var_1.x);
    let var_3 = u_input.a;
    let var_4 = Struct_3(arg_3.b.a.x, Struct_1(arg_2.b.a, select(!vec2<bool>(arg_3.b.b.x, arg_3.b.b.x), select(func_2(arg_2, u_input.b).b, !vec2<bool>(arg_3.c.b.x, arg_3.b.b.x), true), arg_2.c.b)), Struct_1(vec4<i32>(arg_3.a, 1i, -1i, u_input.b.x), vec2<bool>(false, _wgslsmith_sub_i32(6773i, arg_3.a) < 1i)));
    return var_4.c;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = u_input.b.x;
    global0 = 1i;
    let var_0 = Struct_3(-abs(-86389i), Struct_1(_wgslsmith_sub_vec4_i32(-arg_2.a, -vec4<i32>(arg_0, -26531i, 45413i, arg_0)) | arg_2.a, select(arg_2.b, arg_2.b, true)), arg_2);
    global1 = array<Struct_2, 11>();
    global2 = array<vec4<u32>, 11>();
    return Struct_1(~select(-vec4<i32>(1i, var_0.a, 17991i, u_input.b.x), vec4<i32>(_wgslsmith_mult_i32(-36246i, 1i), var_0.c.a.x, arg_2.a.x, firstTrailingBit(0i)), !vec4<bool>(true, arg_2.b.x, var_0.c.b.x, var_0.b.b.x)), vec2<bool>(!(var_0.b.b.x && (arg_2.a.x <= -1i)), (arg_1 << ((0u & u_input.a) % 32u)) < reverseBits(30758u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-1i | _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x)), min(-vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, -77180i, 6596i) & vec4<i32>(3502i, 1i, u_input.b.x, u_input.b.x))), ~(u_input.c & u_input.a), func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_3(-37248i, Struct_1(vec4<i32>(u_input.b.x, -27450i, u_input.b.x, u_input.b.x), vec2<bool>(false, true)), Struct_1(vec4<i32>(-55671i, u_input.b.x, u_input.b.x, 1i), vec2<bool>(false, true))))))), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, u_input.a, u_input.c))), Struct_3(_wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(9846i, -1739i)), func_2(Struct_3(2147483647i, Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -1i), vec2<bool>(true, true)), Struct_1(vec4<i32>(3171i, u_input.b.x, -2147483647i, -2147483647i), vec2<bool>(false, false))), -u_input.b), Struct_1(vec4<i32>(-62095i, 1i, 19181i, u_input.b.x) >> (global2[_wgslsmith_index_u32(57157u, 11u)] % vec4<u32>(32u)), vec2<bool>(true, true))), Struct_3(u_input.b.x, func_2(Struct_3(u_input.b.x, Struct_1(vec4<i32>(48357i, u_input.b.x, u_input.b.x, u_input.b.x), vec2<bool>(false, false)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, 16860i, -2147483647i), vec2<bool>(false, false))), u_input.b), Struct_1(func_3(u_input.b.x, 0i), vec2<bool>(true, true)))));
    var var_1 = vec4<bool>((firstTrailingBit(abs(-17981i)) <= ~(-34253i)) & (reverseBits(_wgslsmith_add_u32(4294967295u, u_input.a)) > 75239u), all(vec2<bool>(var_0.b.x, func_4(225f, 28501u, Struct_3(2147483647i, Struct_1(vec4<i32>(var_0.a.x, var_0.a.x, u_input.b.x, 1i), vec2<bool>(var_0.b.x, var_0.b.x)), Struct_1(vec4<i32>(35657i, u_input.b.x, 27202i, u_input.b.x), var_0.b)), Struct_3(u_input.b.x, Struct_1(vec4<i32>(-2147483647i, u_input.b.x, -19800i, var_0.a.x), vec2<bool>(var_0.b.x, var_0.b.x)), Struct_1(var_0.a, vec2<bool>(var_0.b.x, var_0.b.x)))).b.x && true)), var_0.b.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(((4294967295u << (u_input.c % 32u)) << (~4294967295u % 32u)) | (~u_input.a | u_input.c)), 298f);
}

