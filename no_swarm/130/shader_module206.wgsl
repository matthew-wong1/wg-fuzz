struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<i32>(-80498i, 36174i, 2147483647i, -49133i), 2147483647i, vec3<u32>(22122u, 23307u, 7778u)), Struct_1(vec4<i32>(2147483647i, 1944i, 0i, -37379i), 18553i, vec3<u32>(1u, 8234u, 48512u)), Struct_1(vec4<i32>(8843i, -10228i, -8958i, -53449i), 1i, vec3<u32>(0u, 11543u, 0u)), Struct_1(vec4<i32>(0i, 16077i, 1i, -1i), 1i, vec3<u32>(1661u, 10672u, 27806u)), Struct_1(vec4<i32>(1i, 66771i, 2147483647i, 42062i), 336i, vec3<u32>(41619u, 46936u, 4294967295u)), Struct_1(vec4<i32>(2147483647i, 0i, -50265i, i32(-2147483648)), 0i, vec3<u32>(4294967295u, 11733u, 38381u)), Struct_1(vec4<i32>(i32(-2147483648), -17093i, i32(-2147483648), 23351i), 2147483647i, vec3<u32>(15397u, 25484u, 26926u)), Struct_1(vec4<i32>(-10969i, i32(-2147483648), i32(-2147483648), 843i), -1i, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec4<i32>(7609i, -1i, -1i, -6073i), i32(-2147483648), vec3<u32>(0u, 83u, 1u)), Struct_1(vec4<i32>(32527i, -1i, -50280i, 1i), 35153i, vec3<u32>(0u, 50057u, 64815u)), Struct_1(vec4<i32>(24692i, 0i, 2147483647i, -7283i), 0i, vec3<u32>(1u, 4294967295u, 10839u)), Struct_1(vec4<i32>(i32(-2147483648), 8381i, 0i, 2147483647i), 24280i, vec3<u32>(29610u, 0u, 12647u)));

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(-27889i, -12037i, -48660i, 59151i), 2700i, vec3<u32>(10336u, 15373u, 0u)), Struct_1(vec4<i32>(1i, 38463i, -81823i, i32(-2147483648)), i32(-2147483648), vec3<u32>(35354u, 52630u, 19506u)), Struct_1(vec4<i32>(2147483647i, 3021i, 914i, 2147483647i), -20268i, vec3<u32>(84614u, 59813u, 1u)), Struct_1(vec4<i32>(21943i, i32(-2147483648), -30193i, -31384i), 25012i, vec3<u32>(0u, 59543u, 0u)), Struct_1(vec4<i32>(3269i, -42202i, 39463i, 2987i), -24569i, vec3<u32>(0u, 1u, 1u)), Struct_1(vec4<i32>(-1i, 0i, 1i, 22286i), 1i, vec3<u32>(0u, 5032u, 76548u)));

var<private> global2: u32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> vec3<u32> {
    global0 = array<Struct_1, 12>();
    global2 = ~firstTrailingBit(1u);
    global2 = countOneBits(1u);
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(firstTrailingBit(vec4<i32>(u_input.e.x, 2147483647i, 1i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_0.a.wyw, arg_2.a.yzz), _wgslsmith_mult_i32(-30582i, u_input.d)))), arg_0.a.x, ~arg_2.c);
    var_0 = Struct_1(vec4<i32>(~(u_input.d << (countOneBits(arg_1) % 32u)), -2147483647i, 19070i, firstTrailingBit(~(-arg_0.b))), -2147483647i, vec3<u32>(u_input.a.x, ~firstTrailingBit(44054u), ~arg_1));
    var var_1 = _wgslsmith_clamp_u32(~arg_1, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1095u, var_0.c.x, var_0.c.x)) ^ select(var_0.c, _wgslsmith_mult_vec3_u32(arg_0.c, vec3<u32>(arg_1, 4294967295u, arg_0.c.x)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), vec3<u32>(reverseBits(abs(4294967295u)), arg_3.c.x, u_input.b)), _wgslsmith_div_u32(4294967295u, 25747u));
    var var_2 = -1341f;
    global2 = ~(~arg_1);
    return select(u_input.c.ywy, arg_2.c, vec3<bool>(true, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -1i, arg_0.a.x), vec3<i32>(-24466i, u_input.e.x, arg_2.a.x)) > _wgslsmith_sub_i32(~u_input.d, var_0.b), false));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(-vec4<i32>(u_input.e.x, 1i, (arg_0.a.x << (arg_0.c.x % 32u)) & arg_0.a.x, abs(i32(-1i) * -1i)), u_input.d >> (~1u % 32u), _wgslsmith_clamp_vec3_u32(vec3<u32>(~abs(arg_0.c.x), ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~arg_0.c.x), ~(~func_2(328f, false, arg_0.a.zyw)), min(~vec3<u32>(110422u, 0u, 0u), u_input.c.yxw)));
    global0 = array<Struct_1, 12>();
    let var_1 = global1[_wgslsmith_index_u32(var_0.c.x, 6u)];
    global1 = array<Struct_1, 6>();
    global1 = array<Struct_1, 6>();
    return _wgslsmith_mod_vec3_u32(~(max(func_3(global1[_wgslsmith_index_u32(4294967295u, 6u)], 1u, global0[_wgslsmith_index_u32(23111u, 12u)], Struct_1(var_0.a, -15635i, var_0.c)), ~vec3<u32>(u_input.c.x, 1u, var_0.c.x)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_0.c.x, 39996u), _wgslsmith_div_vec3_u32(var_1.c, vec3<u32>(481u, 1u, var_0.c.x))) % vec3<u32>(32u))), vec3<u32>(arg_0.c.x, func_2(-904f, true, -vec3<i32>(u_input.e.x, var_0.a.x, u_input.e.x)).x, countOneBits(4100u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(~max(vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.e.x) & vec4<i32>(u_input.e.x, u_input.e.x, 24665i, u_input.d), vec4<i32>(1i, 2147483647i, -1657i, -24078i)), vec4<i32>(u_input.e.x, u_input.d, u_input.d, -2147483647i)), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.e.x), reverseBits(vec3<u32>(u_input.b, ~_wgslsmith_mod_u32(4294967295u, u_input.b), ~_wgslsmith_mult_u32(16983u, 39436u))));
    global1 = array<Struct_1, 6>();
    let var_1 = global1[_wgslsmith_index_u32(select(7306u, 1u, false), 6u)];
    var var_2 = global0[_wgslsmith_index_u32(51162u, 12u)];
    var var_3 = vec2<bool>(true, !(!all(vec2<bool>(false, false))));
    var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(select(~min(23963u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, u_input.a.x, var_0.c.x) & vec3<u32>(var_2.c.x, var_2.c.x, u_input.b), func_1(Struct_1(var_0.a, var_1.b, var_1.c))), any(vec2<bool>(false, var_3.x))), ~(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c))), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, var_0.c, abs(u_input.c & u_input.c), ~_wgslsmith_mult_i32(firstLeadingBit(-79629i) & -var_1.b, abs(reverseBits(u_input.d))), u_input.c);
}

