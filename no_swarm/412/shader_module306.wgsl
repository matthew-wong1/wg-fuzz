struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_5, arg_3: vec4<bool>) -> f32 {
    var var_0 = 1u;
    var_0 = 50432u;
    var_0 = ~40604u;
    var_0 = 0u;
    global0 = array<u32, 20>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f - arg_2.c.x) + _wgslsmith_f_op_f32(arg_1 * arg_1)) * _wgslsmith_div_f32(-160f, _wgslsmith_f_op_f32(round(arg_2.c.x)))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    let var_0 = -select(~(~2147483647i), -3360i, 1000f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(-2147483647i, 12346i)), 1681f, Struct_5(Struct_4(u_input.a.zx), false, vec3<f32>(893f, 940f, 220f)), arg_3))));
    var var_1 = ~vec3<i32>(u_input.a.x, ~var_0, _wgslsmith_div_i32(-21428i, 23157i));
    global0 = array<u32, 20>();
    return _wgslsmith_f_op_f32(min(-409f, -2661f));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: u32) -> Struct_4 {
    var var_0 = vec2<f32>(arg_0, -2850f);
    let var_1 = Struct_5(Struct_4(arg_1.a), arg_2, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(func_2(~vec4<u32>(10393u, 62488u, u_input.b.x, 13800u), vec3<u32>(11422u, u_input.b.x, u_input.b.x) >> (vec3<u32>(94450u, 63906u, arg_3) % vec3<u32>(32u)), Struct_1(u_input.b.x), !vec4<bool>(arg_2, true, true, arg_2))), -176f))));
    var var_2 = select(select(select(vec2<bool>(var_1.c.x > 804f, any(vec2<bool>(var_1.b, var_1.b))), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(var_1.b, true), vec2<bool>(false, var_1.b)), true), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), arg_2)), vec2<bool>(var_1.b, true)), select(vec2<bool>(false, false), vec2<bool>(arg_0 > var_0.x, !all(vec4<bool>(arg_2, arg_2, arg_2, true))), vec2<bool>(all(select(vec4<bool>(false, var_1.b, false, true), vec4<bool>(var_1.b, false, false, arg_2), arg_2)), !all(vec3<bool>(var_1.b, arg_2, true)))), (var_1.b || (_wgslsmith_f_op_f32(trunc(-991f)) != 718f)) && !(firstLeadingBit(u_input.a.x) != u_input.a.x));
    var_2 = select(vec2<bool>(!select(false, arg_1.a.x != 46926i, var_1.a.a.x >= 37092i), select((46174u | u_input.b.x) == u_input.b.x, var_1.b, true)), select(vec2<bool>(arg_2, (arg_1.a.x == var_1.a.a.x) | (u_input.b.x < u_input.b.x)), select(vec2<bool>(!var_1.b, !var_1.b), !(!vec2<bool>(var_1.b, arg_2)), all(vec2<bool>(true, true))), all(select(select(vec3<bool>(var_2.x, true, false), vec3<bool>(false, false, true), vec3<bool>(true, arg_2, false)), vec3<bool>(arg_2, arg_2, false), false))), select(vec2<bool>(true, true), !vec2<bool>(arg_2, true), select(!select(vec2<bool>(var_2.x, var_1.b), vec2<bool>(false, var_2.x), vec2<bool>(true, var_1.b)), !(!vec2<bool>(arg_2, var_1.b)), any(vec4<bool>(true, var_2.x, var_1.b, arg_2)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1240f, 970f, -1413f))))), var_1.c)));
    return var_1.a;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    global0 = array<u32, 20>();
    var var_0 = 3659u;
    global0 = array<u32, 20>();
    let var_1 = _wgslsmith_add_vec2_i32(~vec2<i32>(~(~(-108561i)), -4195i), firstTrailingBit(arg_1.a));
    var var_2 = arg_1;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !((global0[_wgslsmith_index_u32(~u_input.b.x, 20u)] != 72846u) || !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))));
    var_0 = true;
    var var_1 = Struct_4(vec2<i32>(-func_4(-u_input.a.x, func_1(120f, Struct_4(vec2<i32>(u_input.a.x, u_input.a.x)), false, 1u), -216f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(3224f, -883f, -588f, -199f))), _wgslsmith_sub_i32(0i, 35235i)));
    var var_2 = false;
    let var_3 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(~44429u, 20u)]), abs(vec2<i32>(-54415i, func_4(u_input.a.x, Struct_4(vec2<i32>(u_input.a.x, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2657f, 1000f, 1517f, -2455f)))))), vec3<u32>(((global0[_wgslsmith_index_u32(1u, 20u)] | 0u) >> (38006u % 32u)) | _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 1u, 94015u, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(872u, 1u, u_input.b.x, 1u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 1u, 5853u, 49301u), vec4<u32>(u_input.b.x, 0u, global0[_wgslsmith_index_u32(1u, 20u)], u_input.b.x))), ~(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 20u)] & 1u)), 4294967295u), vec4<u32>(27872u, ~u_input.b.x, ~(~4034u), countOneBits(_wgslsmith_mod_u32(0u, 4294967295u)) ^ ~firstLeadingBit(u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(reverseBits(abs(1i))), -(~vec4<i32>(var_3.b.x, ~(-59018i), ~11496i, var_1.a.x)), _wgslsmith_div_vec2_i32(vec2<i32>(~abs(-27199i), u_input.a.x), u_input.a.yx));
}

