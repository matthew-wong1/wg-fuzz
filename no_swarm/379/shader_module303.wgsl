struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
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

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: Struct_1 = Struct_1(540f, 3356u);

var<private> global2: i32 = 1i;

var<private> global3: array<vec4<i32>, 17>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.c;
    return Struct_1(_wgslsmith_f_op_f32(-arg_0.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u) >> (firstTrailingBit(vec2<u32>(u_input.c, 4294967295u)) % vec2<u32>(32u)), abs(vec2<u32>(global1.b, 1u))));
}

fn func_3() -> u32 {
    global0 = array<vec4<u32>, 1>();
    let var_0 = _wgslsmith_add_u32(countOneBits(min(global1.b, _wgslsmith_div_u32(4294967295u, 24903u) << (reverseBits(global1.b) % 32u))), u_input.a.x);
    global0 = array<vec4<u32>, 1>();
    var var_1 = !(u_input.e.x == _wgslsmith_div_u32(global1.b, ~12129u));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a * global1.a), _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 1541f) - vec2<f32>(-1091f, global1.a)), _wgslsmith_div_vec2_f32(vec2<f32>(-1070f, 460f), vec2<f32>(global1.a, global1.a))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 538f) * vec2<f32>(global1.a, 950f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1222f, 1702f))), select(vec2<bool>(true, true), vec2<bool>(false, true), 1u <= u_input.c)))), select(-vec2<i32>(-1i, u_input.d >> (global1.b % 32u)), u_input.b, vec2<bool>(any(vec4<bool>(false, false, false, false)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)))));
    return 25024u;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    global3 = array<vec4<i32>, 17>();
    var var_0 = 165f;
    global3 = array<vec4<i32>, 17>();
    var var_1 = u_input.c;
    let var_2 = min(4294967295u, arg_0.b);
    return select(!vec2<bool>(any(vec2<bool>(true, false)), false), vec2<bool>(select(u_input.b.x >= (u_input.d ^ u_input.d), select(true, false, false) | true, true != all(vec2<bool>(true, false))), !all(vec3<bool>(true, false, true))), true);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = !select(!func_4(Struct_1(arg_2.a, 4294967295u), func_3(), _wgslsmith_div_f32(global1.a, arg_2.a), arg_2), arg_1, !(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, -15008i)) > reverseBits(2147483647i)));
    let var_1 = u_input.a.x & _wgslsmith_div_u32(arg_0, u_input.c);
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.a, -1632f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1119f, 549f), vec2<f32>(1071f, -987f))))))), vec2<i32>(-2063i, u_input.d));
    let var_3 = !(!var_0.x);
    var var_4 = u_input.b.x | min(~(~_wgslsmith_sub_i32(u_input.d, u_input.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(-8408i, 1477i & u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 32116i, 3499i, -2527i), global3[_wgslsmith_index_u32(arg_0, 17u)])), vec3<i32>(-u_input.b.x, ~u_input.d, u_input.b.x << (240u % 32u))));
    return !select(arg_1.x, any(!(!vec4<bool>(false, var_0.x, true, var_0.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) - vec2<f32>(global1.a, global1.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a, 657f), vec2<f32>(1674f, global1.a), true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-798f, -1000f) - vec2<f32>(global1.a, 1907f)))))), u_input.b);
    let var_0 = !all(vec3<bool>(false, select(all(vec4<bool>(true, false, false, false)), true, func_2(u_input.a.x, vec2<bool>(true, true), Struct_1(-1000f, 4294967295u), u_input.a.x)), all(vec3<bool>(false, true, true))));
    global3 = array<vec4<i32>, 17>();
    var var_1 = firstTrailingBit(u_input.e.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(select(2357f, _wgslsmith_f_op_f32(step(global1.a, global1.a)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a, global1.a))), _wgslsmith_f_op_f32(func_1(vec2<f32>(-533f, 672f), vec2<i32>(u_input.d, u_input.d)).a - _wgslsmith_f_op_f32(-global1.a)))));
    var var_3 = !select(!select(!vec3<bool>(false, true, var_0), select(vec3<bool>(false, false, var_0), vec3<bool>(false, false, false), false), !vec3<bool>(var_0, var_0, var_0)), select(!vec3<bool>(false, var_0, false), !(!vec3<bool>(var_0, true, var_0)), var_0), vec3<bool>(select(false, any(vec4<bool>(var_0, true, var_0, true)), !var_0), true != any(vec2<bool>(true, false)), max(u_input.d, u_input.d) < -2147483647i));
    global1 = Struct_1(-545f, ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-u_input.d, u_input.d));
}

