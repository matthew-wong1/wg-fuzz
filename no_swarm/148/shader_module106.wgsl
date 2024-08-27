struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(0i, -1i, -5203i), Struct_3(vec4<f32>(2302f, -850f, 294f, -675f), 2049f, Struct_2(4294967295u)), vec2<i32>(-1i, 12026i));

var<private> global1: i32 = 0i;

var<private> global2: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(29870i, 9776i), vec2<i32>(-1i, 10315i), vec2<i32>(1i, 8034i));

var<private> global3: Struct_1 = Struct_1(true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> bool {
    let var_0 = max(min(vec3<i32>(~_wgslsmith_sub_i32(1i, arg_1), reverseBits(~u_input.b.x), arg_0.x), vec3<i32>(~(-u_input.b.x), -arg_0.x, 14977i)), vec3<i32>(u_input.b.x, arg_0.x, ~(~(~(-19375i)))));
    global3 = Struct_1(!global3.a);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-986f, arg_2.b))), global0.b.a.x, global0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2263f, -1631f))))), arg_2.a.x, Struct_2(1u));
    var var_2 = vec4<bool>(true, global3.a, any(select(vec3<bool>(arg_2.b == 464f, true, global3.a), !vec3<bool>(global3.a, global3.a, true), true)), true);
    global2 = array<vec2<i32>, 3>();
    return ~reverseBits(_wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(-1i, global0.a.x))) >= -1i;
}

fn func_2() -> bool {
    global0 = Struct_4(firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.b.x), reverseBits(u_input.b.x), -1i)) & global0.a, global0.b, u_input.b.xy);
    var var_0 = vec3<bool>(func_3(min(global2[_wgslsmith_index_u32(global0.b.c.a, 3u)], firstTrailingBit(u_input.b.yx)), u_input.b.x << ((~global0.b.c.a | (u_input.a.x ^ 4294967295u)) % 32u), global0.b, ~u_input.a.x), false, true);
    global0 = Struct_4(global0.a, Struct_3(_wgslsmith_f_op_vec4_f32(-global0.b.a), _wgslsmith_f_op_f32(sign(1f)), Struct_2(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(14404u, global0.b.c.a, u_input.a.x), vec3<u32>(u_input.a.x, 0u, global0.b.c.a))))), vec2<i32>(~(abs(global0.a.x) >> (global0.b.c.a % 32u)), -34898i >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.b.c.a, 1u), _wgslsmith_mod_u32(10853u, global0.b.c.a)) % 32u)));
    var var_1 = global0.b.c.a;
    let var_2 = -_wgslsmith_div_vec2_i32(vec2<i32>(~global0.c.x, 2147483647i), _wgslsmith_clamp_vec2_i32(-u_input.b.xz, abs(max(global2[_wgslsmith_index_u32(4000u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)])), global0.a.xy));
    return _wgslsmith_mod_u32(~abs(u_input.a.x) & 1u, ~_wgslsmith_sub_u32(global0.b.c.a, ~u_input.a.x)) > _wgslsmith_div_u32(u_input.a.x, select(28829u, ~(global0.b.c.a << (global0.b.c.a % 32u)), all(!vec3<bool>(true, var_0.x, var_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    global2 = array<vec2<i32>, 3>();
    var var_0 = Struct_4(global0.a, Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(min(1000f, global0.b.b)), arg_3.b, _wgslsmith_div_f32(1309f, 399f)) + arg_3.a), -201f, global0.b.c), global2[_wgslsmith_index_u32(global0.b.c.a, 3u)]);
    var var_1 = Struct_5(_wgslsmith_sub_u32(global0.b.c.a, select(firstTrailingBit(_wgslsmith_clamp_u32(arg_3.c.a, 3665u, 49266u)), 35934u, func_2() != select(arg_0.a, global3.a, true))), Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1603f, var_0.b.b, -1375f, -1438f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2149f, var_0.b.b, global0.b.a.x, 1000f) - var_0.b.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.a.x))) * arg_3.a.x), Struct_2(~arg_2)), _wgslsmith_div_vec3_f32(arg_3.a.xxz, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.b))), -1301f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-322f, arg_3.a.x), -1274f)))));
    let var_2 = vec3<u32>(~76550u, 0u, global0.b.c.a);
    let var_3 = Struct_4(vec3<i32>(0i, countOneBits(max(_wgslsmith_sub_i32(2147483647i, 4704i), abs(u_input.b.x))), -7532i), global0.b, vec2<i32>(firstTrailingBit(u_input.b.x), select(global0.c.x, 1i, var_0.b.a.x >= var_0.b.b)));
    return Struct_4(~vec3<i32>(max(-3646i, var_0.c.x), var_3.c.x, -2147483647i), var_3.b, _wgslsmith_add_vec2_i32(max(global2[_wgslsmith_index_u32(1u << (1u % 32u), 3u)], ~vec2<i32>(53165i, global0.c.x)) & ~firstLeadingBit(var_0.a.xx), vec2<i32>(var_0.a.x, -var_0.c.x) ^ (~var_3.a.yy << (max(u_input.a, u_input.a) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_5 {
    global0 = func_4(Struct_1((-1000f < _wgslsmith_f_op_f32(step(global0.b.a.x, global0.b.a.x))) && func_2()), Struct_2(0u), abs(74319u), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), global0.b.b, 1005f, _wgslsmith_f_op_f32(-global0.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.a.x)))), global0.b.c));
    global3 = Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(global0.b.b < global0.b.b, true), select(!vec2<bool>(global3.a, false), select(vec2<bool>(false, true), vec2<bool>(arg_1, global3.a), true), false))));
    global2 = array<vec2<i32>, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1282f), _wgslsmith_f_op_f32(-global0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.a.x * global0.b.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, 1886f, _wgslsmith_f_op_f32(f32(-1f) * -734f)))));
    global0 = func_4(Struct_1(all(vec4<bool>(func_2(), global3.a, any(vec2<bool>(arg_1, global3.a)), true))), func_4(Struct_1(!func_2()), global0.b.c, 3447u, Struct_3(global0.b.a, -1477f, func_4(Struct_1(arg_1), func_4(Struct_1(false), Struct_2(u_input.a.x), 25250u, Struct_3(global0.b.a, 912f, global0.b.c)).b.c, u_input.a.x, global0.b).b.c)).b.c, ~countOneBits(global0.b.c.a), func_4(Struct_1(true), global0.b.c, 1u, func_4(Struct_1(true), func_4(Struct_1(arg_1), global0.b.c, _wgslsmith_add_u32(global0.b.c.a, u_input.a.x), global0.b).b.c, global0.b.c.a, func_4(Struct_1(arg_1), Struct_2(1u), countOneBits(global0.b.c.a), Struct_3(global0.b.a, global0.b.b, Struct_2(u_input.a.x))).b).b).b);
    return Struct_5(_wgslsmith_clamp_u32(0u, 0u, countOneBits(_wgslsmith_add_u32(43885u << (global0.b.c.a % 32u), _wgslsmith_div_u32(7129u, 4294967295u)))), Struct_3(vec4<f32>(1296f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), -2936f), _wgslsmith_f_op_f32(round(1259f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(129f)) - _wgslsmith_f_op_f32(global0.b.a.x * -1078f))), _wgslsmith_f_op_f32(ceil(1031f)), Struct_2(~(~51859u))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global0.b.b), global0.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = Struct_1(true);
    var var_2 = func_1(-(~_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, u_input.b.x, -55198i, 5947i), vec4<i32>(13493i, -52463i, u_input.b.x, 0i))), true);
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, reverseBits(u_input.a.x)), u_input.a.x);
    var var_4 = func_1(vec4<i32>(-6462i, ~_wgslsmith_add_i32(global0.a.x, -37859i), 14042i, -34172i), !(!(false == select(true, false, true)))).b;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(global3.a), Struct_2(min(~0u, 4294967295u)), 0u, func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1779i, u_input.b.x, u_input.b.x) ^ vec4<i32>(global0.c.x, 0i, global0.c.x, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 15750i, 2147483647i, -2147483647i), vec4<i32>(-1i, global0.c.x, global0.c.x, global0.a.x))), !all(vec2<bool>(false, var_1.a))).b).b.b);
}

