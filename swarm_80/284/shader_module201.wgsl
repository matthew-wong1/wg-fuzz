struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = ~firstTrailingBit(8333u);
    global2 = array<Struct_1, 27>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 26u)] * global0[_wgslsmith_index_u32(0u, 26u)])))))), select(true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)] <= global0[_wgslsmith_index_u32(0u, 26u)], true, all(vec3<bool>(false, false, false))))), abs(~u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1687f, -627f, -407f), vec3<f32>(-1791f, 973f, 1000f))), vec3<f32>(-833f, global0[_wgslsmith_index_u32(4294967295u & u_input.a.x, 26u)], global0[_wgslsmith_index_u32(max(26117u, 0u), 26u)]), false)) + vec3<f32>(-468f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, var_0), 26u)], _wgslsmith_f_op_f32(sign(1544f))), -408f)), u_input.a.x);
    let var_2 = -(~u_input.c);
    var var_3 = var_1.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(824f)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), -486f, arg_1.x)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yy), 26u)] - global0[_wgslsmith_index_u32(4294967295u, 26u)]), arg_1.x)), any(vec2<bool>(true, true)), ~arg_0 ^ max(_wgslsmith_div_u32(~0u, ~15636u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.d), u_input.a.xz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1100f + global0[_wgslsmith_index_u32(arg_0, 26u)]), _wgslsmith_f_op_f32(-944f + global0[_wgslsmith_index_u32(4294967295u, 26u)]), true)), global0[_wgslsmith_index_u32(37582u, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(69720u, 26u)])))), _wgslsmith_add_u32(6119u, arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(111f - global0[_wgslsmith_index_u32(1u, 26u)]))) * _wgslsmith_f_op_f32(min(-287f, _wgslsmith_f_op_f32(exp2(var_0.a)))))), true, ~_wgslsmith_dot_vec2_u32(abs(~u_input.a.zy), u_input.a.xx), var_0.d, reverseBits(~var_0.e));
    var var_2 = false;
    global1 = any(select(!(!(!arg_1)), !vec2<bool>(var_1.b, !var_1.b), arg_1));
    let var_3 = arg_1;
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d, var_0.c, ~select(var_1.e, u_input.a.x, var_3.x) ^ countOneBits(~25892u)), vec3<u32>(var_0.e, abs(~4294967295u) & var_1.c, 8403u)), 27u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = ~arg_1.x;
    let var_1 = func_2(arg_0.c, vec2<bool>(!(!arg_0.b), all(select(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), any(vec4<bool>(true, arg_0.b, arg_0.b, true))))));
    let var_2 = vec4<f32>(var_1.a, -812f, 619f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + -301f) * -1539f))));
    global1 = any(select(select(vec4<bool>(u_input.b.x > 1i, u_input.b.x <= 43392i, true, !arg_0.b), !select(vec4<bool>(arg_0.b, var_1.b, false, false), vec4<bool>(arg_0.b, var_1.b, var_1.b, arg_0.b), false), !select(vec4<bool>(true, arg_0.b, var_1.b, true), vec4<bool>(true, arg_0.b, true, false), arg_0.b)), vec4<bool>(!any(vec4<bool>(var_1.b, true, arg_0.b, arg_0.b)), -2147483647i == u_input.b.x, any(vec3<bool>(arg_0.b, var_1.b, false)), !any(vec3<bool>(false, false, true))), select(!select(vec4<bool>(var_1.b, arg_0.b, false, false), vec4<bool>(var_1.b, arg_0.b, false, true), vec4<bool>(var_1.b, arg_0.b, true, arg_0.b)), vec4<bool>(var_1.b, true, any(vec2<bool>(false, var_1.b)), false), !(!arg_0.b))));
    let var_3 = vec4<u32>(40859u, 1931u, var_1.c, _wgslsmith_div_u32(func_2(4294967295u, select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, var_1.b), vec2<bool>(false, arg_0.b))).c << (max(105190u, _wgslsmith_clamp_u32(arg_1.x, u_input.d, arg_1.x)) % 32u), ~4294967295u));
    return Struct_1(-1367f, false, 0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, var_2.x, 1050f) + var_1.d), _wgslsmith_f_op_vec3_f32(var_2.xxw + var_2.xxw))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.wyy))), ~func_2(var_1.c, select(select(vec2<bool>(arg_0.b, false), vec2<bool>(true, var_1.b), vec2<bool>(arg_0.b, arg_0.b)), !vec2<bool>(true, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b))).c);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> f32 {
    let var_0 = select(select(firstLeadingBit(u_input.a), vec3<u32>(1u, firstTrailingBit(82803u), 52525u), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, arg_0.b, true), vec3<bool>(arg_2, arg_2, false)), !vec3<bool>(arg_0.b, true, false), arg_2), !vec3<bool>(false, arg_2, arg_2), !select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(false, false, false), vec3<bool>(arg_0.b, false, false)))), vec3<u32>(arg_1.x, ~0u >> (min(_wgslsmith_clamp_u32(14652u, 4294967295u, arg_1.x), arg_0.c) % 32u), 1u), vec3<bool>(true, _wgslsmith_dot_vec3_i32(u_input.e.ywz | vec3<i32>(u_input.c, -1i, u_input.e.x), abs(u_input.b)) >= (max(50237i, u_input.e.x) & -u_input.b.x), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d.xz - arg_0.d.zx));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.d.x)), _wgslsmith_f_op_f32(arg_0.a + 818f), _wgslsmith_f_op_f32(exp2(var_1.x)))));
    let var_3 = _wgslsmith_sub_i32(u_input.e.x, ~(-47860i & u_input.e.x) << (~arg_1.x % 32u));
    var var_4 = func_4(func_2(reverseBits(arg_1.x), vec2<bool>(true, true)), _wgslsmith_sub_vec2_u32(u_input.a.zy, select(u_input.a.xz, u_input.a.zy, !vec2<bool>(arg_0.b, arg_0.b))));
    return _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(1u, 26u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(835f, 557f) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], -1873f))), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))))));
    let var_1 = max(~1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, ~u_input.e.x, u_input.b.x), u_input.e.yyz));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.a.x, u_input.d))), 27u)], u_input.a.zx & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.a.x), vec2<u32>(u_input.a.x, 4294967295u)), false)) + _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(6008u, 27u)], firstTrailingBit(vec2<u32>(u_input.d, u_input.d)), any(vec4<bool>(true, true, true, true))))), true, max(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(23806u, 84856u)), vec2<u32>(u_input.d, 44546u)), func_2(countOneBits(1u), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), func_2(4294967295u, vec2<bool>(true, false)).b)).e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 26u)], var_0.x, global0[_wgslsmith_index_u32(1576u, 26u)])) - vec3<f32>(-1274f, -1078f, global0[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(u_input.d, 27u)], u_input.a.xz).c, 26u)]))), u_input.a.x);
    var var_3 = abs(vec2<i32>(var_1, firstLeadingBit(-select(0i, -14150i, false))));
    var var_4 = _wgslsmith_f_op_vec2_f32(round(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(func_4(Struct_1(-179f, var_2.b, var_2.c, var_2.d, var_2.c), u_input.a.xz).d.x, func_2(1u, vec2<bool>(var_2.b, true)).a), -466f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_2.d.x)), var_4.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2626f, var_2.a, -1702f, var_2.d.x)))), var_2.b)), var_3.x, ~u_input.d, vec2<i32>(-1i) * -vec2<i32>(min(u_input.c, -15842i), -18237i), vec3<u32>(u_input.d, u_input.d, 1996u));
}

