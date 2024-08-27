struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
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

var<private> global0: bool = true;

var<private> global1: vec4<f32>;

var<private> global2: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = ~u_input.a.yx;
    global0 = arg_0;
    global2 = array<vec2<bool>, 11>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(280f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-479f * global1.x))), any(!select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, false), arg_0)))));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1471f, arg_0, -468f, 350f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, -240f, 937f, -320f)))) - vec4<f32>(601f, 1283f, arg_0, arg_0)));
    var var_0 = vec3<bool>(true, any(select(vec3<bool>(arg_2.e && true, arg_2.d, arg_2.d || false), select(vec3<bool>(false, false, false), vec3<bool>(arg_2.d, false, arg_2.d), arg_2.e), select(!vec3<bool>(true, false, arg_2.d), vec3<bool>(arg_2.e, arg_2.d, false), select(vec3<bool>(arg_2.d, arg_2.d, true), vec3<bool>(false, arg_2.d, arg_2.e), vec3<bool>(true, arg_2.e, arg_2.d))))), arg_2.d);
    var var_1 = global1.x;
    let var_2 = select(global2[_wgslsmith_index_u32(11304u, 11u)], select(!global2[_wgslsmith_index_u32(~arg_1.x, 11u)], vec2<bool>(true, false), var_0.yz), global2[_wgslsmith_index_u32(54450u, 11u)]);
    var var_3 = Struct_1(vec3<f32>(343f, -778f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(trunc(arg_2.a.x))), arg_0)), ~vec4<u32>(~arg_2.b.x, arg_1.x, _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.xz), 10045u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)), true, any(vec2<bool>(all(!vec2<bool>(var_2.x, true)), select(40792u != u_input.a.x, any(vec4<bool>(false, var_0.x, true, true)), all(vec3<bool>(true, true, true))))));
    return Struct_1(global1.zwz, _wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(var_3.b.x), countOneBits(_wgslsmith_sub_u32(u_input.e, 58755u)), _wgslsmith_sub_u32(arg_3, arg_2.b.x) << (reverseBits(arg_2.b.x) % 32u), _wgslsmith_add_u32(arg_3, ~arg_1.x)), select(vec4<u32>(~1u, arg_3, ~4976u, var_3.b.x), vec4<u32>(arg_1.x, max(4294967295u, 4294967295u), 1u, ~1u), !all(vec2<bool>(arg_2.d, false)))), _wgslsmith_f_op_f32(sign(var_3.a.x)), var_2.x, false);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = 13788i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.yyx), firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 1u, 1u, 40944u), ~u_input.a), u_input.a)), global1.x, any(vec4<bool>(true, true, true, true)), false);
    var_0 = reverseBits(-(~(-10386i ^ arg_0.x)) >> (~(~u_input.a.x) % 32u));
    let var_2 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true)) + -724f)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(41981u, u_input.a.x, 4294967295u) | vec3<u32>(u_input.a.x, 1u, var_1.b.x), ~vec3<u32>(4476u, 206u, var_1.b.x))), Struct_1(global1.yxz, ~(~vec4<u32>(u_input.e, 6428u, u_input.a.x, var_1.b.x)), var_1.c, var_1.d, var_1.e), 36880u);
    var_0 = arg_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1518f + -301f), _wgslsmith_f_op_f32(exp2(var_1.a.x)))) + _wgslsmith_f_op_f32(-var_2.c)) + _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, var_2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-108f, global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1924f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x - -557f)))), -517f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 653f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global2 = array<vec2<bool>, 11>();
    global2 = array<vec2<bool>, 11>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(select(-firstTrailingBit(u_input.c.xw), abs(_wgslsmith_mod_vec2_i32(u_input.c.wy, vec2<i32>(1i, 45285i))), true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(-reverseBits(vec2<i32>(u_input.c.x, u_input.b)))), 520f))));
    let var_2 = _wgslsmith_mult_vec3_u32(select(abs(~min(u_input.a.wxx, vec3<u32>(0u, u_input.e, 42828u))), max(reverseBits(vec3<u32>(62549u, 4294967295u, 8806u)), u_input.a.wzy), !vec3<bool>(true, false, 0u == u_input.a.x)), ~(vec3<u32>(~0u, max(1u, u_input.d), ~84299u) | _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d), vec3<u32>(52538u, 0u, u_input.e)), vec3<u32>(13783u, 88552u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1479f);
}

