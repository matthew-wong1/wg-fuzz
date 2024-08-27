struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<f32, 4> = array<f32, 4>(114f, 1465f, -714f, -1332f);

var<private> global2: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(86110u, 77295u, 4294967295u), vec3<u32>(99404u, 4294967295u, 1u), vec3<u32>(1635u, 4294967295u, 11675u), vec3<u32>(28849u, 2367u, 46212u), vec3<u32>(0u, 1396u, 19342u), vec3<u32>(11316u, 21205u, 4294967295u), vec3<u32>(4294967295u, 6138u, 91886u), vec3<u32>(0u, 82652u, 37031u), vec3<u32>(1u, 70148u, 4294967295u), vec3<u32>(39904u, 7961u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 5718u, 56351u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(45219u, 1u, 1u), vec3<u32>(21846u, 57479u, 4294967295u), vec3<u32>(25383u, 0u, 4294967295u), vec3<u32>(10901u, 36321u, 4294967295u), vec3<u32>(25577u, 9730u, 4294967295u), vec3<u32>(0u, 12751u, 4294967295u));

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), false), vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global3.a.x, 4u)], -479f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 4u)], arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2572f, 1000f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-213f * global1[_wgslsmith_index_u32(0u, 4u)]) - arg_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(global1[_wgslsmith_index_u32(global3.a.x, 4u)], arg_0.x, global1[_wgslsmith_index_u32(84481u, 4u)], -860f), true)) - vec4<f32>(arg_0.x, 468f, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 1377f)))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))), -181f, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(step(-2065f, global1[_wgslsmith_index_u32(global3.a.x, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1389f + 624f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1750f, global1[_wgslsmith_index_u32(1u, 4u)], true)) * _wgslsmith_f_op_f32(ceil(361f)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.a.zx, ~u_input.a.xz), 4u)] - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(599f, 1290f)), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 4u)])), var_0.x)))));
    global4 = array<Struct_2, 23>();
    global4 = array<Struct_2, 23>();
    var var_2 = var_0;
    return u_input.a.x << (~(((global3.a.x ^ 20097u) << (1u % 32u)) >> (max(~89452u, ~4294967295u) % 32u)) % 32u);
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: i32, arg_3: u32) -> i32 {
    let var_0 = ~vec3<u32>(_wgslsmith_add_u32(arg_3, _wgslsmith_mod_u32(u_input.b, func_3(vec4<f32>(-1000f, -1000f, 116f, global1[_wgslsmith_index_u32(0u, 4u)])))), countOneBits(~0u), 82944u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-844f * global1[_wgslsmith_index_u32(global3.a.x, 4u)]), _wgslsmith_div_f32(1821f, -157f), _wgslsmith_f_op_f32(-304f + global1[_wgslsmith_index_u32(global3.a.x, 4u)]))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(609f, 340f)) * 193f)), -1672f, 867f));
    global1 = array<f32, 4>();
    let var_2 = vec2<u32>((_wgslsmith_div_u32(~0u, global3.a.x) ^ _wgslsmith_div_u32(_wgslsmith_sub_u32(global3.a.x, global3.a.x), firstLeadingBit(global3.a.x))) ^ max(53137u, 4294967295u << (var_0.x % 32u)), var_0.x);
    global3 = global4[_wgslsmith_index_u32(~(~var_0.x), 23u)];
    return 6413i;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    var var_0 = -select(min(-_wgslsmith_mod_i32(-3484i, -1i), -1i), abs(func_2(vec4<bool>(false, arg_0.x, true, false), false, _wgslsmith_mod_i32(12435i, arg_3), ~23182u)), true != (global3.a.x > ~30146u));
    global2 = array<vec3<u32>, 19>();
    let var_1 = (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, u_input.a.x, 29131u), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), firstLeadingBit(~32077u), _wgslsmith_div_u32(global3.a.x, ~global3.a.x)) ^ ~u_input.b) << (u_input.a.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1247f);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-230f)) - -1909f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -627f)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(func_4(!vec2<bool>(arg_2.b, arg_2.b), _wgslsmith_add_vec4_i32(arg_1.d, vec4<i32>(u_input.d.x << (global3.a.x % 32u), u_input.c, func_2(vec4<bool>(true, arg_2.b, true, arg_2.b), arg_2.b, -1i, arg_1.c.x), 0i)), (abs(vec4<u32>(16813u, 22448u, arg_1.c.x, 20045u)) & u_input.a) & (vec4<u32>(global3.a.x, global3.a.x, 0u, global3.a.x) | _wgslsmith_add_vec4_u32(vec4<u32>(9916u, 1u, u_input.b, 37364u), u_input.a)), arg_1.d.x)), !((4294967295u > arg_1.c.x) & any(vec2<bool>(false, true))));
    var var_1 = arg_1.d;
    var var_2 = 1215f;
    let var_3 = vec4<bool>(any(select(select(!vec2<bool>(false, var_0.b), select(vec2<bool>(true, true), vec2<bool>(false, arg_2.b), true), true), select(select(vec2<bool>(var_0.b, arg_0.b), vec2<bool>(var_0.b, arg_2.b), vec2<bool>(arg_2.b, false)), !vec2<bool>(arg_2.b, true), arg_2.b), !(arg_0.b | true))), true, any(select(vec4<bool>(true, !var_0.b, var_0.b, !var_0.b), select(vec4<bool>(arg_2.b, false, false, arg_0.b), select(vec4<bool>(false, true, false, var_0.b), vec4<bool>(arg_2.b, false, true, var_0.b), arg_2.b), var_0.b), arg_2.b)), arg_0.b || arg_0.b);
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-278f, 825f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1791f))) * -926f), all(var_3.zy)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global3.a, u_input.a.xxy), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(18444u, 4u)]))), any(vec4<bool>(false, false, true, false)) | false), Struct_1(abs(select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, -57891i), vec3<i32>(0i, u_input.c, u_input.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 22416i), vec3<i32>(-16840i, u_input.c, 1i)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), -u_input.d, ~vec2<u32>(u_input.a.x, ~global3.a.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.c, -44773i), vec4<i32>(u_input.c, 1i, u_input.c, 0i)), -1i, u_input.d.x, u_input.d.x)), Struct_3(1426f, false));
    let var_0 = firstLeadingBit(u_input.a);
    global3 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4122u, ~1u, global3.a.x), _wgslsmith_div_vec3_u32(~var_0.yyy, _wgslsmith_mult_vec3_u32(vec3<u32>(global3.a.x, 1u, 19854u), vec3<u32>(1u, var_0.x, global3.a.x)))), _wgslsmith_add_vec3_u32(vec3<u32>(global3.a.x, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, global3.a.x), global3.a)), global3.a)));
    global4 = array<Struct_2, 23>();
    global2 = array<vec3<u32>, 19>();
    let var_1 = u_input.d & vec2<i32>(-min(abs(0i), firstTrailingBit(u_input.d.x)), 4074i);
    let var_2 = func_1(Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~global3.a.x, _wgslsmith_clamp_u32(global3.a.x, global3.a.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(44350u, 1u), global3.a.xz), var_0.x), reverseBits(_wgslsmith_div_vec4_u32(var_0, vec4<u32>(0u, global3.a.x, 1u, 4294967295u)))), 4u)], true), Struct_1(max(vec3<i32>(~var_1.x, _wgslsmith_mult_i32(var_1.x, 26555i), _wgslsmith_mod_i32(-14090i, 27284i)), reverseBits(vec3<i32>(u_input.c, 51160i, -15906i))), vec2<i32>(-45528i, 1i), ~countOneBits(var_0.xz), -vec4<i32>(2147483647i, -2147483647i, -17213i, u_input.d.x) & _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -51412i, u_input.c, 2147483647i), vec4<i32>(-24949i, var_1.x, 14069i, -2147483647i)), -vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, u_input.d.x))), Struct_3(1f, all(vec4<bool>(true, true, true, true))));
    var var_3 = Struct_1(min(firstLeadingBit(~(~vec3<i32>(2147483647i, -2147483647i, var_1.x))), vec3<i32>(func_2(vec4<bool>(false, false, false, true), true, 10650i, firstTrailingBit(var_0.x)), max(-1i, -1i), abs(i32(-1i) * -19438i))), var_1, vec2<u32>(_wgslsmith_mod_u32(~0u, 4294967295u), var_0.x ^ 1u) << ((global3.a.xx << (var_2.a.yx % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<i32>(u_input.c, _wgslsmith_add_i32(_wgslsmith_mod_i32(min(97759i, var_1.x), _wgslsmith_sub_i32(var_1.x, var_1.x)), ~(-2147483647i)), -_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, -56342i), u_input.d.x), _wgslsmith_clamp_i32(func_2(vec4<bool>(true, true, false, false), true, -var_1.x, 1u), max(u_input.c & -29532i, var_1.x), 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(firstTrailingBit(var_3.d.x), u_input.d.x)), var_0.x, var_3.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 4u)], 1000f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, var_3.c.x, 23426u, 15634u), u_input.a), 4u)], global1[_wgslsmith_index_u32(21038u, 4u)])) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.a.x, 4u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f + global1[_wgslsmith_index_u32(u_input.b, 4u)])), global1[_wgslsmith_index_u32(~0u, 4u)], _wgslsmith_f_op_f32(-820f - -1356f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(var_0.x, 4u)], global1[_wgslsmith_index_u32(43305u, 4u)]), vec3<f32>(-1790f, global1[_wgslsmith_index_u32(29616u, 4u)], global1[_wgslsmith_index_u32(var_0.x, 4u)])))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1504f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(25000u, 4u)] * 109f), -697f))));
}

