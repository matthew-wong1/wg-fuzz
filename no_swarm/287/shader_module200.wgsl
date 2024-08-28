struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 9> = array<f32, 9>(1000f, 522f, -1406f, -901f, 815f, -1205f, -809f, -692f, -117f);

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<u32>(0u, 4294967295u, 6755u, 18854u), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 82208u, 107421u), vec3<bool>(true, false, false), vec3<bool>(false, false, true))));

var<private> global3: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: f32) -> i32 {
    global3 = -u_input.d;
    global3 = ~u_input.d;
    var var_0 = Struct_1(u_input.c, vec3<bool>(u_input.d != (~(-5674i) ^ _wgslsmith_add_i32(u_input.d, u_input.d)), any(vec4<bool>(false, !arg_0.x, true, false)), all(!vec3<bool>(false, arg_0.x, arg_0.x))), global2.b.a.c);
    var var_1 = ~_wgslsmith_mult_vec2_u32(~abs(global2.a.a.yx), vec2<u32>(global2.a.a.x, ~_wgslsmith_add_u32(99216u, u_input.a)));
    global3 = ~(-1i);
    return reverseBits(~(-42927i));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    global2 = Struct_3(Struct_1(~(~reverseBits(vec4<u32>(1u, 2911u, 0u, 1u))), select(select(arg_0.c, !arg_2.a.b, select(arg_2.a.b, arg_0.b, true)), vec3<bool>(true, true, !arg_2.a.c.x), false), global2.b.a.b), arg_2);
    let var_0 = arg_2.a.c.x && global2.a.c.x;
    global3 = select(~(~(-11668i)), func_3(!select(arg_2.a.b.yy, global2.a.c.xy, arg_2.a.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, global1[_wgslsmith_index_u32(arg_2.a.a.x, 9u)], 1682f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a.x, 9u)], arg_1))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -732f))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 80612u, global2.a.a.x, 47263u)), arg_2.a.a & u_input.c), 9u)]), select(arg_2.a.c.x | !arg_2.a.b.x, false, !(global1[_wgslsmith_index_u32(u_input.b, 9u)] == -136f))) & firstTrailingBit(u_input.d);
    var var_1 = arg_2.a;
    let var_2 = Struct_1(vec4<u32>(62305u, 1u, 51354u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 56777u, global2.a.a.x), abs(arg_2.a.a.ywz))) >> (vec4<u32>(u_input.b, u_input.e, _wgslsmith_mult_u32(arg_0.a.x, ~global2.b.a.a.x), 13786u) % vec4<u32>(32u)), vec3<bool>(var_1.b.x, select(true, false, true), !any(!vec4<bool>(true, false, var_0, false))), select(vec3<bool>(true, var_1.b.x, global2.b.a.b.x), !(!select(vec3<bool>(true, arg_2.a.b.x, true), vec3<bool>(var_0, global2.b.a.c.x, arg_0.b.x), false)), vec3<bool>(true, true, true)));
    return max(countOneBits(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(global2.a.a.x, global2.b.a.a.x)), var_2.a.zx)), u_input.c.x ^ abs(~countOneBits(var_2.a.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = ~min(global2.b.a.a, _wgslsmith_add_vec4_u32(min(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), u_input.c), ~u_input.c)) >> (~vec4<u32>(func_2(global2.b.a, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.e, 9u)])), Struct_2(global2.a), countOneBits(vec2<i32>(50502i, u_input.d))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.wyx, vec3<u32>(88910u, 51979u, u_input.c.x), vec3<u32>(u_input.a, 1u, u_input.e)), firstLeadingBit(u_input.c.wxy)), ~97335u, min(71169u, 0u)) % vec4<u32>(32u));
    global3 = 8299i;
    global3 = -28026i;
    return Struct_1(vec4<u32>(~(4294967295u | var_0.x), 56957u, ~global2.b.a.a.x, max(48097u, countOneBits(~8843u))), !global2.b.a.b, select(select(vec3<bool>(any(vec4<bool>(global2.b.a.b.x, false, false, false)), u_input.d < u_input.d, global2.b.a.b.x | global2.b.a.c.x), global2.b.a.c, !(!vec3<bool>(true, true, global2.b.a.c.x))), !global2.a.c, vec3<bool>(false, global2.b.a.c.x, !global2.b.a.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec4<bool>(true, arg_2.c.x, false || !(!(u_input.d != -55472i)), true);
    let var_1 = vec3<bool>(all(!func_1().c.xz) & !func_1().c.x, !(_wgslsmith_div_u32(u_input.b, u_input.b) < (global2.a.a.x ^ arg_2.a.x)) || true, false);
    global2 = Struct_3(arg_0, Struct_2(func_1()));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 36609u), 9u)], _wgslsmith_f_op_f32(floor(286f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_2.a.ywy, arg_0.a.yzz), 9u)], 584f))))));
    global2 = Struct_3(Struct_1(~arg_2.a, var_1, select(arg_0.b, !vec3<bool>(false, true, var_0.x), !arg_2.b.x)), global2.b);
    return Struct_2(func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(~vec4<u32>(60828u, u_input.e, _wgslsmith_sub_u32(u_input.e, global2.a.a.x), 57663u), select(select(global2.a.c, vec3<bool>(global2.b.a.b.x, false, true), global2.a.b.x != true), !global2.a.c, any(select(vec2<bool>(global2.b.a.b.x, true), global2.b.a.c.yz, vec2<bool>(false, global2.a.b.x)))), global2.b.a.b), global2.a.c.x, func_1(), global2.b.a);
    let var_1 = func_4(func_1(), all(vec3<bool>(!(true || var_0.a.b.x), false, all(select(global2.a.b.yx, vec2<bool>(false, true), false)))), func_4(Struct_1(_wgslsmith_mod_vec4_u32(u_input.c, ~var_0.a.a), !vec3<bool>(global2.a.b.x, global2.a.c.x, true), vec3<bool>(true, true, global2.a.b.x)), true & var_0.a.c.x, func_4(func_4(Struct_1(global2.a.a, global2.a.c, global2.b.a.c), global2.a.b.x, global2.a, global2.b.a).a, all(!vec4<bool>(global2.b.a.b.x, false, global2.a.b.x, var_0.a.c.x)), func_4(func_4(Struct_1(var_0.a.a, var_0.a.c, vec3<bool>(true, global2.a.b.x, true)), global2.b.a.c.x, Struct_1(vec4<u32>(u_input.a, 0u, 98120u, u_input.c.x), var_0.a.c, var_0.a.b), var_0.a).a, true, func_1(), var_0.a).a, Struct_1(vec4<u32>(u_input.c.x, 26944u, 108677u, 10260u), global2.b.a.b, !var_0.a.c)).a, global2.a).a, global2.a);
    let var_2 = false & all(func_1().c);
    let var_3 = func_1();
    var var_4 = Struct_3(var_1.a, func_4(global2.a, !(!var_3.b.x), Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.a.a, var_1.a.a, vec4<u32>(15385u, 4294967295u, 4294967295u, var_1.a.a.x)), firstLeadingBit(global2.a.a)), func_4(Struct_1(var_0.a.a, var_0.a.c, vec3<bool>(true, var_2, false)), true, var_1.a, Struct_1(vec4<u32>(6723u, 1321u, 1u, 0u), var_3.b, vec3<bool>(var_2, var_1.a.b.x, false))).a.b, select(var_3.c, select(vec3<bool>(false, true, true), var_0.a.c, var_2), func_4(global2.b.a, false, Struct_1(global2.b.a.a, global2.a.b, global2.b.a.c), var_1.a).a.c)), func_1()));
    var var_5 = Struct_2(global2.a);
    var var_6 = (~var_1.a.a.x ^ ~(~4156u)) <= _wgslsmith_sub_u32(firstTrailingBit((57267u & var_3.a.x) << (_wgslsmith_div_u32(var_0.a.a.x, var_5.a.a.x) % 32u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c.x, var_1.a.a.x, var_1.a.a.x, 57281u)), firstTrailingBit(vec4<u32>(4294967295u, 1u, 1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(1i | -(u_input.d & -1i)));
}

