struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_3(Struct_1((all(vec3<bool>(true, arg_0.x, arg_0.x)) || true) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~u_input.a, 21u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 21u)])))), vec3<i32>(-2147483647i, _wgslsmith_mult_i32(abs(_wgslsmith_div_i32(6983i, 1i)), 1i), 2147483647i), -1000f);
    let var_1 = min(vec4<i32>(var_0.b.x, -45210i, _wgslsmith_mult_i32(4268i, ~var_0.b.x), _wgslsmith_mult_i32(max(-2147483647i, 0i), ~var_0.b.x)) | min(vec4<i32>(var_0.b.x, ~var_0.b.x, -var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<i32>(6871i, var_0.b.x, var_0.b.x, 0i))), vec4<i32>(-32518i, 1i, ~var_0.b.x, var_0.b.x & -2147483647i)), -vec4<i32>(var_0.b.x, -1i, i32(-1i) * -var_0.b.x, (0i & var_0.b.x) & -41123i));
    var var_2 = select(any(select(!vec4<bool>(true, arg_0.x, var_0.a.a, true), !select(vec4<bool>(false, var_0.a.a, arg_0.x, arg_0.x), vec4<bool>(false, true, var_0.a.a, false), vec4<bool>(var_0.a.a, false, false, var_0.a.a)), all(!vec4<bool>(false, var_0.a.a, false, var_0.a.a)))), true, true);
    let var_3 = !vec4<bool>(select(!any(vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a)), true, true), arg_0.x, arg_0.x, !all(arg_0) | (all(vec4<bool>(var_0.a.a, false, var_0.a.a, false)) && any(vec4<bool>(arg_0.x, arg_0.x, var_0.a.a, true))));
    let var_4 = firstTrailingBit(-2147483647i);
    return firstLeadingBit(_wgslsmith_sub_vec3_i32(select(~vec3<i32>(1382i, 1i, -13061i), -(vec3<i32>(-2147483647i, var_0.b.x, var_4) | var_1.wwy), var_3.wyy), ~vec3<i32>(20551i, var_4, -40614i) ^ var_0.b));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(~71843u, 21u)] > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 21u)]), -2387f), _wgslsmith_clamp_vec3_i32(~(~func_3(vec2<bool>(false, arg_0.a))), ~(-countOneBits(vec3<i32>(-2147483647i, 47077i, 0i))), reverseBits(vec3<i32>(-18415i, min(-1i, 17848i), 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(-arg_0.b))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 21u)] + arg_0.b), 1752f)))));
    var var_1 = Struct_2(Struct_1(true || all(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, false), false)), arg_0.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b, _wgslsmith_div_f32(var_0.a.b, -1140f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1412f, -235f)) - -1704f))), var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.b * global0[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 21u)] + 1282f)))), var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * global0[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b - arg_0.b)), select(true, true, true)))), Struct_1(select(_wgslsmith_div_f32(-182f, var_0.a.b) < _wgslsmith_f_op_f32(ceil(var_0.c)), !any(vec3<bool>(arg_0.a, var_0.a.a, arg_0.a)), !arg_0.a || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(f32(-1f) * -986f)))));
    let var_2 = var_0.a;
    var var_3 = ~max(~vec4<i32>(var_1.c, ~(-2147483647i), -1i, i32(-1i) * -2147483647i), vec4<i32>(abs(i32(-1i) * -2147483647i), countOneBits(~19245i), _wgslsmith_mult_i32(var_0.b.x, var_0.b.x), ~var_0.b.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(u_input.a, 1u, 4294967295u, 23019u)) % 32u)));
    var_3 = firstTrailingBit(select(vec4<i32>(-(~var_1.c), _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.c, var_3.x, 66859i, var_0.b.x), vec4<i32>(1i, var_1.c, var_1.c, var_0.b.x), var_1.a.a), ~vec4<i32>(var_0.b.x, var_3.x, 1i, var_0.b.x)), ~(-var_3.x), var_0.b.x), -select(vec4<i32>(-11206i, -1i, var_0.b.x, var_3.x), vec4<i32>(-1i, 16878i, -39402i, 1i), arg_0.a) << (firstLeadingBit(min(vec4<u32>(26943u, 4294967295u, 15837u, 4294967295u), vec4<u32>(u_input.a, 20087u, 7659u, 1u))) % vec4<u32>(32u)), !select(!vec4<bool>(false, var_0.a.a, var_1.e.a, true), !vec4<bool>(arg_0.a, false, arg_0.a, false), select(vec4<bool>(true, arg_0.a, var_1.a.a, arg_0.a), vec4<bool>(false, true, true, var_2.a), arg_0.a))));
    return firstLeadingBit(~(~abs(var_1.c)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_2 {
    global0 = array<f32, 21>();
    var var_0 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_2.b.x, -arg_2.b.x, 2147483647i) & -vec3<i32>(-8108i, -1i, arg_2.b.x)), select(firstTrailingBit(vec3<i32>(2147483647i, 13894i, abs(-2147483647i))), -_wgslsmith_clamp_vec3_i32(arg_2.b, abs(vec3<i32>(0i, 1i, 10564i)), ~vec3<i32>(arg_2.b.x, 1i, arg_2.b.x)), select(select(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_2.a.a, arg_0, false), vec3<bool>(arg_0, arg_2.a.a, arg_2.a.a)), select(vec3<bool>(false, false, arg_0), vec3<bool>(false, true, arg_0), arg_2.a.a), !arg_2.a.a), select(vec3<bool>(true, false, true), vec3<bool>(false, arg_2.a.a, true), vec3<bool>(true, arg_0, arg_0)), true)));
    global1 = arg_2.a.a;
    var_0 = (max(51615i, 52685i) & (i32(-1i) * -func_2(arg_2.a))) ^ 0i;
    var var_1 = Struct_2(Struct_1(!((-8374i ^ arg_2.b.x) >= -arg_2.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 21u)])))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(164f, arg_2.c)), _wgslsmith_f_op_f32(-941f - 2256f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~21652u, 21u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 21u)], -1226f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_2.a.b, -173f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.x, global0[_wgslsmith_index_u32(u_input.a, 21u)], arg_2.a.b) + vec4<f32>(arg_1.x, 1876f, -1000f, -1392f)))), select(!vec4<bool>(true, arg_2.a.a, arg_0, arg_0), !vec4<bool>(true, false, arg_0, false), arg_2.a.a)))), -((firstTrailingBit(-1i) & arg_2.b.x) & -9937i), arg_2.c, arg_2.a);
    return Struct_2(arg_2.a, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.x)))), -1112f, var_1.e.b, _wgslsmith_f_op_f32(-var_1.b.x)), -7152i, -1086f, Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)), 660f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = ~(-(_wgslsmith_div_vec3_i32(max(vec3<i32>(23163i, arg_0.c, arg_0.c), vec3<i32>(-45843i, -52416i, 1i)), vec3<i32>(2147483647i, arg_0.c, 39531i)) << (abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, 58539u), vec3<u32>(u_input.a, 21087u, u_input.a))) % vec3<u32>(32u))));
    var var_1 = Struct_3(arg_1, ~_wgslsmith_sub_vec3_i32(func_3(vec2<bool>(false, arg_1.a)) ^ select(vec3<i32>(2147483647i, -1i, arg_0.c), vec3<i32>(var_0.x, arg_0.c, -9038i), vec3<bool>(true, arg_0.a.a, arg_0.e.a)), vec3<i32>(var_0.x, arg_0.c, -40745i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-488f))), _wgslsmith_f_op_f32(select(-1378f, arg_1.b, true)))) - global0[_wgslsmith_index_u32(37598u, 21u)]));
    global1 = false;
    var var_2 = var_1.a.b;
    var var_3 = vec2<bool>(!(!(!(false && var_1.a.a))), !(!arg_1.a));
    return !(!vec4<bool>(true, _wgslsmith_f_op_f32(-arg_1.b) < func_1(true, arg_0.b.wx, Struct_3(arg_1, var_1.b, arg_1.b)).e.b, arg_1.a, all(!vec3<bool>(true, true, arg_0.e.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-898f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 21u)]))), global0[_wgslsmith_index_u32(562u, 21u)], select(true, true, true)))));
    global0 = array<f32, 21>();
    var_0 = _wgslsmith_f_op_f32(select(-669f, -997f, all(vec2<bool>(true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false))))));
    global1 = !(!any(func_4(func_1(true, vec2<f32>(global0[_wgslsmith_index_u32(5025u, 21u)], 1381f), Struct_3(Struct_1(true, 783f), vec3<i32>(56834i, 0i, 6941i), -515f)), func_1(false, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 1166f), Struct_3(Struct_1(false, 853f), vec3<i32>(-1i, -22761i, -28941i), -1355f)).e)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_div_u32(15044u, 30000u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 7015u, 0u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 62544u, u_input.a))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), select(vec3<u32>(36447u, 1u, 0u), vec3<u32>(u_input.a, 4014u, 0u), false), vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(0u, u_input.a, 1u))), 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-152f - -564f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 21u)])) * global0[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1014f), 478f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 21u)]))) * _wgslsmith_f_op_f32(abs(-1634f))));
    let var_2 = Struct_3(func_1(true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 251f)), _wgslsmith_f_op_vec2_f32(sign(func_1(true, vec2<f32>(1843f, -1000f), Struct_3(Struct_1(false, 510f), vec3<i32>(0i, -24744i, -14719i), global0[_wgslsmith_index_u32(u_input.a, 21u)])).b.wy)))), Struct_3(func_1(any(vec2<bool>(false, true)), vec2<f32>(906f, -523f), Struct_3(Struct_1(false, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec3<i32>(-1i, -2147483647i, 2147483647i), global0[_wgslsmith_index_u32(u_input.a, 21u)])).e, func_3(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(max(reverseBits(17970u), ~11185u), 21u)])).e, _wgslsmith_div_vec3_i32(-func_3(vec2<bool>(true, true)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(-2147483647i, 2147483647i, 2147483647i) << (vec3<u32>(4294967295u, u_input.a, 31368u) % vec3<u32>(32u)), countOneBits(vec3<i32>(1i, -32303i, 0i))), -vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1384f, -196f)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-func_1(var_2.a.a, vec2<f32>(-1671f, global0[_wgslsmith_index_u32(7051u, 21u)]), Struct_3(var_2.a, var_2.b, var_2.a.b)).b.wwy), vec3<f32>(-894f, _wgslsmith_f_op_f32(trunc(var_2.a.b)), -105f), !vec3<bool>(var_2.a.a, false, false)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.c, global0[_wgslsmith_index_u32(1u, 21u)])) - 1343f), _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(166f - var_2.c), _wgslsmith_f_op_f32(max(var_2.c, global0[_wgslsmith_index_u32(u_input.a, 21u)]))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-236f, 423f, 729f) - vec3<f32>(-1522f, 704f, -998f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 1121f, var_2.a.b) + vec3<f32>(var_2.c, 912f, var_2.a.b)))))));
    var var_4 = max(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 21009u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 28518u), vec3<u32>(25906u, u_input.a, u_input.a)), vec3<u32>(~u_input.a, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(27227u, 0u)))), vec3<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a) & vec4<u32>(16662u, 1u, 0u, u_input.a)), ~countOneBits(vec4<u32>(0u, u_input.a, 29685u, 37374u))), 4655u, u_input.a));
    let var_5 = Struct_1(!(!(!(!var_2.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2292f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~52656u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a.b), var_2.a.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_5.b)) + _wgslsmith_f_op_f32(295f - var_5.b)))), 33856i, _wgslsmith_f_op_vec3_f32(round(var_3)), ~vec3<u32>(_wgslsmith_mult_u32(32408u, _wgslsmith_mult_u32(var_4.x, 22186u)), _wgslsmith_div_u32(~var_4.x, 4294967295u), min(~var_4.x, _wgslsmith_mod_u32(7786u, var_4.x))));
}

