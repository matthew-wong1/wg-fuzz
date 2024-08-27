struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-3496f, -1129f, 1907f), vec3<f32>(536f, 952f, -239f), vec3<f32>(1046f, 1407f, 668f), vec3<f32>(872f, -794f, 1000f), vec3<f32>(-435f, -573f, 265f), vec3<f32>(121f, 983f, 1009f), vec3<f32>(826f, -1000f, 716f), vec3<f32>(286f, 1432f, -296f));

var<private> global1: array<vec2<i32>, 29>;

var<private> global2: array<i32, 17>;

var<private> global3: bool = false;

var<private> global4: vec4<i32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = arg_1.b.a;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, arg_1.d.d) + var_1.d.c.xy) * vec2<f32>(509f, arg_1.b.c.c.x)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.b.c.c.yy + vec2<f32>(var_1.d.d, var_1.d.c.x))))))));
    var var_3 = !(!(true | !arg_1.b.c.b)) | any(!(!vec2<bool>(var_0.x, true)));
    global2 = array<i32, 17>();
    return Struct_2(select(var_0, var_0, all(vec3<bool>(!var_1.b.c.b, true, true))), vec2<i32>(1i, abs(global4.x)), var_1.b.c);
}

fn func_3(arg_0: u32) -> Struct_2 {
    let var_0 = select(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, 1u) << (reverseBits(23694u) % 32u), 17u)] <= func_2(_wgslsmith_f_op_f32(ceil(1513f)), Struct_4(37414i, Struct_2(vec3<bool>(true, true, true), u_input.d.xy, Struct_1(u_input.d.wyy, true, vec3<f32>(1013f, 602f, -292f), 766f)), u_input.d.x, Struct_1(vec3<i32>(5843i, u_input.d.x, global4.x), true, global0[_wgslsmith_index_u32(56852u, 8u)], -384f), false), u_input.a.wyz >> (u_input.a.zzw % vec3<u32>(32u))).b.x, !(!any(vec2<bool>(true, false)))), vec2<bool>(!select(all(vec2<bool>(true, false)), true, true), !(!all(vec2<bool>(false, false)))), vec2<bool>(true && func_2(-136f, Struct_4(global2[_wgslsmith_index_u32(arg_0, 17u)], Struct_2(vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(arg_0, 29u)], Struct_1(global4.xxz, true, vec3<f32>(-563f, -1987f, -571f), 340f)), global4.x, Struct_1(u_input.d.xzy, false, global0[_wgslsmith_index_u32(arg_0, 8u)], 1116f), false), u_input.a.wyx >> (vec3<u32>(80988u, arg_0, arg_0) % vec3<u32>(32u))).c.b, all(vec3<bool>(true, true, any(vec3<bool>(true, false, true))))));
    let var_1 = Struct_4(countOneBits(~(35946i >> (arg_0 % 32u))) >> (43147u % 32u), Struct_2(!select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, false, true), vec3<bool>(var_0.x, false, var_0.x)), vec3<bool>(false, var_0.x, true), var_0.x), (vec2<i32>(-1i, 17116i) >> (~u_input.b % vec2<u32>(32u))) << ((~vec2<u32>(1u, arg_0) ^ ~u_input.a.xx) % vec2<u32>(32u)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) + 1204f), Struct_4(-51843i, Struct_2(vec3<bool>(false, var_0.x, var_0.x), vec2<i32>(u_input.c, -2147483647i), Struct_1(global4.yww, var_0.x, global0[_wgslsmith_index_u32(1u, 8u)], -410f)), 2147483647i, func_2(-1622f, Struct_4(global4.x, Struct_2(vec3<bool>(false, false, var_0.x), vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), Struct_1(global4.xwz, var_0.x, vec3<f32>(1985f, 1014f, 651f), 1436f)), 1i, Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], 18891i, -14778i), var_0.x, global0[_wgslsmith_index_u32(0u, 8u)], -122f), var_0.x), vec3<u32>(u_input.b.x, arg_0, u_input.a.x)).c, true), vec3<u32>(45643u, u_input.a.x, ~49729u)).c), i32(-1i) * -(_wgslsmith_dot_vec4_i32(vec4<i32>(9506i, -38166i, global4.x, global4.x), vec4<i32>(u_input.c, 0i, u_input.c, u_input.d.x)) & _wgslsmith_div_i32(global4.x, 1i)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1629f))), Struct_4(~(~u_input.d.x), func_2(_wgslsmith_f_op_f32(ceil(-482f)), Struct_4(u_input.c, Struct_2(vec3<bool>(false, false, false), u_input.d.xw, Struct_1(global4.wxy, var_0.x, vec3<f32>(-255f, 1762f, -1642f), 485f)), global4.x, Struct_1(u_input.d.zyx, var_0.x, global0[_wgslsmith_index_u32(10445u, 8u)], 377f), var_0.x), vec3<u32>(u_input.b.x, u_input.a.x, 11697u)), global2[_wgslsmith_index_u32(arg_0, 17u)], Struct_1(-vec3<i32>(14326i, u_input.d.x, global4.x), var_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(544f, 126f, 305f) * global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), 902f), true), u_input.a.wzy).c, false);
    var var_2 = Struct_3(func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1957f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 1230f)), _wgslsmith_f_op_f32(ceil(var_1.b.c.c.x))), var_1.d.b)), var_1, countOneBits(_wgslsmith_mod_vec3_u32(u_input.a.zzz, ~vec3<u32>(u_input.b.x, arg_0, 1u)))).c, _wgslsmith_add_u32(u_input.b.x << (~(~arg_0) % 32u), ~max(0u, 4294967295u)), var_0.x);
    global1 = array<vec2<i32>, 29>();
    global0 = array<vec3<f32>, 8>();
    return func_2(-823f, Struct_4(~(~(-95i)), var_1.b, 2147483647i, var_2.a, false), abs(_wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(49672u, 0u, arg_0)), vec3<u32>(abs(var_2.b), ~4294967295u, firstLeadingBit(4294967295u)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    var var_0 = true;
    let var_1 = -33495i;
    global4 = u_input.d;
    var var_2 = arg_0;
    let var_3 = u_input.a.x;
    return Struct_3(func_3(_wgslsmith_div_u32(~u_input.b.x & var_3, _wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, u_input.a.x, var_3, var_3), vec4<u32>(var_3, u_input.b.x, 45026u, var_3)), u_input.a))).c, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.wzw & vec3<u32>(111856u, var_3, u_input.a.x), u_input.a.zww), u_input.a.zwy), 4294967295u), !var_2.d.b);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_4 {
    global2 = array<i32, 17>();
    let var_0 = arg_1.a.c.x;
    let var_1 = arg_1.a.c.zx;
    var var_2 = arg_1.b;
    var_2 = min(min(_wgslsmith_mult_u32(firstLeadingBit(0u), arg_0.x), ~4294967295u) | select(_wgslsmith_mod_u32(~arg_0.x, arg_0.x), ~4294967295u, all(!vec2<bool>(arg_1.c, arg_1.c))), 15317u);
    return Struct_4(-14600i, Struct_2(vec3<bool>(false, reverseBits(arg_0.x) != arg_0.x, true), vec2<i32>(-1i) * -(~u_input.d.zw), Struct_1(~(u_input.d.zxx ^ global4.wzw), false, arg_1.a.c, 1f)), _wgslsmith_add_i32(func_3(arg_0.x).b.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, -1i), -2147483647i)), func_4(Struct_4(global4.x, Struct_2(func_3(arg_0.x).a, _wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(0u, 29u)], vec2<i32>(-22412i, global4.x)), arg_1.a), (global2[_wgslsmith_index_u32(0u, 17u)] ^ -1i) << (u_input.b.x % 32u), arg_1.a, arg_1.a.b), func_2(_wgslsmith_f_op_f32(abs(func_3(u_input.b.x).c.c.x)), Struct_4(-global2[_wgslsmith_index_u32(41456u, 17u)], func_2(var_0, Struct_4(-2147483647i, Struct_2(vec3<bool>(true, false, arg_1.a.b), global1[_wgslsmith_index_u32(arg_0.x, 29u)], Struct_1(vec3<i32>(-1i, -1i, 0i), arg_1.a.b, global0[_wgslsmith_index_u32(15479u, 8u)], var_1.x)), 2147483647i, arg_1.a, true), vec3<u32>(arg_1.b, arg_0.x, 31544u)), arg_1.a.a.x, arg_1.a, !arg_1.c), _wgslsmith_add_vec3_u32(vec3<u32>(113715u, u_input.a.x, arg_1.b), arg_0.xzw)), arg_1.c).a, !(!arg_1.a.b | true) || all(select(vec2<bool>(false, false), vec2<bool>(arg_1.c, true), vec2<bool>(arg_1.a.b, true))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = func_5(vec4<u32>(1u, 10001u, 19676u, 1u | abs(_wgslsmith_div_u32(u_input.a.x, u_input.a.x))), func_4(Struct_4(global2[_wgslsmith_index_u32(11704u, 17u)], func_2(_wgslsmith_f_op_f32(1000f * 1028f), Struct_4(2147483647i, Struct_2(arg_0, vec2<i32>(global2[_wgslsmith_index_u32(1u, 17u)], 2147483647i), Struct_1(u_input.d.yxz, false, vec3<f32>(-245f, 528f, 463f), 1000f)), 23683i, Struct_1(vec3<i32>(global2[_wgslsmith_index_u32(10027u, 17u)], 12378i, global2[_wgslsmith_index_u32(1u, 17u)]), arg_0.x, global0[_wgslsmith_index_u32(67494u, 8u)], -1000f), true), ~u_input.a.wxy), arg_1.x, Struct_1(arg_1.xww, !arg_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, -173f, -2291f)), -1541f), !arg_0.x), func_3(27449u), arg_0.x));
    global1 = array<vec2<i32>, 29>();
    global3 = true || ((select(var_0.e, func_3(u_input.a.x).a.x, false || arg_0.x) && true) == (_wgslsmith_mod_i32(-65797i, func_2(var_0.b.c.d, var_0, u_input.a.wyy).c.a.x) <= ~var_0.d.a.x));
    let var_1 = !var_0.b.c.b;
    global2 = array<i32, 17>();
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 17>();
    global0 = array<vec3<f32>, 8>();
    let var_0 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, true))));
    let var_1 = Struct_3(func_1(!vec3<bool>(var_0.x, var_0.x, var_0.x), ~u_input.d), u_input.b.x, true || (reverseBits(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(u_input.b.x, 17u)])) > global4.x));
    let var_2 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -460f), vec2<i32>(func_4(Struct_4(-67361i, Struct_2(vec3<bool>(var_0.x, true, false), vec2<i32>(1i, var_1.a.a.x), Struct_1(u_input.d.zyz, var_0.x, var_1.a.c, 357f)), var_1.a.a.x, Struct_1(vec3<i32>(1i, -1i, 10527i), var_0.x, vec3<f32>(-1000f, 935f, 1567f), 1078f), true), func_3(var_2), true).a.a.x, firstLeadingBit(abs(var_1.a.a.x))) | -var_1.a.a.yx, var_2, _wgslsmith_mult_u32(var_1.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_1.b, var_2, 67137u, 0u)), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-666f, -166f)))))) + -1771f));
}

