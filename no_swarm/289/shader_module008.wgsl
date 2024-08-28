struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(vec4<u32>(~u_input.a, ~u_input.a, ~(1u >> (0u % 32u)), _wgslsmith_add_u32(_wgslsmith_div_u32(31352u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 9u)], 9u)]), 2618u)) >> (vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global0[_wgslsmith_index_u32(~abs(0u), 9u)], 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_u32(abs(~reverseBits(53914u)), ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11421u, 9u)], 9u)]) & (global0[_wgslsmith_index_u32(125747u, 9u)] << (select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44151u, 9u)], 9u)], 71562u, true) % 32u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(47568u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15835u, 9u)], 9u)], 9u)]) ^ _wgslsmith_mult_u32(1u, 1u), _wgslsmith_add_u32(74461u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(48199u, 9u)], 4294967295u)))));
    let var_1 = !(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(select(false, false, false), any(vec4<bool>(false, true, true, true))), true));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(117f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(556f + 176f), -652f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f)), 680f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1693f)) * -205f)) * _wgslsmith_f_op_f32(max(1f, 379f))));
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: vec2<bool>) -> f32 {
    var var_0 = ~u_input.b;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-927f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_2.x, arg_1.d.a.x)))))), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(round(arg_1.d.a.x))));
    var var_2 = !(!vec4<bool>(true, arg_3.x, true, false));
    var_2 = !vec4<bool>(!(!(!arg_3.x)), true, func_3(), false);
    var var_3 = var_1;
    return -560f;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_3.yx;
    let var_1 = select(select(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true), vec3<bool>(true, !(u_input.a <= 10632u), ~8679i < arg_3.x), vec3<bool>(false, ~arg_1.x < 4294967295u, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, all(vec2<bool>(false, false)), true)), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, !(arg_0 > 402f), func_3())));
    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(57976u, 0u, 0u, arg_1.x), vec4<u32>(0u, 23321u, global0[_wgslsmith_index_u32(4294967295u, 9u)], arg_1.x), vec4<u32>(2116u, u_input.a, 0u, arg_1.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.zz | vec2<u32>(29243u, 4294967295u), countOneBits(arg_1.yx)), min(0u, ~u_input.a), ~4294967295u, 0u)), firstLeadingBit(0u));
    var_0 = (arg_3.xy >> (arg_1.zy % vec2<u32>(32u))) | ~(arg_3.zz << (var_2.a.xy % vec2<u32>(32u)));
    var_0 = arg_3.yy;
    return global0[_wgslsmith_index_u32(1u, 9u)];
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = ~firstLeadingBit(~(~abs(global0[_wgslsmith_index_u32(arg_1.x, 9u)])));
    var var_1 = _wgslsmith_div_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(reverseBits(~vec4<u32>(var_0, 4294967295u, global0[_wgslsmith_index_u32(1u, 9u)], 59402u)), select(vec4<u32>(20839u, global0[_wgslsmith_index_u32(12791u, 9u)], 0u, 4294967295u) ^ vec4<u32>(41297u, 33280u, 79939u, global0[_wgslsmith_index_u32(0u, 9u)]), vec4<u32>(1u, 1u, u_input.a, global0[_wgslsmith_index_u32(16u, 9u)]), true), vec4<u32>(firstLeadingBit(var_0), abs(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1.x), arg_1.yz), _wgslsmith_div_u32(arg_1.x, 0u)))), vec4<u32>(~_wgslsmith_mult_u32(1u, ~5974u), _wgslsmith_mult_u32(~var_0, abs(1u)), 0u, 1u));
    let var_2 = !(!vec3<bool>(any(vec4<bool>(true, true, true, true)), arg_2, true));
    let var_3 = 15759u;
    var_1 = vec4<u32>(firstLeadingBit(0u), 1u, firstTrailingBit(60089u), _wgslsmith_dot_vec3_u32(~select(var_1.yww, var_1.zyz, var_2) & max(~vec3<u32>(1u, var_3, var_3), ~arg_1), _wgslsmith_div_vec3_u32(~(~var_1.zzz), vec3<u32>(var_3, _wgslsmith_mod_u32(var_1.x, var_0), ~var_3))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(275f, -489f, 875f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(642f, -1117f, 1334f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1069f, 691f, 1000f))))))));
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_5 {
    let var_0 = _wgslsmith_div_i32(u_input.c, _wgslsmith_mod_i32(14083i, i32(-1i) * -2147483647i));
    let var_1 = ~vec4<i32>(var_0, _wgslsmith_sub_i32(-32182i, firstTrailingBit(0i | var_0)), 5980i, u_input.b);
    var var_2 = 0u;
    var var_3 = arg_1;
    let var_4 = Struct_5(Struct_3(44879u, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1639f, arg_0)))), _wgslsmith_add_i32(-1i, var_0), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, -771f), vec3<f32>(-1692f, arg_1, arg_1)) * vec3<f32>(arg_0, 892f, -418f))))), func_5(max(abs(var_1.zw), max(var_1.wy & vec2<i32>(1i, var_0), max(vec2<i32>(var_0, var_1.x), var_1.yy))), vec3<u32>(u_input.a & 4294967295u, func_4(_wgslsmith_f_op_f32(arg_0 - 343f), vec3<u32>(u_input.a, 3464u, global0[_wgslsmith_index_u32(u_input.a, 9u)]), _wgslsmith_f_op_f32(func_2(vec3<i32>(var_1.x, var_1.x, u_input.b), Struct_5(Struct_3(global0[_wgslsmith_index_u32(u_input.a, 9u)], Struct_1(vec3<f32>(arg_1, -1108f, -1151f))), var_0, Struct_1(vec3<f32>(833f, arg_1, arg_0)), Struct_1(vec3<f32>(198f, -1075f, arg_0))), vec2<f32>(arg_1, 1673f), vec2<bool>(false, false))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.x, 0i), vec3<i32>(var_1.x, var_1.x, -1i))), global0[_wgslsmith_index_u32(1u, 9u)]), true));
    return var_4;
}

fn func_6(arg_0: Struct_5, arg_1: Struct_1) -> Struct_5 {
    var var_0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_0 = true;
    var var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.a.x, -242f, -1000f, arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-3075f, -1000f, _wgslsmith_f_op_f32(-1000f - -1412f), -174f) - vec4<f32>(_wgslsmith_f_op_f32(round(var_1.b.a.x)), arg_0.d.a.x, 310f, 297f)), true)));
    return Struct_5(Struct_3(7589u, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, -1435f, var_2.x), arg_1.a))), -1i, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(2161f, var_1.b.a.x, 601f) - vec3<f32>(var_2.x, var_2.x, arg_0.d.a.x)), vec3<f32>(var_2.x, 1296f, 590f)))))), func_5(vec2<i32>(-u_input.c, u_input.c), ~firstLeadingBit(vec3<u32>(var_1.a, var_1.a, 1u)), arg_0.b < (u_input.b ^ 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 14079u;
    var var_1 = func_6(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(849f)), _wgslsmith_f_op_f32(-1179f * 447f)))), -302f), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(894f)), _wgslsmith_f_op_f32(floor(-1556f)))), _wgslsmith_f_op_f32(func_5(vec2<i32>(u_input.b, u_input.c), vec3<u32>(0u, var_0, 53067u), true).a.x * -944f), -2104f)));
    var var_2 = Struct_1(var_1.c.a);
    let var_3 = vec4<bool>(true, !(_wgslsmith_f_op_f32(trunc(func_6(Struct_5(Struct_3(0u, var_1.c), -15601i, var_1.d, Struct_1(var_2.a)), var_1.c).d.a.x)) != var_1.c.a.x), true && all(vec3<bool>(true, true, true)), !(false != (all(vec4<bool>(false, true, false, true)) && true)));
    let var_4 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(var_0, ~abs(0u)), ~(~countOneBits(u_input.a)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_1.a.a), vec2<u32>(5866u, var_1.a.a)), ~func_4(1392f, vec3<u32>(u_input.a, u_input.a, 1u), var_2.a.x, vec3<i32>(var_1.b, -30823i, var_1.b))), _wgslsmith_sub_u32(var_1.a.a, abs(var_0)) & global0[_wgslsmith_index_u32(var_1.a.a, 9u)]), ~global0[_wgslsmith_index_u32(var_1.a.a, 9u)]);
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    var var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.c, var_1.b), vec3<i32>(2147483647i, var_1.b, var_1.b)), func_1(_wgslsmith_div_f32(196f, var_1.a.b.a.x), -432f), _wgslsmith_f_op_vec2_f32(-var_2.a.zz), !(!var_3.yy)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(564f)), var_1.d.a.x) * var_1.a.b.a.x)));
    var var_6 = !(!select(var_3, var_3, vec4<bool>(all(vec2<bool>(var_3.x, var_3.x)), var_4.b > var_0, all(vec4<bool>(var_3.x, false, var_3.x, var_3.x)), var_3.x || var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(abs(_wgslsmith_sub_i32(0i, u_input.b)), func_1(921f, var_1.d.a.x).b), firstLeadingBit(select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(6449i, var_1.b)), ~vec2<i32>(u_input.b, u_input.b), true))));
}

