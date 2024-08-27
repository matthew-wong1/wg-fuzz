struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, vec3<i32>(44550i, i32(-2147483648), i32(-2147483648))), Struct_1(true, vec3<i32>(-48197i, 2147483647i, 5125i)), Struct_1(false, vec3<i32>(-1i, i32(-2147483648), i32(-2147483648))), Struct_1(true, vec3<i32>(-2341i, -33867i, 0i)), Struct_1(true, vec3<i32>(1i, 71556i, -1i)));

var<private> global1: Struct_2 = Struct_2(false, vec4<i32>(23396i, 1i, 0i, -1i), vec3<bool>(true, false, false), 27185u);

var<private> global2: array<vec4<i32>, 14>;

var<private> global3: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-362f, -1000f, 488f), vec3<f32>(270f, 637f, -535f), vec3<f32>(174f, 519f, 582f));

var<private> global4: array<Struct_2, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    global1 = Struct_2(all(global1.c.yx), global2[_wgslsmith_index_u32(global1.d, 14u)], vec3<bool>(global1.c.x, global1.c.x, !all(vec2<bool>(false, false))), global1.d);
    global2 = array<vec4<i32>, 14>();
    global0 = array<Struct_1, 5>();
    let var_0 = firstLeadingBit(global1.b);
    var var_1 = global1.b.x;
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(103834u, global1.d, global1.d) << (vec3<u32>(53034u, 35966u, 0u) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.a, 4294967295u), select(vec3<bool>(false, false, global1.a), vec3<bool>(true, global1.a, global1.a), false)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.a, 4294967295u), vec3<u32>(23831u, 4294967295u, 0u)), ~vec3<u32>(1u, 15948u, 0u))), firstLeadingBit(firstTrailingBit(u_input.a))), select(vec2<u32>(4294967295u, ~1u), select(_wgslsmith_div_vec2_u32(vec2<u32>(global1.d, u_input.a), vec2<u32>(1u, u_input.c)), firstTrailingBit(vec2<u32>(u_input.b, global1.d)), true), global1.a));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = global4[_wgslsmith_index_u32(u_input.c, 24u)];
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -691f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0)))) * _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -627f))), -1767f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, arg_0))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -3010f))))))));
    let var_3 = arg_2.x && true;
    let var_4 = Struct_1(countOneBits(~1u) > u_input.b, ~var_0.b.xyy);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(11467u, global1.d), func_3() | reverseBits(firstLeadingBit(vec2<u32>(u_input.a, var_0.d)) >> (abs(vec2<u32>(global1.d, var_0.d)) % vec2<u32>(32u))));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    global3 = array<vec3<f32>, 3>();
    global4 = array<Struct_2, 24>();
    let var_0 = vec2<bool>(any(vec2<bool>(false, !global1.a)), false);
    global2 = array<vec4<i32>, 14>();
    global4 = array<Struct_2, 24>();
    return _wgslsmith_mod_vec2_u32(~max(~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.d, global1.d), vec2<u32>(global1.d, 75861u)), ~(~vec2<u32>(u_input.a, global1.d))), countOneBits(~func_2(arg_0, Struct_1(var_0.x, global1.b.wwx), vec4<bool>(false, global1.a, var_0.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(~(~func_1(-953f)), vec2<u32>(global1.d, u_input.b));
    global4 = array<Struct_2, 24>();
    global3 = array<vec3<f32>, 3>();
    let var_1 = vec2<bool>(select((_wgslsmith_div_i32(-41560i, global1.b.x) >= min(u_input.e.x, u_input.e.x)) && (-1i > (u_input.d.x << (4294967295u % 32u))), global1.a, any(!select(global1.c.zx, global1.c.zx, vec2<bool>(global1.a, global1.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(316f - 794f) - _wgslsmith_f_op_f32(898f * -371f)), _wgslsmith_div_f32(-1584f, -589f))) <= _wgslsmith_f_op_f32(min(-522f, _wgslsmith_f_op_f32(floor(-1636f)))));
    var var_2 = var_0;
    var_2 = reverseBits(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f + _wgslsmith_div_f32(1000f, 1441f))), global0[_wgslsmith_index_u32(~(~var_0.x << (var_2.x % 32u)), 5u)], select(select(!vec4<bool>(false, var_1.x, true, var_1.x), select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(global1.a, false, var_1.x, false), false), select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, false, false, var_1.x), true)), select(vec4<bool>(global1.a, false, false, global1.a), vec4<bool>(var_1.x, true, global1.a, true), !vec4<bool>(true, true, global1.a, var_1.x)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.zw, 238f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-637f, _wgslsmith_f_op_f32(f32(-1f) * -1650f), false))))), abs(firstLeadingBit(max(vec4<i32>(u_input.d.x, global1.b.x, global1.b.x, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 21722i, 2147483647i, u_input.e.x), vec4<i32>(-30115i, global1.b.x, global1.b.x, 2147483647i))))), -47271i);
}

