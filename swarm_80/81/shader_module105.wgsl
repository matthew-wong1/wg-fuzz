struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 5>;

var<private> global2: array<bool, 24>;

var<private> global3: array<Struct_2, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = reverseBits(u_input.b.zzx);
    global0 = Struct_4(-_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e, 25734i), global0.b.yx), vec2<i32>(0i, _wgslsmith_add_i32(47758i, 0i))), arg_0.b);
    let var_1 = _wgslsmith_f_op_f32(ceil(-1836f));
    let var_2 = select(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~4294967295u, u_input.c), u_input.b.xwy), u_input.b.zxw, vec3<bool>(global2[_wgslsmith_index_u32(1u, 24u)], true, all(vec3<bool>(true, all(vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(31758u, 24u)], true)), var_1 > var_1))));
    return arg_0.a.x;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_4(vec2<i32>(select(func_3(Struct_4(arg_2.xy, vec3<i32>(0i, u_input.e, arg_0))), abs(_wgslsmith_dot_vec3_i32(arg_2.xzx, arg_2.yyw)), all(select(vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, arg_1.x), true))), _wgslsmith_clamp_i32(25320i, countOneBits(1i >> (1u % 32u)), -16291i)), firstTrailingBit(vec3<i32>(-arg_2.x, _wgslsmith_add_i32(countOneBits(arg_0), arg_2.x), reverseBits(-16288i))));
    var var_1 = arg_1;
    var var_2 = vec4<bool>(arg_1.x, global2[_wgslsmith_index_u32(u_input.a >> (~(~select(0u, 17347u, false)) % 32u), 24u)], false || !(!select(false, var_1.x, var_1.x)), true);
    var var_3 = true;
    var_2 = vec4<bool>(all(arg_1.xw), false, false, all(!(!arg_1)));
    return ~1i;
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_2 {
    global3 = array<Struct_2, 8>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.d.x | 9307u, ~abs(4294967295u)), 24u)];
    let var_2 = Struct_1(select(select(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 24u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], true, true), global2[_wgslsmith_index_u32(1u, 24u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 24u)], true), all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 24u)]))), vec3<bool>(arg_1 >= 1444f, global2[_wgslsmith_index_u32(u_input.a, 24u)], true), all(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(59185u, 24u)], true, false))), select(select(select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(42476u, 24u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)])), select(vec3<bool>(global2[_wgslsmith_index_u32(9008u, 24u)], global2[_wgslsmith_index_u32(22854u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)])), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(u_input.d.x, 24u)], global2[_wgslsmith_index_u32(14120u, 24u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(12187u, 24u)], false), false)), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 24u)], true, global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(51649u, 24u)]), global2[_wgslsmith_index_u32(13258u, 24u)]), all(vec2<bool>(false, false))), global2[_wgslsmith_index_u32(51608u, 24u)]), -882f);
    global3 = array<Struct_2, 8>();
    return Struct_2(Struct_1(select(var_2.a, !var_2.a, var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-139f - 637f)))), Struct_1(vec3<bool>(false, true, !(!var_2.a.x)), -634f), any(var_2.a.zz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, arg_1), vec2<f32>(arg_1, var_2.b)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_2.b) * vec2<f32>(357f, -821f)), vec2<f32>(1446f, -923f))), !(var_2.a.x | var_2.a.x))), vec2<f32>(var_2.b, var_0)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_4 {
    global0 = Struct_4(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), -global0.a, _wgslsmith_div_vec2_i32(global0.b.xx, global0.b.yy)) ^ abs(vec2<i32>(global0.b.x, u_input.e))), _wgslsmith_div_vec3_i32(reverseBits(-(vec3<i32>(-1i, 24874i, -2147483647i) ^ vec3<i32>(-757i, global0.b.x, 2147483647i))), vec3<i32>(select(_wgslsmith_dot_vec2_i32(global0.b.xz, global0.b.yy), func_2(1i, vec4<bool>(global2[_wgslsmith_index_u32(37070u, 24u)], arg_0.a.a.x, false, false), vec4<i32>(-1i, u_input.e, u_input.e, 0i)), !arg_0.b.a.x), reverseBits(~global0.b.x), ~_wgslsmith_div_i32(13074i, -8193i))));
    let var_0 = !select(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.x, 24u)], global2[_wgslsmith_index_u32(arg_1.x, 24u)], false, false), vec4<bool>(arg_0.c, global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(arg_1.x, 24u)], arg_0.c), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 24u)], false, true))), select(select(vec4<bool>(arg_0.b.a.x, false, true, global2[_wgslsmith_index_u32(arg_1.x, 24u)]), vec4<bool>(arg_0.b.a.x, arg_0.c, global2[_wgslsmith_index_u32(39664u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), select(true, arg_0.a.a.x, arg_0.b.a.x)), vec4<bool>(all(vec4<bool>(arg_0.a.a.x, arg_0.b.a.x, false, global2[_wgslsmith_index_u32(41222u, 24u)])), true, any(vec4<bool>(arg_0.c, global2[_wgslsmith_index_u32(1u, 24u)], false, global2[_wgslsmith_index_u32(arg_1.x, 24u)])), all(vec4<bool>(arg_0.b.a.x, true, arg_0.a.a.x, true))), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_1.x, 24u)], true)), vec4<bool>(all(arg_0.b.a), any(select(vec4<bool>(false, arg_0.a.a.x, arg_0.b.a.x, global2[_wgslsmith_index_u32(u_input.c, 24u)]), vec4<bool>(arg_0.a.a.x, global2[_wgslsmith_index_u32(arg_1.x, 24u)], arg_0.c, global2[_wgslsmith_index_u32(u_input.a, 24u)]), arg_0.b.a.x)), all(arg_0.b.a.xy), (global2[_wgslsmith_index_u32(u_input.a, 24u)] | global2[_wgslsmith_index_u32(u_input.a, 24u)]) && (arg_0.a.b == 235f)));
    var var_1 = Struct_1(!var_0.wwx, _wgslsmith_f_op_f32(arg_0.b.b + func_4(u_input.e, 1000f).b.b));
    global3 = array<Struct_2, 8>();
    global0 = Struct_4(global0.b.yx, vec3<i32>(countOneBits(u_input.e), u_input.e, _wgslsmith_dot_vec2_i32(max(global0.b.xz, vec2<i32>(2147483647i, 0i)), vec2<i32>(_wgslsmith_mult_i32(u_input.e, u_input.e), reverseBits(global0.b.x)))));
    return Struct_4(select(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, global0.b.x, -2147483647i, u_input.e), vec4<i32>(global0.a.x, global0.b.x, u_input.e, u_input.e)), select(vec4<i32>(u_input.e, global0.a.x, global0.b.x, -10680i), vec4<i32>(global0.a.x, -2147483647i, global0.a.x, 2147483647i), var_0.x)), 1i), -(_wgslsmith_mod_vec2_i32(vec2<i32>(-40829i, 2147483647i), global0.b.yz) << (_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), vec2<u32>(0u, arg_1.x)) % vec2<u32>(32u))), !(arg_0.a.a.x | true)), vec3<i32>(global0.a.x, countOneBits(abs(u_input.e)), u_input.e));
}

fn func_1() -> i32 {
    var var_0 = 1241f;
    var var_1 = firstTrailingBit(-1i) >> (58706u % 32u);
    global0 = func_5(func_4(func_2(~firstLeadingBit(u_input.e), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], false, global2[_wgslsmith_index_u32(u_input.d.x, 24u)], false)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-15989i, -11724i, u_input.e, -48932i), vec4<i32>(global0.b.x, global0.b.x, 2147483647i, -7027i)), vec4<i32>(u_input.e, 19344i, u_input.e, global0.b.x), true)), _wgslsmith_f_op_f32(801f - 492f)), vec3<u32>(75627u, u_input.b.x, countOneBits(u_input.c)));
    let var_2 = func_5(func_4(~global0.b.x, _wgslsmith_f_op_f32(217f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(201f)) - _wgslsmith_div_f32(1000f, -1151f)))), _wgslsmith_div_vec3_u32(select(_wgslsmith_div_vec3_u32(vec3<u32>(20999u, 4294967295u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c)), ~vec3<u32>(u_input.b.x, 0u, 226u), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 24u)], false, global2[_wgslsmith_index_u32(1u, 24u)])), abs(vec3<u32>(0u, 1u, u_input.d.x))) ^ _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 18229u, 4294967295u), ~u_input.b.xwy), min(u_input.b.zyy, u_input.b.wwz) | abs(u_input.b.zyz)));
    let var_3 = true;
    return func_2(max(~var_2.a.x, _wgslsmith_mod_i32(u_input.e, _wgslsmith_mult_i32(-2147483647i, u_input.e))) | 1i, select(vec4<bool>(var_3, false || any(vec4<bool>(true, var_3, false, var_3)), false, global2[_wgslsmith_index_u32(552u, 24u)]), !(!(!vec4<bool>(var_3, false, false, var_3))), var_3), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-19352i, u_input.e, -66570i, var_2.b.x) >> (vec4<u32>(u_input.c, u_input.d.x, 21773u, 16847u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, 85076i, -2147483647i, -20288i), vec4<i32>(15511i, -51335i, 1i, 0i))) ^ _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(-2147483647i, u_input.e, -18730i, 0i)), ~vec4<i32>(u_input.e, 1i, 0i, u_input.e), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.b.x, global0.b.x, 2147483647i), vec4<i32>(1i, -76035i, 1i, u_input.e))), firstLeadingBit(vec4<i32>(_wgslsmith_sub_i32(13831i, 1i), global0.b.x, -global0.a.x, 46406i)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-171f, -1000f)))));
    var var_1 = vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 24u)], global2[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(~u_input.b.x, 1u) & ~_wgslsmith_clamp_u32(u_input.a, 1u, 63725u)), 24u)]);
    var var_2 = abs(~func_1());
    let var_3 = u_input.b.zz;
    let var_4 = u_input.a;
    var_1 = select(vec3<bool>(any(select(vec4<bool>(false, global2[_wgslsmith_index_u32(8217u, 24u)], var_1.x, true), vec4<bool>(var_1.x, true, global2[_wgslsmith_index_u32(u_input.a, 24u)], true), global2[_wgslsmith_index_u32(min(u_input.b.x, 0u), 24u)])), true, !(!global2[_wgslsmith_index_u32(min(var_4, 4294967295u), 24u)])), !func_4(~u_input.e ^ func_3(Struct_4(global0.a, global0.b)), var_0.x).b.a, !(!func_4(global0.a.x, _wgslsmith_f_op_f32(-var_0.x)).b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.e, -45022i), u_input.b.yxx, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), ~(vec4<i32>(global0.b.x, 0i, func_2(u_input.e, vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 24u)], false, global2[_wgslsmith_index_u32(58613u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<i32>(global0.b.x, global0.a.x, u_input.e, global0.a.x)), global0.b.x & -1i) & ~vec4<i32>(u_input.e, -1i, -1i, u_input.e)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(20173i, u_input.e, u_input.e, u_input.e)), ~(select(vec4<i32>(u_input.e, u_input.e, global0.b.x, u_input.e), vec4<i32>(2147483647i, u_input.e, -1959i, global0.a.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x)) | countOneBits(vec4<i32>(33325i, 1i, u_input.e, -2147483647i)))));
}

