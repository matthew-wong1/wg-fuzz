struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-993f + arg_2.a))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a), -180f)), 1409f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.a, 452f, arg_2.a, 2333f))) - vec4<f32>(arg_0, -533f, 1090f, 253f))))));
    var var_1 = Struct_3(u_input.a);
    global0 = true;
    global0 = !(_wgslsmith_dot_vec4_u32(u_input.a, reverseBits(countOneBits(vec4<u32>(28290u, 0u, 45008u, 1u)))) < firstTrailingBit(_wgslsmith_div_u32(~1u, firstTrailingBit(u_input.a.x))));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.a) != 1000f;
    return ~u_input.b;
}

fn func_2(arg_0: u32) -> Struct_4 {
    global0 = false;
    global0 = (0i & u_input.b.x) != (-(_wgslsmith_div_i32(u_input.b.x, -28576i) & -1i) << (arg_0 % 32u));
    let var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(firstTrailingBit(abs(vec4<i32>(2147483647i, u_input.c, -22884i, 0i))), -vec4<i32>(u_input.c, 20819i, 0i, -9553i) >> (select(~u_input.a, vec4<u32>(22463u, 29773u, 28106u, 41204u) >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_0) % vec4<u32>(32u)), vec4<bool>(false, true, false, true)) % vec4<u32>(32u)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(247f))), Struct_1(_wgslsmith_f_op_f32(round(817f))), Struct_1(-917f))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1718f - _wgslsmith_f_op_f32(step(-725f, -1509f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1433f - -1000f), _wgslsmith_f_op_f32(-200f - 990f), 17997i > u_input.b.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-1917f, -873f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-258f)) + _wgslsmith_f_op_f32(ceil(-2784f))))), any(vec2<bool>(all(vec2<bool>(true, false)), false)) && false);
    var var_1 = ~(~max(~arg_0, 62725u)) ^ u_input.a.x;
    let var_2 = var_0;
    return Struct_4(var_0, var_0, abs(u_input.b.yz), Struct_2(select(-reverseBits(var_2.a), u_input.b, all(select(vec4<bool>(true, var_0.d, var_0.d, var_2.d), vec4<bool>(var_0.d, false, var_2.d, var_2.d), var_2.d))), var_0.b, Struct_1(-1000f), var_2.d));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = func_2(55151u);
    var var_1 = func_2(1u).d.b;
    let var_2 = func_2(_wgslsmith_mod_u32(~arg_1.a.x, ~reverseBits(4294967295u))).d;
    let var_3 = !(!select(vec4<bool>(true, all(vec2<bool>(var_2.d, var_2.d)), all(vec2<bool>(true, var_0.d.d)), var_0.a.d), select(select(vec4<bool>(true, var_0.b.d, var_2.d, true), vec4<bool>(var_2.d, false, false, true), var_0.a.d), vec4<bool>(false, var_2.d, true, false), select(vec4<bool>(var_0.a.d, false, var_0.a.d, true), vec4<bool>(false, var_2.d, var_2.d, var_2.d), vec4<bool>(true, false, false, var_2.d))), select(select(vec4<bool>(var_0.b.d, var_0.d.d, true, var_0.b.d), vec4<bool>(var_0.d.d, var_0.b.d, var_2.d, var_0.a.d), vec4<bool>(false, var_0.b.d, true, var_2.d)), vec4<bool>(false, var_2.d, true, var_2.d), true)));
    global0 = reverseBits(~firstTrailingBit(u_input.a.x)) <= reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.a.x >> (4294967295u % 32u), abs(arg_1.a.x)), arg_1.a.x));
    return Struct_1(_wgslsmith_f_op_f32(-var_2.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_2(max(_wgslsmith_sub_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(1i, 2147483647i, -19165i, 66249i))), ~u_input.b), func_1(_wgslsmith_mod_i32(~u_input.b.x, u_input.b.x), Struct_3(u_input.a << (u_input.a % vec4<u32>(32u))), 0i, max(_wgslsmith_mult_i32(-1i, u_input.b.x), countOneBits(u_input.c))), func_1(~(u_input.c << (u_input.a.x % 32u)), Struct_3(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a)), u_input.b.x, u_input.b.x), true & all(vec4<bool>(false, false, false, false))), Struct_2(select((vec4<i32>(71800i, -21185i, u_input.b.x, u_input.b.x) << (u_input.a % vec4<u32>(32u))) >> ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), abs(-u_input.b), !func_2(4294967295u).a.d), func_1(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(12292i, -2147483647i, -1i, 14506i)), Struct_3(select(vec4<u32>(4993u, u_input.a.x, u_input.a.x, 7609u), u_input.a, vec4<bool>(true, false, true, false))), 2147483647i, func_2(~u_input.a.x).c.x), func_1(_wgslsmith_dot_vec3_i32(func_3(-795f, Struct_1(744f), Struct_1(225f)).yxx, vec3<i32>(u_input.b.x, u_input.c, u_input.b.x)), Struct_3(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, 31112u, u_input.a.x))), -_wgslsmith_div_i32(-1i, u_input.c), u_input.c | 1i), !(u_input.a.x != 81503u)), u_input.b.yw, Struct_2(vec4<i32>(3645i, -1i, u_input.b.x, i32(-1i) * -u_input.b.x), func_2(~(~u_input.a.x)).b.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1155f)))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(208f * var_0.b.b.a), _wgslsmith_f_op_f32(-var_0.b.c.a), _wgslsmith_f_op_f32(-669f + var_0.d.b.a)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d.c.a, -448f)), _wgslsmith_f_op_f32(f32(-1f) * -1100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(863f)) + _wgslsmith_f_op_f32(ceil(1194f))), var_0.d.b.a)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_0.d.b.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.a - var_0.b.b.a) + _wgslsmith_f_op_f32(-114f - 307f)))))));
    var_0 = func_2(~(~(~(0u >> (u_input.a.x % 32u)))));
    var_0 = Struct_4(func_2(_wgslsmith_add_u32(~(~u_input.a.x), reverseBits(~u_input.a.x))).a, func_2(u_input.a.x).a, var_0.c | (-vec2<i32>(var_0.c.x, var_0.d.a.x) ^ (vec2<i32>(var_0.a.a.x, var_0.c.x) | ~u_input.b.wy)), Struct_2(firstLeadingBit(func_2(u_input.a.x).d.a), func_1(u_input.c, Struct_3(vec4<u32>(0u, 70576u, 17059u, 91144u)), 1i, _wgslsmith_dot_vec2_i32(u_input.b.zy, _wgslsmith_mult_vec2_i32(var_0.b.a.xx, u_input.b.yy))), Struct_1(_wgslsmith_f_op_f32(1110f * -333f)), var_0.d.a.x != ~u_input.b.x));
    global0 = !(var_1.x < -1654f);
    global0 = !any(!(!select(vec3<bool>(var_0.a.d, false, false), vec3<bool>(var_0.d.d, false, var_0.a.d), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-864f * func_1(var_0.c.x, Struct_3(firstLeadingBit(u_input.a)), func_3(_wgslsmith_f_op_f32(step(-1131f, -1000f)), Struct_1(var_1.x), Struct_1(var_1.x)).x, func_2(21850u).d.a.x).a), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1588f, 154f), var_1.yx)))), var_1.yz)), var_0.d.b.a);
}

