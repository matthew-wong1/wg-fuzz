struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(38384u), Struct_1(9523u), Struct_1(33842u), Struct_1(0u), Struct_1(1u), Struct_1(36553u), Struct_1(7922u), Struct_1(1u), Struct_1(15498u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(54476u), Struct_1(1u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(39308u), Struct_1(4294967295u), Struct_1(68561u), Struct_1(0u), Struct_1(68564u), Struct_1(30763u), Struct_1(4294967295u), Struct_1(1u), Struct_1(38054u), Struct_1(4795u), Struct_1(22920u), Struct_1(326u), Struct_1(1u), Struct_1(47208u));

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(1000f, -341f, -1000f), vec3<f32>(-196f, 836f, 1132f), vec3<f32>(-666f, 1000f, -1428f), vec3<f32>(-1277f, -384f, -1643f), vec3<f32>(-2033f, 1876f, 334f), vec3<f32>(497f, 1000f, 820f), vec3<f32>(-1000f, 122f, 1175f));

var<private> global2: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(68218u, 4294967295u), vec2<u32>(27999u, 1u), vec2<u32>(72993u, 1u), vec2<u32>(44616u, 4294967295u), vec2<u32>(19923u, 27249u), vec2<u32>(30317u, 37821u), vec2<u32>(48705u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 21174u), vec2<u32>(42292u, 0u), vec2<u32>(73960u, 0u), vec2<u32>(4356u, 4294967295u), vec2<u32>(34415u, 10275u), vec2<u32>(21711u, 2466u), vec2<u32>(56775u, 14447u), vec2<u32>(4294967295u, 0u), vec2<u32>(58485u, 0u), vec2<u32>(22493u, 99222u), vec2<u32>(4294967295u, 32934u), vec2<u32>(4662u, 29351u), vec2<u32>(37393u, 4294967295u), vec2<u32>(18737u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(15952u, 94562u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(21713u, 52428u), vec2<u32>(55478u, 51951u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 17345u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u));

var<private> global3: vec3<i32> = vec3<i32>(-37260i, i32(-2147483648), 28675i);

var<private> global4: f32 = 866f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(1u));
    global0 = array<Struct_1, 31>();
    return true;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(4294967295u), Struct_1(23825u), abs(~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 28978u, 0u), vec3<u32>(11341u, 67635u, 4294967295u)))), firstTrailingBit(32313u), Struct_2(global0[_wgslsmith_index_u32(~(~(~42295u)), 31u)]));
    let var_1 = vec3<bool>(true, any(select(vec2<bool>(func_3(vec4<bool>(true, true, true, true), vec3<i32>(3458i, u_input.b, -6885i)), false), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-940f * -1000f))) - _wgslsmith_f_op_f32(round(693f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2070f)));
    var var_2 = var_0.e;
    let var_3 = var_2.a;
    global4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1299f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-263f, 718f)) - 683f)));
    return Struct_3(Struct_1(0u), Struct_1(0u), abs(var_0.c) | vec3<u32>(1u, var_2.a.a & _wgslsmith_dot_vec2_u32(vec2<u32>(1872u, 42552u), vec2<u32>(var_0.a.a, 1u)), ~103543u), var_0.c.x, var_0.e);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_4) -> vec3<u32> {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_0 = arg_1.e;
    var var_1 = select(vec2<i32>(i32(-1i) * -firstTrailingBit(arg_3.a), 1i), vec2<i32>(_wgslsmith_add_i32(0i, arg_3.a), -1i), true);
    var var_2 = arg_3;
    return vec3<u32>(~_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(var_0.a.a, arg_1.a.a)), arg_1.c.yz | abs(arg_1.c.zz)), var_0.a.a, 10372u);
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_4(abs(~u_input.a.x));
    global2 = array<vec2<u32>, 32>();
    let var_1 = Struct_3(func_2().b, Struct_1(26095u), select(arg_0, func_4(!vec4<bool>(arg_2, arg_2, true, true), func_2(), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(arg_2, arg_2), arg_2), vec2<bool>(true, true)), Struct_4(_wgslsmith_clamp_i32(0i, u_input.b, u_input.b))), arg_2), arg_3.a, Struct_2(Struct_1(~select(1u, 0u, arg_2))));
    let var_2 = var_1.e;
    let var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.b, 2147483647i)), u_input.a.xx), firstTrailingBit(select(u_input.b, -2147483647i, false)), reverseBits(var_0.a));
    return Struct_2(var_1.b);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    let var_0 = func_5(_wgslsmith_sub_vec3_u32(select(func_4(vec4<bool>(true, false, false, false), func_2(), vec2<bool>(true, true), Struct_4(u_input.a.x)), vec3<u32>(arg_0.a.a, 56745u, arg_0.a.a) | ~vec3<u32>(arg_0.a.a, 1u, 1u), all(vec3<bool>(true, true, true))), vec3<u32>(func_4(vec4<bool>(true, true, true, true), Struct_3(Struct_1(4294967295u), Struct_1(0u), vec3<u32>(28208u, arg_0.a.a, 0u), arg_0.a.a, arg_0), vec2<bool>(false, true), Struct_4(global3.x)).x, ~1u, 1u << (1u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), any(vec4<bool>(true, false, true, true)), func_2().a);
    global3 = firstLeadingBit(-vec3<i32>(_wgslsmith_dot_vec3_i32(~u_input.a, -vec3<i32>(global3.x, global3.x, global3.x)), 33994i, u_input.a.x));
    let var_1 = 305f;
    let var_2 = Struct_4(-2147483647i);
    global3 = -_wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-13249i, 1i, var_2.a)) & _wgslsmith_add_vec3_i32(vec3<i32>(-32778i, var_2.a, 2147483647i), vec3<i32>(u_input.a.x, var_2.a, 2147483647i)), u_input.a));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~func_1(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_clamp_u32(60780u, 60282u, 42852u)), 31u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), 7u)];
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 68590u, 62610u), vec3<u32>(39935u, 4294967295u, 1u)), ~vec3<u32>(0u, 0u, 1u), true) | func_2().c, ~vec3<u32>(1u, 1u, 1u)), 31u)]);
    var var_2 = ~0u;
    let var_3 = _wgslsmith_f_op_f32(round(var_0.x));
    let var_4 = global3.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, u_input.a.x, _wgslsmith_mult_i32(min(u_input.a.x, _wgslsmith_clamp_i32(u_input.b, 47875i, global3.x)), -2147483647i)), global3.x, -58750i, vec3<f32>(374f, 1136f, var_0.x));
}

