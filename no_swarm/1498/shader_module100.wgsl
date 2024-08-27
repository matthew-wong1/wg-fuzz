struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(20654u, vec3<f32>(1297f, 2048f, -489f), Struct_1(vec4<i32>(9664i, 1i, i32(-2147483648), 14348i))), Struct_2(21326u, vec3<f32>(-1846f, -2222f, 1000f), Struct_1(vec4<i32>(-1i, 0i, -1i, -1i))), Struct_2(0u, vec3<f32>(943f, 957f, 438f), Struct_1(vec4<i32>(5100i, 0i, -28063i, 8941i))), Struct_2(55899u, vec3<f32>(-308f, 1569f, -589f), Struct_1(vec4<i32>(0i, 18894i, 0i, 9313i))), Struct_2(4294967295u, vec3<f32>(-815f, 1000f, -1752f), Struct_1(vec4<i32>(-38735i, -1i, 36071i, 22218i))), Struct_2(34395u, vec3<f32>(105f, 1403f, -1000f), Struct_1(vec4<i32>(2147483647i, 39748i, 2147483647i, 21366i))));

var<private> global2: array<bool, 27> = array<bool, 27>(true, false, true, true, true, false, true, true, false, false, true, false, true, true, false, false, true, true, true, false, false, false, false, true, true, true, false);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = ~1u;
    var var_1 = vec3<bool>(!(!global2[_wgslsmith_index_u32(firstLeadingBit(9303u), 27u)]), arg_2, global2[_wgslsmith_index_u32(10206u, 27u)]);
    var var_2 = vec4<i32>(firstTrailingBit(countOneBits(arg_0.a.x)), arg_0.a.x, abs(abs(arg_3.c.a.x)), arg_3.c.a.x);
    var_1 = select(!select(!(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], arg_2, var_1.x)), !(!vec3<bool>(arg_2, false, var_1.x)), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], global2[_wgslsmith_index_u32(var_0, 27u)], true), vec3<bool>(true, arg_2, false), var_1.x)), !select(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(3455u, 27u)], true), select(vec3<bool>(arg_2, var_1.x, false), vec3<bool>(arg_2, global2[_wgslsmith_index_u32(4294967295u, 27u)], false), global2[_wgslsmith_index_u32(arg_3.a, 27u)]), global2[_wgslsmith_index_u32(abs(var_0), 27u)]), vec3<bool>(!global2[_wgslsmith_index_u32(45235u, 27u)], true, !arg_2), (global2[_wgslsmith_index_u32(u_input.b, 27u)] || arg_2) == true), true);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(arg_3.b.x * 1363f)), _wgslsmith_f_op_f32(-arg_3.b.x), any(!var_1.xx)));
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<u32> {
    global2 = array<bool, 27>();
    global0 = array<vec3<i32>, 17>();
    var var_0 = !all(!vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 27u)], false)) || all(vec3<bool>(true, (arg_1.c.a.x <= arg_0.x) | (arg_0.x <= arg_0.x), true));
    var_0 = all(select(vec3<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 27u)], false, true)), any(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], false)), true), !vec3<bool>(true, -5219i > arg_1.c.a.x, any(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.a, 27u)], true, true))), !(_wgslsmith_mult_i32(8678i, -15952i) >= arg_0.x)));
    var var_1 = select(!(!(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(48568u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)])))), vec3<bool>(false, !func_3(arg_1.c, -vec2<i32>(2147483647i, arg_0.x), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], false, global2[_wgslsmith_index_u32(arg_1.a, 27u)])), Struct_2(0u, arg_1.b, Struct_1(arg_1.c.a))), !(_wgslsmith_f_op_f32(arg_1.b.x + 736f) >= _wgslsmith_f_op_f32(select(arg_1.b.x, arg_1.b.x, global2[_wgslsmith_index_u32(4294967295u, 27u)])))), select(vec3<bool>(global2[_wgslsmith_index_u32(36411u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], ~2147483647i <= arg_1.c.a.x), vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], 39092u > min(u_input.c.x, 26622u))));
    return ~(~(~vec4<u32>(u_input.c.x, u_input.b, 4294967295u, 44927u)) & u_input.c) << (min(vec4<u32>((u_input.a.x >> (arg_1.a % 32u)) ^ u_input.b, arg_1.a, abs(countOneBits(111518u)), u_input.c.x), u_input.c) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(41955u, 27u)];
    let var_1 = func_2(vec4<i32>(countOneBits(arg_2.c.a.x), _wgslsmith_mult_i32(-countOneBits(arg_2.c.a.x), arg_0.a.x), 1i, arg_0.a.x), Struct_2(arg_3.x, arg_2.b, arg_2.c));
    global0 = array<vec3<i32>, 17>();
    let var_2 = vec2<bool>(any(!vec2<bool>(arg_2.b.x > -161f, global2[_wgslsmith_index_u32(arg_2.a, 27u)])), !(!func_3(arg_2.c, ~arg_0.a.yy, true, Struct_2(arg_2.a, arg_2.b, Struct_1(arg_0.a)))));
    var_0 = true;
    return _wgslsmith_f_op_f32(600f - _wgslsmith_f_op_f32(f32(-1f) * -242f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-458f)), _wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(3488i, -2147483647i, 1i, -1i)), 738f, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], min(vec3<u32>(u_input.a.x, 1u, 0u), u_input.c.ywy)))) * 2639f) - -417f);
    global0 = array<vec3<i32>, 17>();
    var var_1 = select(select(select(select(!vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(6689u, 27u)]), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(u_input.c.x, 27u)], global2[_wgslsmith_index_u32(27882u, 27u)], global2[_wgslsmith_index_u32(8685u, 27u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c.x, 27u)], false)), !vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c.x, 27u)], true), select(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], global2[_wgslsmith_index_u32(u_input.c.x, 27u)], global2[_wgslsmith_index_u32(u_input.c.x, 27u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(1u, 27u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 27u)], global2[_wgslsmith_index_u32(u_input.a.x, 27u)], true)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 27u)], false, global2[_wgslsmith_index_u32(50569u, 27u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 27u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)])), !vec4<bool>(global2[_wgslsmith_index_u32(70039u, 27u)], false, true, global2[_wgslsmith_index_u32(4294967295u, 27u)]))), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.a.x, u_input.b, u_input.c.x), ~vec4<u32>(38248u, u_input.c.x, 60742u, 1u)), 27u)], func_3(Struct_1(vec4<i32>(-2147483647i, -30976i, 15687i, 2147483647i)), firstLeadingBit(vec2<i32>(22597i, 0i)), true, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(~(u_input.a.x | 4294967295u), 27u)]), select(all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 27u)], true, false)) == false, _wgslsmith_f_op_f32(ceil(-467f)) != _wgslsmith_f_op_f32(max(var_0, -221f)), true)), vec4<bool>(false, !any(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 27u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(48980u, 27u)], global2[_wgslsmith_index_u32(58663u, 27u)], false), global2[_wgslsmith_index_u32(4294967295u, 27u)])), false, all(vec2<bool>(all(vec2<bool>(false, false)), !global2[_wgslsmith_index_u32(4294967295u, 27u)]))), any(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 27u)], false, true)), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], true, global2[_wgslsmith_index_u32(u_input.b, 27u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 27u)], false, false), vec3<bool>(true, false, false)), vec3<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(41504u, 27u)], global2[_wgslsmith_index_u32(33945u, 27u)])), global2[_wgslsmith_index_u32(0u | u_input.a.x, 27u)], true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))));
    let var_3 = 1064f;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c.zx, reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(u_input.a.x, 1u)), func_2(vec4<i32>(-2147483647i, -51613i, -2147483647i, 1i), Struct_2(4294967295u, vec3<f32>(var_3, -1418f, -121f), Struct_1(vec4<i32>(0i, 7853i, -1i, -2147483647i)))).xx)), false), -511f, firstLeadingBit(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-50201i, 1i, 2147483647i), vec3<i32>(-41609i, 31766i, -2147483647i)))) >> (abs(func_2(countOneBits(vec4<i32>(-15820i, -48015i, 0i, 42718i)), Struct_2(u_input.a.x, vec3<f32>(var_3, var_3, -665f), Struct_1(vec4<i32>(-2147483647i, 37076i, 11832i, 2147483647i)))).x) % 32u), -_wgslsmith_dot_vec2_i32(vec2<i32>(46721i, ~(-28179i)), _wgslsmith_add_vec2_i32(-vec2<i32>(-14275i, 20677i), vec2<i32>(1i, 1i))));
}

