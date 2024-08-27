struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 2147483647i);

var<private> global1: array<f32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = Struct_2(select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), arg_0.x == u_input.a.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true), any(vec3<bool>(true, true, true))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), Struct_1(arg_0.yxx, arg_0.yz, any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), abs(-77063i) ^ arg_0.x), abs(-(~vec4<i32>(79108i, arg_0.x, u_input.a.x, u_input.a.x))), firstLeadingBit(_wgslsmith_sub_vec3_i32(u_input.a.xwx, -abs(vec3<i32>(32292i, u_input.a.x, -2147483647i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 6u)], -1251f, global1[_wgslsmith_index_u32(u_input.b, 6u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(17781u, 6u)], global1[_wgslsmith_index_u32(38796u, 6u)], -1413f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2132f, -560f, -976f) * vec3<f32>(-455f, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.b, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)])), 938f, -2088f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1292f, global1[_wgslsmith_index_u32(0u, 6u)]))), true)));
    var var_1 = select(vec4<bool>(all(vec3<bool>(var_0.b.c, true, true)), select(var_0.a.x, false, _wgslsmith_f_op_f32(252f + global1[_wgslsmith_index_u32(u_input.c.x, 6u)]) <= _wgslsmith_f_op_f32(-var_0.e.x)), !var_0.a.x | true, true), vec4<bool>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.e.x) >= var_0.e.x, var_0.b.c, var_0.a.x), false);
    var_1 = vec4<bool>(!(!(!any(var_0.a))), !var_1.x, var_1.x, var_1.x | var_0.a.x);
    var_1 = select(select(vec4<bool>(var_1.x, all(select(var_1.wyx, var_0.a, vec3<bool>(var_0.b.c, false, false))), !(!var_1.x), any(select(vec4<bool>(var_0.b.c, var_1.x, true, true), vec4<bool>(true, false, var_1.x, true), false))), select(select(vec4<bool>(var_1.x, false, var_1.x, false), !vec4<bool>(true, var_0.a.x, false, var_0.a.x), false), vec4<bool>(var_0.b.c, true, var_1.x, !var_1.x), any(!vec4<bool>(var_0.b.c, true, true, true))), any(select(!vec4<bool>(true, var_1.x, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), true), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, var_0.b.c, var_0.a.x, var_0.b.c), vec4<bool>(false, true, false, true))))), vec4<bool>(true, !select(var_0.b.c, false, var_0.b.c), any(vec2<bool>(true, !var_0.a.x)), select((arg_0.x << (42636u % 32u)) > ~var_0.d.x, !var_1.x, !(u_input.b == u_input.c.x))), (global0.x ^ countOneBits(~77671i)) > _wgslsmith_clamp_i32(u_input.a.x, (46353i >> (u_input.b % 32u)) | -arg_0.x, _wgslsmith_add_i32(i32(-1i) * -1i, ~u_input.a.x)));
    let var_2 = Struct_2(select(!var_1.zww, vec3<bool>(var_1.x, var_0.b.c, true), false), var_0.b, ~arg_0, u_input.a.xzw, var_0.e);
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = -22708i > (~(~u_input.a.x) >> (~countOneBits(u_input.c.x | u_input.b) % 32u));
    var_0 = true;
    var_0 = true;
    var var_1 = Struct_2(vec3<bool>(!(abs(u_input.c.x) < 0u), arg_0.c, func_3(vec4<i32>(-1i, arg_3.d, arg_3.d, 2147483647i)) > min(1i, -2147483647i)), arg_1, vec4<i32>(-1i) * -u_input.a, select(select(-u_input.a.wzw, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_2.d.x, 34889i), vec3<i32>(-38357i, 5556i, arg_1.b.x), vec3<i32>(u_input.a.x, global0.x, arg_3.b.x)), vec3<bool>(false, arg_1.c, arg_0.c)), -arg_1.a ^ ~vec3<i32>(global0.x, -6467i, -4035i), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 6u)] < global1[_wgslsmith_index_u32(8744u, 6u)], true, arg_0.c)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(abs(arg_2.d.x), ~0i, ~2147483647i), _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, -44574i, -21991i), vec3<i32>(arg_0.d, -10152i, 33757i))), arg_2.e);
    global0 = select(vec2<i32>(~(i32(-1i) * -12327i) << (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(63963u, u_input.b), u_input.c.zx)) % 32u), firstTrailingBit(-var_1.c.x | -2147483647i)), -(~select(select(vec2<i32>(-2147483647i, arg_3.a.x), u_input.a.yy, arg_0.c), _wgslsmith_mod_vec2_i32(arg_0.b, vec2<i32>(arg_0.d, u_input.a.x)), arg_0.a.x < arg_2.c.x)), (!arg_2.b.c == all(!vec4<bool>(arg_1.c, true, false, false))) & all(select(vec3<bool>(true, var_1.b.c, true), var_1.a, var_1.a.x)));
    return 29685u;
}

fn func_1() -> vec4<u32> {
    var var_0 = abs(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(~51039u, 4294967295u, u_input.b), ~(func_2(Struct_1(u_input.a.xww, u_input.a.zy, true, global0.x), Struct_1(vec3<i32>(2147483647i, u_input.a.x, 1i), u_input.a.ww, true, 0i), Struct_2(vec3<bool>(true, false, false), Struct_1(u_input.a.wwy, u_input.a.wz, true, u_input.a.x), vec4<i32>(4043i, 1i, u_input.a.x, global0.x), vec3<i32>(36217i, -31962i, u_input.a.x), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 1524f, global1[_wgslsmith_index_u32(u_input.b, 6u)])), Struct_1(u_input.a.yzx, vec2<i32>(u_input.a.x, u_input.a.x), false, global0.x)) | 29995u)));
    let var_1 = Struct_2(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), Struct_1((_wgslsmith_mult_vec3_i32(u_input.a.xwz, vec3<i32>(u_input.a.x, u_input.a.x, 867i)) & ~u_input.a.ywx) >> (_wgslsmith_mult_vec3_u32(reverseBits(u_input.c), reverseBits(u_input.c)) % vec3<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(global0.x, select(-2147483647i, u_input.a.x, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-31609i, -79604i, global0.x) & u_input.a.yyz, u_input.a.zzx ^ u_input.a.xyy)), all(vec4<bool>(any(vec3<bool>(false, false, true)), true, true, true)), -8300i), ~vec4<i32>(-u_input.a.x, ~1i, global0.x, 1i), select(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), vec3<i32>(-64198i, 0i, global0.x)) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, 1u), u_input.c, u_input.c) & u_input.c) % vec3<u32>(32u)), firstLeadingBit(abs(u_input.a.zyz)) ^ vec3<i32>(u_input.a.x, firstLeadingBit(13375i), -global0.x), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 84593u), vec2<u32>(u_input.b, 26468u) ^ u_input.c.yy), 6u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b, 6u)] - 779f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(470f, -1652f)))) * vec3<f32>(_wgslsmith_f_op_f32(select(170f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 6u)] - -837f), global1[_wgslsmith_index_u32(1u, 6u)] <= global1[_wgslsmith_index_u32(u_input.b, 6u)])), 1700f, -705f)));
    let var_2 = ~countOneBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 1u, u_input.b, u_input.b)), vec4<u32>(4294967295u, u_input.c.x, 9228u, 10757u)) & select(select(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 1u), vec4<u32>(47593u, 0u, 1u, 18871u), vec4<bool>(false, var_1.a.x, true, true)), ~vec4<u32>(0u, 0u, 14888u, 8947u), any(vec2<bool>(true, var_1.a.x))));
    var var_3 = var_1.b.b;
    var var_4 = _wgslsmith_mult_u32(u_input.c.x << (~(~var_2.x) % 32u), u_input.c.x) << (var_2.x % 32u);
    return ~(~(~vec4<u32>(var_2.x, _wgslsmith_div_u32(4294967295u, 1u), ~u_input.b, 11165u)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(-max(~abs(vec3<i32>(-1244i, u_input.a.x, -6936i)), u_input.a.wxy >> (~u_input.c % vec3<u32>(32u))), u_input.a.wz, arg_1 >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 6u)])))), 5976i >> (u_input.c.x % 32u));
    global0 = var_0.a.xx;
    global0 = _wgslsmith_mod_vec2_i32(arg_2.zx, ~_wgslsmith_div_vec2_i32(firstTrailingBit(-vec2<i32>(var_0.b.x, arg_2.x)), ~vec2<i32>(0i, -1i)));
    var var_1 = Struct_1(vec3<i32>(1i << (arg_0 % 32u), u_input.a.x, select(1i, -59706i, !var_0.c)) >> (~(u_input.c & vec3<u32>(1u, 10444u, 11135u)) % vec3<u32>(32u)), select(-(~vec2<i32>(1i, arg_2.x) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))), vec2<i32>(6239i, abs(-30309i << (1u % 32u))), true), true, global0.x);
    let var_2 = 0u;
    return -495f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(38735u, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 30075u, 4294967295u, 9527u), vec4<u32>(u_input.b, 0u, u_input.c.x, u_input.c.x)), func_1()), 6u)]), -select(max(u_input.a, vec4<i32>(1i, global0.x, global0.x, global0.x)), countOneBits(vec4<i32>(-2147483647i, global0.x, global0.x, global0.x)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 6u)], 1064f)), 230f))) <= global1[_wgslsmith_index_u32(~u_input.b, 6u)];
    var var_1 = Struct_2(select(vec3<bool>(all(vec3<bool>(var_0, true, var_0)) & any(vec3<bool>(true, var_0, var_0)), var_0, select(var_0, false, var_0) & var_0), select(!vec3<bool>(true, false, var_0), vec3<bool>(true, true, true), vec3<bool>(var_0, true, true)), !(!select(vec3<bool>(true, var_0, true), vec3<bool>(false, false, var_0), var_0))), Struct_1(-vec3<i32>(global0.x, u_input.a.x, 2147483647i) >> (u_input.c % vec3<u32>(32u)), vec2<i32>(20589i, 1i), true, global0.x), vec4<i32>(_wgslsmith_sub_i32(-1i, min(u_input.a.x, 23070i ^ global0.x)), abs(func_3(~vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i))), global0.x, 37747i >> (u_input.b % 32u)), ~vec3<i32>(46095i, reverseBits(-1i), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 6u)]), 373f, global1[_wgslsmith_index_u32(~15772u, 6u)]) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1141f, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)])))))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 6u)]))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 6u)]));
    let var_3 = var_1.d.yz;
    var var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(~3298u, max(12945u, 0u)) & ~(~u_input.c.xy)));
}

