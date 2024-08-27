struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(865f, -194f, -1000f, 1332f), vec4<f32>(140f, -361f, 876f, 138f), vec4<f32>(2493f, 1315f, -833f, -272f), vec4<f32>(-827f, -1000f, 638f, -883f), vec4<f32>(-606f, 1097f, -1262f, -1100f), vec4<f32>(-427f, -674f, 614f, -1581f), vec4<f32>(524f, 390f, -334f, 413f), vec4<f32>(1054f, -1000f, 944f, 576f), vec4<f32>(1000f, -1580f, -592f, 904f), vec4<f32>(-239f, -1676f, 845f, 792f), vec4<f32>(586f, -735f, 279f, -211f), vec4<f32>(1334f, -1417f, -1707f, 2333f), vec4<f32>(1000f, 145f, -156f, -407f), vec4<f32>(835f, 378f, -230f, -370f), vec4<f32>(747f, -1415f, 504f, -210f), vec4<f32>(-504f, 298f, 561f, -1024f), vec4<f32>(-1001f, 366f, 1779f, 144f), vec4<f32>(-1385f, -618f, 816f, -874f), vec4<f32>(563f, -2293f, -837f, -587f), vec4<f32>(492f, 2909f, 1313f, 2673f), vec4<f32>(-1000f, -240f, 541f, 1508f), vec4<f32>(-824f, -402f, 579f, -550f));

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<i32, 31> = array<i32, 31>(-1i, 1i, 1i, i32(-2147483648), -69809i, 2147483647i, i32(-2147483648), i32(-2147483648), 2147483647i, -15118i, -20747i, 16444i, 2147483647i, 14980i, -7484i, 0i, -16229i, -1i, i32(-2147483648), -5702i, 25213i, -1i, -19154i, 3303i, 0i, -3606i, 31481i, 1i, -1i, 0i, 39550i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(~(-19748i), -56897i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(-48742i, 6073i, -2762i), -vec3<i32>(global3[_wgslsmith_index_u32(1u, 31u)], u_input.b.x, u_input.b.x))), vec3<i32>(global3[_wgslsmith_index_u32(~(~15539u), 31u)], select(17947i << (1u % 32u), 0i, ~u_input.d.x < ~u_input.a), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(79718u, u_input.d.x), 31u)]), ~u_input.b.wyy);
    let var_1 = ~(~firstLeadingBit((vec4<u32>(u_input.a, 4294967295u, 159093u, 12970u) & vec4<u32>(1u, u_input.a, u_input.d.x, u_input.a)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.a, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.a, 89764u)) % vec4<u32>(32u))));
    var var_2 = Struct_1(select(all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), true, select(true, abs(u_input.b.x) >= ~var_0.x, (u_input.c.x == var_0.x) != false)));
    var_0 = vec3<i32>(global3[_wgslsmith_index_u32(1u, 31u)] & _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~u_input.b, ~vec4<i32>(0i, global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])), min(u_input.b, u_input.c & u_input.b)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(47733u, 62267u, 4294967295u, 78795u) ^ countOneBits(firstLeadingBit(vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, 0u))), _wgslsmith_mult_vec4_u32(var_1, vec4<u32>(1u, var_1.x, firstTrailingBit(var_1.x), ~u_input.d.x))), 31u)], -_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, -56099i) | firstTrailingBit(31091i), abs(-2147483647i)));
    global2 = array<Struct_1, 29>();
    return global2[_wgslsmith_index_u32(u_input.d.x, 29u)];
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(!((true == all(vec2<bool>(false, arg_1.a))) != true));
    let var_1 = Struct_1(any(vec2<bool>(_wgslsmith_add_u32(u_input.d.x, u_input.d.x) >= _wgslsmith_mult_u32(u_input.a, 6018u), false)));
    let var_2 = abs(u_input.b);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -322f))))), -644f, 244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1443f))));
    let var_4 = ~reverseBits(vec4<u32>(abs(u_input.a >> (21397u % 32u)), abs(select(0u, u_input.a, arg_1.a)), u_input.d.x, _wgslsmith_add_u32(u_input.d.x ^ 61932u, _wgslsmith_clamp_u32(1618u, u_input.d.x, u_input.d.x))));
    return func_2();
}

fn func_1() -> bool {
    let var_0 = Struct_1(false);
    var var_1 = func_3(!vec4<bool>(var_0.a, u_input.b.x <= (u_input.b.x | 9952i), true, all(vec3<bool>(true, var_0.a, var_0.a))), func_2(), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(min(21268i, 56635i), i32(-1i) * -1i, global3[_wgslsmith_index_u32(u_input.d.x, 31u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 1i), vec3<i32>(u_input.c.x, global3[_wgslsmith_index_u32(u_input.d.x, 31u)], 28882i))), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, -23383i), 86532i | global3[_wgslsmith_index_u32(u_input.a, 31u)]) ^ -1i));
    let var_2 = abs(_wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) << ((~u_input.d << ((vec2<u32>(u_input.d.x, 2441u) >> (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~u_input.d | (vec2<u32>(0u, 6276u) & u_input.d))));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~((vec3<u32>(var_2.x, u_input.d.x, 5740u) | vec3<u32>(u_input.a, u_input.a, 27406u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, var_2.x, var_2.x), vec3<u32>(u_input.d.x, var_2.x, var_2.x)) % vec3<u32>(32u)))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(~0u, select(49261u, u_input.a, false), var_2.x), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 0u, var_2.x), vec3<u32>(var_2.x, var_2.x, 0u)))), 29u)];
    global0 = false;
    return !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1599f, 1576f))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2419f - -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1());
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1204f)), _wgslsmith_f_op_f32(f32(-1f) * -221f)))), _wgslsmith_f_op_f32(1016f * _wgslsmith_f_op_f32(abs(-1015f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2284f, -998f)), 499f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1814f, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(step(-1952f, -510f)))))));
    var var_2 = Struct_1(!all(!select(vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a)));
    global2 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~24119u, 22u)]) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 22u)]))), select(!vec4<bool>(true, true, var_0.a, var_2.a), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 31u)] <= u_input.b.x, all(vec2<bool>(var_2.a, true)), false, var_0.a), vec4<bool>(func_2().a, var_0.a, var_0.a, true)))));
}

