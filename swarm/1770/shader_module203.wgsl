struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, i32(-2147483648), -10517i);

var<private> global1: bool = true;

var<private> global2: array<vec4<u32>, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0));
    let var_1 = ~abs(abs(0u));
    let var_2 = 7430u;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - 161f), _wgslsmith_f_op_f32(arg_0 * -283f), false))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -623f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-258f - -242f)))), -120f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * var_0.b))))))));
    let var_4 = Struct_2(abs(min(countOneBits(reverseBits(vec3<i32>(2147483647i, 0i, 2147483647i))), firstLeadingBit(~vec3<i32>(-47218i, u_input.d, 32043i)))));
    return !(var_1 == ~_wgslsmith_dot_vec4_u32(firstTrailingBit(global2[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1, u_input.c.x, 48693u, 0u), vec4<u32>(0u, u_input.e, u_input.e, var_1))));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_3(Struct_2(max(vec3<i32>(~(-36311i), _wgslsmith_mult_i32(u_input.b, -3769i), _wgslsmith_sub_i32(-1i, 2147483647i)), -(~vec3<i32>(arg_0, global0.x, -11935i)))), global0.zz, all(select(vec2<bool>(true, arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, false), vec2<bool>(false, false)), !vec2<bool>(arg_2, false))) && (_wgslsmith_mult_i32(firstTrailingBit(0i), global0.x ^ arg_1.x) != -(i32(-1i) * -2147483647i)));
    let var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.c.x, 13129u, 42654u), ~(~(~(~vec3<u32>(9005u, u_input.c.x, 0u)))));
    var var_2 = Struct_3(var_0.a, select(vec2<i32>(u_input.d, 7570i) & -u_input.a, vec2<i32>(global0.x, global0.x >> (48511u % 32u)), select(vec2<bool>(false, arg_2), !vec2<bool>(arg_2, true), true)) << (vec2<u32>(_wgslsmith_div_u32(~var_1.x, 13273u ^ u_input.e), min(abs(11202u), reverseBits(u_input.c.x))) % vec2<u32>(32u)), !(!arg_2));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(740f, -2136f) - vec2<f32>(1579f, 699f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1364f, 957f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(221f, -1492f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-391f, 613f), vec2<f32>(1121f, -2248f)))))));
    return !vec3<bool>(select(select(true, true, false), true, var_2.c), true, var_2.c);
}

fn func_2() -> Struct_3 {
    var var_0 = !vec2<bool>(true, !(!select(true, false, false)));
    global1 = all(vec2<bool>(var_0.x & select(false, true, false), var_0.x));
    global1 = var_0.x;
    var var_1 = all(select(func_4(global0.x, vec2<i32>(1i, u_input.d & global0.x), func_3(690f) || true), vec3<bool>(select(var_0.x, var_0.x, var_0.x), select(var_0.x, all(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), all(vec4<bool>(false, false, true, var_0.x))), (u_input.d < u_input.d) & !var_0.x), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false)), func_4(global0.x, u_input.a, true), true)));
    var var_2 = u_input.e;
    return Struct_3(Struct_2(-vec3<i32>(-2147483647i, ~u_input.b, -global0.x)), vec2<i32>(select(-_wgslsmith_mult_i32(u_input.b, u_input.d), _wgslsmith_clamp_i32(global0.x, 0i, 16123i), var_0.x), ~global0.x), true);
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec3<u32> {
    var var_0 = func_2();
    let var_1 = ~(~4294967295u) != u_input.e;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -303f);
    let var_3 = arg_0;
    let var_4 = firstLeadingBit(-13041i);
    return firstTrailingBit(abs(vec3<u32>(44736u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 15630u, u_input.e), vec3<u32>(u_input.c.x, u_input.c.x, 114587u)), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(select(~(vec3<i32>(global0.x, global0.x, -13157i) | vec3<i32>(0i, -11461i, -1i)), vec3<i32>(44754i, -u_input.a.x, u_input.d), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true))) >> ((func_1(1293f, vec4<bool>(true, true, true, true)) << (~vec3<u32>(u_input.e, u_input.e, u_input.e) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = vec3<i32>(_wgslsmith_dot_vec2_i32(global0.yx, u_input.a), u_input.b, u_input.d);
    global1 = false;
    var var_0 = Struct_1(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-278f - -302f), 1f, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(686f, var_0.b))) - vec2<f32>(var_0.b, 2171f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, var_0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.a) + vec2<f32>(var_0.a, -661f)))))));
    global2 = array<vec4<u32>, 19>();
    global1 = any(!vec2<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

