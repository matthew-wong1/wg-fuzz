struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 1u, 0u);

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(true, vec3<bool>(true, true, false)), Struct_2(false, vec3<bool>(false, true, false)), Struct_2(false, vec3<bool>(false, false, true)));

var<private> global2: array<bool, 30>;

var<private> global3: array<bool, 26>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global2 = array<bool, 30>();
    global1 = array<Struct_2, 3>();
    var var_0 = global0.xy;
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(~0u ^ (21367u ^ var_0.x), 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(195f)) + _wgslsmith_f_op_f32(404f - -497f)), 1f))), Struct_1(select(!select(vec2<bool>(false, global3[_wgslsmith_index_u32(global0.x, 26u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 30u)]), vec2<bool>(false, true)), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(global0.x, 30u)]), select(vec2<bool>(true, global3[_wgslsmith_index_u32(15363u, 26u)]), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], true), vec2<bool>(true, true), global2[_wgslsmith_index_u32(u_input.b.x, 30u)] && global3[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-235f, -754f) + 657f) - -2065f), vec3<i32>(u_input.d.x, u_input.d.x, _wgslsmith_mod_i32(2147483647i, select(58704i, u_input.e.x, false))), 38937u, vec4<f32>(-235f, 726f, _wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(abs(1033f)))), select(select(select(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(31274u, 30u)], global3[_wgslsmith_index_u32(122u, 26u)]), !vec4<bool>(false, global3[_wgslsmith_index_u32(67070u, 26u)], global3[_wgslsmith_index_u32(u_input.c, 26u)], true), select(vec4<bool>(true, global2[_wgslsmith_index_u32(3548u, 30u)], global3[_wgslsmith_index_u32(18237u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(global3[_wgslsmith_index_u32(85241u, 26u)], global3[_wgslsmith_index_u32(global0.x, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)], true), global3[_wgslsmith_index_u32(var_0.x, 26u)])), !select(vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)], true, false), vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.c, 26u)], global3[_wgslsmith_index_u32(var_0.x, 26u)]), false), !all(vec4<bool>(false, global3[_wgslsmith_index_u32(44047u, 26u)], false, false))), vec4<bool>(!all(vec2<bool>(false, true)), global2[_wgslsmith_index_u32(global0.x, 30u)], select(true, false, select(false, global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)])), true), !select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 30u)], true, global3[_wgslsmith_index_u32(var_0.x, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), select(vec4<bool>(false, true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 30u)], true, false, true), true), u_input.d.x <= u_input.e.x)));
    let var_2 = global1[_wgslsmith_index_u32(1u & ~u_input.b.x, 3u)];
    return var_1.c.e.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-arg_1))))), -u_input.e);
    global2 = array<bool, 30>();
    global3 = array<bool, 26>();
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 38526u | firstLeadingBit(_wgslsmith_sub_u32(0u, arg_2))), 3u)], _wgslsmith_f_op_f32(-var_0.a), Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], !(false || global3[_wgslsmith_index_u32(arg_2, 26u)])), arg_1, max(vec3<i32>(u_input.e.x ^ 7923i, i32(-1i) * -2147483647i, firstLeadingBit(u_input.e.x)), abs(-vec3<i32>(7233i, -25748i, 30138i))), _wgslsmith_mod_u32(3043u, countOneBits(~u_input.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 + var_0.a), -1073f, _wgslsmith_f_op_f32(f32(-1f) * -1193f), 315f))), select(vec4<bool>(all(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(34848u, 30u)])), 0u <= ~arg_0.x, all(select(vec4<bool>(global2[_wgslsmith_index_u32(18092u, 30u)], global2[_wgslsmith_index_u32(31500u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(1u, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(932u, 30u)], global2[_wgslsmith_index_u32(global0.x, 30u)], false, false), vec4<bool>(global3[_wgslsmith_index_u32(0u, 26u)], false, global3[_wgslsmith_index_u32(60778u, 26u)], true))), !(false & global2[_wgslsmith_index_u32(0u, 30u)])), !(!(!vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 26u)], global2[_wgslsmith_index_u32(69576u, 30u)], global2[_wgslsmith_index_u32(global0.x, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]))), true));
    global1 = array<Struct_2, 3>();
    return var_1.c.c.xx;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    var var_0 = ~(~min(u_input.a, firstTrailingBit(vec3<u32>(2717u, global0.x, 1u)))) & (~(~(u_input.a >> (u_input.a % vec3<u32>(32u)))) | u_input.a);
    var var_1 = _wgslsmith_div_u32(4294967295u | ~u_input.b.x, 65510u);
    var var_2 = true;
    let var_3 = func_2(vec4<u32>(73187u, ~24971u >> (var_0.x % 32u), var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 1u, 4294967295u, 42297u >> (u_input.b.x % 32u)), ~vec4<u32>(22010u, 27432u, arg_0.d, u_input.a.x) | ~vec4<u32>(0u, 0u, 1u, 1078u))), arg_0.b, 25966u);
    var var_4 = vec4<bool>(!arg_0.a.x && any(select(vec4<bool>(false, arg_1.a, global3[_wgslsmith_index_u32(var_0.x, 26u)], arg_0.a.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, true), select(vec4<bool>(true, false, false, arg_0.a.x), vec4<bool>(false, false, arg_1.a, false), arg_1.a))), !any(!arg_1.b) && any(vec3<bool>(arg_1.a && true, true, false)), false, false);
    return Struct_1(arg_1.b.xz, arg_2.a, vec3<i32>(-1i) * -arg_0.c, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~38443u, abs(0u), ~32070u), 1u), u_input.c), arg_0.e);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = global1[_wgslsmith_index_u32(arg_3.d, 3u)];
    global0 = ~vec3<u32>(~global0.x, ~887u, arg_3.d);
    var var_1 = vec4<u32>(0u, ~(~_wgslsmith_clamp_u32(0u, ~36085u, arg_3.d)), ~(0u & ~(global0.x << (4294967295u % 32u))), abs(_wgslsmith_dot_vec2_u32(~(~global0.yz), reverseBits(~u_input.b))));
    let var_2 = select(vec2<bool>(true, !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, ~u_input.a.x), 30u)]), arg_0.a, vec2<bool>(any(select(var_0.b.zx, !arg_0.a, select(var_0.b.zz, arg_3.a, arg_0.a.x))), arg_0.a.x));
    global0 = max(vec3<u32>(global0.x, var_1.x, _wgslsmith_sub_u32(0u | (arg_2 | var_1.x), 54331u)), u_input.a ^ var_1.wyw);
    return -((abs(arg_0.c) & arg_3.c) >> (firstTrailingBit(var_1.xwy) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(~(~_wgslsmith_div_vec3_u32(~u_input.a, vec3<u32>(u_input.a.x, 30721u, u_input.c))));
    let var_0 = Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(global0.x, 30u)], true), _wgslsmith_f_op_f32(-1f), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(func_4(Struct_1(vec2<bool>(false, global2[_wgslsmith_index_u32(global0.x, 30u)]), 239f, vec3<i32>(-1i, u_input.d.x, u_input.e.x), 4294967295u, vec4<f32>(-806f, 1000f, -275f, 1755f)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(u_input.d.x, u_input.d.x)), ~u_input.b.x, func_1(Struct_1(vec2<bool>(true, false), -1000f, vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), global0.x, vec4<f32>(-1629f, -1135f, -115f, 856f)), global1[_wgslsmith_index_u32(1u, 3u)], Struct_4(1000f, u_input.e))), min(-vec3<i32>(-66127i, u_input.e.x, u_input.e.x), vec3<i32>(u_input.e.x, 21557i, u_input.d.x) << (vec3<u32>(33104u, u_input.a.x, 6661u) % vec3<u32>(32u)))), func_4(func_1(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(14186u, 30u)], global2[_wgslsmith_index_u32(0u, 30u)]), 225f, vec3<i32>(u_input.d.x, 11973i, 18455i), global0.x, vec4<f32>(112f, 335f, -714f, -173f)), global1[_wgslsmith_index_u32(max(88276u, global0.x), 3u)], Struct_4(-102f, u_input.d)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, u_input.e.x, 0i, 17341i), vec4<i32>(u_input.e.x, 27736i, u_input.d.x, -1i)), 1u, func_1(Struct_1(vec2<bool>(true, false), -261f, vec3<i32>(0i, 1i, u_input.e.x), u_input.b.x, vec4<f32>(-129f, -324f, -260f, 213f)), global1[_wgslsmith_index_u32(~global0.x, 3u)], Struct_4(-1288f, vec2<i32>(u_input.e.x, u_input.d.x))))), ~global0.x, vec4<f32>(-289f, -460f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-987f + -1461f), 117f) + _wgslsmith_div_f32(-1285f, -870f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-866f, -2084f))), -824f, any(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(global0.x, 30u)]))))));
    var var_1 = Struct_2(any(!vec2<bool>(-13113i <= u_input.e.x, global3[_wgslsmith_index_u32(14196u, 26u)])), !vec3<bool>(!(var_0.c.x <= -15334i), all(select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.b.x, 26u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.d, 30u)], true, false), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(global0.x, 26u)], true))), any(vec4<bool>(true, global3[_wgslsmith_index_u32(33007u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(global0.x, 26u)])) && !global2[_wgslsmith_index_u32(u_input.c, 30u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-44427i, u_input.e.x, u_input.d.x, ~firstTrailingBit(-2147483647i) ^ -2147483647i));
}

