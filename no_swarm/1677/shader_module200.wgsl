struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(14018i, vec2<bool>(false, false), Struct_2(vec4<f32>(-923f, 240f, 150f, 289f), Struct_1(-54063i, vec3<u32>(1u, 4294967295u, 1u), vec4<bool>(true, true, false, false))));

var<private> global1: u32 = 25971u;

var<private> global2: Struct_4 = Struct_4(67347i, Struct_2(vec4<f32>(-180f, -1790f, -1975f, -157f), Struct_1(1i, vec3<u32>(0u, 44077u, 7331u), vec4<bool>(true, false, false, false))), vec4<u32>(23746u, 14444u, 25114u, 58164u));

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> bool {
    var var_0 = global0.c.a.zx;
    var var_1 = Struct_3(~(-global0.c.b.a) << (~(~_wgslsmith_mod_u32(60651u, 8745u)) % 32u), select(!arg_2.b.c.yz, !vec2<bool>(true, 2147483647i <= arg_2.b.a), true), Struct_2(vec4<f32>(_wgslsmith_div_f32(global2.b.a.x, _wgslsmith_div_f32(arg_2.a.x, -224f)), _wgslsmith_f_op_f32(var_0.x + -309f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2143f), _wgslsmith_div_f32(569f, -113f))), global0.c.a.x), Struct_1(~arg_2.b.a, global0.c.b.b, arg_2.b.c)));
    var var_2 = Struct_5(-_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global2.a, u_input.e, global0.a, var_1.a)), ~vec4<i32>(arg_2.b.a, arg_2.b.a, u_input.e, 2147483647i)) << (vec4<u32>(32442u, arg_1.x, ~(~84323u), _wgslsmith_sub_u32(18987u, _wgslsmith_mod_u32(global0.c.b.b.x, var_1.c.b.b.x))) % vec4<u32>(32u)));
    let var_3 = var_1.c.b.b.zy;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f - 899f))), _wgslsmith_f_op_f32(-global0.c.a.x)) * global0.c.a.xz);
    return true;
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = Struct_4(u_input.a.x, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, -460f, global0.c.a.x, 1079f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c.a.x, global2.b.a.x, arg_0.c.a.x, global0.c.a.x)))), Struct_1(34601i, ~arg_0.c.b.b, arg_0.c.b.c)), ~global2.c);
    var var_1 = global0.c.b.b;
    var var_2 = arg_0;
    global3 = array<Struct_2, 32>();
    var var_3 = var_0.b.b.c;
    return u_input.a.xz;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec3<f32> {
    let var_0 = global2.b.b.c;
    let var_1 = Struct_3(u_input.a.x, select(!(!select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), arg_0)), global2.b.b.c.zy, select(vec2<bool>(false, var_0.x), select(!global2.b.b.c.ww, arg_0, global0.c.b.c.wz), arg_2.x < 1i)), Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1767f), _wgslsmith_f_op_f32(-global0.c.a.x)), 430f, _wgslsmith_f_op_f32(global2.b.a.x * -1131f), global2.b.a.x), global0.c.b));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.a.x))));
    global0 = Struct_3(firstTrailingBit(countOneBits(~reverseBits(u_input.e))), var_0.yz, global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(4294967295u, 0u, u_input.b.x), max(max(var_1.c.b.b.x, global2.b.b.b.x), _wgslsmith_mult_u32(u_input.c.x, 1u)))), 32u)]);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(var_1.c.a)), global0.c.b);
    return vec3<f32>(_wgslsmith_f_op_f32(var_3.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f * 678f)) - -244f)), global0.c.a.x, _wgslsmith_f_op_f32(-2133f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -282f))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = (select(global0.c.b.b.x, _wgslsmith_div_u32(~1u, 39017u), global0.c.b.c.x) >> (1u % 32u)) & ~(~0u);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_4(!global2.b.b.c.xy, select(global2.b.b.c, vec4<bool>(!func_2(global0.b, global0.c.b.b, global0.c), u_input.c.x <= 38655u, true || (global2.b.b.c.x && false), true), global0.c.b.c), _wgslsmith_sub_vec2_i32(-func_3(Struct_3(38601i, global0.b, Struct_2(global0.c.a, global0.c.b))), vec2<i32>(arg_0.x, 0i))));
    return !(!select(select(vec2<bool>(true, false), global0.c.b.c.xz, !global0.b), !vec2<bool>(global2.b.b.c.x, true), global2.b.b.c.x));
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_2 {
    let var_0 = vec4<bool>(any(select(!select(global0.c.b.c.zxy, vec3<bool>(false, false, arg_0.b.b.c.x), global2.b.b.c.x), global2.b.b.c.wwy, vec3<bool>(global0.c.b.c.x & arg_1, global0.c.b.a < arg_0.b.b.a, false))), any(global0.c.b.c.yyy), arg_0.b.b.c.x, true);
    let var_1 = u_input.c.x;
    global0 = Struct_3(select(global2.b.b.a, _wgslsmith_add_i32(global2.a, -21326i), false), !arg_0.b.b.c.xz, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global0.c.a, vec4<f32>(171f, arg_0.b.a.x, arg_0.b.a.x, global0.c.a.x)))) * _wgslsmith_f_op_vec4_f32(arg_0.b.a - _wgslsmith_div_vec4_f32(global2.b.a, vec4<f32>(arg_0.b.a.x, 477f, global0.c.a.x, global2.b.a.x)))), arg_0.b.b));
    let var_2 = select(abs(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-8925i, 2147483647i, arg_0.a, 20937i), -vec4<i32>(arg_0.a, 26911i, u_input.a.x, global2.b.b.a)), vec4<i32>(1i, u_input.a.x << (global0.c.b.b.x % 32u), countOneBits(arg_0.a), i32(-1i) * -9267i))), -(select(vec4<i32>(17729i, arg_0.b.b.a, -1i, 1i), ~vec4<i32>(arg_0.a, global2.b.b.a, global0.a, 1i), !global2.b.b.c) | (vec4<i32>(-41170i, arg_0.b.b.a, 26333i, arg_0.b.b.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 28662u), arg_0.c) % vec4<u32>(32u)))), false);
    let var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-480f, global0.c.a.x)), -1663f) + arg_0.b.a.x) <= arg_0.b.a.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-787f, global0.c.a.x, global2.b.a.x, arg_0.b.a.x) - vec4<f32>(1315f, arg_0.b.a.x, arg_0.b.a.x, global0.c.a.x)))))), global2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(u_input.e, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, 598f, -690f, global2.b.a.x)), Struct_1(1i, _wgslsmith_sub_vec3_u32(vec3<u32>(22411u, 4294967295u, u_input.b.x), global2.b.b.b), !global0.c.b.c)), _wgslsmith_clamp_vec4_u32(~(~global2.c), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(global2.c, vec4<u32>(global0.c.b.b.x, 4294967295u, global0.c.b.b.x, global2.b.b.b.x)), max(global2.c, vec4<u32>(u_input.b.x, 16412u, u_input.b.x, global0.c.b.b.x))), vec4<u32>(firstLeadingBit(4294967295u), global0.c.b.b.x >> (global0.c.b.b.x % 32u), 3853u, u_input.d))), all(func_1(-min(vec2<i32>(24707i, 17750i), u_input.a.yy), min(u_input.a.zx, u_input.a.xy) >> (min(global2.b.b.b.zz, global2.b.b.b.yy) % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(global0.c.a.x + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.a.x), 352f), var_0.a.x)) >= var_0.a.x;
    var var_2 = reverseBits(abs(firstTrailingBit(_wgslsmith_div_vec4_u32(global2.c, vec4<u32>(0u, 745u, 0u, var_0.b.b.x)) | _wgslsmith_mod_vec4_u32(global2.c, global2.c))));
    global1 = _wgslsmith_mod_u32(24008u, abs(28372u) >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(~37177u, _wgslsmith_dot_vec2_u32(global0.c.b.b.xx, var_2.xy)), var_0.b.b.x) % 32u));
    global1 = ~64342u;
    var var_3 = Struct_4(u_input.e, func_5(Struct_4(reverseBits(u_input.a.x) >> (~var_2.x % 32u), func_5(Struct_4(global0.a, var_0, vec4<u32>(var_0.b.b.x, u_input.b.x, var_0.b.b.x, var_2.x)), global2.b.b.c.x), ~global2.c), !(!all(vec3<bool>(true, true, false)))), global2.c);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.b.a.x)), var_0.a.x);
    var_3 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.e << (var_2.x % 32u), -12017i), vec2<i32>(global2.a, func_3(Struct_3(14556i, global2.b.b.c.xy, Struct_2(global2.b.a, Struct_1(var_0.b.a, global2.b.b.b, var_0.b.c)))).x)), global3[_wgslsmith_index_u32(global2.c.x, 32u)], min(select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, global0.c.b.b.x, 4294967295u, var_0.b.b.x), vec4<u32>(35472u, 1u, 4294967295u, var_3.c.x)), vec4<u32>(4294967295u, 4294967295u, global2.c.x, 4294967295u)), ~(~vec4<u32>(global0.c.b.b.x, 40557u, u_input.c.x, 72912u)), true), ~(vec4<u32>(var_3.b.b.b.x, u_input.c.x, 0u, 0u) >> ((global2.c >> (var_3.c % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let var_5 = Struct_4(global2.b.b.a, func_5(Struct_4(-7687i, func_5(Struct_4(2147483647i, Struct_2(var_0.a, var_3.b.b), vec4<u32>(1u, 15548u, 1u, var_2.x)), false), ~(vec4<u32>(1u, global2.c.x, var_2.x, var_3.b.b.b.x) | global2.c)), true), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(5995u, 15661u, 4294967295u & ~(~global2.c.x), var_2.x), var_5.c, var_3.b.b.a, vec4<i32>(-1i, firstTrailingBit(var_3.b.b.a), _wgslsmith_mult_i32(-16482i, global2.a), ~var_0.b.a), countOneBits(global0.c.b.a));
}

