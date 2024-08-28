struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(-311f, -16580i, vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<f32>(-818f, -225f, 723f)), vec3<i32>(i32(-2147483648), 0i, -1i), Struct_1(-2161f, -1i, vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<f32>(971f, 454f, -524f))), Struct_2(Struct_1(-436f, -23792i, vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<f32>(2926f, 448f, 1523f)), vec3<i32>(i32(-2147483648), -36494i, 49949i), Struct_1(-217f, i32(-2147483648), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<f32>(-1000f, 700f, 413f))), Struct_2(Struct_1(282f, -13045i, vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<f32>(-1000f, -480f, 1048f)), vec3<i32>(2147483647i, i32(-2147483648), 25524i), Struct_1(-475f, i32(-2147483648), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<f32>(-1951f, -105f, -1000f))), Struct_2(Struct_1(1193f, 25833i, vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<f32>(1000f, 275f, 392f)), vec3<i32>(0i, i32(-2147483648), 19269i), Struct_1(-1329f, 27229i, vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<f32>(884f, -1515f, 209f))), Struct_2(Struct_1(1093f, i32(-2147483648), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<f32>(-2722f, 1670f, 184f)), vec3<i32>(17818i, i32(-2147483648), 1i), Struct_1(1911f, -7812i, vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<f32>(1134f, 494f, 395f))));

var<private> global3: vec3<f32> = vec3<f32>(-449f, 2560f, -144f);

var<private> global4: array<vec3<i32>, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = Struct_5(reverseBits(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_0.c, vec4<i32>(-8047i, arg_2.c.b, 35990i, 2147483647i)), 0i)), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.a, 1755f, global3.x) * vec3<f32>(-107f, -1239f, 352f)), vec3<f32>(arg_2.c.a, -334f, arg_0.b), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, 269f, -320f), arg_0.a.e))))), firstLeadingBit(vec4<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(40758u, u_input.a), 16957u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(11568u, 18310u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~u_input.a & ~u_input.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(~var_0.d.x, 22u)], _wgslsmith_f_op_vec3_f32(-arg_2.a.e))) * arg_2.c.e))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a)), arg_2.c.a, _wgslsmith_f_op_f32(f32(-1f) * -1514f)), arg_0.a.e));
    let var_2 = Struct_2(Struct_1(-1051f, arg_1, !(!arg_0.a.d), !arg_0.a.d, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-601f)), _wgslsmith_f_op_f32(-arg_0.b), arg_0.a.e.x), arg_2.c.e)), min(vec3<i32>(-abs(-1i), -arg_2.c.b, arg_2.c.b), -min(-arg_0.c.ywz, -vec3<i32>(arg_1, 0i, arg_0.a.b))), arg_0.a);
    var_0 = Struct_5(-8616i, arg_2.a.c.x, vec3<f32>(_wgslsmith_f_op_f32(min(627f, _wgslsmith_div_f32(var_2.a.e.x, 1380f))), _wgslsmith_f_op_f32(arg_2.c.e.x - 1000f), var_1.x), var_0.d);
    global1 = select(-2147483647i, 19983i, false);
    return arg_2.c.d;
}

fn func_2(arg_0: Struct_5, arg_1: i32) -> i32 {
    let var_0 = Struct_2(Struct_1(443f, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(10314i, arg_1, 2147483647i, 0i)), -(~vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), select(vec3<bool>(arg_0.b, true, false), vec3<bool>(arg_0.b, true, -1887f >= global3.x), select(!vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(arg_0.b, false, false), arg_0.a != arg_0.a)), select(select(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b), select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(false, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, false)), -11342i == arg_0.a), vec3<bool>(select(arg_0.b, arg_0.b, arg_0.b), all(vec4<bool>(false, arg_0.b, true, false)), arg_0.b), !(!vec3<bool>(arg_0.b, true, false))), _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(arg_0.d.x, 22u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 324f, arg_0.c.x)), vec3<bool>(false | arg_0.b, arg_0.b, true)))), global4[_wgslsmith_index_u32(u_input.a, 12u)], Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-arg_0.c.x)))), arg_1, vec3<bool>(false, arg_0.b, true), select(select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(true, true, true)), vec3<bool>(!arg_0.b, true, true), func_3(Struct_4(Struct_1(-668f, -26230i, vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, false), vec3<f32>(360f, 634f, -590f)), -2231f, vec4<i32>(arg_1, 0i, arg_0.a, arg_0.a)), arg_0.a, Struct_2(Struct_1(global3.x, 64960i, vec3<bool>(true, false, true), vec3<bool>(arg_0.b, true, arg_0.b), global0[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<i32>(0i, arg_0.a, arg_0.a), Struct_1(arg_0.c.x, 16768i, vec3<bool>(true, false, true), vec3<bool>(arg_0.b, arg_0.b, true), vec3<f32>(-1892f, -460f, 582f))))), _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d.x, u_input.a), vec2<u32>(arg_0.d.x, 0u)), 22u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 22u)]))))));
    return -arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(201f, _wgslsmith_div_f32(global3.x, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-936f, -220f)) - _wgslsmith_f_op_f32(trunc(-529f))))), _wgslsmith_f_op_f32(floor(global3.x))), -(_wgslsmith_mod_i32(-19548i, 1i) & func_2(Struct_5(-1i, false, global0[_wgslsmith_index_u32(1u, 22u)], vec4<u32>(u_input.a, 32626u, u_input.a, u_input.a)), -1i)), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, !any(vec2<bool>(true, true))), select(vec3<bool>(any(vec2<bool>(true, false)), !(62581u > u_input.a), select(false, false, false) | true), !vec3<bool>(all(vec2<bool>(false, true)), true, true), true != all(vec3<bool>(false, true, true))), global0[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(28765u, u_input.a, u_input.a), vec3<u32>(8287u, u_input.a, u_input.a)), vec3<u32>(15228u, 4294967295u, 61630u)), 44423u), ~(~4294967295u)), 22u)]);
    let var_1 = Struct_5(1i, var_0.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 22u)]))))), vec4<u32>(u_input.a, u_input.a, _wgslsmith_div_u32(52722u, u_input.a) << (max(58369u, _wgslsmith_sub_u32(u_input.a, u_input.a)) % 32u), u_input.a));
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.d.x, ~var_1.d.x), 22u)];
    var_0 = Struct_1(665f, -2147483647i, func_3(Struct_4(Struct_1(-171f, ~0i, select(vec3<bool>(true, var_0.d.x, false), vec3<bool>(var_0.c.x, var_1.b, var_0.c.x), vec3<bool>(true, true, false)), vec3<bool>(false, true, var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global3.x, global3.x) * vec3<f32>(2522f, -1000f, global3.x))), 2363f, vec4<i32>(-2147483647i, 0i, 19318i, -2147483647i)), _wgslsmith_sub_i32(min(_wgslsmith_mult_i32(-8672i, var_1.a), _wgslsmith_dot_vec2_i32(vec2<i32>(11120i, -1i), vec2<i32>(var_1.a, var_1.a))), 1i), global2[_wgslsmith_index_u32(53603u, 5u)]), func_3(Struct_4(Struct_1(_wgslsmith_f_op_f32(var_0.a - global3.x), -15551i, vec3<bool>(false, true, var_1.b), vec3<bool>(false, false, var_0.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(219f, var_1.c.x, 790f))), -754f, firstLeadingBit(reverseBits(vec4<i32>(1i, var_1.a, -11021i, 73785i)))), var_1.a, global2[_wgslsmith_index_u32(1u, 5u)]), vec3<f32>(-331f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2867f - -169f) - var_1.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_div_f32(global3.x, 512f), func_3(Struct_4(Struct_1(var_1.c.x, var_1.a, vec3<bool>(var_1.b, false, true), var_0.d, vec3<f32>(382f, var_0.e.x, -379f)), var_0.e.x, vec4<i32>(var_0.b, var_1.a, -1i, var_1.a)), var_1.a, global2[_wgslsmith_index_u32(34075u, 5u)]).x)))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(min(464f, -954f)), _wgslsmith_div_f32(var_0.a, global3.x));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.x))))))), 22215i, !(!var_0.d), var_0.d, vec3<f32>(_wgslsmith_f_op_f32(ceil(173f)), _wgslsmith_f_op_f32(round(271f)), var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<i32>, 12>();
    global0 = array<vec3<f32>, 22>();
    var var_0 = Struct_3(-678f, func_1(), func_1(), func_1());
    let var_1 = var_0.b.c.x;
    global4 = array<vec3<i32>, 12>();
    global1 = -(i32(-1i) * -1i);
    var var_2 = Struct_5(1i, all(!(!select(vec4<bool>(var_0.c.d.x, var_0.c.d.x, true, var_0.d.d.x), vec4<bool>(true, var_0.d.d.x, var_0.d.c.x, var_0.b.c.x), true))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1869f - -1176f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-global3.x))))), ~select(vec4<u32>(1u, u_input.a, 3456u, 0u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), false) | ~countOneBits(select(vec4<u32>(u_input.a, 0u, u_input.a, 103885u), vec4<u32>(u_input.a, u_input.a, 5644u, u_input.a), vec4<bool>(true, var_0.d.d.x, var_0.c.c.x, true))));
    var_2 = Struct_5(abs(~func_1().b), var_0.d.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c.e, _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(40339u, 22u)]))))), ~(vec4<u32>(14841u, var_2.d.x, 1u, ~var_2.d.x) >> (_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(4895u, u_input.a, var_2.d.x, u_input.a)), vec4<u32>(45093u, var_2.d.x, u_input.a, u_input.a)) % vec4<u32>(32u))));
    global0 = array<vec3<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.b.e.zy));
}

