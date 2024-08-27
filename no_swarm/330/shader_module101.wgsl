struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 21909u, 1u);

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), 7565i);

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = Struct_1(global2.a, -_wgslsmith_mult_i32(select(u_input.b, u_input.b, global2.a.x) ^ ~u_input.b, _wgslsmith_sub_i32(global2.b, 1i)));
    let var_1 = ~vec4<i32>(~(~u_input.b), var_0.b, _wgslsmith_add_i32(abs(1i), u_input.b), var_0.b);
    var var_2 = -7120i;
    var var_3 = Struct_1(vec4<bool>(!(_wgslsmith_f_op_f32(-2337f + arg_0) != _wgslsmith_f_op_f32(arg_0 * arg_0)), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0) != _wgslsmith_f_op_f32(-426f - -2101f), global2.a.x), firstTrailingBit(global2.b));
    var var_4 = true;
    return vec3<u32>(14469u, abs(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(global0.xy >> (global0.zz % vec2<u32>(32u)), vec2<u32>(45334u, u_input.a)))), _wgslsmith_add_u32(~global1.x, 4294967295u));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec2<f32> {
    global0 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, global1.x, u_input.a), func_3(_wgslsmith_f_op_f32(629f - arg_0))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, global0.x, global1.x), _wgslsmith_div_vec3_u32(vec3<u32>(48636u, 3536u, u_input.a), vec3<u32>(25213u, 4658u, global1.x))), ~vec3<u32>(1u, 0u, 7354u) | func_3(arg_0))), 1u, 4294967295u);
    var var_0 = global2.a.xwy;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_f32(arg_0 - arg_0))));
    global0 = countOneBits(vec3<u32>(~abs(1u), global0.x, ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(35334u, 62228u, u_input.a, u_input.a), vec4<u32>(u_input.a, 21488u, 17572u, 4294967295u)), ~vec4<u32>(global1.x, 1u, 14508u, 30052u))));
    var var_2 = global2.b;
    return _wgslsmith_f_op_vec2_f32(-var_1.yz);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - 2388f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-585f, -1799f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-706f, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(530f, -321f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(-1297f, true)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-549f, 1285f), vec2<f32>(272f, -116f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-889f, 1000f)))))));
    global0 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32((vec3<u32>(4294967295u, 1u, global1.x) ^ vec3<u32>(global0.x, 60890u, global1.x)) | (vec3<u32>(global1.x, global1.x, 33364u) >> (vec3<u32>(4294967295u, 0u, 5813u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(84875u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 4294967295u, u_input.a), vec3<u32>(73796u, global0.x, 4294967295u)))), 1u), ~max(~abs(global1.x), _wgslsmith_dot_vec2_u32(global0.zy, ~global0.yz)), global0.x);
    let var_1 = !(all(vec4<bool>(false, !global2.a.x, false != global2.a.x, false)) & ((global2.a.x || select(true, false, global2.a.x)) && !global2.a.x));
    let var_2 = Struct_1(!select(vec4<bool>(u_input.a < 4294967295u, var_1, true, true), select(global2.a, !global2.a, true), !var_1), abs(-firstTrailingBit(18039i)));
    var var_3 = var_2;
    return Struct_1(var_3.a, var_2.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = Struct_1(select(select(!vec4<bool>(true, arg_2.a.x, arg_0.a.x, true), vec4<bool>(true, arg_2.b >= arg_0.b, true, all(vec2<bool>(arg_1.a.x, arg_2.a.x))), arg_0.a.x), !select(select(arg_1.a, arg_1.a, false), arg_1.a, true), true), arg_0.b);
    global0 = reverseBits(~_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(21532u, u_input.a, 4294967295u), vec3<u32>(6588u, 4294967295u, 4294967295u)), vec3<u32>(global0.x, u_input.a << (35500u % 32u), ~u_input.a)));
    global3 = array<Struct_1, 15>();
    var var_1 = ~(~19744u);
    let var_2 = func_1();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(664f)))), _wgslsmith_f_op_f32(-291f + _wgslsmith_div_f32(1127f, 270f)))) * -1875f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_1(), Struct_1(vec4<bool>(select(global2.a.x, global2.a.x, global2.a.x), true, all(global2.a.ww), true), -_wgslsmith_mod_i32(-2147483647i, -2147483647i)), func_1(), true))));
    global3 = array<Struct_1, 15>();
    var var_1 = 8919u;
    global0 = min(vec3<u32>(1u, global1.x, reverseBits(1u)), abs(~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 67626u, 67603u), vec3<u32>(0u, global1.x, u_input.a)) & abs(vec3<u32>(global1.x, global0.x, 0u)))));
    var var_2 = vec2<i32>(2147483647i, global2.b);
    var var_3 = func_1();
    global1 = abs(select(~func_3(-196f).zy, global0.zx, vec2<bool>(true, var_0 < _wgslsmith_f_op_f32(abs(var_0)))));
    var var_4 = _wgslsmith_f_op_f32(ceil(-1355f));
    var var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-562f * var_0) + 978f))), var_0, var_0, _wgslsmith_f_op_f32(f32(-1f) * -1669f)));
    let x = u_input.a;
    s_output = StorageBuffer(42454u, firstLeadingBit(abs(min(vec2<i32>(var_2.x, 1i), select(vec2<i32>(global2.b, var_3.b), vec2<i32>(2147483647i, var_2.x), vec2<bool>(var_3.a.x, var_3.a.x))))), ~abs(global0.xx));
}

