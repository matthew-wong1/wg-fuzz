struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(26274u, 69373u, 6484u));

var<private> global2: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> f32 {
    global0 = array<vec3<bool>, 3>();
    global1 = Struct_2(~global1.a);
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(2147483647i, arg_0, arg_1.x, -1i)), abs(1i)) | max(1i, ~49288i), _wgslsmith_clamp_i32(-26823i, -_wgslsmith_add_i32(u_input.a, arg_0), arg_1.x | arg_1.x)), 1i >> ((1u >> (_wgslsmith_mult_u32(global1.a.x, ~global1.a.x) % 32u)) % 32u));
    var var_1 = abs(~vec4<u32>(global1.a.x, 15059u, global1.a.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 51013u, global1.a.x), vec3<u32>(104155u, global1.a.x, global1.a.x)) % 32u), 50160u));
    var var_2 = 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1134f)) + _wgslsmith_f_op_f32(round(193f))) + -2555f), -304f) + _wgslsmith_f_op_f32(select(-1194f, -774f, all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, false))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_3(arg_0, !(!(!vec4<bool>(arg_2, false, true, false))), abs(_wgslsmith_sub_vec3_u32(global1.a, global1.a)), Struct_2(global1.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-714f + _wgslsmith_f_op_f32(min(-883f, arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.b, vec4<i32>(arg_1.b, -2147483647i, 29112i, -40317i)))))));
    global1 = var_0.d;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1287f);
    var var_1 = Struct_2(var_0.d.a);
    global2 = _wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(-_wgslsmith_sub_i32(-u_input.a, u_input.a ^ arg_0.b), -39782i << (global1.a.x % 32u)), countOneBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, 0i, 0i, -16189i), vec4<i32>(var_0.a.d, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, u_input.a, 31243i, 2147483647i), vec4<i32>(1i, var_0.a.b, u_input.a, 2147483647i)), 1i >> (var_1.a.x % 32u), 2147483647i)))));
    return Struct_1(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.a, 175515u)), var_0.d.a.yx), firstTrailingBit(4294967295u)), -2147483647i, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1038f + 1408f))), var_0.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x))))), -29683i);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_3(func_2(Struct_1(_wgslsmith_mod_u32(firstTrailingBit(arg_2.x), ~69543u), _wgslsmith_div_i32(i32(-1i) * -10925i, u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-722f, arg_0, -1214f) * vec3<f32>(arg_0, arg_0, -256f))), -6512i), Struct_4(global0[_wgslsmith_index_u32(30896u, 3u)], _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 26368i) & vec2<i32>(u_input.a, -9199i))), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, (arg_1.x < 59024u) | false, true)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.yww, vec3<u32>(arg_2.x, _wgslsmith_mod_u32(arg_1.x, arg_1.x), arg_2.x)), arg_2, reverseBits(_wgslsmith_clamp_vec3_u32(global1.a, arg_2, vec3<u32>(arg_1.x, 0u, 4294967295u)) << (vec3<u32>(global1.a.x, global1.a.x, 4294967295u) % vec3<u32>(32u)))), Struct_2(select(vec3<u32>(0u, 44370u, 1u), vec3<u32>(22175u, global1.a.x, 0u) ^ arg_1.wyx, true) ^ vec3<u32>(~0u, global1.a.x, _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(global1.a.x, arg_1.x, global1.a.x, 4294967295u)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1006f, _wgslsmith_f_op_f32(1165f - _wgslsmith_div_f32(arg_0, 596f)), _wgslsmith_f_op_f32(step(-292f, _wgslsmith_f_op_f32(-155f - -512f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(2166f + arg_0), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -339f, -683f) + vec3<f32>(arg_0, -2381f, arg_0)))), global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, 9920u, arg_2.x), arg_1)), 3u)])));
    let var_1 = ~(-39373i | -(38289i >> (arg_2.x % 32u)));
    var var_2 = firstLeadingBit(0i);
    var var_3 = var_0.a.d;
    var_3 = u_input.a;
    return max(countOneBits(2147483647i), min(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.a.d, 0i, 0i), vec4<i32>(u_input.a, 16308i, 2147483647i, 2147483647i)) & var_1, -1i), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, 1370f)))), vec4<u32>(62541u, global1.a.x, global1.a.x, global1.a.x) | _wgslsmith_div_vec4_u32(vec4<u32>(global1.a.x, 0u, global1.a.x, 1u), vec4<u32>(global1.a.x, global1.a.x, 22117u, 29466u)), vec3<u32>(4294967295u, firstLeadingBit(39359u), 28728u)), -select(2147483647i, -37886i, true)), vec2<i32>(-1i, 2147483647i));
    global1 = Struct_2(~_wgslsmith_mult_vec3_u32(global1.a, ~global1.a));
    global1 = Struct_2(~reverseBits(max(vec3<u32>(global1.a.x, global1.a.x, 1u) | vec3<u32>(global1.a.x, global1.a.x, 17118u), global1.a)));
    let var_1 = !select(vec2<bool>(false, true), !vec2<bool>(all(vec2<bool>(false, false)), true), ~abs(global1.a.x) > _wgslsmith_mult_u32(~global1.a.x, global1.a.x));
    var var_2 = Struct_2(global1.a);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(577f, 2067f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-649f, -510f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, 926f))))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -475f) * vec2<f32>(568f, -325f)) + vec2<f32>(919f, 659f)))))));
    var var_4 = Struct_4(global0[_wgslsmith_index_u32(global1.a.x, 3u)], select(u_input.a, _wgslsmith_mod_i32(var_0.x, var_0.x), !(_wgslsmith_add_i32(17013i, u_input.a) <= u_input.a)));
    global2 = var_3.x;
    let var_5 = global0[_wgslsmith_index_u32(global1.a.x, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(2147483647i, 0i), global1.a.x);
}

