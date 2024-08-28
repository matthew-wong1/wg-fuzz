struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(1i, -34518i, 27950i, -15156i, 5956i, -32314i, -1i, -88850i, -30343i, 1i, i32(-2147483648), i32(-2147483648), -20150i, i32(-2147483648), -14218i, -26717i, 33584i, 0i, 2147483647i, 53754i, -15630i, i32(-2147483648), -3162i, 29535i, i32(-2147483648));

var<private> global1: array<bool, 26>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = 2147483647i;
    let var_2 = select(!select(var_0.c, select(vec3<bool>(false, arg_0.c.x, true), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 26u)]), var_0.b), true), arg_0.c, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(39156u, ~var_0.a.x), 26u)]);
    var var_3 = u_input.b;
    return select(var_0.c, !arg_0.c, arg_0.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = arg_1;
    global0 = array<i32, 25>();
    let var_1 = any(!(!vec4<bool>(global1[_wgslsmith_index_u32(~1u, 26u)], any(vec3<bool>(false, arg_1.c.x, arg_1.c.x)), select(false, true, global1[_wgslsmith_index_u32(36202u, 26u)]), true)));
    let var_2 = !arg_0.c.zy;
    return firstTrailingBit(arg_2.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = firstLeadingBit(func_4(Struct_1(firstLeadingBit(vec4<u32>(0u, arg_0, u_input.b, 4294967295u)), global1[_wgslsmith_index_u32(u_input.b, 26u)], func_3(Struct_1(vec4<u32>(1u, 68240u, u_input.b, 78711u), global1[_wgslsmith_index_u32(arg_0, 26u)], vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 26u)], true)))), Struct_1(vec4<u32>(4294967295u, arg_0, arg_0, 1u), !global1[_wgslsmith_index_u32(1u, 26u)], select(vec3<bool>(global1[_wgslsmith_index_u32(54760u, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(80603u, 26u)]), vec3<bool>(global1[_wgslsmith_index_u32(92546u, 26u)], global1[_wgslsmith_index_u32(arg_0, 26u)], true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], false, global1[_wgslsmith_index_u32(u_input.b, 26u)]))), vec4<i32>(-2147483647i, 35563i, global0[_wgslsmith_index_u32(arg_0, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]))) == (_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d.x, u_input.d.x)), u_input.d), u_input.a) | u_input.c);
    let var_1 = false;
    global1 = array<bool, 26>();
    var var_2 = 1f;
    let var_3 = !vec4<bool>(all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0, 26u)], false, var_0), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)], true), global1[_wgslsmith_index_u32(100105u, 26u)])), !var_0, true, !var_0);
    return Struct_1(vec4<u32>(firstLeadingBit(u_input.b), min(_wgslsmith_mod_u32(firstTrailingBit(arg_0), arg_0), _wgslsmith_add_u32(1u & u_input.b, _wgslsmith_mod_u32(48769u, arg_0))), firstLeadingBit(54052u), u_input.b), any(vec4<bool>(func_3(Struct_1(vec4<u32>(arg_0, 0u, 30271u, 24552u), false, var_3.wwz)).x, true, var_3.x, true)), select(!vec3<bool>(true, true, var_1), var_3.yxz, 4294967295u != arg_0));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global0 = array<i32, 25>();
    let var_0 = func_2(20243u);
    var var_1 = select(select(vec3<i32>(_wgslsmith_mult_i32(~2147483647i, 1i), ~(~0i), global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 25u)]), countOneBits(firstTrailingBit(vec3<i32>(0i, u_input.d.x, -1i)) >> (vec3<u32>(var_0.a.x, var_0.a.x, 97999u) % vec3<u32>(32u))), true), vec3<i32>(54537i, _wgslsmith_clamp_i32(u_input.c, ~global0[_wgslsmith_index_u32(~arg_0, 25u)], _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_0, 25u)], u_input.e.x, 2147483647i), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 25u)], -26829i)), _wgslsmith_mod_i32(34622i, global0[_wgslsmith_index_u32(arg_0, 25u)]), u_input.d.x)), u_input.d.x), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.a.x, 26u)], var_0.b));
    global0 = array<i32, 25>();
    let var_2 = select(select(func_3(Struct_1(reverseBits(var_0.a), false, select(vec3<bool>(false, var_0.c.x, var_0.c.x), vec3<bool>(global1[_wgslsmith_index_u32(171020u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(34889u, 26u)]), true))), !var_0.c, true), vec3<bool>(global1[_wgslsmith_index_u32(~(~abs(43271u)), 26u)], global1[_wgslsmith_index_u32(26455u, 26u)], !any(vec4<bool>(true, var_0.c.x, false, true)) & all(vec2<bool>(var_0.c.x, var_0.c.x))), vec3<bool>(true, global1[_wgslsmith_index_u32(reverseBits(~31807u << (0u % 32u)), 26u)], ~(~u_input.b) != 15972u));
    return select(!(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 26u)], true, false, true)))), select(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.x, 26u)], var_0.b, false, global1[_wgslsmith_index_u32(var_0.a.x, 26u)]), vec4<bool>(true, var_2.x, false, true), vec4<bool>(global1[_wgslsmith_index_u32(3729u, 26u)], var_2.x, global1[_wgslsmith_index_u32(u_input.b, 26u)], false)), select(vec4<bool>(var_0.b, var_2.x, true, true), vec4<bool>(global1[_wgslsmith_index_u32(8638u, 26u)], var_0.b, false, var_2.x), true), select(select(vec4<bool>(var_0.c.x, true, false, global1[_wgslsmith_index_u32(7786u, 26u)]), vec4<bool>(var_0.b, var_0.b, var_2.x, global1[_wgslsmith_index_u32(u_input.b, 26u)]), vec4<bool>(var_2.x, false, false, false)), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.x, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 26u)], false, var_2.x), true), !global1[_wgslsmith_index_u32(12899u, 26u)])), !vec4<bool>(!var_0.c.x, func_3(var_0).x, func_3(Struct_1(vec4<u32>(arg_0, 37626u, u_input.b, var_0.a.x), global1[_wgslsmith_index_u32(1u, 26u)], var_0.c)).x, true), select(!(!vec4<bool>(var_0.b, true, var_0.c.x, var_2.x)), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 26u)], var_0.b, false)), !(false | global1[_wgslsmith_index_u32(10570u, 26u)]))), global0[_wgslsmith_index_u32(countOneBits(max(1u, ~arg_0)), 25u)] > reverseBits(~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(global1[_wgslsmith_index_u32(~reverseBits(u_input.b), 26u)], all(func_1(u_input.b)), global1[_wgslsmith_index_u32(u_input.b, 26u)]);
    global1 = array<bool, 26>();
    let var_1 = vec4<i32>(-u_input.d.x, abs(select(~(-5203i), max(-28050i, 2147483647i) >> (~u_input.b % 32u), var_0.x && func_2(u_input.b).c.x)), abs(16833i), 2147483647i);
    global0 = array<i32, 25>();
    global1 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1538f, -302f, -1264f, 1840f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, -656f, -604f, 155f) + vec4<f32>(-920f, 1516f, -915f, -2025f))))), var_1.x, min(-_wgslsmith_dot_vec4_i32(-var_1, select(var_1, var_1, vec4<bool>(false, true, true, true))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14227i, -8076i, global0[_wgslsmith_index_u32(u_input.b, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<i32>(-34776i, 6070i, -8813i, 25431i) << (vec4<u32>(77034u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), i32(-1i) * -u_input.a)), var_1.wxy, firstTrailingBit(vec2<u32>((4605u >> (u_input.b % 32u)) >> (92534u % 32u), ~u_input.b)));
}

