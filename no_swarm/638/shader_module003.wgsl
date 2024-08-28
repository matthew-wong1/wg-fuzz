struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<f32>;

var<private> global2: bool;

var<private> global3: f32 = 915f;

var<private> global4: array<bool, 2>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) + _wgslsmith_f_op_f32(-846f * -910f))));
    return arg_0.zy;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: Struct_3) -> vec2<u32> {
    global0 = ~(~vec2<u32>(arg_3.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 40918u, u_input.c.x))) | countOneBits(reverseBits(u_input.c) & (u_input.c ^ u_input.c)));
    var var_0 = arg_2;
    return ~(~u_input.c);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = vec2<bool>(arg_0.a.x && ((u_input.a ^ -1i) < 36827i), all(!select(!vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 2u)], arg_0.a.x, arg_0.a.x), !arg_0.a.wzy)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -225f);
    global4 = array<bool, 2>();
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~abs(_wgslsmith_mod_u32(58291u, global0.x)), _wgslsmith_sub_u32(~(u_input.c.x << (u_input.c.x % 32u)), global0.x)), func_4(vec3<f32>(1f, 1f, 1f), func_3(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(global0.x, 2u)], global4[_wgslsmith_index_u32(global0.x, 2u)]), vec4<bool>(arg_0.a.x, true, false, true), arg_0.a)), select(arg_0.a.yw, vec2<bool>(!var_0.x, true), _wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(round(-1114f))), Struct_3(vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 2u)], all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 2u)], false))), min(global0.x, 17411u), ~(~69856u), Struct_1(-u_input.a, max(u_input.c.x, u_input.c.x), arg_0.a.zz, true), arg_0.a.wxz)));
    var var_2 = ~u_input.d;
    return Struct_2(vec4<bool>(arg_0.a.x, (~22552u >> (global0.x % 32u)) > firstLeadingBit(~global0.x), false, any(select(arg_0.a, !arg_0.a, select(arg_0.a, arg_0.a, arg_0.a)))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = reverseBits(~(~(~vec2<u32>(arg_0.b, 1u)) | u_input.c));
    var var_1 = func_2(Struct_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a.x, arg_0.d.c.x, true, false), vec4<bool>(global4[_wgslsmith_index_u32(var_0.x, 2u)], false, false, arg_0.e.x))));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x)))))));
    var var_2 = -_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0.d.a, 0i), reverseBits(abs(u_input.e.x)));
    var var_3 = u_input.c;
    return Struct_2(!(!var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(firstLeadingBit(~(vec3<i32>(-1i) * -vec3<i32>(u_input.e.x, u_input.d, u_input.b.x))), _wgslsmith_add_u32(~0u, global0.x), func_1(Struct_3(select(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 2u)], global4[_wgslsmith_index_u32(31200u, 2u)]), !vec2<bool>(global4[_wgslsmith_index_u32(1u, 2u)], false), !global4[_wgslsmith_index_u32(4294967295u, 2u)]), 4294967295u, 1u, Struct_1(~u_input.e.x, reverseBits(16494u), select(vec2<bool>(false, global4[_wgslsmith_index_u32(43826u, 2u)]), vec2<bool>(true, global4[_wgslsmith_index_u32(17671u, 2u)]), global4[_wgslsmith_index_u32(3143u, 2u)]), u_input.e.x <= -2147483647i), vec3<bool>(global4[_wgslsmith_index_u32(~global0.x, 2u)], any(vec3<bool>(true, global4[_wgslsmith_index_u32(44972u, 2u)], true)), true))), Struct_3(vec2<bool>(!global4[_wgslsmith_index_u32(~global0.x, 2u)], false), _wgslsmith_add_u32(1u, u_input.c.x), 26990u, Struct_1(-reverseBits(u_input.d), u_input.c.x, vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 2u)], global4[_wgslsmith_index_u32(~global0.x, 2u)]), !func_3(vec4<bool>(true, global4[_wgslsmith_index_u32(global0.x, 2u)], false, true)).x), vec3<bool>(!(global4[_wgslsmith_index_u32(4294967295u, 2u)] | false), all(!vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 2u)], global4[_wgslsmith_index_u32(21050u, 2u)], false)), global1.x <= _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.x);
    var var_1 = ~(vec3<i32>(var_0.a.x, abs(abs(u_input.a)), ~(u_input.e.x & u_input.d)) & countOneBits(_wgslsmith_sub_vec3_i32(~vec3<i32>(22333i, var_0.d.d.a, 1i), firstLeadingBit(u_input.b))));
    var_0 = Struct_4(vec3<i32>(abs(var_0.a.x), 1i, -8118i ^ _wgslsmith_add_i32(-32222i, var_1.x)) >> (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d.d.b, 0u, global0.x) << (vec3<u32>(var_0.d.c, global0.x, 0u) % vec3<u32>(32u)), vec3<u32>(var_0.d.d.b, 0u, u_input.c.x) & vec3<u32>(var_0.b, global0.x, var_0.d.b), ~vec3<u32>(var_0.d.c, u_input.c.x, 33575u)), _wgslsmith_add_vec3_u32(~vec3<u32>(30683u, global0.x, var_0.d.b), vec3<u32>(1u, 19128u, 0u))) % vec3<u32>(32u)), 51710u, func_2(var_0.c), Struct_3(!var_0.d.e.xy, _wgslsmith_add_u32(reverseBits(~97698u), countOneBits(u_input.c.x << (var_0.d.b % 32u))), 1u, Struct_1(u_input.a, ~4294967295u, var_0.c.a.zz, true), select(!vec3<bool>(var_0.d.e.x, global4[_wgslsmith_index_u32(var_0.b, 2u)], var_0.c.a.x), select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 2u)], true, global4[_wgslsmith_index_u32(1u, 2u)]), !var_0.c.a.zwx, !vec3<bool>(global4[_wgslsmith_index_u32(9556u, 2u)], false, global4[_wgslsmith_index_u32(22861u, 2u)])), any(var_0.c.a.xz))), global1.x);
    var var_2 = _wgslsmith_mod_i32(-91314i & -(_wgslsmith_mod_i32(var_0.d.d.a, u_input.e.x) ^ -2147483647i), _wgslsmith_sub_i32(~min(24989i, var_1.x), abs(2147483647i) ^ ~var_0.a.x) >> (_wgslsmith_mult_u32(var_0.d.c, 4294967295u) % 32u));
    var var_3 = func_2(var_0.c).a.zzx;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -1000f), _wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(f32(-1f) * -1721f))));
    var_4 = var_0.e;
    let var_5 = Struct_4(firstTrailingBit(vec3<i32>(-1i) * -u_input.b), ~var_0.b, Struct_2(select(!vec4<bool>(var_3.x, var_3.x, true, var_3.x), func_1(Struct_3(vec2<bool>(var_3.x, var_0.c.a.x), u_input.c.x, 22063u, Struct_1(2147483647i, u_input.c.x, vec2<bool>(var_3.x, global4[_wgslsmith_index_u32(83501u, 2u)]), var_3.x), vec3<bool>(global4[_wgslsmith_index_u32(1u, 2u)], false, var_3.x))).a, false)), var_0.d, 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x + var_0.e))) * -1164f) + _wgslsmith_f_op_f32(floor(var_5.e))), select(var_1.yx, _wgslsmith_mult_vec2_i32(select(max(vec2<i32>(u_input.b.x, var_1.x), var_0.a.yy), -vec2<i32>(var_0.d.d.a, var_0.a.x), !vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 2u)], var_0.d.d.d)), -var_1.xz), func_2(func_2(var_5.c)).a.zy), var_5.e, _wgslsmith_add_vec4_i32((vec4<i32>(-11643i, 30532i, -2147483647i, var_5.a.x) ^ _wgslsmith_div_vec4_i32(vec4<i32>(14417i, -6602i, 2147483647i, 2147483647i), vec4<i32>(1i, 39909i, var_0.d.d.a, 1i))) | -(~vec4<i32>(2809i, u_input.a, -2147483647i, var_0.a.x)), -firstTrailingBit(vec4<i32>(var_1.x, var_1.x, 18023i, -6454i) >> (vec4<u32>(0u, var_5.b, var_5.b, global0.x) % vec4<u32>(32u)))));
}

