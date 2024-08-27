struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(995f, -1000f), vec2<f32>(750f, -1000f), vec2<f32>(-580f, 1203f), vec2<f32>(-368f, -870f), vec2<f32>(177f, -195f), vec2<f32>(-288f, 2268f), vec2<f32>(-1731f, 1095f), vec2<f32>(-770f, 1422f), vec2<f32>(1136f, -1658f), vec2<f32>(318f, -818f), vec2<f32>(695f, -144f), vec2<f32>(636f, -1000f), vec2<f32>(461f, 1659f), vec2<f32>(869f, 680f), vec2<f32>(147f, 940f), vec2<f32>(-424f, -870f), vec2<f32>(1000f, -1000f));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = array<vec2<f32>, 17>();
    let var_0 = Struct_1(!select(true, !all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-219f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1531f))) * 642f)));
    global0 = array<vec2<f32>, 17>();
    let var_2 = (_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-61466i, -2147483647i, 1i), ~(-6570i) ^ select(62315i, 1i, var_0.a), -36896i) ^ -2147483647i) & _wgslsmith_div_i32(~_wgslsmith_mult_i32(2147483647i << (u_input.a.x % 32u), 4492i), 1i);
    return 2147483647i;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = Struct_3(true, 1123f, _wgslsmith_mult_vec2_i32(select(abs(countOneBits(arg_0.yy)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), vec2<i32>(19174i, arg_1.c.x)), arg_1.c.xz), arg_1.e), _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0.x, -31630i), vec2<i32>(func_3(), 0i))));
    var_0 = Struct_3(any(vec3<bool>(_wgslsmith_f_op_f32(-var_0.b) > _wgslsmith_f_op_f32(trunc(arg_2.x)), !(var_0.a == arg_1.e.x), select(true, true, all(vec4<bool>(arg_1.b.a, var_0.a, arg_1.a.a, var_0.a))))), arg_2.x, ~min(vec2<i32>(arg_1.c.x, -2147483647i), vec2<i32>(42781i, _wgslsmith_mod_i32(arg_1.c.x, arg_0.x))));
    let var_1 = arg_1.a.a;
    var_0 = Struct_3(all(vec4<bool>((arg_0.x | arg_1.c.x) != select(2147483647i, arg_1.c.x, var_1), false, var_0.a, true)), var_0.b, vec2<i32>(-1i) * -countOneBits(select(arg_0.zy, arg_1.c.xz, true)));
    var var_2 = Struct_3(~(~arg_1.d.x) >= arg_1.d.x, _wgslsmith_div_f32(-807f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1143f)) + arg_2.x)), _wgslsmith_mod_vec2_i32((arg_0.zy | vec2<i32>(arg_1.c.x, arg_0.x)) & ~arg_1.c.wz, vec2<i32>(arg_0.x, arg_0.x)) ^ vec2<i32>(_wgslsmith_add_i32(-1i << (arg_1.d.x % 32u), var_0.c.x), _wgslsmith_mod_i32(min(arg_0.x, arg_0.x), i32(-1i) * -10895i)));
    return Struct_4(arg_1.a, var_0.b, Struct_2(Struct_1(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, var_1, var_2.a), true))), Struct_1((var_0.c.x & arg_0.x) > -60713i), ~abs(min(vec4<i32>(0i, var_0.c.x, arg_0.x, 15353i), vec4<i32>(arg_0.x, arg_1.c.x, 1i, var_0.c.x))), ~vec4<u32>(~85949u, 4294967295u, 57971u, firstLeadingBit(0u)), vec2<bool>(select(-533f < var_2.b, false, all(vec2<bool>(true, false))), !any(vec4<bool>(var_1, true, true, false)))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_2.c.b;
    return var_0;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    return func_4(~1u, ~_wgslsmith_clamp_vec4_u32(~firstLeadingBit(arg_2.d), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.c.x), vec4<u32>(arg_2.d.x, 0u, 16847u, arg_0) >> (vec4<u32>(arg_2.d.x, 17373u, arg_2.d.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(2869u, arg_2.d.x, u_input.b, 15012u))), Struct_4(Struct_1(true), 231f, arg_2));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<f32>, 17>();
    let var_0 = func_5(~(~u_input.a.x), Struct_1(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))), Struct_2(func_4(u_input.c.x, firstTrailingBit(vec4<u32>(71488u, 0u, 24601u, u_input.c.x)), func_2(~vec3<i32>(-1i, 20759i, -16478i), Struct_2(Struct_1(true), Struct_1(true), vec4<i32>(1i, 15794i, -40201i, 41283i), u_input.a, vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-793f, -711f, -1767f, -209f), vec4<f32>(976f, 855f, 193f, 1000f), vec4<bool>(false, false, true, true))))), Struct_1(false), vec4<i32>(-36278i, ~1i, ~_wgslsmith_mult_i32(1i, 1i), abs(firstLeadingBit(0i))), vec4<u32>(reverseBits(~u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, u_input.a.x) & vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), ~vec3<u32>(0u, u_input.b, 1u)), u_input.a.x >> ((u_input.c.x ^ 0u) % 32u), ~max(89271u, 41517u)), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = func_2((~vec3<i32>(1i, 1i, 1i) | _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-16596i, 5130i, 0i), vec3<i32>(1i, 8914i, -18611i)), -vec3<i32>(18206i, -21744i, -2147483647i), vec3<i32>(48648i, 16466i, 6867i))) & ~func_2(vec3<i32>(1i, -24256i, -23783i), Struct_2(var_0, var_0, vec4<i32>(-29924i, -1i, 1i, -72337i), vec4<u32>(4294967295u, 9235u, 28613u, 0u), vec2<bool>(true, true)), _wgslsmith_div_vec4_f32(vec4<f32>(731f, -1000f, -1466f, 829f), vec4<f32>(155f, -257f, 440f, -961f))).c.c.xyx, Struct_2(Struct_1(true), func_4(u_input.c.x, _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 1u, 5000u), ~u_input.a), func_2(func_2(vec3<i32>(-2147483647i, -1i, -15893i), Struct_2(var_0, var_0, vec4<i32>(8604i, 17972i, -2147483647i, 15233i), vec4<u32>(51608u, 9132u, 22709u, u_input.c.x), vec2<bool>(true, var_0.a)), vec4<f32>(-924f, -492f, 213f, 685f)).c.c.ywy, Struct_2(Struct_1(false), var_0, vec4<i32>(-4152i, -24196i, -1i, -2147483647i), u_input.c, vec2<bool>(var_0.a, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(276f, 983f, -474f, -778f)))), abs(select(func_2(vec3<i32>(-2147483647i, 0i, 12541i), Struct_2(var_0, Struct_1(true), vec4<i32>(65479i, -62083i, 0i, 35508i), vec4<u32>(u_input.b, u_input.b, u_input.c.x, u_input.c.x), vec2<bool>(true, false)), vec4<f32>(-1000f, 1000f, 682f, 148f)).c.c, ~vec4<i32>(0i, 20470i, -29533i, -27610i), false)), ~(~(~vec4<u32>(0u, 0u, u_input.a.x, u_input.c.x))), vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -285f), -176f, 1f, _wgslsmith_div_f32(-902f, -248f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, 140f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-702f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_1.b)), 455f)))) + 368f));
    let var_3 = var_0;
    return Struct_1(true);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = !arg_0.a;
    let var_1 = 1362f;
    var var_2 = Struct_3(2147483647i == arg_1, _wgslsmith_f_op_f32(-869f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -810f))))), countOneBits(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(1i, arg_1), vec2<i32>(arg_1, -12923i))));
    global0 = array<vec2<f32>, 17>();
    let var_3 = Struct_4(Struct_1(func_2(~(~vec3<i32>(var_2.c.x, -1i, arg_1)), Struct_2(func_4(6778u, u_input.c, Struct_4(Struct_1(arg_0.a), -621f, Struct_2(arg_0, Struct_1(var_0), vec4<i32>(arg_1, 2147483647i, arg_1, 17503i), u_input.c, vec2<bool>(true, arg_0.a)))), Struct_1(arg_0.a), -vec4<i32>(arg_1, 0i, arg_1, -7823i), abs(u_input.c), !vec2<bool>(true, arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2859f, -960f, var_1, -666f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(342f, var_1, var_2.b, var_1) - vec4<f32>(-1000f, var_2.b, -1814f, var_1)))).c.a.a), -1018f, Struct_2(func_5(u_input.c.x, Struct_1(true), Struct_2(arg_3, Struct_1(arg_3.a), vec4<i32>(2147483647i, var_2.c.x, -12209i, var_2.c.x), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.c.x, u_input.a.x, 8938u, u_input.a.x)), vec2<bool>(var_0, var_0))), arg_0, vec4<i32>(arg_1, ~(-arg_1), ~(-4589i), arg_1 << (~82994u % 32u)), abs(~u_input.a), vec2<bool>(true, !select(false, var_2.a, var_0))));
    return var_3.c.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.wxx;
    let var_1 = vec4<bool>(true, select(true, true, false), func_6(func_1(), _wgslsmith_mod_i32(-36864i, _wgslsmith_mult_i32(1i, -10543i)), _wgslsmith_clamp_u32(~4294967295u >> (_wgslsmith_mod_u32(1235u, u_input.c.x) % 32u), var_0.x & var_0.x, (var_0.x << (u_input.c.x % 32u)) ^ countOneBits(u_input.a.x)), Struct_1(false)), true);
    global0 = array<vec2<f32>, 17>();
    let var_2 = u_input.b;
    var_0 = ~countOneBits(firstTrailingBit(u_input.c.zyx));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(186f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-215f, -391f, true)) * -773f)) + 889f));
}

