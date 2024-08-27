struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(74502u, Struct_1(vec4<u32>(4294967295u, 1u, 0u, 59370u), vec2<u32>(1u, 38486u), vec2<bool>(true, true), vec2<u32>(48819u, 1u)), -351f, vec2<bool>(true, false), false);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(1u, 1u, 37252u, 1u), vec2<u32>(1u, 1u), vec2<bool>(true, true), vec2<u32>(41984u, 7060u));

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(1u, Struct_1(vec4<u32>(1u, 68858u, 4294967295u, 4294967295u), vec2<u32>(33617u, 1u), vec2<bool>(false, false), vec2<u32>(109187u, 0u)), -593f, vec2<bool>(false, true), false), Struct_2(1u, Struct_1(vec4<u32>(43917u, 113448u, 4294967295u, 20406u), vec2<u32>(1u, 37207u), vec2<bool>(false, true), vec2<u32>(2707u, 13784u)), -602f, vec2<bool>(false, true), true), Struct_2(335u, Struct_1(vec4<u32>(0u, 4294967295u, 50752u, 1u), vec2<u32>(4294967295u, 12415u), vec2<bool>(true, false), vec2<u32>(4897u, 4220u)), 328f, vec2<bool>(true, false), true), Struct_2(41053u, Struct_1(vec4<u32>(0u, 8547u, 4294967295u, 40078u), vec2<u32>(0u, 21268u), vec2<bool>(true, false), vec2<u32>(4294967295u, 31776u)), 1284f, vec2<bool>(false, false), false), Struct_2(11892u, Struct_1(vec4<u32>(59753u, 4294967295u, 56852u, 3908u), vec2<u32>(38366u, 98391u), vec2<bool>(false, false), vec2<u32>(4294967295u, 0u)), 1000f, vec2<bool>(true, false), false), Struct_2(4294967295u, Struct_1(vec4<u32>(22518u, 0u, 4294967295u, 56467u), vec2<u32>(44315u, 38966u), vec2<bool>(false, false), vec2<u32>(88580u, 4294967295u)), -1475f, vec2<bool>(false, false), false), Struct_2(0u, Struct_1(vec4<u32>(1227u, 8091u, 100431u, 8738u), vec2<u32>(0u, 24280u), vec2<bool>(false, true), vec2<u32>(37200u, 11968u)), 647f, vec2<bool>(true, false), true), Struct_2(0u, Struct_1(vec4<u32>(59341u, 0u, 61341u, 104554u), vec2<u32>(4294967295u, 47121u), vec2<bool>(false, true), vec2<u32>(1u, 76676u)), -2391f, vec2<bool>(true, false), true), Struct_2(11488u, Struct_1(vec4<u32>(1u, 166377u, 7253u, 16392u), vec2<u32>(0u, 39107u), vec2<bool>(true, true), vec2<u32>(36613u, 4294967295u)), -1740f, vec2<bool>(true, false), false), Struct_2(4294967295u, Struct_1(vec4<u32>(11417u, 4294967295u, 315u, 4294967295u), vec2<u32>(4294967295u, 53644u), vec2<bool>(false, true), vec2<u32>(1u, 1u)), -1584f, vec2<bool>(false, true), false), Struct_2(741u, Struct_1(vec4<u32>(57537u, 0u, 11112u, 10492u), vec2<u32>(0u, 8006u), vec2<bool>(false, true), vec2<u32>(31594u, 53154u)), 431f, vec2<bool>(false, true), true), Struct_2(1u, Struct_1(vec4<u32>(23794u, 39637u, 46113u, 1u), vec2<u32>(55077u, 4294967295u), vec2<bool>(false, false), vec2<u32>(125063u, 66061u)), 1413f, vec2<bool>(false, true), false), Struct_2(4294967295u, Struct_1(vec4<u32>(55865u, 1u, 1u, 1873u), vec2<u32>(59462u, 53526u), vec2<bool>(false, false), vec2<u32>(0u, 4294967295u)), 1000f, vec2<bool>(true, false), false), Struct_2(4294967295u, Struct_1(vec4<u32>(51653u, 0u, 4294967295u, 19864u), vec2<u32>(0u, 4830u), vec2<bool>(false, false), vec2<u32>(0u, 70534u)), -1246f, vec2<bool>(false, true), false), Struct_2(0u, Struct_1(vec4<u32>(1u, 0u, 1u, 0u), vec2<u32>(37385u, 18904u), vec2<bool>(false, true), vec2<u32>(27500u, 504u)), -1177f, vec2<bool>(true, true), true), Struct_2(1u, Struct_1(vec4<u32>(739u, 7706u, 21365u, 19603u), vec2<u32>(1u, 103170u), vec2<bool>(false, false), vec2<u32>(0u, 4294967295u)), 571f, vec2<bool>(true, true), true), Struct_2(27377u, Struct_1(vec4<u32>(17043u, 0u, 0u, 82210u), vec2<u32>(95626u, 0u), vec2<bool>(false, false), vec2<u32>(0u, 57390u)), -856f, vec2<bool>(true, false), false), Struct_2(0u, Struct_1(vec4<u32>(4294967295u, 0u, 1u, 9548u), vec2<u32>(18622u, 15931u), vec2<bool>(true, true), vec2<u32>(64825u, 52966u)), -734f, vec2<bool>(true, false), true));

var<private> global4: array<vec3<bool>, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global1.b.a.x), ~vec3<u32>(global2.b.x, 1u, 0u)), arg_1.x ^ ~(~1u), global1.b.a.x, 71345u), ~u_input.c, !(!(!(!global1.d))), countOneBits(arg_1.yx));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1668f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-128f, -181f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c), -872f, global2.c.x)))));
    let var_2 = ~var_0.a;
    global2 = global1.b;
    let var_3 = vec3<bool>(!any(select(vec2<bool>(true, true), select(var_0.c, var_0.c, vec2<bool>(global2.c.x, global1.b.c.x)), true)), false, var_0.c.x);
    return ~firstLeadingBit(global1.b.b.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(abs(firstLeadingBit(vec4<u32>(21090u, countOneBits(u_input.c.x), 14412u, ~30470u))), global2.d, !(!global1.b.c), ~global2.d);
    let var_1 = all(!(!global4[_wgslsmith_index_u32(countOneBits(func_3(u_input.b, vec3<u32>(1u, 15539u, 93573u))), 22u)]));
    let var_2 = Struct_3(var_0.a, var_0, u_input.a, Struct_1(vec4<u32>(0u, _wgslsmith_add_u32(global1.b.d.x | 4054u, var_0.b.x), 4294967295u, _wgslsmith_dot_vec2_u32(var_0.b, var_0.d) & _wgslsmith_add_u32(global2.d.x, global1.a)), firstLeadingBit(var_0.d), select(select(var_0.c, global2.c, !var_1), global1.b.c, !global1.d.x), global1.b.b));
    global2 = global1.b;
    return u_input.b.x;
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = -_wgslsmith_div_i32(~(u_input.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-20039i, -2147483647i, -27398i, u_input.b.x), vec4<i32>(49123i, u_input.b.x, -2147483647i, u_input.b.x))), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(u_input.b.x, -1i), max(-2147483647i, func_2())));
    let var_1 = _wgslsmith_sub_i32(~_wgslsmith_sub_i32(-u_input.b.x, u_input.b.x), var_0);
    let var_2 = arg_0;
    global0 = false;
    let var_3 = all(select(vec3<bool>(var_2.d.c.x, false, global2.c.x), select(global4[_wgslsmith_index_u32(1u, 22u)], select(select(vec3<bool>(true, true, arg_0.d.c.x), vec3<bool>(arg_0.b.c.x, true, global2.c.x), true), global4[_wgslsmith_index_u32(u_input.c.x, 22u)], true), global4[_wgslsmith_index_u32(~1u, 22u)]), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(select(228u, 4294967295u, var_2.b.c.x)), 4294967295u), 22u)]));
    return _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -174f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(global1.b.a, Struct_1(vec4<u32>(global2.a.x, global2.d.x, 71924u, 9526u), u_input.c, global2.c, vec2<u32>(1u, global1.b.a.x)), 0u, Struct_1(vec4<u32>(global2.b.x, global1.b.d.x, 27988u, global2.b.x), vec2<u32>(14967u, global2.a.x), global1.d, vec2<u32>(global1.a, 0u))))))), _wgslsmith_div_vec3_u32(abs((vec3<u32>(u_input.a, u_input.c.x, global1.b.a.x) >> (global2.a.yyx % vec3<u32>(32u))) << ((global1.b.a.xwx | global1.b.a.wxw) % vec3<u32>(32u))), min(vec3<u32>(6623u, 1u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 5848u, 0u), global1.b.a.ywx)) | (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, global2.b.x, 21638u), vec3<u32>(global1.a, global1.a, global2.a.x)) << (global1.b.a.yyz % vec3<u32>(32u)))));
}

