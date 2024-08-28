struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<i32>(-54093i, -3828i), vec3<f32>(1206f, -1623f, 656f), -1000f), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<f32>(1295f, -1000f, 565f), -573f), Struct_1(vec2<i32>(2147483647i, 1i), vec3<f32>(1000f, 816f, -245f), -241f), Struct_1(vec2<i32>(49930i, 1i), vec3<f32>(-1160f, 2185f, 1662f), 3099f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: bool) -> vec3<bool> {
    var var_0 = vec4<bool>(arg_0.x, true, any(select(!global0.a, !vec4<bool>(false, arg_0.x, global0.a.x, global0.a.x), true)), all(select(vec3<bool>(true, true, true), global0.a.zyy, !arg_0.x == all(vec2<bool>(arg_2, true)))));
    let var_1 = _wgslsmith_div_vec2_f32(global0.b, vec2<f32>(_wgslsmith_f_op_f32(666f + _wgslsmith_f_op_f32(global0.c.c + _wgslsmith_f_op_f32(-global0.d.c))), 1724f));
    let var_2 = Struct_4(select(select(vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.c), vec4<u32>(83627u, u_input.b.x, 35616u, u_input.a), select(global0.a, vec4<bool>(arg_2, var_0.x, var_0.x, false), vec4<bool>(true, false, false, true))), ~(~vec4<u32>(32257u, 18210u, 79764u, 15951u)), vec4<bool>(arg_2 || true, arg_2, true, arg_2)) << (vec4<u32>(u_input.c, _wgslsmith_sub_u32(u_input.c, u_input.c), 6850u >> (u_input.b.x % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a)) % vec4<u32>(32u)), 11385i, Struct_1(~global0.d.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-468f - global0.d.b.x) + _wgslsmith_f_op_f32(abs(global0.b.x))), 1816f, _wgslsmith_f_op_f32(f32(-1f) * -255f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -866f))))));
    var_0 = select(!global0.a, global0.a, !vec4<bool>(~u_input.a > var_2.a.x, all(global0.a), true, global0.a.x));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(-global0.b), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.b.x), 4u)], global0.d);
    return var_0.xzw;
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = func_3(global0.a.ww, u_input.d, all(global0.a.xww));
    let var_1 = Struct_4(reverseBits(reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, 4294967295u), vec4<u32>(u_input.a, u_input.a, 61833u, 26125u)))), 1i, global2[_wgslsmith_index_u32(~(~17883u), 4u)]);
    global0 = Struct_2(!(!global0.a), vec2<f32>(global0.c.c, global0.c.c), global0.d, var_1.c);
    var var_2 = reverseBits(~var_1.a.zzy);
    var var_3 = var_0;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, ~(global0.c.a.x << (4294967295u % 32u)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(14103i, var_1.c.a.x, 2147483647i), _wgslsmith_mult_i32(var_1.c.a.x, -10308i)), var_1.b), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.d, global1.x, u_input.d), vec4<i32>(-11646i, u_input.d, global1.x, var_1.c.a.x)) ^ firstLeadingBit(vec4<i32>(global0.c.a.x, -10979i, 2147483647i, -2147483647i) << (var_1.a % vec4<u32>(32u)))) ^ select(global0.d.a.x, 34086i, var_3.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> vec3<i32> {
    global1 = _wgslsmith_mult_vec3_i32(vec3<i32>(-(~0i), countOneBits(func_2(u_input.a >> (0u % 32u))), global0.d.a.x), abs(vec3<i32>(1i, global1.x >> (~u_input.a % 32u), -(-21080i >> (u_input.b.x % 32u)))));
    global2 = array<Struct_1, 4>();
    let var_0 = !vec4<bool>(false | all(func_3(global0.a.yx, 0i, true).zy), true, all(func_3(!arg_0.yy, 1i, arg_3 && true)), all(vec4<bool>(true, arg_1, false, !arg_3)));
    let var_1 = Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(~abs(u_input.a), ~0u, ~(~0u), max(~96554u, u_input.a)), select(~(~vec4<u32>(9192u, 0u, u_input.b.x, u_input.b.x)), ~vec4<u32>(6646u, arg_2.x, 76387u, 68759u), true)), u_input.d, Struct_1(_wgslsmith_clamp_vec2_i32(global1.zx, global1.xx, vec2<i32>(~global0.c.a.x, _wgslsmith_clamp_i32(u_input.d, 38314i, 50267i))), _wgslsmith_f_op_vec3_f32(-global0.c.b), -1103f));
    var var_2 = Struct_3(global0.d, vec2<i32>(-_wgslsmith_sub_i32(var_1.b, global1.x), countOneBits(u_input.d)) << (~max(arg_2.zy, vec2<u32>(1u, 1u) >> (var_1.a.xx % vec2<u32>(32u))) % vec2<u32>(32u)), global0.d.b.xz);
    return vec3<i32>(var_2.b.x & firstTrailingBit(var_1.b), select(-24292i, -2147483647i, arg_0.x), select(global1.x, 1i | -global1.x, !(u_input.d < u_input.d)) & -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~countOneBits(-vec3<i32>(-2147483647i << (u_input.b.x % 32u), global1.x, -2147483647i));
    global1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(global1.x, 1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(42315i, global0.d.a.x), vec2<i32>(-32267i, 13902i))), max(global1.x, _wgslsmith_div_i32(23770i, ~global1.x)), _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(global1.x, abs(1i)))) ^ countOneBits(~_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.d, u_input.d, global1.x), func_1(global0.a, false, vec3<u32>(u_input.c, 0u, u_input.b.x), false)));
    global1 = _wgslsmith_div_vec3_i32(abs(min(vec3<i32>(_wgslsmith_mult_i32(u_input.d, -29423i), -2147483647i, global1.x << (u_input.c % 32u)), vec3<i32>(-2147483647i, global1.x, func_1(global0.a, global0.a.x, vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), global0.a.x).x))), ~vec3<i32>(u_input.d, -44534i, func_1(global0.a, any(vec4<bool>(true, global0.a.x, true, global0.a.x)), abs(vec3<u32>(4294967295u, 4294967295u, u_input.b.x)), any(global0.a)).x));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1420f, global0.d.c, -1646f, -764f) * vec4<f32>(global0.d.b.x, -1125f, -1104f, 258f)))) - vec4<f32>(-503f, 1461f, global0.d.b.x, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(floor(global0.b.x)))))));
    var var_1 = var_0.xyx;
    global0 = Struct_2(vec4<bool>(func_3(vec2<bool>(true, true), _wgslsmith_add_i32(select(-1i, -1i, global0.a.x), -1i), true).x, false, any(!vec3<bool>(global0.a.x, false, global0.a.x)), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(578f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(1034f - var_1.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1.x), vec2<f32>(global0.b.x, 1575f))), var_1.zx, global0.a.xx))), Struct_1(vec2<i32>(-1i) * -vec2<i32>(global0.d.a.x, global0.d.a.x), vec3<f32>(_wgslsmith_div_f32(-814f, global0.c.c), var_0.x, _wgslsmith_f_op_f32(abs(global0.c.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(759f, 1000f)))))), Struct_1(global0.d.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-687f, 370f, _wgslsmith_f_op_f32(min(164f, 268f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.d.b), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, -3033f), global0.d.b))))), _wgslsmith_f_op_f32(ceil(196f))));
    var_1 = var_0.yzw;
    global0 = Struct_2(vec4<bool>(any(vec3<bool>(!global0.a.x, true, var_1.x <= 545f)), false, any(!global0.a.xxz), all(global0.a.zz)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - 559f), _wgslsmith_f_op_f32(-var_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1336f))), 1124f))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(4294967295u << (u_input.a % 32u)), min(abs(27064u), ~(~u_input.a))), 4u)], Struct_1(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 999i), ~global0.c.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.d.b))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1423f, 1000f, -1165f), global0.d.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_0.wzz + vec3<f32>(global0.b.x, var_1.x, global0.c.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1202f, global0.b.x, global0.d.c) - var_0.zzw))))))));
}

