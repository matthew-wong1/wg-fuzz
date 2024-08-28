struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = !select(vec4<bool>(true, true, 13875u > ~u_input.a, !all(vec3<bool>(true, true, true))), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), false), true);
    global0 = array<u32, 15>();
    var var_1 = arg_0.b;
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    return Struct_1(_wgslsmith_div_i32(2147483647i, 2147483647i ^ arg_0.a), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.a, var_1.a, var_1.a), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.a, u_input.a, 10311u, var_1.a), vec4<u32>(47646u, var_1.a, u_input.a, var_1.a))), firstTrailingBit(arg_0.b.a), max(0u, global0[_wgslsmith_index_u32(var_1.a, 15u)] ^ u_input.a), 0u), vec4<u32>(32389u, ~(global0[_wgslsmith_index_u32(23524u, 15u)] ^ 1u), _wgslsmith_mod_u32(~arg_0.b.a, min(0u, 4294967295u)), ~(~var_1.a))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    let var_0 = Struct_4(Struct_1(~min(_wgslsmith_div_i32(u_input.c.x, arg_0.a), arg_0.b.b.x), select(~select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.a, 15u)], 15u)], u_input.a, 4294967295u, 1u), vec4<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 15u)], u_input.a), vec4<bool>(arg_1, true, arg_1, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.a, u_input.a, 8921u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6446u, 15u)], 15u)], global0[_wgslsmith_index_u32(34414u, 15u)], 0u, 47937u)), select(vec4<bool>(arg_1, true, arg_1, false), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, false, false, true), vec4<bool>(true, arg_1, false, false)), vec4<bool>(true, true, arg_1, arg_1)))), Struct_3(i32(-1i) * -(~u_input.c.x), arg_0.b), func_2(Struct_3(~(-1i), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.a, 2938u, global0[_wgslsmith_index_u32(65430u, 15u)]), vec3<u32>(1u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)])), u_input.d.yyy | u_input.b.zzx))));
    let var_1 = select(vec2<bool>(true, arg_1), select(!vec2<bool>(false, any(vec4<bool>(arg_1, arg_1, true, false))), vec2<bool>(true, arg_1 & true), !select(select(vec2<bool>(false, true), vec2<bool>(false, arg_1), vec2<bool>(arg_1, true)), vec2<bool>(true, arg_1), vec2<bool>(true, true))), vec2<bool>((arg_1 & arg_1) && arg_1, arg_1));
    let var_2 = var_0.b.b;
    var var_3 = vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_2.b.x, 1i), _wgslsmith_sub_i32(arg_0.a, arg_0.a), _wgslsmith_dot_vec4_i32(u_input.d, u_input.c)), -24029i);
    let var_4 = Struct_4(var_0.c, var_0.b, Struct_1(u_input.b.x ^ var_3.x, var_0.a.b));
    return ~(arg_0.b.a | 0u);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-967f, _wgslsmith_f_op_f32(-263f + 910f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(827f, -104f)))) + _wgslsmith_f_op_f32(f32(-1f) * -128f))) - 1000f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(-1129f))) * _wgslsmith_f_op_f32(ceil(748f)));
    var var_2 = func_2(Struct_3(-(i32(-1i) * -u_input.c.x), Struct_2(~(~1u), vec3<i32>(arg_1 << (arg_0.b.x % 32u), -2147483647i, _wgslsmith_mult_i32(arg_1, u_input.b.x)))));
    var_1 = 590f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f + 1f));
    return firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(arg_0.b, ~_wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(0u, u_input.a, 27999u, u_input.a))), vec4<u32>(_wgslsmith_sub_u32(func_2(Struct_3(arg_1, Struct_2(131080u, vec3<i32>(arg_1, arg_1, u_input.b.x)))).b.x, _wgslsmith_add_u32(arg_0.b.x, global0[_wgslsmith_index_u32(2371u, 15u)])), ~9396u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.x, 4294967295u), vec2<u32>(var_2.b.x, 5888u)), _wgslsmith_mod_vec2_u32(vec2<u32>(53051u, var_2.b.x), vec2<u32>(0u, 1u))), ~func_3(Struct_3(2147483647i, Struct_2(arg_0.b.x, u_input.b.zwz)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(1f)), func_1(Struct_1(0i, countOneBits(countOneBits(vec4<u32>(86610u, u_input.a, u_input.a, 4294967295u)))), -_wgslsmith_dot_vec4_i32(u_input.c, u_input.d << (vec4<u32>(51337u, u_input.a, 2581u, 0u) % vec4<u32>(32u)))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a | 0u, ~global0[_wgslsmith_index_u32(31449u, 15u)], 68691u), vec3<u32>(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 15u)], 4294967295u), 0u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 1u))), ~1u, 907u), vec4<i32>(var_0, u_input.d.x, 2147483647i, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(668f, 326f) - _wgslsmith_f_op_f32(f32(-1f) * -289f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-989f - 554f))))));
}

