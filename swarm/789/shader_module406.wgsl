struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(24758u), Struct_1(13066u));

var<private> global2: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(2323f, -1056f, -1199f, -1167f), vec4<f32>(356f, -1000f, -145f, 111f), vec4<f32>(-657f, -1405f, 533f, -191f), vec4<f32>(1718f, 449f, -510f, -2382f), vec4<f32>(-602f, 1001f, -1924f, -584f), vec4<f32>(1401f, -793f, 841f, 579f), vec4<f32>(419f, -326f, 270f, 1050f), vec4<f32>(-1000f, 355f, -870f, 2762f), vec4<f32>(-1132f, 1017f, 2043f, -813f), vec4<f32>(627f, 1000f, -452f, 867f), vec4<f32>(-882f, -730f, 116f, -1393f), vec4<f32>(-271f, 552f, -1086f, 740f), vec4<f32>(-1839f, -1388f, -155f, 1225f));

var<private> global3: bool;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>) -> u32 {
    let var_0 = ~(~max(~(~vec2<u32>(u_input.a, 1u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.b, 20819u))));
    global1 = array<Struct_1, 2>();
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.c, u_input.c), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_0.x, var_0.x), vec4<u32>(var_0.x, 0u, var_0.x, var_0.x)), countOneBits(var_0.x), 25390u)), 8u)];
    global3 = true;
    var var_2 = global1[_wgslsmith_index_u32(9612u, 2u)];
    return max(41715u >> (u_input.c % 32u), u_input.a);
}

fn func_2() -> vec2<i32> {
    let var_0 = !vec4<bool>(all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false))), (_wgslsmith_add_i32(-96359i, 1i) & _wgslsmith_dot_vec3_i32(vec3<i32>(-58721i, 1i, -2147483647i), vec3<i32>(74540i, 1i, -1i))) >= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -8220i, 0i, -6421i), vec4<i32>(-6781i, -2147483647i, 2147483647i, 69092i)), firstTrailingBit(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 4883i))), true, !all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    global0 = array<Struct_2, 8>();
    var var_1 = global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_mult_u32(~(~u_input.c), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1079f, 405f)), vec2<i32>(-52073i, -2147483647i)))), 8u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(712f + 494f)), 1f, -425f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(179f)))))));
    global1 = array<Struct_1, 2>();
    return reverseBits((vec2<i32>(1i, 1i) ^ vec2<i32>(-23973i >> (u_input.c % 32u), ~44681i)) ^ select(~firstTrailingBit(vec2<i32>(-32943i, -86942i)), abs(-vec2<i32>(-4416i, -29900i)), !(!vec2<bool>(true, var_0.x))));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = ~firstTrailingBit(max(func_2(), countOneBits(vec2<i32>(arg_0.x, 0i))));
    return _wgslsmith_f_op_f32(abs(579f));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = Struct_2(Struct_1(u_input.b), arg_1, Struct_1(0u), abs(~reverseBits(firstLeadingBit(vec4<u32>(0u, arg_1.a, u_input.c, arg_1.a)))), select(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true)) & true, false, true));
    var var_1 = -825f;
    let var_2 = ~var_0.d;
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_0);
    global3 = var_0.e;
    return 940f;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(select(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(347f, -1012f)), vec2<i32>(1i, 1i)), arg_2.a, !all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
    let var_1 = vec4<bool>(!(!all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), true, any(vec4<bool>(false, true, all(vec2<bool>(false, false)), !all(vec4<bool>(false, true, false, true)))), true);
    global3 = var_1.x;
    global2 = array<vec4<f32>, 13>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(57668u, 11509u, var_1.x), ~func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(2023f, -749f) * vec2<f32>(arg_1, arg_1)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 43188i), vec2<i32>(1i, 15775i)))) << (u_input.a % 32u), 2u)];
    return select(select(!(!(!vec4<bool>(var_1.x, true, true, false))), !(!vec4<bool>(false, var_1.x, var_1.x, var_1.x)), !(!(!var_1.x))), vec4<bool>(var_1.x, _wgslsmith_mult_u32(arg_3.a, u_input.a) <= ((arg_2.a << (0u % 32u)) << (_wgslsmith_sub_u32(85102u, 40533u) % 32u)), true, true), !var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    global2 = array<vec4<f32>, 13>();
    global0 = array<Struct_2, 8>();
    let var_0 = select(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true, all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true)), !all(vec2<bool>(true, true))), func_5(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 3731u, u_input.c, 1u), firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_div_f32(1251f, 191f), _wgslsmith_f_op_f32(-511f - 439f)), global1[_wgslsmith_index_u32(u_input.a, 2u)], _wgslsmith_f_op_f32(func_1(select(vec4<i32>(-19716i, 54550i, -18104i, -1i), vec4<i32>(2147483647i, -15331i, 1i, -44398i), vec4<bool>(true, true, false, false)))), 1i)), Struct_1(u_input.c), Struct_1(u_input.a)), !all(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_2(Struct_1(countOneBits(~(~4294967295u))), Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, 56546u), vec3<u32>(u_input.c, u_input.c, u_input.c)), 0u)), Struct_1(_wgslsmith_add_u32(abs(0u), ~(~u_input.c))), max(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(101375u, u_input.b, u_input.b, 1u)), abs(vec4<u32>(45056u, u_input.c, 20415u, 0u))), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(12362u, u_input.c, 4294967295u, u_input.a), vec4<u32>(4294967295u, 22576u, 54329u, u_input.c)), vec4<u32>(u_input.a, 20872u, u_input.a, u_input.c))), var_0.x);
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_i32(i32(-1i) * -44150i, -36993i)) | 43571i, var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -882f)))), ~(vec3<i32>(_wgslsmith_mod_i32(13071i, -2147483647i), firstLeadingBit(-1i), 1i) ^ vec3<i32>(_wgslsmith_add_i32(-11807i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -23440i, -2147483647i, 41760i), vec4<i32>(25309i, -31024i, -2147483647i, 7866i)), max(-2147483647i, 1i))), select(abs(min(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-9873i, -8350i, 3506i, -64985i), vec4<i32>(-1i, 1i, -2147483647i, -2147483647i), true))), ~vec4<i32>(-5360i, _wgslsmith_mod_i32(0i, -91787i), 0i, 50993i), func_5(var_1.a.a, 622f, Struct_1(4294967295u), global1[_wgslsmith_index_u32(u_input.b ^ _wgslsmith_div_u32(var_1.b.a, 71300u), 2u)])));
}

