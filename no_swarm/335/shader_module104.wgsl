struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(6867i, 2147483647i, i32(-2147483648))), Struct_1(vec3<i32>(36067i, i32(-2147483648), 1i)), Struct_1(vec3<i32>(41435i, i32(-2147483648), 14582i)), Struct_1(vec3<i32>(-2368i, 31532i, -1i)));

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global3: array<f32, 20> = array<f32, 20>(-832f, 269f, -1492f, 505f, -1000f, 1000f, 374f, 156f, -762f, -489f, -1000f, 964f, -1448f, 169f, -777f, -1222f, -2121f, 526f, 950f, 892f);

var<private> global4: array<bool, 29> = array<bool, 29>(false, false, true, true, false, false, false, false, true, false, false, true, true, false, false, false, true, true, false, false, true, false, true, false, true, true, false, true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<bool>) -> u32 {
    var var_0 = ~arg_1.a.x;
    let var_1 = arg_0.x;
    var_0 = -arg_2.x;
    var var_2 = arg_1;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 20u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2299f) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1, 20u)]))), -503f, 1466f, 1227f);
    return ~(~(~1u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = 38703i << (_wgslsmith_mult_u32(~1u, u_input.b) % 32u);
    let var_1 = -(~(~select(firstLeadingBit(vec3<i32>(arg_1.a.x, -2147483647i, 1i)), _wgslsmith_div_vec3_i32(arg_0.a, arg_0.a), true)));
    var var_2 = ~vec3<u32>(~(59528u | max(u_input.a.x, 46836u)), 29502u, 4294967295u);
    let var_3 = ~(-_wgslsmith_clamp_vec3_i32(countOneBits(~arg_1.a), -vec3<i32>(arg_0.a.x, arg_1.a.x, arg_1.a.x) << ((vec3<u32>(u_input.b, 0u, 0u) & vec3<u32>(43575u, var_2.x, 5141u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-21332i, 35608i, -35214i), vec3<i32>(arg_1.a.x, -23295i, arg_0.a.x)), var_1)));
    var var_4 = Struct_1(~(~(~(~var_3))));
    return ~var_2.x;
}

fn func_2() -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~func_4(global1[_wgslsmith_index_u32(func_3(firstLeadingBit(_wgslsmith_add_vec4_u32(u_input.a, u_input.a)), Struct_1(-vec3<i32>(-2147483647i, 76877i, -32738i)), select(select(vec2<i32>(-2147483647i, -52541i), vec2<i32>(0i, -2147483647i), global2.yx), vec2<i32>(-51342i, 43310i), all(global2.ww)), vec3<bool>(global4[_wgslsmith_index_u32(1u, 29u)], true, any(vec2<bool>(false, false)))), 5u)], global1[_wgslsmith_index_u32(69241u, 5u)]), 5u)];
    let var_1 = 2147483647i << (u_input.a.x % 32u);
    var var_2 = 140287u;
    global1 = array<Struct_1, 5>();
    var var_3 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.a.x) | countOneBits(u_input.b)), 20u)]);
    return !select(select(!(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false, global2.x, false)), select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(0u, 29u)], true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), false), select(select(vec4<bool>(true, true, false, global2.x), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(false, false, true, global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), true), var_1 > 2030i), vec4<bool>(false && global4[_wgslsmith_index_u32(u_input.a.x, 29u)], any(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 29u)], global2.x, global4[_wgslsmith_index_u32(u_input.b, 29u)], global4[_wgslsmith_index_u32(0u, 29u)])), !global2.x, false), !select(vec4<bool>(true, global4[_wgslsmith_index_u32(14931u, 29u)], false, global4[_wgslsmith_index_u32(u_input.b, 29u)]), vec4<bool>(true, true, false, global2.x), vec4<bool>(global2.x, global2.x, false, true))), false);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(37967u, 20u)], _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 20u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(16846u, 20u)]) - global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(41479u, 50131u), 20u)]))));
    global2 = select(select(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(global2.x, global4[_wgslsmith_index_u32(18584u, 29u)], true, true), vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false, true, global4[_wgslsmith_index_u32(1u, 29u)]), global2.x), vec4<bool>(true, true, true, true)), select(func_2(), vec4<bool>(any(vec3<bool>(global2.x, global4[_wgslsmith_index_u32(u_input.b, 29u)], global2.x)), -871f != global3[_wgslsmith_index_u32(1u, 20u)], u_input.a.x != 64598u, !global2.x), func_2()), vec4<bool>(true, true, true, global2.x)), func_2(), select(vec4<bool>(all(func_2().zzz), false, all(global2.xwz), false), !vec4<bool>(any(vec2<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 29u)])), global2.x, !global4[_wgslsmith_index_u32(57146u, 29u)], global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 1u), 29u)]), !select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 29u)], global4[_wgslsmith_index_u32(u_input.b, 29u)], true, false), !vec4<bool>(global2.x, global4[_wgslsmith_index_u32(u_input.a.x, 29u)], false, global2.x), false)));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(15643u, 20u)] - 396f), -420f)))));
    return global1[_wgslsmith_index_u32(func_3(abs(select(_wgslsmith_sub_vec4_u32(min(vec4<u32>(4294967295u, 26982u, u_input.b, 0u), u_input.a), ~u_input.a), countOneBits(u_input.a), true)), global1[_wgslsmith_index_u32(u_input.a.x, 5u)], abs(vec2<i32>(~(i32(-1i) * -60093i), firstTrailingBit(i32(-1i) * -1i))), !select(!select(vec3<bool>(global2.x, true, false), global2.zzw, global2.x), vec3<bool>(all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 29u)], global2.x, global4[_wgslsmith_index_u32(5403u, 29u)], false)), global4[_wgslsmith_index_u32(24803u, 29u)], false), global2.yzy)), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 22120i | _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 2147483647i, 0i, 0i), vec4<i32>(11261i, -12431i, -9260i, 1i)), 0i), ~countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-18721i, 0i, -22102i), vec3<i32>(2147483647i, -34035i, -22474i))));
    let var_1 = func_1();
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.a.x, var_1.a.x), firstLeadingBit(vec2<i32>(2147483647i, var_1.a.x))), var_1.a.zz), -1824i, -(firstLeadingBit(30572i) << (abs(u_input.a.x) % 32u))));
    let var_3 = !all(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], func_2().x, !(!global4[_wgslsmith_index_u32(u_input.a.x, 29u)]), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(u_input.a.x), 4294967295u), 29u)]));
    global2 = vec4<bool>(any(select(func_2().wy, select(!global2.xw, select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), true), global2.xy), vec2<bool>(true, true))), !(!var_3), global4[_wgslsmith_index_u32(25141u, 29u)], any(!(!select(vec3<bool>(global2.x, true, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 29u)], global4[_wgslsmith_index_u32(40471u, 29u)], false), global2.xww))));
    let var_4 = func_1();
    global3 = array<f32, 20>();
    global0 = global3[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(1132f);
}

