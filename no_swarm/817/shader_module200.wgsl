struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_4,
    d: Struct_3,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_3) -> f32 {
    var var_0 = -1523f;
    var_0 = _wgslsmith_f_op_f32(step(-368f, -1000f));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-arg_1.a.a));
    var_0 = 166f;
    var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_3.a.x)), _wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, 1054f));
    return -802f;
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<u32>(~(~(~1u)) >> ((~0u & u_input.c.x) % 32u), u_input.c.x, u_input.b);
    let var_1 = any(vec3<bool>(~6109u < var_0.x, true, any(vec2<bool>(true, true))));
    var var_2 = select(!select(!vec3<bool>(var_1, var_1, false), !(!vec3<bool>(var_1, var_1, false)), var_1), !(!(!(!vec3<bool>(false, var_1, var_1)))), var_1);
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(303f, _wgslsmith_f_op_f32(f32(-1f) * -314f)))), 1431f, _wgslsmith_f_op_f32(-112f - _wgslsmith_f_op_f32(func_3(-vec2<i32>(u_input.e.x, u_input.d.x), Struct_4(Struct_3(vec4<f32>(-220f, 408f, 893f, 381f)), false), vec4<u32>(1150u, 26473u, u_input.a.x, u_input.c.x), Struct_3(vec4<f32>(1000f, 2302f, 406f, 670f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + 915f)));
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    var var_0 = ~(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.c.x, 47949u, u_input.b, 34026u), vec4<u32>(3424u, 0u, 0u, u_input.a.x)) >> ((vec4<u32>(199u, u_input.b, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, 60130u, u_input.a.x, 49395u)) % vec4<u32>(32u)), abs(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, u_input.c.x))) >> (~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, 99799u, 4294967295u, u_input.c.x), ~vec4<u32>(0u, u_input.b, u_input.c.x, 76633u)) % vec4<u32>(32u)));
    var_0 = vec4<u32>(u_input.b ^ ~_wgslsmith_div_u32(u_input.b, var_0.x << (68766u % 32u)), 70584u, u_input.a.x, _wgslsmith_add_u32(~_wgslsmith_sub_u32(var_0.x ^ var_0.x, 1u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(0u), 104664u, u_input.a.x), 1u)));
    var_0 = ~firstTrailingBit(vec4<u32>(~0u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c.x, 120995u, var_0.x), countOneBits(0u)), 0u, 1u));
    var var_1 = firstLeadingBit(~vec2<u32>(~u_input.a.x, 0u) << (vec2<u32>(~u_input.a.x, firstTrailingBit(var_0.x) | ~22285u) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2513f, _wgslsmith_f_op_f32(1201f - arg_0.c.a.a.x))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)))), _wgslsmith_f_op_f32(-arg_0.c.a.a.x)));
    return Struct_4(arg_0.c.a, all(select(vec4<bool>(arg_0.b, false, true, arg_0.b), !vec4<bool>(arg_0.b, arg_0.c.b, true, arg_0.c.b), select(vec4<bool>(arg_0.c.b, false, false, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), true))) && ((u_input.b & 1u) < ~_wgslsmith_mult_u32(var_1.x, 44047u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_1;
    let var_1 = i32(-1i) * -1i;
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, min(u_input.c.x, 3611u), u_input.a.x, _wgslsmith_add_u32(u_input.b, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x) >> (vec4<u32>(49022u, u_input.c.x, 1u, u_input.b) % vec4<u32>(32u))), u_input.c.x, 13049u), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 40456u, 0u), vec3<u32>(4294967295u, 24547u, u_input.a.x)), vec3<u32>(25786u, 1u, 0u) >> (vec3<u32>(88162u, u_input.a.x, 26945u) % vec3<u32>(32u))), _wgslsmith_add_u32(u_input.c.x, 1u) ^ 1u, u_input.a.x, select(u_input.a.x, firstTrailingBit(u_input.c.x), true)), vec4<u32>(~(~6513u), ~firstLeadingBit(3287u), max(92371u, _wgslsmith_div_u32(u_input.c.x, 0u)), u_input.a.x)));
    let var_3 = func_4(Struct_5(func_2(), true, Struct_4(func_2(), arg_2.a.x > arg_0.x), func_2(), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f - arg_2.a.x)), arg_2.a.x, 373f)));
    var_2 = _wgslsmith_div_vec4_u32(abs(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 4294967295u, var_2.x)) >> ((vec4<u32>(0u, 1u, 32015u, var_2.x) | vec4<u32>(var_2.x, 4294967295u, 63003u, var_2.x)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a.x, 4294967295u, var_2.x, 72618u), vec4<u32>(var_2.x, u_input.b, 4294967295u, 23975u)), ~vec4<u32>(14675u, u_input.a.x, 35786u, 65862u))) << (~(~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, 55745u, 1u, u_input.a.x)), select(vec4<u32>(1u, 4294967295u, 4294967295u, 15554u), vec4<u32>(u_input.c.x, 3584u, u_input.a.x, 4294967295u), true))) % vec4<u32>(32u));
    return var_3.a;
}

fn func_5(arg_0: i32, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a.x, 200f, _wgslsmith_f_op_f32(-func_2().a.x)));
    let var_1 = arg_1;
    let var_2 = func_1(var_0.xy, vec2<i32>(arg_0, (u_input.e.x >> (u_input.b % 32u)) & _wgslsmith_add_i32(-2147483647i ^ u_input.e.x, u_input.d.x)), func_4(Struct_5(func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a.a.x, -193f))), select(vec2<i32>(arg_0, u_input.e.x), u_input.e, vec2<bool>(false, false)), var_1.a), var_1.b, var_1, arg_1.a, _wgslsmith_f_op_vec3_f32(var_1.a.a.yww - arg_1.a.a.www))).a).a.yx;
    let var_3 = 0u;
    return _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, u_input.c.x), _wgslsmith_div_u32(u_input.a.x, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(func_5(0i, Struct_4(func_1(vec2<f32>(-1211f, 894f), u_input.e, Struct_3(vec4<f32>(-1603f, -1080f, -1699f, 343f))), true)) == ~4294967295u);
    let var_1 = vec2<u32>(_wgslsmith_add_u32(~(~_wgslsmith_mult_u32(u_input.b, 9292u)), 0u), min(~u_input.a.x, 1u));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(12188u, 4294967295u, 1u)), abs(vec3<u32>(4294967295u, 4294967295u, u_input.a.x)), countOneBits(vec3<u32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, 93786u, 35350u), vec3<u32>(0u, var_1.x, u_input.b)), vec3<u32>(15453u, u_input.a.x, 4294967295u) << (vec3<u32>(3996u, 0u, var_1.x) % vec3<u32>(32u)))), countOneBits(select(vec3<u32>(4294967295u, 0u, var_1.x) << (vec3<u32>(0u, var_1.x, 4294967295u) % vec3<u32>(32u)), max(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(var_1.x, var_1.x, 65267u)), true)), _wgslsmith_mod_vec3_u32(vec3<u32>(16397u, abs(1u), 1u), min(vec3<u32>(u_input.a.x, var_1.x, 61367u), vec3<u32>(u_input.a.x, 0u, 0u) & vec3<u32>(41686u, 69137u, 7339u)))), _wgslsmith_add_vec3_u32(~firstTrailingBit(countOneBits(vec3<u32>(48470u, u_input.c.x, var_1.x))), ~(~(~vec3<u32>(70419u, u_input.a.x, 0u)))));
    var var_3 = 0u;
    var var_4 = Struct_4(func_4(Struct_5(func_4(Struct_5(Struct_3(vec4<f32>(749f, -506f, -1712f, -510f)), false, Struct_4(Struct_3(vec4<f32>(-847f, -129f, 120f, -218f)), true), Struct_3(vec4<f32>(-881f, 169f, -815f, -415f)), vec3<f32>(-1239f, 1083f, -413f))).a, false, func_4(Struct_5(Struct_3(vec4<f32>(-654f, -1193f, -2280f, -1991f)), true, Struct_4(Struct_3(vec4<f32>(-1171f, -163f, 2165f, 191f)), false), Struct_3(vec4<f32>(394f, -916f, 1024f, 664f)), vec3<f32>(381f, -943f, 1485f))), Struct_3(vec4<f32>(-625f, 1239f, 398f, 591f)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(784f, 1040f) - vec2<f32>(1187f, -2573f)), u_input.e, Struct_3(vec4<f32>(226f, -209f, 261f, 295f))).a.wxz)).a, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.a.a.x))) * _wgslsmith_div_f32(1626f, _wgslsmith_f_op_f32(f32(-1f) * -1093f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f))), _wgslsmith_f_op_vec4_f32(var_4.a.a * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1217f, _wgslsmith_div_f32(554f, var_4.a.a.x), 1091f, _wgslsmith_f_op_f32(func_3(vec2<i32>(12040i, 0i), Struct_4(var_4.a, var_4.b), vec4<u32>(60188u, var_1.x, var_2, 39901u), var_4.a)))))), vec3<u32>(var_1.x, 1u, select(u_input.a.x, var_1.x, true)));
}

