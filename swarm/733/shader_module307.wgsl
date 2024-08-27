struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<i32>(14661i, -56631i, -16202i, 31616i), false, 2839f), Struct_1(vec4<i32>(47724i, 2147483647i, -51536i, 1i), true, 692f), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), -70841i), true, -127f), Struct_1(vec4<i32>(-27845i, 1i, -5056i, 26467i), false, -360f), Struct_1(vec4<i32>(-1i, 6821i, 32580i, 19892i), false, -2371f), Struct_1(vec4<i32>(-34072i, 1338i, 22387i, -29707i), true, -2088f), Struct_1(vec4<i32>(2147483647i, 23453i, 3047i, 59597i), true, 1147f), Struct_1(vec4<i32>(39396i, 10731i, -1i, i32(-2147483648)), false, 202f), Struct_1(vec4<i32>(-24897i, -11644i, -17111i, 0i), false, -305f), Struct_1(vec4<i32>(-12694i, 2147483647i, -18975i, 1i), true, 1072f), Struct_1(vec4<i32>(i32(-2147483648), -32012i, 67758i, -1i), true, -1911f), Struct_1(vec4<i32>(0i, 0i, 45899i, 28611i), true, -1000f), Struct_1(vec4<i32>(1i, 14716i, 73886i, 6567i), true, 1000f), Struct_1(vec4<i32>(1i, 2147483647i, 58293i, 2147483647i), false, -120f), Struct_1(vec4<i32>(0i, -1163i, 36906i, 2147483647i), false, -768f), Struct_1(vec4<i32>(i32(-2147483648), -1i, 0i, 25869i), false, 1138f), Struct_1(vec4<i32>(0i, i32(-2147483648), -27014i, -1i), true, 1228f), Struct_1(vec4<i32>(1i, 26521i, 0i, 1i), true, 2335f), Struct_1(vec4<i32>(-1i, 38293i, 43887i, 2147483647i), false, -926f), Struct_1(vec4<i32>(33176i, i32(-2147483648), 14060i, 5158i), false, -509f), Struct_1(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 2147483647i), true, 237f), Struct_1(vec4<i32>(-1i, -19942i, 2147483647i, 2147483647i), false, -259f), Struct_1(vec4<i32>(-1i, 0i, 0i, 110937i), true, -1000f), Struct_1(vec4<i32>(-261i, i32(-2147483648), 11223i, 5610i), false, 236f), Struct_1(vec4<i32>(i32(-2147483648), 30896i, 28234i, -2758i), false, 927f), Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, 22476i), true, -533f), Struct_1(vec4<i32>(17509i, 12428i, 0i, -27991i), true, -450f), Struct_1(vec4<i32>(2125i, 29976i, i32(-2147483648), -13216i), false, -292f));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = 1u;
    var var_1 = vec2<bool>(!(!any(vec2<bool>(arg_0, arg_0)) || true), reverseBits(_wgslsmith_div_u32(0u, var_0) >> (~1u % 32u)) >= var_0);
    var_1 = vec2<bool>(true, !((any(vec3<bool>(arg_0, arg_0, var_1.x)) || !arg_0) & !arg_0));
    global0 = array<Struct_1, 28>();
    let var_2 = !select(vec4<bool>(false, true, false, true), select(!(!vec4<bool>(arg_0, arg_0, var_1.x, false)), !(!vec4<bool>(true, arg_0, var_1.x, false)), select(select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, false, arg_0, false), arg_0), select(vec4<bool>(var_1.x, var_1.x, arg_0, var_1.x), vec4<bool>(arg_0, var_1.x, arg_0, true), vec4<bool>(arg_0, var_1.x, var_1.x, var_1.x)), vec4<bool>(var_1.x, arg_0, true, var_1.x))), var_1.x);
    return select(var_2.wzy, select(var_2.wzz, vec3<bool>(false, var_2.x, var_1.x), !select(true, true, var_1.x)), !vec3<bool>(var_1.x, var_2.x, var_2.x));
}

fn func_2() -> vec4<u32> {
    var var_0 = u_input.e;
    var_0 = 2147483647i;
    var_0 = -_wgslsmith_div_i32(u_input.e, _wgslsmith_dot_vec3_i32(u_input.c.wyw, -(u_input.c.wyy << (vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) % vec3<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1146f, -145f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1699f)))));
    let var_2 = _wgslsmith_sub_vec3_i32(-u_input.c.xxz, vec3<i32>(-54563i, 0i, ~50035i));
    return select(vec4<u32>(u_input.b.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) >> (1u % 32u)), ~firstLeadingBit(u_input.b.x) >> (~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 8161u, 68714u, u_input.b.x), vec4<u32>(u_input.b.x, 1489u, 4294967295u, 38124u)), select(u_input.b.x, u_input.b.x, false)), vec3<u32>(~u_input.b.x, reverseBits(u_input.b.x), u_input.b.x))), vec4<u32>(4294967295u, 632u, u_input.b.x, firstTrailingBit(firstLeadingBit(~u_input.b.x))), vec4<bool>(true || any(func_3(true)), true, (_wgslsmith_sub_u32(0u, u_input.b.x) >> (~u_input.b.x % 32u)) >= 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(848f)) - 1120f) < _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(round(1000f))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> bool {
    var var_0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(45678u, arg_1, arg_1 ^ 0u, 75281u), ~vec4<u32>(arg_1, u_input.b.x, u_input.b.x, 1u)), func_2() | vec4<u32>(_wgslsmith_add_u32(0u, 15079u), u_input.b.x | 34352u, arg_1, u_input.b.x));
    var_0 = (((~vec4<u32>(var_0.x, arg_1, arg_1, 1u) >> (~vec4<u32>(u_input.b.x, var_0.x, arg_1, 4294967295u) % vec4<u32>(32u))) ^ vec4<u32>(58994u, 1u, 4294967295u, u_input.b.x)) << (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, var_0.x, var_0.x, arg_1)), ~(~vec4<u32>(u_input.b.x, u_input.b.x, 7827u, arg_1))) % vec4<u32>(32u))) << (countOneBits(~select(abs(vec4<u32>(1u, 822u, u_input.b.x, 0u)), vec4<u32>(19691u, 5190u, arg_1, var_0.x) >> (vec4<u32>(arg_1, u_input.b.x, 4294967295u, 21343u) % vec4<u32>(32u)), arg_0.b)) % vec4<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(1u, 28u)];
    global0 = array<Struct_1, 28>();
    var var_2 = select(!func_3(arg_1 < u_input.b.x).x, !arg_0.b, true) && var_1.b;
    return arg_0.b && true;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = reverseBits(firstLeadingBit(_wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(65185u, 4294967295u, u_input.b.x, u_input.b.x)), select(vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 58351u, u_input.b.x), !arg_1))));
    let var_1 = global0[_wgslsmith_index_u32(57983u, 28u)];
    var var_2 = u_input.b.xx;
    global0 = array<Struct_1, 28>();
    var var_3 = var_2.x | var_2.x;
    return Struct_1(~((vec4<i32>(var_1.a.x, u_input.a, 5913i, -3363i) ^ u_input.c) | _wgslsmith_mod_vec4_i32(u_input.c, abs(vec4<i32>(-7819i, 2147483647i, u_input.d, u_input.a)))), !all(vec2<bool>(arg_1 & true, !var_1.b)), -316f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    var var_0 = func_4(!select(vec2<bool>(any(vec3<bool>(true, true, false)), false), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false), true), func_1(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x, -598f)), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1602f, -1027f, -1159f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -849f, -148f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1517f, 697f, 1070f)), true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-703f, -1581f, -630f)))))), !vec3<bool>(1555i <= u_input.a, true, true))));
    let var_1 = true;
    let var_2 = vec4<bool>(false, false, select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), 718f, !var_0.b)) > _wgslsmith_f_op_f32(-var_0.c), !select(true, all(vec4<bool>(true, var_1, false, var_0.b)), var_0.b || var_1), true), !var_1);
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32((~u_input.b.x | _wgslsmith_mult_u32(62063u, 1u)) << (abs(~u_input.b.x) % 32u), ~(~u_input.b.x)) ^ 15879u, 28u)];
    let var_3 = vec2<u32>(~abs(~(u_input.b.x ^ 13481u)), u_input.b.x);
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-543f, 144f))))));
    let x = u_input.a;
    s_output = StorageBuffer(18399i, 456f, var_3.x, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, ~26503u, abs(var_3.x)), 1u), _wgslsmith_sub_u32(countOneBits(4294967295u), u_input.b.x), u_input.b.x, u_input.b.x << (~reverseBits(4294967295u) % 32u)));
}

