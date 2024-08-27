struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: u32;

var<private> global4: array<i32, 2>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(global1.a.a, global0.a.a) & vec4<u32>(0u, global0.a.c.x, 22931u, 44602u)) & global1.a.a, select(!(4294967295u < u_input.d.x), !global1.a.b, global1.a.b) && true, vec3<u32>(countOneBits(~global1.a.c.x), ~30823u, ~(~(~u_input.d.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1792f, _wgslsmith_f_op_f32(-602f + arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f))));
    var var_1 = vec2<bool>(true, !(!global1.a.b));
    var var_2 = Struct_3(global1.a, 1i, firstLeadingBit(45973u), !(!(!(global0.a.d.x < arg_0.x))));
    let var_3 = !(!global0.a.b);
    let var_4 = vec2<bool>(var_3, false && global1.a.b);
    return _wgslsmith_f_op_f32(861f * 1040f);
}

fn func_2(arg_0: f32, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(global1.a.d.xz * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.d.x, _wgslsmith_f_op_f32(round(613f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.x)), -669f)));
    var_0 = _wgslsmith_f_op_vec2_f32(min(global1.a.d.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.d.x), global0.a.d.x)), -824f) * global1.a.d.xy)));
    var var_1 = vec4<f32>(465f, _wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.d.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 1000f))) + var_0.x), _wgslsmith_f_op_f32(global0.a.d.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(-global1.a.d.x)), 766f)));
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-336f, -818f, 704f, arg_0)))), _wgslsmith_f_op_f32(floor(-713f))), _wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_f_op_f32(-var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(var_1.yy));
    return all(select(select(select(vec4<bool>(false, global1.a.b, global0.d, global1.a.b), select(vec4<bool>(false, global1.a.b, global1.a.b, false), vec4<bool>(global0.d, global0.d, true, global0.a.b), false), vec4<bool>(global1.a.b, global0.a.b, false, true)), select(vec4<bool>(true, true, true, global1.a.b), select(vec4<bool>(false, global0.a.b, global0.a.b, true), vec4<bool>(false, false, global0.d, global1.a.b), global1.a.b), vec4<bool>(global0.d, global0.a.b, global0.a.b, true)), false), select(!vec4<bool>(global0.d, global1.a.b, global0.d, global1.a.b), vec4<bool>(true, global0.d, all(vec3<bool>(global1.a.b, true, false)), global1.a.b), global0.d), select(select(select(vec4<bool>(global1.a.b, false, global1.a.b, false), vec4<bool>(false, global1.a.b, true, global1.a.b), vec4<bool>(true, global1.a.b, false, true)), select(vec4<bool>(global1.a.b, false, global0.d, false), vec4<bool>(true, global1.a.b, global1.a.b, global1.a.b), vec4<bool>(true, false, false, true)), true), select(!vec4<bool>(global1.a.b, true, true, true), !vec4<bool>(true, global0.a.b, global1.a.b, false), select(vec4<bool>(global0.a.b, global1.a.b, global1.a.b, false), vec4<bool>(false, true, false, true), vec4<bool>(global1.a.b, global1.a.b, false, global1.a.b))), global0.d)));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(19910u, ~firstTrailingBit(arg_0.a.x), u_input.d.x) ^ ~firstLeadingBit(60475u ^ global0.a.a.x), 2u)], 1i);
    global0 = Struct_3(global0.a, ~u_input.e.x, ~_wgslsmith_div_u32(30404u, 4294967295u), _wgslsmith_f_op_f32(-387f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1944f - 1001f)))) <= _wgslsmith_f_op_f32(-global1.a.d.x));
    let var_1 = global0.b;
    global2 = 2147483647i;
    let var_2 = u_input.c.x;
    return Struct_3(Struct_1(firstTrailingBit(arg_0.a), any(vec3<bool>(false && global0.a.b, arg_0.b, any(vec3<bool>(true, false, false)))), global0.a.a.wxz, vec3<f32>(104f, -1683f, -1115f)), -30027i, _wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(45531u, arg_0.a.x), vec2<u32>(7540u, global0.a.c.x))), true);
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_1(global0.a.a, !(global4[_wgslsmith_index_u32(u_input.a.x, 2u)] == global0.b) & func_2(-1139f, ~48535u), vec3<u32>(global0.a.c.x << (~global0.c % 32u), ~_wgslsmith_dot_vec2_u32(global1.a.c.zx, global1.a.c.yz), ~_wgslsmith_sub_u32(global0.a.a.x, global0.a.c.x)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.a.d.x, global0.a.d.x))), 1799f, _wgslsmith_f_op_f32(max(-1235f, _wgslsmith_f_op_f32(ceil(global0.a.d.x)))))));
    global0 = func_4(global0.a);
    global3 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(var_0.c, 1u, 22033u, 0u), ~var_0.a.a), countOneBits(~vec4<u32>(0u, var_0.c, global1.a.a.x, 14505u))), abs(global0.a.a));
    global2 = u_input.e.x;
    let var_1 = _wgslsmith_mod_vec2_u32(((~vec2<u32>(4294967295u, 70484u) & ~vec2<u32>(u_input.a.x, global1.a.c.x)) | u_input.a) >> (var_0.a.c.zx % vec2<u32>(32u)), ~vec2<u32>(var_0.c, u_input.d.x));
    return 351u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(u_input.b, u_input.b, !vec4<bool>(global1.a.b, global1.a.b, global1.a.b, global1.a.b)), u_input.b), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b, u_input.e.x, -42718i, 33386i), vec4<i32>(global0.b, global0.b, -1i, global0.b))), _wgslsmith_mult_u32(global0.c, global0.c), false);
    var var_0 = true;
    let var_1 = Struct_3(Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(global0.a.a.x, 0u, u_input.a.x, 1u), vec4<u32>(global0.a.c.x, u_input.c.x, 37576u, global0.c)), vec4<u32>(global0.a.a.x, global1.a.a.x, global1.a.a.x, global0.c)), ~vec4<u32>(global1.a.a.x, global1.a.c.x, global0.c, global0.c) >> (select(global1.a.a, vec4<u32>(1u, 36590u, global0.a.c.x, global0.a.c.x), vec4<bool>(global0.d, false, false, true)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(35804u, 1u, global1.a.c.x, 19841u) ^ global0.a.a, ~vec4<u32>(4294967295u, u_input.d.x, 4294967295u, 0u))), true, global0.a.c, global1.a.d), ~(-9483i), 1u, !(!global0.d));
    global4 = array<i32, 2>();
    let var_2 = Struct_3(Struct_1(global0.a.a, true, var_1.a.c, _wgslsmith_div_vec3_f32(vec3<f32>(-1360f, _wgslsmith_f_op_f32(-1599f * -1059f), global0.a.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1047f, -1156f, -1099f), vec3<f32>(var_1.a.d.x, global1.a.d.x, var_1.a.d.x), false))))), abs(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.a.a.x, u_input.a.x), ~0u, 4294967295u), 2u)]) & (select(-6466i, i32(-1i) * -2147483647i, global0.d) >> (abs(~var_1.c) % 32u)), func_1(), all(select(vec3<bool>(any(vec3<bool>(global1.a.b, global1.a.b, global1.a.b)), any(vec2<bool>(var_1.a.b, global0.a.b)), global1.a.b), !vec3<bool>(true, var_1.a.b, global1.a.b), !vec3<bool>(global1.a.b, true, false))));
    global1 = Struct_2(Struct_1(var_2.a.a, false, ~((vec3<u32>(global0.c, var_1.a.a.x, var_1.c) >> (u_input.c % vec3<u32>(32u))) ^ ~vec3<u32>(4294967295u, global1.a.c.x, global1.a.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1405f, 1172f, 1177f), func_4(Struct_1(vec4<u32>(75764u, 4294967295u, global0.c, global0.a.a.x), false, var_2.a.c, vec3<f32>(var_2.a.d.x, global1.a.d.x, -426f))).a.d), vec3<f32>(-669f, var_2.a.d.x, var_2.a.d.x))));
    var var_3 = abs(vec2<i32>(-41949i, max(0i, ~u_input.b.x)));
    global0 = Struct_3(var_1.a, var_2.b, _wgslsmith_dot_vec4_u32(~firstTrailingBit(firstTrailingBit(global0.a.a)), _wgslsmith_add_vec4_u32(max(var_2.a.a, var_1.a.a), vec4<u32>(0u, global0.a.a.x, 8120u, 45104u) << (global1.a.a % vec4<u32>(32u))) ^ var_1.a.a), (any(vec3<bool>(true, false, false)) & any(vec3<bool>(true, var_1.d, false))) | any(select(vec3<bool>(true, var_2.d, true), !vec3<bool>(true, false, var_1.a.b), var_2.d)));
    global1 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(212f - global0.a.d.x) * _wgslsmith_f_op_f32(-global1.a.d.x)))), 1756f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.d.x, -950f, -737f, 199f) - vec4<f32>(-917f, 216f, global1.a.d.x, -726f)))))));
}

