struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<f32>(776f, 1201f), vec3<f32>(1351f, 648f, -940f), vec2<u32>(1u, 14294u)), Struct_1(vec2<f32>(-380f, -1595f), vec3<f32>(-1069f, 185f, -371f), vec2<u32>(83372u, 0u)), Struct_1(vec2<f32>(-1000f, 382f), vec3<f32>(-1000f, -579f, 602f), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(-281f, 681f), vec3<f32>(-790f, 338f, -1416f), vec2<u32>(54670u, 19877u)), Struct_1(vec2<f32>(1000f, 1000f), vec3<f32>(-1726f, 1435f, -582f), vec2<u32>(4294967295u, 16221u)), Struct_1(vec2<f32>(676f, -1000f), vec3<f32>(2538f, 1000f, -252f), vec2<u32>(29766u, 4294967295u)), Struct_1(vec2<f32>(-315f, -1359f), vec3<f32>(-3117f, -1000f, 847f), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<f32>(-440f, -1609f), vec3<f32>(-1043f, 1879f, -1196f), vec2<u32>(45914u, 4294967295u)), Struct_1(vec2<f32>(-1807f, -475f), vec3<f32>(-636f, -390f, -1293f), vec2<u32>(0u, 4294967295u)), Struct_1(vec2<f32>(-1570f, -1426f), vec3<f32>(158f, 496f, -1168f), vec2<u32>(0u, 0u)), Struct_1(vec2<f32>(518f, 235f), vec3<f32>(-830f, -1815f, 1254f), vec2<u32>(49324u, 20969u)), Struct_1(vec2<f32>(-277f, 409f), vec3<f32>(-242f, -1039f, -1426f), vec2<u32>(52094u, 34629u)), Struct_1(vec2<f32>(965f, -1010f), vec3<f32>(103f, -816f, -584f), vec2<u32>(63544u, 0u)), Struct_1(vec2<f32>(557f, -1375f), vec3<f32>(-577f, -1749f, -911f), vec2<u32>(21943u, 0u)), Struct_1(vec2<f32>(-1155f, -1000f), vec3<f32>(-1096f, -1632f, -840f), vec2<u32>(1u, 1u)), Struct_1(vec2<f32>(-1175f, 362f), vec3<f32>(132f, -1570f, -502f), vec2<u32>(0u, 184u)), Struct_1(vec2<f32>(318f, 105f), vec3<f32>(-172f, -199f, -615f), vec2<u32>(0u, 26697u)), Struct_1(vec2<f32>(-575f, 679f), vec3<f32>(-444f, 1092f, -1615f), vec2<u32>(4294967295u, 0u)));

var<private> global1: vec3<i32> = vec3<i32>(1i, -1i, 8340i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2696f, -1599f)));
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_1 = global1.yz;
    var_1 = global1.yy;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) * _wgslsmith_f_op_f32(ceil(1604f))) + 211f), 460f);
}

fn func_1(arg_0: f32, arg_1: u32) -> vec3<f32> {
    return vec3<f32>(-1302f, _wgslsmith_f_op_f32(-816f - _wgslsmith_f_op_f32(func_2(~vec4<u32>(u_input.a.x, 1u, 4294967295u, 4414u), 9028i, !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_0, false)) + 644f)) + _wgslsmith_f_op_f32(-arg_0)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    global1 = vec3<i32>(u_input.d, _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.d, global1.x, global1.x) & -vec3<i32>(1i, -52300i, -2147483647i)), countOneBits(-vec3<i32>(0i, 2147483647i, 1i))), global1.x);
    global0 = array<Struct_1, 18>();
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.c.x, ~4294967295u), arg_1.c);
    global1 = vec3<i32>(u_input.d, global1.x, 2147483647i);
    var var_1 = !((reverseBits(var_0.x) != (24683u ^ firstLeadingBit(arg_1.c.x))) | arg_0);
    return Struct_3(global1.yy, var_0.x ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 5870u, 39912u, var_0.x), vec4<u32>(0u, u_input.b, 0u, 1u) << (vec4<u32>(u_input.c.x, var_0.x, 4294967295u, arg_1.c.x) % vec4<u32>(32u))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(false, false, arg_0, true), true), vec4<bool>(true, arg_0, true, arg_0)), vec4<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(true, arg_0)), all(vec4<bool>(arg_0, false, false, true)), true), select(!vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(arg_0, arg_0, arg_0, false), arg_0 & arg_0)), select(select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0), all(vec3<bool>(true, arg_0, false))), select(!vec4<bool>(false, false, arg_0, true), !vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, false, arg_0, arg_0)), !vec4<bool>(false, false, true, arg_0)), vec4<bool>(!any(vec2<bool>(arg_0, true)), any(select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, false, arg_0, false), arg_0)), u_input.c.x != ~arg_1.c.x, !(!arg_0))), ~var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(false, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -584f))), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-929f * -1000f)), firstLeadingBit(67944u))), vec2<u32>(~reverseBits(u_input.b), min(1u, ~17407u))));
    global0 = array<Struct_1, 18>();
    let var_1 = ~985u;
    let var_2 = vec3<i32>(i32(-1i) * -(~(-15625i) ^ var_0.a.x), var_0.a.x, -2147483647i);
    var var_3 = i32(-1i) * -2147483647i;
    var var_4 = -var_0.a.x;
    global0 = array<Struct_1, 18>();
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(abs(global1.x), _wgslsmith_sub_i32(reverseBits(-9664i), ~var_5.x)), 2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-994f, -463f))), _wgslsmith_f_op_f32(466f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -154f))))));
}

