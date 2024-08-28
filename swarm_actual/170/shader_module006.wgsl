struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(176f), Struct_1(-1084f), Struct_1(-873f), Struct_1(-104f), Struct_1(757f), Struct_1(1033f), Struct_1(1035f), Struct_1(-257f), Struct_1(789f), Struct_1(-1229f), Struct_1(1543f), Struct_1(1000f), Struct_1(-1102f), Struct_1(-249f), Struct_1(1058f), Struct_1(-472f), Struct_1(-172f), Struct_1(-491f), Struct_1(-679f), Struct_1(-232f), Struct_1(-284f), Struct_1(1283f), Struct_1(136f), Struct_1(-1176f), Struct_1(-311f), Struct_1(1995f), Struct_1(-485f), Struct_1(1202f), Struct_1(-829f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> bool {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.b.x, 29u)];
    var var_1 = true;
    global0 = array<Struct_1, 29>();
    return select(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), select(true, true, false), -(~u_input.d >> ((1725u ^ u_input.b.x) % 32u)) > u_input.a);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_1(arg_1.a);
    var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, var_1.a, var_0.a, 1000f), vec4<f32>(561f, var_1.a, -1824f, -952f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, var_1.a, 1086f, var_0.a))))))));
    return vec2<bool>(any(!select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, false), vec3<bool>(true, true, arg_0)), vec3<bool>(true, arg_0, arg_0), true)), arg_0);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0;
    global0 = array<Struct_1, 29>();
    var var_1 = global0[_wgslsmith_index_u32(~u_input.b.x, 29u)];
    let var_2 = reverseBits(2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a, 1433f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a), 709f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, 1503f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1757f, var_1.a) + vec2<f32>(var_1.a, -1858f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1362f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) * _wgslsmith_f_op_f32(abs(-1550f))))), func_3(var_0.x && !var_0.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a, var_1.a) - _wgslsmith_f_op_f32(-725f * 201f))), ~(~select(vec4<i32>(15605i, 22071i, 1i, var_2), u_input.c, arg_0.x)), select(vec4<u32>(arg_2 & 0u, 4294967295u, _wgslsmith_mod_u32(arg_2, 4294967295u), u_input.b.x), vec4<u32>(0u, 4294967295u, 37023u, 11555u) | _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1978u, 3375u, arg_2), vec4<u32>(1u, 0u, arg_2, 0u)), select(!vec4<bool>(arg_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true)))));
    return firstTrailingBit(u_input.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_i32(36876i, ~18070i);
    global0 = array<Struct_1, 29>();
    var_0 = _wgslsmith_mod_i32(func_4(select(!func_3(arg_1, global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c, vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), !vec2<bool>(arg_1, false), func_1()), arg_0, _wgslsmith_add_u32(~1u, abs(u_input.b.x)) | ~1u, arg_0), u_input.a);
    var_0 = -u_input.d;
    var var_1 = !select(vec2<bool>(!(arg_1 | arg_1), arg_2.x), !(!func_3(arg_1, Struct_1(-1705f), vec4<i32>(u_input.a, 36070i, -2147483647i, u_input.a), vec4<u32>(28257u, u_input.b.x, u_input.b.x, 944u))), arg_2.x);
    return StorageBuffer(reverseBits(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.b.x, 25603u, 4294967295u)), max(vec3<u32>(59854u, u_input.b.x, 1666u) >> (vec3<u32>(u_input.b.x, 33828u, u_input.b.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u)))), _wgslsmith_mult_u32(u_input.b.x, firstTrailingBit(17865u)) ^ u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(Struct_1(-876f), true, vec4<bool>(func_1() && false, (2046i == firstTrailingBit(10884i)) | !(4294967295u != u_input.b.x), false, false));
}

