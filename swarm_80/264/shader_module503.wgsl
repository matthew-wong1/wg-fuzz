struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<u32, 5>;

var<private> global3: array<f32, 10> = array<f32, 10>(-1000f, -601f, -666f, -215f, 435f, -1238f, 986f, -112f, -534f, 226f);

var<private> global4: array<Struct_1, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: f32) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(-43350i != ~u_input.b, arg_1.x), global0[_wgslsmith_index_u32(~abs(4294967295u), 13u)]);
    return vec2<bool>(false, -u_input.c < 1i);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(u_input.c <= firstLeadingBit(abs(53030i)), arg_0.x), Struct_1(any(!arg_0) || true, true));
    global3 = array<f32, 10>();
    global3 = array<f32, 10>();
    var var_1 = select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, arg_2, false), vec3<bool>(true, true, var_0.b.a))), vec3<bool>(false, all(select(vec3<bool>(var_0.a.b, false, true), vec3<bool>(arg_2, arg_2, arg_0.x), vec3<bool>(var_0.b.b, var_0.b.b, arg_0.x))), !(arg_1.x == -1970f)), !(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 10u)] - 2448f) < _wgslsmith_f_op_f32(min(-1000f, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 10u)])))), select(!(!vec3<bool>(true, false, arg_0.x)), !select(vec3<bool>(var_0.b.a, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(arg_2, false, var_0.b.b), vec3<bool>(arg_0.x, var_0.a.b, true), arg_0.x)), select(vec3<bool>(true, false, arg_2), !select(vec3<bool>(true, var_0.b.a, var_0.a.a), vec3<bool>(arg_0.x, arg_2, arg_0.x), false), all(vec4<bool>(arg_0.x, false, var_0.b.b, arg_2)))), !select(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, true, false), !arg_0.x), vec3<bool>(false, true, var_0.b.a), vec3<bool>(func_3(vec2<bool>(true, false), vec3<bool>(false, false, true), 61603u, 167f).x, any(vec4<bool>(arg_2, false, arg_0.x, arg_2)), u_input.d.x > 4294967295u)));
    let var_2 = _wgslsmith_clamp_u32(countOneBits(u_input.a) >> (firstTrailingBit(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)] >> (u_input.d.x % 32u), 5u)])) % 32u), firstLeadingBit(abs(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(9940u, 5u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], 5u)]), vec2<u32>(1247u, u_input.d.x))))), select(0u, ~1u, true || (var_0.b.b && (true || arg_2))));
    return _wgslsmith_f_op_f32(381f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-827f, _wgslsmith_div_f32(681f, arg_1.x))) - global3[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2, 5u)], 5u)], firstLeadingBit(global2[_wgslsmith_index_u32(38855u, 5u)]), true), 10u)]) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(36835u, 10u)]))))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1875f))), -1537f, (111f != _wgslsmith_f_op_f32(-arg_2.x)) == any(vec3<bool>(false, true, false)))));
    var var_1 = firstLeadingBit(u_input.d.xy) & (u_input.d.yz ^ (~vec2<u32>(4294967295u, 1u) | ((vec2<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 5u)], arg_1.x) >> (vec2<u32>(28047u, 65295u) % vec2<u32>(32u))) | ~u_input.d.zz)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_4(!func_3(vec2<bool>(false, true), vec3<bool>(false, false, false), 1u, -588f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(475f, -267f)))), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))) != _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.x, _wgslsmith_div_f32(639f, var_0)))), select(all(vec3<bool>(false, true, false)) | true, select(true, any(vec3<bool>(false, false, true)), any(vec3<bool>(true, false, true))), true) && (global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~arg_1.x, 5u)] | arg_1.x, 10u)] < -1472f));
    global4 = array<Struct_1, 4>();
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-867f, _wgslsmith_f_op_f32(-var_0), arg_2.x, arg_2.x) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1658f, 279f) * vec4<f32>(-811f, -317f, -365f, arg_2.x)) * vec4<f32>(237f, -1283f, var_0, 320f))))));
    return vec2<bool>(!var_2.a || !func_3(select(vec2<bool>(false, false), vec2<bool>(var_2.a, true), vec2<bool>(false, var_2.a)), !vec3<bool>(var_2.b, var_2.b, true), global2[_wgslsmith_index_u32(4294967295u, 5u)] >> (0u % 32u), _wgslsmith_f_op_f32(f32(-1f) * -418f)).x, !var_2.a);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = func_2(-2147483647i, u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-615f, global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(23463u, 10u)]), vec3<f32>(global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)], 1194f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 10u)], 1023f, -1000f) - vec3<f32>(448f, -158f, -1052f)), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 10u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 5u)], 10u)], -814f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1286f, 537f, global3[_wgslsmith_index_u32(arg_2.x, 10u)]))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(u_input.d.x, 10u)], global3[_wgslsmith_index_u32(1u, 10u)]) * vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 10u)], -108f, global3[_wgslsmith_index_u32(arg_2.x, 10u)])), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -439f, global3[_wgslsmith_index_u32(0u, 10u)]), vec3<f32>(584f, global3[_wgslsmith_index_u32(24221u, 10u)], global3[_wgslsmith_index_u32(15162u, 10u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 10u)], 538f, 1893f))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true))))));
    return Struct_1(!var_0.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 5u)], 5u)], 0u)), ~(~u_input.d.zz)), abs(~vec2<u32>(27730u, 0u) >> (~u_input.d.xx % vec2<u32>(32u))));
    global3 = array<f32, 10>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(var_0.x, 10u)], 334f)), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(var_0.x ^ select(0u, 4294967295u, true)), global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(0u, var_0.x)), 5u)]), 5u)], 10u)]);
    var var_2 = u_input.b;
    var var_3 = func_1(u_input.c, u_input.b, u_input.d.xz);
    var var_4 = global0[_wgslsmith_index_u32(var_0.x, 13u)];
    var var_5 = !(!(!vec3<bool>(false | var_4.b, var_4.b, false)));
    var var_6 = min(~(~var_0.x) >> (~var_0.x % 32u), var_0.x << ((var_0.x ^ u_input.a) % 32u)) >= ~(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(countOneBits(-66255i ^ u_input.b), -1i, u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x) - var_1.x) - _wgslsmith_f_op_f32(1074f * var_1.x)));
}

