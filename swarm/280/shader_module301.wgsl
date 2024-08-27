struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<u32, 21> = array<u32, 21>(1u, 30422u, 12101u, 4294967295u, 34492u, 52720u, 1u, 43228u, 0u, 4294967295u, 1u, 0u, 72961u, 0u, 56585u, 0u, 33919u, 11234u, 0u, 75067u, 1u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: Struct_5) -> bool {
    global1 = array<u32, 21>();
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-418f, 1f)), global0.x));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-559f)), _wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_f_op_f32(floor(-370f)))));
    global0 = !select(vec3<bool>(any(global0.zx) || true, false | func_3(-2147483647i, Struct_5(vec2<f32>(470f, var_0.x), -872f, u_input.b), Struct_5(vec2<f32>(285f, -671f), 1660f, 1u)), countOneBits(10817u) == global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)] & u_input.b, 21u)], 21u)], 21u)]), !(!(!vec3<bool>(false, global0.x, global0.x))), all(vec2<bool>(global0.x && global0.x, all(vec3<bool>(true, global0.x, false)))));
    global1 = array<u32, 21>();
    var var_1 = abs(abs(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -2147483647i) ^ 1i, u_input.c.x)));
    return Struct_1(countOneBits(select(vec4<i32>(u_input.d.x, var_1.x, var_1.x, -31430i), vec4<i32>(var_1.x, -1i, u_input.c.x, -51302i) >> (vec4<u32>(4294967295u, 4294967295u, 9121u, global1[_wgslsmith_index_u32(7549u, 21u)]) % vec4<u32>(32u)), global0.x) >> (~(vec4<u32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 21u)], 13978u) ^ vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(3796u, 21u)], 1u, 72739u)) % vec4<u32>(32u))), vec2<bool>(true, func_3(~u_input.c.x, Struct_5(vec2<f32>(-213f, -199f), _wgslsmith_f_op_f32(var_0.x + var_0.x), 1502u), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(518f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -229f), ~u_input.b))), 0i, select(select(select(vec4<bool>(false, false, false, false), !vec4<bool>(global0.x, true, true, true), true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, global0.x, false, true)), any(vec4<bool>(true, global0.x, false, false))), vec4<bool>(~84188i <= -var_1.x, all(vec4<bool>(true, true, true, global0.x)), ~u_input.c.x != _wgslsmith_clamp_i32(-1i, -1i, 1i), true), all(select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), global0.x), vec3<bool>(true, true, true), all(vec3<bool>(global0.x, true, false))))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1049f) + _wgslsmith_f_op_f32(f32(-1f) * -556f));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 - -1129f)));
    var var_2 = min(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.b, 4294967295u), 83359u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_1.x << (arg_1.x % 32u), 40802u), countOneBits(48485u ^ u_input.b)), arg_1.x), select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, ~u_input.b, abs(35152u)), vec3<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(15467u, 21u)], u_input.b), 4294967295u, arg_1.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 21u)], 67213u, 41853u) & vec3<u32>(arg_1.x, u_input.b, arg_1.x), arg_1), !select(!arg_3.d.yyz, select(arg_3.d.yxw, vec3<bool>(arg_3.d.x, arg_3.b.x, arg_2), arg_3.b.x), arg_3.d.yxx)));
    var_2 = vec3<u32>(_wgslsmith_mult_u32(~1u, global1[_wgslsmith_index_u32(1u, 21u)]), ~1u, firstLeadingBit(0u));
    global0 = select(!vec3<bool>(_wgslsmith_add_u32(31583u, arg_1.x) <= _wgslsmith_sub_u32(u_input.b, u_input.b), all(func_2().d), true), arg_3.d.wwy, vec3<bool>(arg_2, arg_3.d.x, true));
    return 4294967295u;
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_4(func_2(), _wgslsmith_sub_u32(arg_1.b, 4294967295u) << (18582u % 32u));
    return Struct_1(vec4<i32>(var_0.a.a.x, _wgslsmith_clamp_i32(arg_1.a.a.x, -1i, var_0.a.a.x) << (~arg_0 % 32u), -2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.a.x, -35525i, u_input.a.x, 26819i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -1i)))) & arg_1.a.a, func_2().b, -var_0.a.a.x, select(var_0.a.d, func_2().d, select(all(vec2<bool>(global0.x, global0.x)), true, arg_3.x || any(vec2<bool>(arg_3.x, arg_1.a.b.x)))));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(func_5(~func_4(u_input.d.x | u_input.a.x, ~vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 21u)], 42757u), -11148i > u_input.d.x, func_2()), Struct_4(func_2(), global1[_wgslsmith_index_u32(4294967295u, 21u)]), !all(!vec4<bool>(global0.x, global0.x, true, false)), select(func_2().d.wwz, select(!vec3<bool>(global0.x, global0.x, false), !vec3<bool>(false, global0.x, global0.x), func_2().d.zyz), true)), ~select(select(vec4<u32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64707u, 21u)], 21u)], 21u)], 21u)], u_input.b), vec4<u32>(u_input.b, 4294967295u, global1[_wgslsmith_index_u32(14172u, 21u)], 63565u), func_2().d), abs(vec4<u32>(31828u, 39420u, global1[_wgslsmith_index_u32(u_input.b, 21u)], u_input.b)), any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), global0.x))));
    global1 = array<u32, 21>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1015f, 109f))), _wgslsmith_f_op_f32(f32(-1f) * -331f)))), 674f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1350f)) * _wgslsmith_f_op_f32(abs(-1184f)))))));
    global0 = vec3<bool>(true, global0.x, (global0.x | global0.x) | global0.x);
    let var_2 = func_2().d.xxz;
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_6(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = ~1u;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(floor(arg_0)), (false | global0.x) && !global0.x)) * _wgslsmith_div_f32(arg_0, 255f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 - arg_0))))) - _wgslsmith_f_op_f32(-1f));
    var var_3 = ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(36844u, u_input.b, 1u, global1[_wgslsmith_index_u32(5985u, 21u)]), firstTrailingBit(vec4<u32>(arg_3.d.x, u_input.b, 32310u, 89324u))), vec4<u32>(countOneBits(reverseBits(0u)), ~arg_3.d.x, var_0, 0u), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, var_0, var_0), vec4<u32>(76196u, 4294967295u, u_input.b, 12176u)) | vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(90246u, 21u)], u_input.b, 17631u), (vec4<u32>(0u, 4294967295u, arg_3.d.x, 6203u) << (vec4<u32>(u_input.b, 1u, var_0, global1[_wgslsmith_index_u32(u_input.b, 21u)]) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(78643u, 97589u, 90883u, 82373u), vec4<u32>(0u, 1u, 35584u, 1u), vec4<u32>(arg_3.d.x, 0u, 65841u, u_input.b)) % vec4<u32>(32u))));
    let var_4 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.d.x, 1i, 1i), -2147483647i), -1i);
    return StorageBuffer(9040i, vec3<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, 4294967295u), 0u), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0, 17428u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(92517u, var_0, global1[_wgslsmith_index_u32(4294967295u, 21u)]), var_3.zxy), 21u)]), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1289f)) * _wgslsmith_f_op_f32(f32(-1f) * -158f))) + _wgslsmith_div_f32(857f, _wgslsmith_f_op_f32(ceil(-619f)))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-abs(vec3<i32>(u_input.d.x, 47980i, u_input.c.x)), u_input.a.yzy), vec3<i32>(~1i, firstLeadingBit(-u_input.c.x), countOneBits(_wgslsmith_add_i32(-2147483647i, 2147483647i)))), select(vec4<bool>(~14960u > (78338u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 21u)], 21u)], 21u)], 21u)], 21u)]), global0.x, global0.x, global0.x), select(func_2().d, !func_5(35703u, Struct_4(Struct_1(vec4<i32>(u_input.a.x, 14250i, 54714i, -13262i), global0.yy, 9972i, vec4<bool>(global0.x, true, global0.x, false)), 4294967295u), global0.x, vec3<bool>(true, true, false)).d, global1[_wgslsmith_index_u32(~u_input.b, 21u)] >= max(global1[_wgslsmith_index_u32(u_input.b, 21u)], u_input.b)), false), Struct_3(func_2().b.x, u_input.b > _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(9691u, 59370u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(106134u, 21u)], 21u)], 21u)], 85236u), vec2<u32>(u_input.b, 1u)), ~vec2<u32>(1u, 0u)), vec3<bool>(false, false, func_2().b.x), ~select(vec3<u32>(1u, global1[_wgslsmith_index_u32(2396u, 21u)], global1[_wgslsmith_index_u32(0u, 21u)]), ~vec3<u32>(65951u, 1u, u_input.b), true), vec3<bool>(true, !global0.x, true)));
}

