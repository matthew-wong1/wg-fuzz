struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(23599i);

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = Struct_2(21043i);
    let var_0 = arg_2;
    let var_1 = vec3<bool>(any(vec4<bool>(all(vec3<bool>(true, true, global1.a.x)), global1.a.x, select(true, arg_1, all(vec4<bool>(false, global1.a.x, true, true))), -1107f > _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_mult_u32(4294967295u, firstLeadingBit(~u_input.c)) <= 0u, any(vec2<bool>(all(select(global1.a.xy, arg_3.a.xx, vec2<bool>(false, var_0.a.x))), false)));
    var var_2 = select(abs(min(firstTrailingBit(vec2<u32>(1u, 0u)), vec2<u32>(u_input.b, u_input.b)) | (~vec2<u32>(u_input.c, 9484u) >> (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u)))), ~vec2<u32>(4294967295u, abs(u_input.c)), any(!vec4<bool>(!var_0.a.x, true, var_0.a.x || var_0.a.x, arg_2.a.x)));
    let var_3 = Struct_1(vec4<bool>(true, false, any(!select(var_0.a, vec4<bool>(var_0.a.x, false, true, true), global1.a)), true));
    return _wgslsmith_mod_i32(min(-firstTrailingBit(1i), ~(2147483647i >> (u_input.c % 32u))), i32(-1i) * -abs(u_input.a << (30087u % 32u)));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, -781f, 912f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-428f, -585f, -1122f), vec3<f32>(-1051f, -813f, 839f), global1.a.xxx)))), global1.a.x, Struct_1(global1.a), Struct_1(!global1.a)));
    let var_1 = select(global1.a.yxw, !select(global1.a.yyx, global1.a.xxw, !select(global1.a.xzy, vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.a.x)), select(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(true, global1.a.x, true), any(select(vec2<bool>(false, true), vec2<bool>(true, true), global1.a.zw))));
    global2 = array<vec4<u32>, 15>();
    global1 = Struct_1(vec4<bool>(any(select(vec4<bool>(true, var_1.x, global1.a.x, false), global1.a, !vec4<bool>(global1.a.x, var_1.x, true, true))), var_1.x, (1u << (_wgslsmith_div_u32(39058u, 46696u) % 32u)) == _wgslsmith_dot_vec2_u32(~vec2<u32>(64600u, 77401u), firstTrailingBit(vec2<u32>(42095u, u_input.c))), any(select(!vec3<bool>(global1.a.x, true, false), !var_1, true))));
    return firstTrailingBit(0u);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = abs(35460u);
    var var_1 = _wgslsmith_add_u32(countOneBits(func_2()), 56244u | u_input.c) << (~(~1u) % 32u);
    return ~(vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(16120u, var_0)), vec2<u32>(arg_0, 4294967295u)), 0u, _wgslsmith_mult_u32(abs(var_0), 51178u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(17767u, 19272u, u_input.b) | firstTrailingBit(vec3<u32>(u_input.c, 19969u, arg_0)), ~(vec3<u32>(var_0, arg_0, 55184u) >> (vec3<u32>(arg_0, 4294967295u, var_0) % vec3<u32>(32u)))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = u_input.b >> (_wgslsmith_add_u32(max(~_wgslsmith_mult_u32(5974u, arg_3.x), ~4294967295u), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(33500u, arg_3.x), arg_3.xw, true), ~arg_3.zy)) % 32u);
    global2 = array<vec4<u32>, 15>();
    var var_1 = Struct_1(global1.a);
    return Struct_2(reverseBits(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 15>();
    let var_0 = all(select(global1.a, global1.a, true));
    let var_1 = func_4(global1.a.x, vec3<f32>(294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(800f * 2223f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1363f, 397f))))), 1254f), ~(-u_input.a), _wgslsmith_mod_vec4_u32(~global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_1(u_input.b), vec3<u32>(57863u, _wgslsmith_mult_u32(0u, 1u), u_input.b)), 15u)]));
    let var_2 = select(global1.a, !vec4<bool>(!(-1i != var_1.a), 1i == u_input.a, ~0u <= u_input.b, var_0), !select(!global1.a.x, true, var_0));
    global0 = Struct_2(i32(-1i) * -40907i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_f_op_f32(select(1287f, _wgslsmith_f_op_f32(f32(-1f) * -853f), all(select(vec3<bool>(var_0, var_2.x, false), vec3<bool>(false, global1.a.x, false), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(1436f - -531f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -352f)))), -_wgslsmith_clamp_vec2_i32(~reverseBits(vec2<i32>(1i, -26959i)), -(vec2<i32>(u_input.a, global0.a) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(vec2<i32>(35529i, var_1.a) | vec2<i32>(1i, var_1.a), vec2<i32>(u_input.a, global0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1348f * -1784f), _wgslsmith_f_op_f32(900f * 236f), _wgslsmith_f_op_f32(1000f + -1475f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1198f, 128f, -1000f), vec3<f32>(-333f, -528f, -463f), var_2.xzx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1513f, -1826f, 453f) * vec3<f32>(823f, 335f, 877f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1021f, -239f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-294f, -143f, -1000f)))))), firstTrailingBit(vec4<i32>(24801i, global0.a, abs(func_4(true, vec3<f32>(366f, -895f, -1404f), global0.a, global2[_wgslsmith_index_u32(4294967295u, 15u)]).a), ~u_input.a)), abs(u_input.b | _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(1u, u_input.b, u_input.c)), ~vec3<u32>(3107u, 36934u, 8767u))));
}

