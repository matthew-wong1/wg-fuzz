struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<Struct_1, 29>;

var<private> global2: u32;

var<private> global3: vec2<f32> = vec2<f32>(583f, 564f);

var<private> global4: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(min(~3045u, _wgslsmith_add_u32(max(u_input.c.x, u_input.c.x), 4294967295u))), ~(~(~u_input.c.x))), 29u)];
    return _wgslsmith_mult_u32(1u, firstTrailingBit(~479u));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = arg_3;
    let var_1 = Struct_1(var_0.a, !(!arg_3.a.yz));
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(~1u, firstTrailingBit(24166u))), select(abs(abs(u_input.a)), ~func_2(), arg_3.b.x));
    let var_3 = reverseBits(u_input.c);
    let var_4 = !(!arg_0.a.x);
    return arg_3.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1361f, global3.x))), vec2<f32>(877f, 491f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.x, 243f), vec2<f32>(392f, -431f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-488f, global0[_wgslsmith_index_u32(0u, 12u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1643f, global0[_wgslsmith_index_u32(50687u, 12u)]) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 1848f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], -917f) - vec2<f32>(869f, -260f))) + vec2<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), _wgslsmith_f_op_f32(round(274f)))))));
    let var_0 = Struct_1(vec3<bool>(func_1(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, 1820f)) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 12u)]))), u_input.b, global1[_wgslsmith_index_u32(~u_input.a ^ firstTrailingBit(u_input.a), 29u)]).x, any(vec2<bool>(arg_1, true)) || arg_0.a.x, u_input.b > -(~u_input.b)), arg_0.a.zx);
    global1 = array<Struct_1, 29>();
    var var_1 = global1[_wgslsmith_index_u32(abs(u_input.a & func_2()) | 4294967295u, 29u)];
    let var_2 = Struct_1(vec3<bool>(true, any(vec2<bool>(true, all(vec2<bool>(false, arg_0.a.x)))), true), vec2<bool>(!var_1.a.x, !all(var_0.a) | false));
    return select(!(!(!select(vec4<bool>(var_2.a.x, arg_1, false, true), vec4<bool>(arg_1, false, var_0.a.x, var_1.a.x), vec4<bool>(false, false, false, false)))), vec4<bool>(var_0.a.x, (_wgslsmith_sub_i32(0i, u_input.b) > u_input.b) != false, var_0.a.x, !arg_0.b.x), false & !((i32(-1i) * -2147483647i) >= ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!func_1(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false)), global0[_wgslsmith_index_u32(0u ^ u_input.c.x, 12u)], firstLeadingBit(u_input.b), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false))), !vec3<bool>(true, any(vec4<bool>(false, true, false, false)), 2147483647i <= u_input.b), !all(vec4<bool>(true, false, false, false)));
    var var_1 = !all(select(vec4<bool>(var_0.x, false, true, var_0.x), func_3(global1[_wgslsmith_index_u32(u_input.a, 29u)], var_0.x), 17980u > u_input.c.x)) & !(global0[_wgslsmith_index_u32(u_input.c.x, 12u)] == _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~0u, 12u)], global3.x));
    var var_2 = 1597f < global0[_wgslsmith_index_u32(firstLeadingBit(min(~u_input.c.x, firstTrailingBit(u_input.c.x | 26128u))), 12u)];
    global4 = 22855u;
    let var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -2298f, global3.x, global3.x) * vec4<f32>(-579f, global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], 857f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(75281u, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)], -117f, global0[_wgslsmith_index_u32(2015u, 12u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, 1352f, global3.x, 198f), vec4<f32>(global3.x, global3.x, global3.x, 891f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, global3.x, 555f, 2009f))), vec4<bool>(true, true, true, true))))), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(max(1742u, 22125u), u_input.c.x), ~_wgslsmith_add_u32(32881u, 57004u)), select(~vec2<u32>(u_input.c.x, u_input.c.x) << (vec2<u32>(~1u, 54171u) % vec2<u32>(32u)), u_input.c.yx | u_input.c.xy, !var_0.zx), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(816f, -2085f, global0[_wgslsmith_index_u32(u_input.a, 12u)], global3.x), vec4<f32>(1000f, -1000f, global0[_wgslsmith_index_u32(59734u, 12u)], global3.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -981f, global0[_wgslsmith_index_u32(u_input.a, 12u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -499f, 607f, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]) + vec4<f32>(-966f, -371f, global0[_wgslsmith_index_u32(u_input.c.x, 12u)], global3.x)))), vec4<f32>(global3.x, -793f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 12u)] + global3.x), global0[_wgslsmith_index_u32(1u, 12u)]))));
}

