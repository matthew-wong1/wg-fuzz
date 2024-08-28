struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_2, 15>;

var<private> global2: Struct_3;

var<private> global3: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_4) -> bool {
    let var_0 = -_wgslsmith_mod_i32(-(~(arg_0.a.x >> (50370u % 32u))), u_input.c);
    let var_1 = Struct_1(vec4<bool>(true && !global0.x, false, !((global0.x || global0.x) || global0.x), true));
    let var_2 = _wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(firstLeadingBit(u_input.c), arg_0.b.x << (u_input.a % 32u))), 7322i) | 28893i;
    let var_3 = _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.a)) + global3.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1617f + _wgslsmith_f_op_f32(max(1258f, 729f))))))));
    global0 = vec4<bool>(true, var_1.a.x, global0.x, var_0 != var_0);
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<i32> {
    return _wgslsmith_mod_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(u_input.d, u_input.c, u_input.d, -47614i)), u_input.b) >> (~firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.a), vec2<u32>(1u, 42347u))) % vec2<u32>(32u)), -(vec2<i32>(12265i ^ u_input.c, _wgslsmith_clamp_i32(3628i, 18416i, u_input.d)) >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) | vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))));
}

fn func_1() -> f32 {
    var var_0 = 31272i;
    var_0 = -u_input.d;
    var var_1 = vec4<bool>(!(func_2(Struct_4(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.b, -2147483647i))) | global0.x), true, func_2(Struct_4(~vec2<i32>(-40343i, u_input.c), func_3(Struct_1(vec4<bool>(global0.x, global0.x, global0.x, true)), 193f))), !(!func_2(Struct_4(vec2<i32>(-1i, 0i), vec2<i32>(u_input.d, -1i))) | select(true, true, global2.a.a == global2.a.a)));
    let var_2 = Struct_1(!select(vec4<bool>(global0.x | global0.x, var_1.x, true, 4294967295u < u_input.a), vec4<bool>(select(true, true, global0.x), global0.x == var_1.x, var_1.x, all(vec3<bool>(global0.x, false, false))), 28857u <= _wgslsmith_add_u32(u_input.a, 132644u)));
    global0 = !var_2.a;
    return _wgslsmith_f_op_f32(trunc(-1814f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    global3 = global2.a;
    global0 = vec4<bool>((!any(vec2<bool>(global0.x, true)) && (-875f == global3.a)) || true, arg_3.x, true, !(!all(!vec4<bool>(arg_3.x, true, true, false))));
    var var_0 = _wgslsmith_f_op_f32(748f - -204f);
    var var_1 = vec4<i32>(13039i, select(u_input.c, arg_1, !(!arg_3.x)), ~(arg_1 ^ arg_1), _wgslsmith_mod_i32(countOneBits(min(-11264i, -arg_1)), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_mult_i32(1i, arg_1)), arg_1, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1, 4932i), reverseBits(vec2<i32>(u_input.b, -2147483647i))))));
    let var_2 = u_input.a;
    return firstLeadingBit(1u);
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_1 {
    global2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a))) * global2.a.a)));
    global0 = !vec4<bool>(global0.x, !(_wgslsmith_f_op_f32(190f + global3.a) <= _wgslsmith_f_op_f32(arg_0 * -539f)), global0.x, all(vec2<bool>(!global0.x, true)));
    let var_0 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-20763i, u_input.c, u_input.d, u_input.c) << (~vec4<u32>(u_input.a, u_input.a, arg_1.x, 4294967295u) % vec4<u32>(32u)), -abs(vec4<i32>(arg_3.x, 43331i, 2147483647i, arg_2.a.x))) >> (arg_1.x % 32u));
    return Struct_1(vec4<bool>(all(!(!vec4<bool>(true, false, global0.x, global0.x))), true, func_2(Struct_4(vec2<i32>(-2147483647i, var_0), ~arg_3)), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 15u)];
    global1 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) - global3.a))));
    let var_2 = func_5(global2.a.a, vec2<u32>(func_4(_wgslsmith_f_op_f32(func_1()), u_input.c, global1[_wgslsmith_index_u32(~(~44613u), 15u)], !(!global0.wy)), u_input.a), Struct_4(_wgslsmith_div_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.d, u_input.b)), vec2<i32>(u_input.d, u_input.c), !global0.x), -(vec2<i32>(u_input.c, 1i) & vec2<i32>(-51839i, u_input.c))), firstLeadingBit(abs(vec2<i32>(1i, 0i))) | abs(~vec2<i32>(u_input.b, u_input.c))), func_3(Struct_1(!vec4<bool>(false, false, global0.x, true)), global2.a.a));
    global1 = array<Struct_2, 15>();
    var var_3 = Struct_5(vec4<i32>(u_input.b, 0i, -58263i, -15889i), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a & u_input.a, ~20543u, ~50439u)), ~(vec3<u32>(u_input.a, u_input.a, 34069u) ^ vec3<u32>(u_input.a, 1u, 4294967295u)) >> ((vec3<u32>(3056u, 1u, 10483u) >> (~vec3<u32>(26020u, 55471u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a, global2.a.a, -1715f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-709f, global3.a, -548f))))))));
    let var_4 = Struct_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(select(0i, u_input.c, global0.x) ^ func_3(Struct_1(var_2.a), var_1).x, _wgslsmith_mod_i32(2147483647i >> (u_input.a % 32u), func_3(Struct_1(var_2.a), var_3.c.x).x)), func_3(func_5(_wgslsmith_f_op_f32(-global2.a.a), vec2<u32>(var_3.b.x, u_input.a), Struct_4(var_3.a.yz, var_3.a.ww), ~var_3.a.zy), var_0.a), func_3(func_5(_wgslsmith_f_op_f32(f32(-1f) * -421f), var_3.b.xy, Struct_4(var_3.a.xw, vec2<i32>(u_input.c, u_input.d)), max(vec2<i32>(var_3.a.x, var_3.a.x), var_3.a.wy)), -961f)), var_3.a.yx);
    let var_5 = Struct_3(Struct_2(var_1));
    global0 = select(!select(func_5(_wgslsmith_f_op_f32(var_1 - -2213f), firstTrailingBit(vec2<u32>(4294967295u, var_3.b.x)), Struct_4(vec2<i32>(-1i, -16311i), var_4.b), min(var_3.a.zw, var_4.b)).a, var_2.a, true), select(func_5(_wgslsmith_f_op_f32(-var_3.c.x), var_3.b.xz, Struct_4(select(vec2<i32>(-19344i, var_3.a.x), var_3.a.zy, vec2<bool>(global0.x, false)), var_3.a.wz | var_3.a.wy), select(vec2<i32>(-2147483647i, 3804i), vec2<i32>(u_input.c, -33196i) >> (vec2<u32>(u_input.a, var_3.b.x) % vec2<u32>(32u)), var_2.a.x)).a, vec4<bool>(true, select(all(vec2<bool>(false, global0.x)), func_2(var_4), any(var_2.a)), var_2.a.x, !(true & var_2.a.x)), var_2.a.x), var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a, global3.a, 283f, global2.a.a) + vec4<f32>(-2200f, -1136f, var_3.c.x, var_1))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-907f, global3.a, var_1, var_1)))), ~_wgslsmith_mod_i32(select(func_3(var_2, 1332f).x, _wgslsmith_dot_vec4_i32(var_3.a, var_3.a), true), min(i32(-1i) * -1i, countOneBits(-2147483647i))), u_input.a, func_3(Struct_1(select(vec4<bool>(global0.x, true, true, global0.x), var_2.a, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-833f - -1040f) * _wgslsmith_f_op_f32(func_1()))) | max(firstLeadingBit(vec2<i32>(-8780i, -8191i)), vec2<i32>(min(2361i, 2147483647i), -2147483647i)));
}

