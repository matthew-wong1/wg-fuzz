struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(53396u, 49393u, 1u, 0u, 4294967295u, 1u, 20956u, 50050u, 1u, 26275u, 0u, 25081u, 43534u, 1u, 4294967295u, 25668u, 4294967295u, 1u, 4294967295u, 1u, 57101u, 16089u, 20913u, 4294967295u, 4294967295u, 13822u);

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<u32>(4294967295u, 14678u, 1u, 0u), false), Struct_1(vec4<u32>(35759u, 1137u, 11454u, 4294967295u), true), Struct_1(vec4<u32>(1u, 41u, 12056u, 16706u), false), Struct_1(vec4<u32>(23178u, 0u, 0u, 1u), false), Struct_1(vec4<u32>(19515u, 4294967295u, 1u, 4351u), false), Struct_1(vec4<u32>(40087u, 1u, 2484u, 42291u), false), Struct_1(vec4<u32>(8350u, 0u, 0u, 42681u), true), Struct_1(vec4<u32>(37941u, 4294967295u, 46387u, 4294967295u), false), Struct_1(vec4<u32>(0u, 19415u, 32922u, 0u), false), Struct_1(vec4<u32>(22227u, 50903u, 0u, 4294967295u), true), Struct_1(vec4<u32>(74623u, 22510u, 1u, 36663u), false), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), false), Struct_1(vec4<u32>(21941u, 0u, 0u, 46314u), false), Struct_1(vec4<u32>(5771u, 16654u, 52969u, 0u), true), Struct_1(vec4<u32>(16383u, 9197u, 0u, 0u), false), Struct_1(vec4<u32>(44261u, 4294967295u, 4294967295u, 0u), false), Struct_1(vec4<u32>(59006u, 38575u, 4294967295u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 2264u, 18983u, 0u), true), Struct_1(vec4<u32>(4294967295u, 1u, 11851u, 4294967295u), true), Struct_1(vec4<u32>(1u, 20806u, 12243u, 0u), true), Struct_1(vec4<u32>(23035u, 1u, 50260u, 3170u), false), Struct_1(vec4<u32>(0u, 21237u, 39789u, 0u), false), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 28119u), false), Struct_1(vec4<u32>(0u, 0u, 1u, 20093u), true), Struct_1(vec4<u32>(0u, 41468u, 10783u, 0u), false), Struct_1(vec4<u32>(50855u, 54232u, 1u, 61909u), true), Struct_1(vec4<u32>(0u, 64201u, 1u, 75173u), true), Struct_1(vec4<u32>(28553u, 10415u, 36201u, 0u), true), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 1666u), true));

var<private> global2: f32 = -1017f;

var<private> global3: i32 = -27956i;

var<private> global4: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = Struct_2(Struct_1(select(u_input.b, u_input.b, any(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_3), arg_3))), !(false & all(vec3<bool>(arg_0, arg_3, arg_3)))));
    return !any(select(!(!vec3<bool>(true, arg_3, false)), !select(vec3<bool>(arg_0, arg_3, arg_3), vec3<bool>(false, arg_3, arg_0), arg_0), select(!vec3<bool>(var_0.a.b, arg_0, false), vec3<bool>(true, arg_3, true), !vec3<bool>(var_0.a.b, true, false))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: vec3<f32>) -> vec4<u32> {
    global1 = array<Struct_1, 29>();
    var var_0 = true;
    var var_1 = vec2<bool>(true, all(select(vec4<bool>(arg_2, arg_2, arg_0, true), vec4<bool>(true, arg_0, false, func_3(false, vec3<f32>(213f, arg_3.x, arg_3.x), vec4<i32>(2740i, 21613i, 1i, -3633i), true)), true)));
    var_0 = arg_0;
    var var_2 = global1[_wgslsmith_index_u32(arg_1, 29u)];
    return vec4<u32>(arg_1 | 0u, _wgslsmith_mult_u32(6257u, select(~_wgslsmith_dot_vec3_u32(vec3<u32>(13061u, var_2.a.x, 1u), u_input.b.xyz), min(var_2.a.x ^ global0[_wgslsmith_index_u32(arg_1, 26u)], 11388u), var_2.b)), arg_1, _wgslsmith_div_u32(~(~(4294967295u << (global0[_wgslsmith_index_u32(arg_1, 26u)] % 32u))), 47503u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = ~func_4(false, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1.c, arg_1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, u_input.c.x, 4294967295u, 90590u), arg_0.a.a)), !(arg_3 | func_3(arg_3, vec3<f32>(global4.x, global4.x, arg_1.d.x), vec4<i32>(17108i, -2147483647i, arg_1.b, 35581i), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, _wgslsmith_f_op_f32(339f * global4.x), _wgslsmith_f_op_f32(min(global4.x, arg_1.d.x)))));
    let var_1 = Struct_3(~(~(4294967295u | global0[_wgslsmith_index_u32(44956u, 26u)])), select(2147483647i, -1i, !((2085u >> (u_input.b.x % 32u)) >= ~1u)), _wgslsmith_mod_u32((~arg_1.a << (~1u % 32u)) ^ _wgslsmith_dot_vec3_u32(reverseBits(arg_0.a.a.wzx), arg_0.a.a.wwx), u_input.b.x), arg_1.d);
    global1 = array<Struct_1, 29>();
    let var_2 = global1[_wgslsmith_index_u32(~var_0.x, 29u)];
    global3 = _wgslsmith_add_i32(1i, 7882i);
    return var_2.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec2<f32> {
    var var_0 = global4.xww;
    var var_1 = Struct_5(abs(countOneBits(4294967295u)), Struct_4(global4.x, Struct_3(reverseBits(~21843u), firstLeadingBit(53073i << (arg_0.a.x % 32u)), arg_1.a.x, vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 411f), _wgslsmith_f_op_f32(-var_0.x), 318f, 786f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2138f + var_0.x), _wgslsmith_f_op_f32(-var_0.x)) - vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = Struct_3(1u, min(~(-_wgslsmith_add_i32(var_1.b.b.b, var_1.b.b.b)), _wgslsmith_sub_i32(-firstLeadingBit(var_1.b.b.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.b.b.b, var_1.b.b.b, var_1.b.b.b, 0i), abs(vec4<i32>(var_1.b.b.b, 1i, var_1.b.b.b, 1i))))), 1u >> (u_input.a % 32u), var_1.b.b.d);
    let var_3 = vec3<f32>(-855f, 101f, _wgslsmith_f_op_f32(max(var_1.b.b.d.x, _wgslsmith_div_f32(var_0.x, var_0.x))));
    let var_4 = var_3.x;
    return vec2<f32>(global4.x, 451f);
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_5(arg_2.a.a.x, Struct_4(_wgslsmith_f_op_f32(select(1f, -545f, any(vec3<bool>(arg_2.a.b, arg_2.a.b, false)))), Struct_3(~global0[_wgslsmith_index_u32(arg_2.a.a.x, 26u)], 2147483647i, arg_2.a.a.x, vec4<f32>(-259f, -1000f, _wgslsmith_f_op_f32(arg_1.x - arg_0), _wgslsmith_f_op_f32(sign(arg_1.x)))), _wgslsmith_f_op_vec2_f32(round(global4.zx))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(select(arg_2.a.a, arg_2.a.a, arg_2.a.b), ~u_input.b, _wgslsmith_mod_vec4_u32(arg_2.a.a, arg_2.a.a)), vec4<u32>(1u, _wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_mult_u32(1u, u_input.c.x), 1u), _wgslsmith_sub_vec4_u32(firstTrailingBit(arg_2.a.a), arg_2.a.a)), select(arg_2.a.b, false, countOneBits(875u) > var_0.b.b.c)));
    global4 = _wgslsmith_f_op_vec4_f32(var_0.b.b.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(arg_1.x + -940f)), _wgslsmith_f_op_f32(select(-1042f, 1000f, true)), global4.x, -1002f)));
    let var_2 = Struct_5(func_2(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, arg_2.a.a.x), 29u)]), var_0.b.b, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(var_0.b.b.b, 7141i)), select(~7947i, -25404i, true)), all(!select(vec4<bool>(var_1.a.b, true, arg_2.a.b, false), vec4<bool>(true, true, false, true), vec4<bool>(arg_2.a.b, true, true, true)))), Struct_4(_wgslsmith_f_op_f32(arg_0 - -1103f), Struct_3(_wgslsmith_clamp_u32(var_1.a.a.x, var_1.a.a.x, u_input.c.x), ~_wgslsmith_clamp_i32(var_0.b.b.b, var_0.b.b.b, var_0.b.b.b), 0u, var_0.b.b.d), arg_1));
    let var_3 = Struct_2(Struct_1(select(select(~vec4<u32>(0u, 56386u, var_2.b.b.a, 4294967295u), ~u_input.b, vec4<bool>(var_1.a.b, var_1.a.b, var_1.a.b, true)), var_1.a.a, true), false));
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_1() -> vec4<bool> {
    var var_0 = abs(firstTrailingBit(select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(36033i, 1i, 4859i), vec3<i32>(-13242i, -12435i, 0i)), 1i), -vec2<i32>(0i, 2053i), true)));
    let var_1 = ~85606u;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_6(-915f, _wgslsmith_f_op_vec2_f32(func_5(Struct_1(u_input.b, true), global1[_wgslsmith_index_u32(func_2(Struct_2(global1[_wgslsmith_index_u32(var_1, 29u)]), Struct_3(51214u, 8580i, 11640u, vec4<f32>(126f, global4.x, 537f, global4.x)), var_0.x, false), 29u)], vec2<bool>(true, true), vec2<bool>(true, false))), Struct_2(global1[_wgslsmith_index_u32(func_2(Struct_2(global1[_wgslsmith_index_u32(67370u, 29u)]), Struct_3(26554u, -1i, u_input.c.x, vec4<f32>(755f, 2645f, global4.x, 1000f)), var_0.x, true), 29u)]))), _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(trunc(-1808f))), global4.wy, Struct_2(Struct_1(u_input.b, true)))))) + -446f);
    global0 = array<u32, 26>();
    var var_2 = -1851f;
    return vec4<bool>(true, any(vec2<bool>(true, true)), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(), func_1(), select(!vec4<bool>(true, true, 0u != u_input.b.x, false), select(vec4<bool>(true, func_3(false, global4.ywy, vec4<i32>(2147483647i, 14424i, -22692i, 0i), false), true, false), vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, false, true)), true, false, true)), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(global4.zwx - vec3<f32>(global4.x, -1294f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1246f) - _wgslsmith_f_op_f32(global4.x + global4.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global4.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min((min(vec2<u32>(u_input.c.x, 1u), u_input.b.wx) ^ max(vec2<u32>(u_input.b.x, 1u), u_input.c)) >> ((_wgslsmith_div_vec2_u32(u_input.b.xw, u_input.c) >> (max(vec2<u32>(u_input.b.x, 0u), u_input.b.ww) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~u_input.b.zz) ^ abs(u_input.c >> (vec2<u32>(global0[_wgslsmith_index_u32(98492u, 26u)], 26832u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), u_input.c.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-961f)))) * global4.x) - _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(func_5(global1[_wgslsmith_index_u32(40644u, 29u)], global1[_wgslsmith_index_u32(61947u, 29u)], var_0.wz, var_0.xy)).x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-734f, 507f) - var_1.yy), Struct_2(global1[_wgslsmith_index_u32(0u, 29u)])))))));
}

