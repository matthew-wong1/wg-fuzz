struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(6707u, 1u), Struct_1(vec4<f32>(-470f, 287f, -315f, -326f)), vec3<bool>(true, false, false), Struct_1(vec4<f32>(614f, -818f, 1495f, 1567f)), vec4<i32>(-21247i, -29879i, i32(-2147483648), -1i));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-157f, -389f, -437f, -224f));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(525f, -2407f, 1033f, 1000f));

var<private> global4: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<u32>) -> bool {
    let var_0 = select(vec2<bool>(!global4.c.x, true), vec2<bool>(!all(!global4.c.zx), true), !(!(!(!global4.c.xx))));
    var var_1 = global4.e.x;
    var var_2 = Struct_2(select(global4.a, _wgslsmith_mod_vec2_u32(~(vec2<u32>(0u, arg_2.x) & arg_3), global1.a), select(!var_0, vec2<bool>(var_0.x, 0u < arg_3.x), -647f < global2.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(798f, global3.a.x, arg_0.a.x, 1812f) * vec4<f32>(global3.a.x, arg_1, arg_1, 264f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(122f, arg_1, -858f, 1996f)), vec4<bool>(true, true, true, true))))), select(vec3<bool>((global1.c.x == var_0.x) && any(global4.c), true, var_0.x), global4.c, var_0.x), global0[_wgslsmith_index_u32(5310u, 14u)], ~max(_wgslsmith_sub_vec4_i32(global4.e, ~vec4<i32>(45147i, global4.e.x, u_input.a, 1i)), global1.e));
    let var_3 = !vec4<bool>(true, !global4.c.x, !any(var_0) || true, false);
    let var_4 = ~(~(-(select(global4.e.x, -6188i, global4.c.x) >> ((var_2.a.x & 5207u) % 32u))));
    return false;
}

fn func_2() -> Struct_1 {
    global4 = Struct_2(vec2<u32>(abs(4294967295u), 123986u), global4.b, !select(select(vec3<bool>(global4.c.x, global4.c.x, global1.c.x), vec3<bool>(global1.c.x, true, global4.c.x), false & global1.c.x), vec3<bool>(global4.c.x, global4.c.x, func_3(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], -513f, vec3<u32>(global1.a.x, 6363u, 26293u), global4.a)), !select(global1.c, global4.c, global4.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global3.a * global1.d.a), global2.a, vec4<bool>(true, true, true, true))))), countOneBits(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.e.x, -21123i, -28876i), global1.e.wzz), global4.e.x & global1.e.x, ~global1.e.x, global4.e.x)) << (~u_input.b % vec4<u32>(32u)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1426f * global1.b.a.x), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1251f, global2.a.x), 1795f)), global1.b.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(global1.d.a.x, global2.a.x, all(!vec4<bool>(true, global1.c.x, false, false)))), func_2().a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b.a.x - -488f)) - _wgslsmith_f_op_f32(abs(-944f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(485f, -1000f)), _wgslsmith_f_op_f32(floor(global3.a.x)))));
    global1 = Struct_2(reverseBits(global1.a), Struct_1(arg_0.a), select(vec3<bool>(false, global1.c.x, global1.c.x), select(global4.c, vec3<bool>(global4.c.x && true, true, global1.c.x), !select(global1.c, global4.c, true)), vec3<bool>(!any(vec2<bool>(true, global4.c.x)), _wgslsmith_mod_u32(24660u, u_input.b.x) != 22275u, any(global4.c.zy))), func_2(), ~global4.e);
    var var_1 = ~u_input.a;
    let var_2 = Struct_1(global4.d.a);
    let var_3 = reverseBits(global4.e.xx);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global3.a));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = func_4(func_2(), ~global1.e.wzw);
    var var_0 = global1.e | firstTrailingBit(vec4<i32>(~firstTrailingBit(0i), global4.e.x & ~(-1i), _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, global1.e.x), global1.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.e.x, -1i), vec2<i32>(-2147483647i, -2147483647i) << (vec2<u32>(global1.a.x, 14332u) % vec2<u32>(32u)))));
    global1 = Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.a.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), ~(~vec2<u32>(50321u, u_input.b.x) << (u_input.b.xz % vec2<u32>(32u)))), global4.d, !select(!select(global4.c, global1.c, global1.c), global1.c, !global1.c.x), global4.b, countOneBits(-global1.e >> (vec4<u32>(9901u, global1.a.x, u_input.b.x >> (global4.a.x % 32u), min(u_input.b.x, 1u)) % vec4<u32>(32u))));
    var var_1 = global4.e.yxy;
    global4 = Struct_2(vec2<u32>(global1.a.x & _wgslsmith_dot_vec3_u32(u_input.b.xwz, u_input.b.wyw), 104163u), func_4(global0[_wgslsmith_index_u32(~20719u | ~u_input.b.x, 14u)], vec3<i32>(27293i, firstTrailingBit(0i), -33919i)), global4.c, func_2(), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(global1.e.x, u_input.a, global4.e.x, -1i), vec4<i32>(24833i, global4.e.x, 2147483647i, global1.e.x) | global4.e)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(max(global1.a ^ ~global4.a, global4.a), global0[_wgslsmith_index_u32(~(~u_input.b.x), 14u)], select(!vec3<bool>(true, any(vec4<bool>(true, global4.c.x, false, global4.c.x)), true), select(vec3<bool>(false, global4.c.x, !global1.c.x), vec3<bool>(true, true, global1.c.x), select(select(global1.c, vec3<bool>(global1.c.x, global1.c.x, true), global1.c), vec3<bool>(global4.c.x, global4.c.x, global1.c.x), vec3<bool>(true, global1.c.x, false))), global1.c.x), func_1(1i), select(global4.e, vec4<i32>(~firstLeadingBit(16658i), -u_input.a, ~(-global1.e.x), global4.e.x), select(select(vec4<bool>(true, global4.c.x, global1.c.x, global1.c.x), vec4<bool>(false, false, global4.c.x, true), !vec4<bool>(false, true, global4.c.x, global4.c.x)), vec4<bool>(5618i == global1.e.x, true, true, select(global1.c.x, false, global4.c.x)), !vec4<bool>(false, false, global4.c.x, global1.c.x))));
    global1 = Struct_2(firstTrailingBit(u_input.b.zw), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) * global2.a)))), !global1.c, global4.b, -max(global4.e, global1.e));
    var var_0 = global4.d.a.x;
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(min(~global1.a.x, 29386u), global4.a.x, u_input.b.x), vec3<u32>(u_input.b.x, 1u, ~global1.a.x | 1u)) ^ ~global1.a.x;
    global3 = Struct_1(global4.b.a);
    var var_2 = global0[_wgslsmith_index_u32(var_1, 14u)];
    global4 = Struct_2(global1.a << (firstTrailingBit(~global1.a) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), global4.a), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(29352u, 57917u, 23907u, 29574u)), ~global4.a.x)), 14u)], vec3<bool>(false, true, global1.c.x), global1.b, vec4<i32>(-_wgslsmith_div_i32(28523i, _wgslsmith_add_i32(-74828i, 31283i)), ~1i, _wgslsmith_mult_i32(1i, ~u_input.a) & global4.e.x, global1.e.x));
    let var_3 = global4.d;
    var_0 = _wgslsmith_f_op_f32(select(-735f, var_3.a.x, global4.b.a.x != func_2().a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 45935i);
}

