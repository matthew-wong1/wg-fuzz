struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(2147483647i, i32(-2147483648), 20740i, 1i, 41042i, -28133i, 2147483647i, 16974i, 1i, 1552i, 2147483647i, -23742i, i32(-2147483648), 25750i, 2147483647i, -22905i, 1i, -30348i, 0i, -1i, 24192i);

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<f32, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_0.a, firstTrailingBit(-816i), u_input.c.x | reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(78371u, 0u, 0u), u_input.c >> (vec3<u32>(0u, 4294967295u, 72883u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d), vec3<f32>(arg_0.e, -442f, arg_0.d.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-928f, arg_0.d.x)), global2[_wgslsmith_index_u32(~110267u, 21u)]));
    global0 = array<i32, 21>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.d);
    let var_2 = firstTrailingBit(~u_input.c);
    var var_3 = ~max(-_wgslsmith_mod_i32(~(-2761i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, u_input.d, u_input.b, global0[_wgslsmith_index_u32(0u, 21u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], -1i, -15528i, var_0.b))), ~var_0.a.x);
    return var_2.x;
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~func_3(global1[_wgslsmith_index_u32(u_input.c.x, 24u)]), 21u)] + _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~4502u, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(17167u, 21u)])), any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))))));
    return select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 21u)] < global2[_wgslsmith_index_u32(71227u, 21u)], any(vec3<bool>(false, false, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !all(vec4<bool>(true, true, true, true))), true), select(vec3<bool>(!all(vec3<bool>(false, true, false)), true, true), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 21u)] <= global0[_wgslsmith_index_u32(13961u, 21u)]), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, false, true)), any(vec2<bool>(false, true)), true)), true), any(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<Struct_1, 24>();
    var var_0 = select(select(!select(func_2(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], 34448i, -2147483647i)), !vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, true, true)), vec3<bool>(true, true, arg_0), arg_0), select(vec3<bool>(!(arg_0 | true), true, !func_2(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(61827u, 21u)], 36919i)).x), !(!vec3<bool>(false, false, arg_0)), !(!(0u == u_input.c.x))), vec3<bool>(true, ((u_input.c.x >> (0u % 32u)) <= 20732u) || (all(vec3<bool>(false, true, arg_0)) | true), false));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(~u_input.c.x), 21u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1441f + _wgslsmith_f_op_f32(sign(-551f))))));
    return Struct_1(max(-(~(vec4<i32>(-36556i, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], -11949i, u_input.a.x) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], u_input.a.x, 0i))), -(vec4<i32>(1i, -21939i, -41008i, global0[_wgslsmith_index_u32(40377u, 21u)]) >> (vec4<u32>(44672u, u_input.c.x, 25428u, 4120u) % vec4<u32>(32u))) >> (max(~vec4<u32>(u_input.c.x, u_input.c.x, 25091u, u_input.c.x), firstLeadingBit(vec4<u32>(132780u, u_input.c.x, u_input.c.x, 1u))) % vec4<u32>(32u))), -31905i, (u_input.c.x | ~u_input.c.x) >> (u_input.c.x % 32u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-819f, global2[_wgslsmith_index_u32(u_input.c.x, 21u)], var_1), vec3<f32>(var_1, -1446f, global2[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(var_0.x, false, var_0.x))))))), _wgslsmith_f_op_f32(min(-1000f, global2[_wgslsmith_index_u32(abs(max(1u, 4294967295u)), 21u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 21>();
    var var_0 = func_1(!(!all(vec3<bool>(true, true, true))));
    let var_1 = global0[_wgslsmith_index_u32(~78285u, 21u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e, -2690f)) - var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1281f * global2[_wgslsmith_index_u32(var_0.c, 21u)]))))));
    let var_3 = global1[_wgslsmith_index_u32(select(16739u, u_input.c.x & _wgslsmith_dot_vec2_u32(vec2<u32>(~1u, ~12734u), u_input.c.zx), true), 24u)];
    global2 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(8530i)), var_3.a);
}

