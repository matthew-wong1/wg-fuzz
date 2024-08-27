struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 122854u, 4568u, 1u), 56905u);

var<private> global1: bool;

var<private> global2: array<f32, 17> = array<f32, 17>(664f, -2725f, -965f, -599f, -922f, 476f, -908f, 1000f, 319f, -861f, 428f, -876f, 1000f, 706f, 752f, 504f, -1122f);

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: bool) -> Struct_1 {
    return Struct_1(~vec4<u32>(reverseBits(~global0.b), ~_wgslsmith_mult_u32(global0.a.x, global3.b), abs(global0.a.x), ~0u), global0.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<bool>) -> u32 {
    let var_0 = true;
    global1 = true;
    let var_1 = func_1(any(select(select(select(vec2<bool>(false, true), arg_3.xz, vec2<bool>(arg_2.x, var_0)), select(arg_2, arg_3.yx, var_0), select(vec2<bool>(arg_2.x, false), vec2<bool>(arg_2.x, false), arg_3.x)), select(vec2<bool>(true, true), select(vec2<bool>(arg_3.x, false), arg_3.xy, arg_3.x), !vec2<bool>(arg_3.x, true)), select(!arg_2, arg_3.zw, arg_2.x || arg_2.x))), ~(~arg_1), firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(-6323i, u_input.a.x, -25029i), vec3<i32>(u_input.a.x, 30104i, 10205i))) == select(u_input.a.x, (0i ^ u_input.a.x) | -1i, all(arg_2)));
    global1 = arg_2.x;
    let var_2 = arg_0;
    return var_2.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    let var_0 = arg_0;
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50944u, _wgslsmith_add_u32(global3.a.x, var_0.a.x), global3.a.x), ~vec3<u32>(var_0.a.x, 60242u, arg_0.b)), abs(abs(_wgslsmith_mult_u32(arg_0.b, 4294967295u)))), 0u, func_3(arg_0, var_0.b, arg_1.yx, select(vec4<bool>(!arg_1.x, true, true, true), select(!vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, false), true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true))), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))));
    global1 = _wgslsmith_div_i32(-1i, -1i) > (_wgslsmith_mult_i32(abs(max(u_input.b, 13267i)), u_input.b) | _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, 16498i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, 1i, u_input.a.x, 1i), true), vec4<i32>(~0i, u_input.a.x, firstTrailingBit(u_input.a.x), u_input.b)));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-673f, global2[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_f_op_f32(f32(-1f) * -431f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(var_1.x, 17u)])), global2[_wgslsmith_index_u32(global3.a.x, 17u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-166f, 888f)))), vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.a.x, 17u)], _wgslsmith_f_op_f32(f32(-1f) * -728f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global0.a.x), 17u)], global2[_wgslsmith_index_u32(func_3(var_0, arg_0.b, arg_1.xy, vec4<bool>(arg_1.x, false, false, arg_1.x)), 17u)])))))));
    global2 = array<f32, 17>();
    return 29375u;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: f32) -> bool {
    return !(any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))) && true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(-2147483647i, _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(32348u, global0.b, global3.a.x, global3.b))), _wgslsmith_clamp_vec4_u32(global3.a, global3.a, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1026f + -798f))) + global2[_wgslsmith_index_u32(~func_2(func_1(true, 0u, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), 17u)]));
    let var_0 = true;
    let var_1 = select(-reverseBits(u_input.b), u_input.b, true && func_4(-2147483647i, vec4<u32>(global0.a.x, 0u, 17501u, reverseBits(global0.a.x)), _wgslsmith_f_op_f32(-563f - _wgslsmith_f_op_f32(-1000f - 755f))));
    let var_2 = vec2<bool>(15908u <= ~_wgslsmith_clamp_u32(select(0u, global0.b, var_0), ~34986u, 0u), any(!(!vec3<bool>(var_0, var_0, var_0))));
    let var_3 = !vec2<bool>(func_4(firstLeadingBit(_wgslsmith_sub_i32(2147483647i, 18052i)), global3.a, -562f), any(select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, true, var_0), var_0 & false)));
    var var_4 = func_1(true, _wgslsmith_div_u32(~0u, global0.a.x), var_0);
    let var_5 = -u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec3<i32>(_wgslsmith_div_i32(2147483647i, var_5), 29153i, var_5), -vec3<i32>(_wgslsmith_mult_i32(var_5, var_5), -13932i, min(16125i, var_5)), false), func_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(45893u, 17u)]) != _wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_mult_u32(10626u, 0u), !func_4(8211i, var_4.a, global2[_wgslsmith_index_u32(4294967295u, 17u)]) | true).a, abs(-vec3<i32>(14627i, 0i, 2147483647i)) >> (~vec3<u32>(~global0.a.x, 0u, _wgslsmith_sub_u32(global0.a.x, 4294967295u)) % vec3<u32>(32u)), min(select(vec3<u32>(4294967295u, var_4.b, var_4.b), ~var_4.a.zwz, select(vec3<bool>(var_0, var_3.x, var_0), vec3<bool>(false, var_2.x, true), vec3<bool>(true, false, var_3.x))), vec3<u32>(160272u, reverseBits(35827u), ~5177u)) | global0.a.zyz, select(global3.a.wwz, global0.a.xwy, select(!select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_0, true), var_0), !vec3<bool>(var_0, false, true), true)));
}

