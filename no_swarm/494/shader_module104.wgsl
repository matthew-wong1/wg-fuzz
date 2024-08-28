struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: i32;

var<private> global2: array<i32, 7> = array<i32, 7>(0i, i32(-2147483648), -32758i, 1i, -12890i, 2147483647i, 0i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~global0.c.yxz) >> (vec3<u32>(~_wgslsmith_mod_u32(u_input.a.x, 1u), global0.c.x, ~0u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_0), vec2<u32>(global0.c.x, u_input.a.x))) % vec3<u32>(32u)), vec3<u32>(~(~(~arg_0)), ~_wgslsmith_div_u32(abs(24638u), arg_2.x), ~arg_2.x));
    global2 = array<i32, 7>();
    let var_1 = Struct_5(global0.a, global0.b, countOneBits(abs(abs(u_input.a))));
    let var_2 = arg_3;
    var var_3 = Struct_4(vec2<bool>(true, !(false == var_1.b.c.x)), var_2, select(arg_0 > _wgslsmith_mod_u32(0u, var_1.c.x), true, false) || (arg_3.c.c.x | all(vec3<bool>(false, arg_3.c.c.x, arg_3.c.c.x))));
    return vec3<f32>(482f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(247f, arg_3.c.a.x)) * _wgslsmith_div_f32(-324f, -753f))))), var_1.a.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = Struct_4(select(!vec2<bool>(global0.b.c.x && false, !arg_2.b.c.c.x), !arg_1.c.c.zz, select(arg_1.c.c.xz, select(!arg_2.b.c.c.xz, select(vec2<bool>(arg_2.b.c.c.x, arg_2.a.x), arg_2.b.c.c.yz, true), !arg_2.c), !vec2<bool>(true, arg_2.a.x))), Struct_3(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], -33127i, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global0.c.x), 7u)], _wgslsmith_mod_i32(arg_2.b.a.x, -u_input.e)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 181i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, arg_2.b.c.b.x), vec2<i32>(-2147483647i, 0i)))), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(4294967295u, arg_1.a.x, reverseBits(vec2<u32>(global0.c.x, u_input.a.x)), Struct_3(vec4<i32>(-20527i, u_input.b, u_input.d, 2147483647i), u_input.c.xz, Struct_1(vec3<f32>(-1154f, 924f, arg_2.b.d), vec2<i32>(5569i, -7937i), global0.b.c, global0.b.b), global0.a.x))), -vec2<i32>(1i, -7535i) >> (~arg_0.xx % vec2<u32>(32u)), arg_2.b.c.c, arg_2.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.d + arg_2.b.d)), _wgslsmith_f_op_f32(118f * _wgslsmith_f_op_f32(step(1467f, 495f))))), arg_1.c.c.x);
    global1 = firstLeadingBit(-2147483647i);
    var var_1 = Struct_3(vec4<i32>(~firstTrailingBit(arg_2.b.c.d.x), ~(arg_1.a.x << (82876u % 32u)), ~(-1i), -14695i) ^ select(firstTrailingBit(vec4<i32>(u_input.b, -5446i, -2147483647i, 44895i)) & (vec4<i32>(u_input.e, 27119i, global2[_wgslsmith_index_u32(28415u, 7u)], 1i) << (arg_0 % vec4<u32>(32u))), -var_0.b.a, all(vec3<bool>(arg_1.c.c.x, false, false))), arg_1.b, var_0.b.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-287f)) + global0.a.x))));
    var_1 = arg_2.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.d)), -1992f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2660f)), _wgslsmith_f_op_f32(abs(var_1.c.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1004f - 1876f), _wgslsmith_div_f32(var_1.d, -1000f), _wgslsmith_f_op_f32(-arg_1.c.a.x), _wgslsmith_f_op_f32(floor(var_0.b.d)))))));
    return global0.c;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = (~func_2(vec4<u32>(global0.c.x, 26309u, global0.c.x, 1u), Struct_3(vec4<i32>(-51318i, -46488i, -2147483647i, global2[_wgslsmith_index_u32(arg_1.x, 7u)]), vec2<i32>(u_input.c.x, 2147483647i), Struct_1(global0.b.a, vec2<i32>(u_input.e, -18207i), vec3<bool>(global0.b.c.x, false, global0.b.c.x), vec2<i32>(u_input.e, -38774i)), -158f), Struct_4(global0.b.c.zy, Struct_3(vec4<i32>(2147483647i, global0.b.b.x, -2147483647i, global0.b.d.x), u_input.c.xx, global0.b, 1000f), global0.b.c.x)).x & 0u) ^ u_input.a.x;
    let var_1 = ~_wgslsmith_dot_vec3_u32(global0.c.zxy, _wgslsmith_add_vec3_u32(~select(arg_1.yxx, arg_1.xyy, vec3<bool>(global0.b.c.x, global0.b.c.x, false)), _wgslsmith_div_vec3_u32(vec3<u32>(58319u, u_input.a.x, arg_1.x), u_input.a.wzx) | (vec3<u32>(global0.c.x, u_input.a.x, 0u) & vec3<u32>(arg_0, 1u, 1u))));
    global1 = 6422i;
    global2 = array<i32, 7>();
    global0 = Struct_5(arg_2.zy, global0.b, global0.c);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.b.a))), u_input.c.xy, vec3<bool>(false, all(vec4<bool>(false, global0.b.c.x, any(vec3<bool>(global0.b.c.x, false, true)), all(global0.b.c))), global0.b.c.x), -abs(u_input.c.yz));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_5) -> Struct_1 {
    var var_0 = arg_0.c.x;
    let var_1 = arg_1.a;
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(arg_0.a.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(383f, arg_2.b.a.x)), -323f)), vec2<bool>((global0.c.x == u_input.a.x) != all(vec2<bool>(arg_1.a.x, true)), true))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.b.a)) * _wgslsmith_f_op_vec3_f32(-global0.b.a))), _wgslsmith_add_vec2_i32(select(u_input.c.xz, _wgslsmith_mod_vec2_i32(global0.b.b, arg_2.b.d), all(vec4<bool>(arg_1.a.x, arg_0.c.x, false, true))), ~vec2<i32>(u_input.d, -4340i)), !global0.b.c, vec2<i32>(global2[_wgslsmith_index_u32(0u ^ _wgslsmith_clamp_u32(arg_1.d.x, arg_2.c.x, 1u), 7u)], global0.b.b.x)), select(~(~vec4<u32>(4294967295u, 1u, 53341u, arg_1.d.x)) & ~arg_1.d, firstTrailingBit(~vec4<u32>(global0.c.x, arg_2.c.x, 1u, 0u) | vec4<u32>(34575u, 12351u, 6843u, 1u)), !(func_4(26179u, u_input.a, vec3<f32>(-1279f, -1247f, arg_0.a.x)).c.x || all(global0.b.c.xy))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.a))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.d.x, var_2.b.b.x, global0.b.d.x, var_2.b.b.x), vec4<i32>(2147483647i, arg_0.d.x, 2147483647i, var_2.b.d.x)), abs(vec4<i32>(global2[_wgslsmith_index_u32(global0.c.x, 7u)], 0i, 4247i, -2147483647i))), min(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -15285i), firstLeadingBit(-23278i))), vec2<i32>(-min(var_2.b.d.x, -1i), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_2.b.b.x, global2[_wgslsmith_index_u32(global0.c.x, 7u)]), 23869i))), !(!global0.b.c), _wgslsmith_add_vec2_i32(-(global0.b.b | vec2<i32>(arg_0.d.x, global2[_wgslsmith_index_u32(0u, 7u)])), ~firstLeadingBit(vec2<i32>(16984i, -3710i)) << (_wgslsmith_div_vec2_u32(select(var_2.c.xz, vec2<u32>(43430u, 1u), var_1), ~arg_1.d.zw) % vec2<u32>(32u))));
}

fn func_1() -> vec2<i32> {
    global0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2492f)), global0.b.a.x), func_5(func_4(~(~51799u), _wgslsmith_sub_vec4_u32(global0.c, func_2(vec4<u32>(global0.c.x, u_input.a.x, global0.c.x, global0.c.x), Struct_3(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], global0.b.b.x, global2[_wgslsmith_index_u32(global0.c.x, 7u)], global2[_wgslsmith_index_u32(global0.c.x, 7u)]), global0.b.b, Struct_1(vec3<f32>(-563f, global0.b.a.x, 466f), vec2<i32>(0i, -9229i), global0.b.c, vec2<i32>(global0.b.d.x, 2147483647i)), -1356f), Struct_4(vec2<bool>(true, true), Struct_3(vec4<i32>(u_input.e, u_input.e, global2[_wgslsmith_index_u32(4294967295u, 7u)], u_input.e), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], 15349i), Struct_1(global0.b.a, u_input.c.yz, global0.b.c, vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(global0.c.x, 7u)])), global0.a.x), global0.b.c.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -335f, 533f) + global0.b.a)))), Struct_2(!(!global0.b.c.xy), global0.b.c.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(global0.b.a.xz)))), global0.c), Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.a.yz - global0.b.a.zy)), func_4(~global0.c.x, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec3<f32>(374f, 146f, global0.a.x)), ~abs(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global0.c.x)))), vec4<u32>(~1u, ~abs(0u) << (_wgslsmith_mod_u32(~global0.c.x, 1u) % 32u), 17960u, 4590u));
    var var_0 = global0.b.c.x | true;
    let var_1 = -firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.b.d.x, global2[_wgslsmith_index_u32(1u, 7u)]), vec3<i32>(-26601i, 0i, 19994i)) | (1i >> (u_input.a.x % 32u))) <= -17737i;
    let var_2 = Struct_2(select(global0.b.c.yy, vec2<bool>(var_1, !global0.b.c.x || all(global0.b.c.xy)), true), false, _wgslsmith_f_op_vec2_f32(-global0.b.a.zy), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(36603u, global0.c.x, 6023u, global0.c.x) << (u_input.a % vec4<u32>(32u)), u_input.a)));
    var var_3 = -1985f;
    return abs(vec2<i32>(~global2[_wgslsmith_index_u32(abs(48411u), 7u)], firstLeadingBit(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = 1u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.b.a - _wgslsmith_f_op_vec3_f32(global0.b.a - global0.b.a)))), ~func_1(), vec3<bool>(true, any(vec2<bool>(var_0 == true, global0.b.c.x && var_0)), true), ~(~(~_wgslsmith_mult_vec2_i32(u_input.c.yz, u_input.c.xx))));
    global2 = array<i32, 7>();
    global0 = Struct_5(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -204f)), -1654f), global0.b, firstTrailingBit(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, -1000f, -374f, 1296f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, -2031f, var_2.a.x) + vec4<f32>(global0.b.a.x, 618f, var_2.a.x, var_2.a.x))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1820f, var_2.a.x, -614f, var_2.a.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1250f, global0.b.a.x, -273f, -1728f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)))))))));
}

