struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 27>;

var<private> global2: array<Struct_1, 4>;

var<private> global3: vec4<i32> = vec4<i32>(-1i, -18342i, -91215i, 2147483647i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(-170f, vec2<i32>((min(u_input.b, 14010i) | -11574i) & 0i, abs(_wgslsmith_mult_i32(u_input.b, -6589i))));
    var var_1 = Struct_2(true, !(!vec2<bool>(false, var_0.a != -1168f)));
    var_1 = Struct_2(false, select(var_1.b, !var_1.b, vec2<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global3.x, -22018i, var_0.b.x), vec4<i32>(-892i, u_input.b, 2147483647i, u_input.b)) == 0i, select(true, true, any(vec3<bool>(var_1.a, var_1.b.x, var_1.b.x))))));
    let var_2 = u_input.d;
    let var_3 = all(vec3<bool>(!((-2147483647i == u_input.b) | (false == var_1.a)), !any(vec3<bool>(true, true, false)), false));
    return var_0.b;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(abs(-1000f));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1333f), -1379f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-478f * 334f))) + _wgslsmith_f_op_f32(133f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(662f + -1351f)))) + _wgslsmith_f_op_f32(584f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-176f - -327f) * 443f)))));
    let var_3 = func_3() | -vec2<i32>(1i, -49045i);
    global3 = -reverseBits(select(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, u_input.a, -38454i, 0i), vec4<i32>(-30829i, -21224i, -23612i, 35653i)), vec4<i32>(var_3.x, var_3.x, global3.x, global3.x) & vec4<i32>(u_input.a, 2147483647i, 2147483647i, 61180i), vec4<bool>(true, true, true, true))) | vec4<i32>(4746i, ~0i, abs(-33975i), _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_div_vec3_i32(global3.xzw, global3.wxx)), global3.zwz ^ (vec3<i32>(2147483647i, -2147483647i, 2147483647i) ^ vec3<i32>(u_input.b, global3.x, 31061i))));
    return !select(vec4<bool>((arg_0 == 0u) && true, true, !(arg_0 >= 4294967295u), _wgslsmith_f_op_f32(-var_2) == _wgslsmith_f_op_f32(var_2 + 982f)), vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false)), true, false, _wgslsmith_clamp_u32(arg_0, 47958u, 66810u) == 1u), true);
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    var var_0 = u_input.c | 67851u;
    let var_1 = !(!(!arg_0.xzz));
    global1 = array<vec3<u32>, 27>();
    global0 = 0u;
    global0 = ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(11891u, u_input.c, 1700u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.c, 7840u, 107907u, u_input.d.x), vec4<u32>(1u, u_input.c, u_input.d.x, u_input.d.x)), vec4<u32>(u_input.d.x, 22289u, 4294967295u, 6447u) << (vec4<u32>(u_input.d.x, 21446u, 1u, u_input.c) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(0u, u_input.d.x, 0u, u_input.d.x))), ~(~vec4<u32>(u_input.c, u_input.d.x, u_input.c, u_input.c))));
    return u_input.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -252f, -383f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(338f, 351f, -631f) * vec3<f32>(-1407f, arg_0.x, -1000f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 1562f, 409f));
    let var_1 = firstTrailingBit(vec4<i32>(-func_4(func_2(arg_2)), -_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global3.x, u_input.b), global3.yzz) ^ (-u_input.b | ~7398i), abs(reverseBits(39209i & global3.x)), countOneBits(-1i)));
    var var_2 = Struct_2(false, select(arg_1.b, func_2(~1u).wy, true && arg_1.a));
    var var_3 = Struct_2(arg_1.b.x, select(!arg_1.b, vec2<bool>(true, !var_2.a | (var_2.a | true)), true));
    let var_4 = Struct_2(false, func_2(u_input.d.x).yy);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2251f, _wgslsmith_div_f32(-972f, 1173f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(971f, -920f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1032f, 494f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(744f, 1000f)))))), Struct_2(true, vec2<bool>(any(vec3<bool>(true, false, true)), true)), u_input.c);
    global1 = array<vec3<u32>, 27>();
    var var_1 = (_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.b, global3.x, -1i), vec4<i32>(u_input.a, -2147483647i, -2147483647i, global3.x)), ~(-vec4<i32>(global3.x, -1i, u_input.b, 0i))) << (16101u % 32u)) | ~global3.x;
    global2 = array<Struct_1, 4>();
    let var_2 = var_0;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, ~u_input.d.x, abs(4294967295u & u_input.c), ~(u_input.d.x >> (u_input.d.x % 32u))), vec4<u32>(40381u, ~firstTrailingBit(4294967295u), abs(4294967295u), u_input.c)) | 43058u, 4u)];
    var var_4 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3.a));
}

