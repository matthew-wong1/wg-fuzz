struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<f32>(105f, 186f), true, vec3<bool>(true, false, true), vec2<bool>(false, false), true), Struct_1(vec2<f32>(-358f, -536f), true, vec3<bool>(false, false, false), vec2<bool>(true, true), false), Struct_1(vec2<f32>(-280f, -296f), false, vec3<bool>(false, true, false), vec2<bool>(true, false), false), Struct_1(vec2<f32>(-659f, -532f), true, vec3<bool>(true, true, true), vec2<bool>(true, true), false), Struct_1(vec2<f32>(989f, 128f), true, vec3<bool>(true, true, false), vec2<bool>(false, true), true), Struct_1(vec2<f32>(-317f, 2115f), true, vec3<bool>(false, false, false), vec2<bool>(true, true), true), Struct_1(vec2<f32>(-1737f, -249f), false, vec3<bool>(true, true, false), vec2<bool>(true, false), true), Struct_1(vec2<f32>(646f, 447f), false, vec3<bool>(false, true, true), vec2<bool>(true, true), true), Struct_1(vec2<f32>(808f, -439f), true, vec3<bool>(true, true, true), vec2<bool>(false, false), true), Struct_1(vec2<f32>(1287f, -1341f), true, vec3<bool>(false, true, false), vec2<bool>(true, true), false), Struct_1(vec2<f32>(-1196f, -765f), true, vec3<bool>(false, true, false), vec2<bool>(false, true), true), Struct_1(vec2<f32>(-1397f, -1162f), false, vec3<bool>(true, true, true), vec2<bool>(false, false), true), Struct_1(vec2<f32>(-2244f, 183f), false, vec3<bool>(true, true, false), vec2<bool>(true, true), false), Struct_1(vec2<f32>(395f, 1000f), true, vec3<bool>(true, false, false), vec2<bool>(true, false), false), Struct_1(vec2<f32>(974f, 712f), true, vec3<bool>(false, true, true), vec2<bool>(true, false), true), Struct_1(vec2<f32>(601f, -685f), false, vec3<bool>(true, false, false), vec2<bool>(false, false), true), Struct_1(vec2<f32>(-454f, -267f), false, vec3<bool>(true, true, true), vec2<bool>(false, false), true), Struct_1(vec2<f32>(-485f, -109f), true, vec3<bool>(true, true, true), vec2<bool>(true, false), false), Struct_1(vec2<f32>(1000f, -1000f), true, vec3<bool>(true, true, true), vec2<bool>(false, true), true), Struct_1(vec2<f32>(1540f, 1685f), false, vec3<bool>(false, true, false), vec2<bool>(false, true), true), Struct_1(vec2<f32>(691f, -159f), true, vec3<bool>(false, false, true), vec2<bool>(true, false), false), Struct_1(vec2<f32>(415f, 407f), false, vec3<bool>(false, true, false), vec2<bool>(false, true), true), Struct_1(vec2<f32>(-1460f, 404f), true, vec3<bool>(false, true, false), vec2<bool>(true, true), false), Struct_1(vec2<f32>(-1903f, 1260f), true, vec3<bool>(true, false, false), vec2<bool>(true, true), true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = arg_1.e;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), -1223f, arg_1.a.x));
    var var_2 = firstLeadingBit(u_input.b) << (u_input.b % 32u);
    global1 = array<Struct_1, 24>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(ceil(arg_1.a.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2349f, 160f) * var_1.yy) * vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x + var_1.x), _wgslsmith_f_op_f32(-var_1.x)))), true, !arg_1.c, !select(vec2<bool>(true, true), !(!vec2<bool>(false, arg_1.d.x)), select(vec2<bool>(var_0, var_0), arg_1.c.yz, vec2<bool>(true, true))), true);
    return select(!vec4<bool>(arg_1.e, !(true && var_3.d.x), true, var_0), !(!vec4<bool>(false, var_3.b, !var_0, any(vec2<bool>(var_0, var_3.e)))), !all(!vec3<bool>(arg_1.b, arg_1.d.x, false)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-321f, -593f)), _wgslsmith_f_op_f32(423f - -2178f)), vec2<f32>(-1182f, _wgslsmith_f_op_f32(-378f + -692f)))), any(!(!func_3(vec4<i32>(12445i, 2982i, -3740i, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 23u)]))), func_3(vec4<i32>(firstLeadingBit(u_input.c.x), 2147483647i, 36263i, u_input.a), global0[_wgslsmith_index_u32(1u, 23u)]).zxy, !vec2<bool>(true, select(u_input.b < 4294967295u, 0i >= u_input.c.x, true)), true);
    var var_1 = _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1032f))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-550f, -1585f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, var_0.a.x))))))), true, !(!func_3(-vec4<i32>(u_input.a, u_input.a, u_input.a, -49416i), Struct_1(vec2<f32>(-827f, var_0.a.x), var_0.c.x, vec3<bool>(var_0.c.x, false, var_0.e), vec2<bool>(true, false), true)).wyx), vec2<bool>(true, any(select(var_0.c, vec3<bool>(true, true, false), vec3<bool>(var_0.e, var_0.b, false)))), all(select(vec4<bool>(var_0.e, true, all(var_0.d), true), func_3(firstTrailingBit(vec4<i32>(-1i, u_input.a, u_input.a, u_input.c.x)), global0[_wgslsmith_index_u32(~u_input.b, 23u)]), vec4<bool>(!var_0.e, func_3(u_input.c, global0[_wgslsmith_index_u32(u_input.b, 23u)]).x, false, all(vec4<bool>(var_0.e, false, var_0.b, false))))));
    var var_3 = global0[_wgslsmith_index_u32(44561u, 23u)];
    global0 = array<Struct_1, 23>();
    return !(!(!vec4<bool>(all(var_0.d), true, var_2.e || true, true)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    global1 = array<Struct_1, 24>();
    var var_0 = ~vec4<u32>(~_wgslsmith_sub_u32(4294967295u, u_input.b | u_input.b), ~1u, _wgslsmith_mod_u32(4294967295u, u_input.b), ~10571u);
    var var_1 = u_input.c.xz;
    let var_2 = func_2();
    let var_3 = global0[_wgslsmith_index_u32(arg_0.x, 23u)];
    return min(~reverseBits(min(_wgslsmith_div_u32(1u, 1u), arg_0.x | var_0.x)), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(select(-vec2<i32>(-18005i, -u_input.a), u_input.c.xy, true), ~u_input.c.yz);
    let var_1 = u_input.c;
    global0 = array<Struct_1, 23>();
    let var_2 = max(~vec4<u32>(u_input.b, firstTrailingBit(0u) >> (18420u % 32u), u_input.b, firstTrailingBit(func_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 28307u), vec3<bool>(false, false, false), 1641f, vec3<bool>(true, false, true)))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(min(u_input.b, u_input.b), ~u_input.b, func_1(vec4<u32>(23608u, u_input.b, 1u, 0u), vec3<bool>(false, false, false), 280f, vec3<bool>(false, true, true))), firstTrailingBit(countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.b)))), ~14027u, 80099u, u_input.b << (u_input.b % 32u)));
    var var_3 = ~(-(~vec4<i32>(41811i, 8454i, -u_input.a, 2147483647i)));
    var var_4 = global1[_wgslsmith_index_u32(var_2.x, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(85590u, _wgslsmith_mod_u32(var_2.x, u_input.b)) | vec2<u32>(select(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(var_2.x, 24230u, 0u, var_2.x)), _wgslsmith_dot_vec4_u32(var_2, var_2), all(vec4<bool>(false, false, var_4.e, var_4.e))), u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, var_4.a.x, 718f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-551f, var_4.a.x, var_4.a.x), vec3<f32>(-1000f, var_4.a.x, var_4.a.x))))), vec3<f32>(2340f, var_4.a.x, _wgslsmith_f_op_f32(step(var_4.a.x, _wgslsmith_f_op_f32(770f - 667f))))), vec2<u32>(select(0u, countOneBits(14807u), !var_4.b), abs(~50292u)), 0u);
}

