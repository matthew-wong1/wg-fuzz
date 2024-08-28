struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> vec2<u32> {
    global0 = array<Struct_1, 28>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 28u)];
    let var_1 = !var_0.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(391f)));
    global1 = firstTrailingBit(1i);
    return select(var_0.c, countOneBits(arg_0.xy), !(!select(select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), true), vec2<bool>(true, true), !var_0.b)));
}

fn func_2() -> vec2<u32> {
    var var_0 = 18132i;
    var var_1 = countOneBits(i32(-1i) * -51231i);
    var var_2 = -918f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(624f - 1786f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(792f, 633f)))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -277f);
    return func_3(vec4<u32>(_wgslsmith_mult_u32(select(36123u, u_input.a.x & u_input.a.x, true), u_input.a.x | 1u), 7380u, 4294967295u, 1u));
}

fn func_1(arg_0: vec2<bool>) -> vec3<f32> {
    global1 = 1i;
    let var_0 = Struct_1(_wgslsmith_add_i32(-4931i, abs(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -50528i), vec2<i32>(19087i, 23337i)), _wgslsmith_mod_i32(0i, 18697i)))), arg_0.x, _wgslsmith_mult_vec2_u32(u_input.a, func_2()) | u_input.a);
    var var_1 = 0i;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>((var_0.a >> (65260u % 32u)) >> (countOneBits(43129u) % 32u), -43720i, _wgslsmith_sub_i32(1i, var_0.a)), vec3<i32>(-1i) * -min(vec3<i32>(var_0.a, var_0.a, var_0.a), vec3<i32>(var_0.a, var_0.a, var_0.a))), -1i, -(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, -1i), ~(-2147483647i)) >> (_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_add_u32(1u, var_0.c.x)) % 32u)));
    var_1 = countOneBits(countOneBits(var_2.x));
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1645f)))))))), 1557f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2205f, 515f)), _wgslsmith_f_op_f32(719f - -775f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1u, 28u)];
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(all(vec4<bool>(var_0.b, var_0.b, var_0.b, false)), var_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1878f - 1657f))), 661f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-200f, -132f)) * -905f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-489f, 262f))))), -544f));
    global0 = array<Struct_1, 28>();
    var_0 = global0[_wgslsmith_index_u32(~(~reverseBits(48475u)), 28u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(22360u), select(_wgslsmith_add_u32(u_input.a.x, ~var_0.c.x), u_input.a.x, !(!(!var_0.b)))), 28u)];
    let var_3 = firstTrailingBit(~vec4<u32>(~4294967295u, ~var_2.c.x & abs(30141u), func_3(~vec4<u32>(0u, 28307u, 26292u, u_input.a.x)).x, 4294967295u));
    let var_4 = vec2<bool>(var_0.b, !(477f != var_1.x));
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3.x, firstTrailingBit(reverseBits(62146u)) & _wgslsmith_dot_vec2_u32(u_input.a, var_0.c)), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.x & abs(var_0.c.x), abs(-_wgslsmith_mod_i32(~(-2147483647i), firstTrailingBit(22286i))), reverseBits(max(u_input.a, vec2<u32>(62303u, var_0.c.x & var_0.c.x))));
}

