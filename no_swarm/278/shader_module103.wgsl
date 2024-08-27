struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<i32>) -> i32 {
    let var_0 = true;
    let var_1 = !(!any(arg_0.xwx));
    let var_2 = ~u_input.d.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(717f, -234f, -219f, 449f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(705f, -1362f), -1456f, -946f, _wgslsmith_f_op_f32(sign(292f))) - vec4<f32>(-631f, 1897f, -806f, 422f)))), firstTrailingBit(vec4<u32>(~85173u << (~4294967295u % 32u), ~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(var_2, var_2)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, var_2), u_input.d), ~u_input.c)), 4294967295u, ~(-21026i));
    var var_4 = (vec2<i32>(-1i) * -vec2<i32>(arg_1.x, 261i)) << (u_input.d % vec2<u32>(32u));
    return arg_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = -1218f;
    var var_1 = vec3<u32>(u_input.c, arg_1, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(10804u, 11994u, 22197u), ~max(vec3<u32>(u_input.d.x, u_input.d.x, 1096u), vec3<u32>(arg_0.c, arg_0.c, u_input.c))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, var_1.x, arg_0.c, u_input.d.x), ~arg_0.b, select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), vec4<u32>(~34075u, arg_0.c, ~arg_0.c, ~arg_1)), arg_1, abs(35609u), abs(~1u & u_input.c)), firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.x, 1u)), u_input.d | vec2<u32>(arg_1, 4294967295u))), func_3(!vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true), u_input.b, u_input.a));
    let var_3 = vec3<bool>(!all(vec3<bool>(arg_0.b.x > arg_1, true, any(vec2<bool>(false, false)))), !(var_2.b.x <= 0u), true);
    var_1 = vec3<u32>((firstLeadingBit(~23262u) | _wgslsmith_mult_u32(0u | var_2.b.x, _wgslsmith_sub_u32(2688u, 1u))) | 0u, ~(~31057u), ~_wgslsmith_dot_vec4_u32(var_2.b, ~arg_0.b >> (abs(vec4<u32>(var_2.c, arg_0.c, var_1.x, var_1.x)) % vec4<u32>(32u))));
    return arg_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_clamp_vec2_i32(select(u_input.b.zx, vec2<i32>(24347i, ~15803i), arg_0.xz) | (reverseBits(abs(u_input.a.zz)) & u_input.a.xy), firstLeadingBit(u_input.b.wz), _wgslsmith_mod_vec2_i32(max(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, arg_3.d), vec2<i32>(1i, u_input.b.x)), u_input.a.yy), ~select(_wgslsmith_div_vec2_i32(vec2<i32>(-46467i, 10887i), u_input.b.yy), u_input.a.yy, false)));
    let var_1 = Struct_2(Struct_1(arg_3.a, vec4<u32>(arg_1.x, (arg_1.x ^ arg_1.x) ^ func_2(Struct_1(vec4<f32>(arg_3.a.x, -882f, -922f, -279f), vec4<u32>(0u, arg_1.x, arg_1.x, 4294967295u), 56052u, 1i), arg_3.c).b.x, 1u, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 4294967295u), _wgslsmith_clamp_u32(arg_3.c, 36841u, u_input.d.x))), _wgslsmith_mod_u32(arg_1.x ^ _wgslsmith_add_u32(arg_3.b.x, arg_1.x), arg_3.b.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b.x, -1i), ~(-1i), 16829i), -u_input.a.x ^ (1i & u_input.b.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1418f), _wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x), 299f, _wgslsmith_f_op_f32(886f * -1664f))))), func_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a.x, arg_3.a.x, -784f, -1623f), _wgslsmith_f_op_vec4_f32(sign(arg_3.a))), _wgslsmith_add_vec4_u32(vec4<u32>(107403u, arg_1.x, arg_1.x, 44453u), select(vec4<u32>(u_input.c, arg_1.x, 4294967295u, 0u), arg_3.b, vec4<bool>(arg_2.x, arg_2.x, true, false))), 24827u, ~_wgslsmith_mod_i32(-49794i, var_0.x)), _wgslsmith_clamp_u32(~0u ^ arg_3.c, 1u, 0u)), arg_0, u_input.b);
    var var_2 = ~min(func_2(func_2(func_2(arg_3, u_input.c), ~1u), ~_wgslsmith_sub_u32(arg_3.c, var_1.c.b.x)).b, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(arg_3.b), vec4<u32>(4294967295u, arg_3.b.x, 32068u, var_1.c.c)), ~arg_3.b));
    var_2 = _wgslsmith_mult_vec4_u32(arg_3.b, countOneBits(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.c, var_1.c.b.x, u_input.c, arg_3.c), vec4<u32>(0u, 42844u, var_2.x, u_input.d.x)), arg_3.c, firstLeadingBit(select(22276u, 4294967295u, true)), 4374u)));
    var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(var_1.c.c), 1u, var_1.a.c, u_input.d.x | u_input.d.x), vec4<u32>(~111694u, 0u >> (var_2.x % 32u), 0u, ~4294967295u)), arg_3.b, ~select(select(arg_3.b, arg_3.b, var_1.d), vec4<u32>(17035u, 18532u, 0u, arg_3.b.x), false)), ~(~var_1.a.b));
    return !vec4<bool>(all(!(!vec4<bool>(true, arg_0.x, false, true))), all(arg_0.yz), !select(true, arg_2.x, arg_0.x), var_1.d.x);
}

fn func_1(arg_0: vec4<f32>) -> vec3<bool> {
    let var_0 = firstLeadingBit(u_input.b.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f));
    let var_2 = firstLeadingBit(vec2<i32>(var_0, _wgslsmith_mod_i32(u_input.b.x, ~(16994i << (u_input.d.x % 32u)))));
    var var_3 = 1i;
    var_3 = -73912i << (~(~1u) % 32u);
    return vec3<bool>(any(!func_4(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c, u_input.d.x), vec3<u32>(u_input.d.x, u_input.c, u_input.c)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), func_2(Struct_1(arg_0, vec4<u32>(4294967295u, 1u, u_input.c, u_input.d.x), u_input.c, var_2.x), u_input.d.x))), !(!func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), countOneBits(vec3<u32>(u_input.c, 1u, 0u)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), Struct_1(arg_0, vec4<u32>(6072u, 34316u, u_input.d.x, u_input.d.x), u_input.d.x, 0i)).x), !(false == !(u_input.d.x < u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec3<bool>(true, true, true), func_1(vec4<f32>(1f, 1f, 1f, 1f)), !func_1(vec4<f32>(-467f, 1227f, -1000f, -760f))), vec3<bool>(func_4(vec4<bool>(false, true, false, false), vec3<u32>(u_input.c, 4294967295u, 69271u), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), func_2(Struct_1(vec4<f32>(-126f, -582f, 930f, 953f), vec4<u32>(u_input.c, u_input.c, u_input.d.x, u_input.c), 1090u, u_input.b.x), u_input.d.x)).x, false, u_input.a.x >= _wgslsmith_clamp_i32(16379i, -1i, u_input.a.x)), true);
    let var_1 = !(_wgslsmith_mod_i32(reverseBits(u_input.b.x), u_input.a.x) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, reverseBits(u_input.b.x)), u_input.a.yx));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(764f, -1656f, _wgslsmith_f_op_f32(step(1000f, 630f)), _wgslsmith_f_op_f32(select(-658f, 203f, var_1))))), vec4<u32>(countOneBits(func_2(Struct_1(vec4<f32>(687f, -1245f, -296f, 838f), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.d.x), 66760u, u_input.b.x), 0u).c), u_input.c, select(u_input.d.x, 4294967295u, false) & _wgslsmith_div_u32(0u, 44025u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, u_input.c, u_input.d.x) & vec4<u32>(4294967295u, 26022u, u_input.c, 75078u), ~vec4<u32>(4294967295u, 4294967295u, u_input.d.x, u_input.d.x))), u_input.d.x, select(func_3(select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_1, true, true, var_1), vec4<bool>(var_1, false, false, var_0.x)), max(u_input.b, u_input.b), countOneBits(vec3<i32>(1i, u_input.b.x, u_input.b.x))), u_input.a.x, any(select(vec4<bool>(var_1, var_0.x, var_1, false), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_1, false, var_1, false))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1750f, 1000f, -1620f, -280f))))) - func_2(Struct_1(vec4<f32>(419f, -1778f, -695f, -826f), vec4<u32>(u_input.c, 31835u, u_input.c, u_input.d.x), 38511u, 2147483647i), u_input.c).a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-962f)), _wgslsmith_f_op_f32(max(-643f, -193f)), 685f, 1f))), func_2(func_2(Struct_1(vec4<f32>(833f, -1989f, 633f, -643f), ~vec4<u32>(15704u, 55715u, 33508u, 0u), ~u_input.c, u_input.a.x << (u_input.c % 32u)), 64313u), u_input.c), !func_4(!vec4<bool>(var_1, var_0.x, false, var_1), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 30343u, 1u), vec3<u32>(u_input.c, 3293u, u_input.d.x)), !func_4(vec4<bool>(var_1, var_0.x, false, var_0.x), vec3<u32>(u_input.d.x, 40053u, u_input.d.x), vec3<bool>(false, true, var_1), Struct_1(vec4<f32>(481f, 1136f, -1349f, 1603f), vec4<u32>(1u, u_input.d.x, 4294967295u, 0u), u_input.c, u_input.b.x)).wxy, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, -783f, 274f, -1206f) - vec4<f32>(-820f, -370f, 457f, 393f)), vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.d.x), 1u, 31983i)), reverseBits(u_input.b >> (~(vec4<u32>(4294967295u, 54200u, 0u, u_input.d.x) & vec4<u32>(u_input.c, 17982u, 1u, 37420u)) % vec4<u32>(32u))));
    var_0 = vec3<bool>(var_1, true, true);
    let var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-(2147483647i & _wgslsmith_clamp_i32(_wgslsmith_mod_i32(22888i, var_2.e.x), ~0i, 1i)), var_2.c.b.x & 19524u);
}

