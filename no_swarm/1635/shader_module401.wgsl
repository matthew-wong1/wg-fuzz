struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, true, false, false, false, true, true);

var<private> global1: Struct_1 = Struct_1(-1630f, vec2<u32>(15571u, 16988u), vec3<u32>(94959u, 0u, 34388u));

var<private> global2: array<f32, 3>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(132f, vec2<u32>(4294967295u, 19287u), vec3<u32>(4294967295u, 41163u, 86454u)), Struct_1(-1169f, vec2<u32>(10467u, 4294967295u), vec3<u32>(59762u, 36200u, 20214u)), Struct_1(-1785f, vec2<u32>(12711u, 36139u), vec3<u32>(4254u, 1u, 0u)), Struct_1(2726f, vec2<u32>(35583u, 0u), vec3<u32>(2611u, 4294967295u, 1u)), Struct_1(-630f, vec2<u32>(70194u, 4294967295u), vec3<u32>(0u, 14598u, 0u)), Struct_1(399f, vec2<u32>(4294967295u, 0u), vec3<u32>(1u, 31656u, 4294967295u)), Struct_1(-210f, vec2<u32>(0u, 4294967295u), vec3<u32>(0u, 0u, 52260u)), Struct_1(256f, vec2<u32>(1u, 29145u), vec3<u32>(879u, 19621u, 1u)), Struct_1(-1228f, vec2<u32>(3719u, 0u), vec3<u32>(28115u, 96437u, 15030u)), Struct_1(873f, vec2<u32>(0u, 8594u), vec3<u32>(23705u, 55791u, 35193u)), Struct_1(-875f, vec2<u32>(0u, 1u), vec3<u32>(71291u, 54140u, 0u)), Struct_1(982f, vec2<u32>(0u, 31487u), vec3<u32>(92085u, 84575u, 4294967295u)), Struct_1(-1618f, vec2<u32>(119220u, 25111u), vec3<u32>(44046u, 13793u, 72398u)), Struct_1(-1235f, vec2<u32>(11240u, 1u), vec3<u32>(124878u, 1u, 62113u)), Struct_1(-1385f, vec2<u32>(6983u, 120455u), vec3<u32>(1u, 4294967295u, 107733u)), Struct_1(-1613f, vec2<u32>(7050u, 32955u), vec3<u32>(51967u, 4294967295u, 0u)), Struct_1(-731f, vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(-685f, vec2<u32>(5500u, 1u), vec3<u32>(0u, 4294967295u, 130748u)), Struct_1(656f, vec2<u32>(4294967295u, 29762u), vec3<u32>(17522u, 4768u, 4294967295u)), Struct_1(459f, vec2<u32>(28714u, 0u), vec3<u32>(1u, 0u, 1u)), Struct_1(1324f, vec2<u32>(5563u, 59305u), vec3<u32>(12092u, 4294967295u, 87319u)), Struct_1(1469f, vec2<u32>(69275u, 4294967295u), vec3<u32>(43070u, 60769u, 0u)), Struct_1(-1000f, vec2<u32>(4294967295u, 0u), vec3<u32>(52218u, 4669u, 4294967295u)), Struct_1(-1828f, vec2<u32>(0u, 50581u), vec3<u32>(59493u, 15923u, 4294967295u)), Struct_1(-623f, vec2<u32>(0u, 82500u), vec3<u32>(75772u, 0u, 0u)), Struct_1(-895f, vec2<u32>(79353u, 28782u), vec3<u32>(4294967295u, 1u, 11911u)), Struct_1(789f, vec2<u32>(1u, 1u), vec3<u32>(0u, 54284u, 23982u)));

var<private> global4: Struct_1 = Struct_1(-1000f, vec2<u32>(1u, 0u), vec3<u32>(18341u, 1u, 75745u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(552f, global2[_wgslsmith_index_u32(26356u, 3u)], -559f, 1125f), vec4<f32>(global2[_wgslsmith_index_u32(15750u, 3u)], 1625f, -1122f, -909f)))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1185f, global1.a, -716f, 1253f))) - vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(round(248f)), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(global1.a - 840f))))));
    var var_1 = -1000f;
    let var_2 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-604f, -1271f) + _wgslsmith_f_op_f32(f32(-1f) * -1144f)) >= global2[_wgslsmith_index_u32(34974u >> (global1.c.x % 32u), 3u)]), arg_0);
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(-(max(1i, u_input.c.x) >> (62814u % 32u)), u_input.a), abs(firstTrailingBit(u_input.c.xz)));
    global0 = array<bool, 8>();
    return var_0.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = -vec4<i32>(u_input.b.x, -((u_input.c.x >> (4294967295u % 32u)) >> (global4.c.x % 32u)), _wgslsmith_dot_vec4_i32(-min(vec4<i32>(-40365i, u_input.d, u_input.a, u_input.a), u_input.b), vec4<i32>(select(u_input.d, 5372i, false), 1i, 19032i, 1i)), firstTrailingBit(u_input.a));
    let var_1 = ~(~_wgslsmith_clamp_u32(88364u, 0u >> (global4.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(50913u, 0u), arg_2.c.xz)) ^ firstLeadingBit(arg_1.b.x));
    global3 = array<Struct_1, 27>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(638f, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~global1.b.x, 8u)]))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-global1.a), global2[_wgslsmith_index_u32(arg_1.c.x, 3u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(var_1, 3u)], global2[_wgslsmith_index_u32(0u, 3u)])), vec2<f32>(125f, arg_1.a), arg_0)))), vec2<f32>(2083f, arg_1.a))));
    var var_3 = var_1;
    return arg_1.c.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    var var_0 = abs(~(~(vec4<u32>(arg_0, 73893u, 32781u, 1u) | vec4<u32>(33751u, arg_0, global4.b.x, arg_1.c.x))));
    let var_1 = -1i;
    global0 = array<bool, 8>();
    var var_2 = u_input.b;
    return ~global1.b.x;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = any(!vec3<bool>(global0[_wgslsmith_index_u32(abs(1u), 8u)], true, true & global0[_wgslsmith_index_u32(global1.c.x, 8u)])) & all(vec3<bool>(false, global0[_wgslsmith_index_u32(~select(1u, 1u, true), 8u)], false));
    let var_1 = 34484i;
    global0 = array<bool, 8>();
    global1 = global3[_wgslsmith_index_u32(func_4(_wgslsmith_div_u32(1u >> (max(func_2(vec2<bool>(false, true), Struct_1(-1000f, global1.b, vec3<u32>(global1.c.x, global1.b.x, 29091u)), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 3u)], vec2<u32>(21706u, 4794u), vec3<u32>(global4.b.x, global4.b.x, 74015u))), _wgslsmith_add_u32(22529u, 0u)) % 32u), func_2(vec2<bool>(all(vec3<bool>(false, var_0, var_0)), 707f >= global1.a), global3[_wgslsmith_index_u32(firstTrailingBit(~global4.c.x), 27u)], global3[_wgslsmith_index_u32(global4.b.x, 27u)])), global3[_wgslsmith_index_u32(global4.b.x, 27u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a == global2[_wgslsmith_index_u32(0u, 3u)]))), global1.b, ~vec3<u32>(global4.c.x, ~global1.c.x, ~global4.b.x)), u_input.c.xx), 27u)];
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.b.x, global1.b.x), 27u)];
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -1000f))) - global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_1(vec3<i32>(21462i, u_input.e, -1i)), func_4(25891u, global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(4294967295u, 27u)], u_input.c.yx)), 3u)]), ~vec2<u32>(~_wgslsmith_mod_u32(4294967295u, 7908u), max(0u, 4294967295u | global1.c.x)), global4.c);
    global3 = array<Struct_1, 27>();
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.c.x, firstTrailingBit(abs(4294967295u))), 27u)];
    global1 = Struct_1(1530f, global4.c.yz, select(vec3<u32>(func_2(!vec2<bool>(true, global0[_wgslsmith_index_u32(22957u, 8u)]), Struct_1(-1000f, vec2<u32>(1u, 1u), vec3<u32>(4986u, 108968u, 0u)), var_0), reverseBits(~var_0.c.x), global4.b.x << (1u % 32u)), global1.c, vec3<bool>(global2[_wgslsmith_index_u32(1u, 3u)] >= _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(42426u, 3u)], 474f)), any(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(1112u, 8u)], true), global0[_wgslsmith_index_u32(1u, 8u)])), true)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(32324u, _wgslsmith_mult_u32(global4.c.x, 0u)), 3u)] + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4.c.x, 3u)] * 267f)))));
    global3 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -343f))), u_input.d, var_0.c.x, global4.b.x >> (~countOneBits(~0u) % 32u), _wgslsmith_mult_vec3_u32(abs(select(abs(global1.c), vec3<u32>(global4.c.x, 13072u, 4294967295u), global0[_wgslsmith_index_u32(global4.b.x, 8u)])), countOneBits(vec3<u32>(var_0.c.x, 4294967295u, global1.c.x) >> (~vec3<u32>(0u, global1.b.x, 1647u) % vec3<u32>(32u)))));
}

