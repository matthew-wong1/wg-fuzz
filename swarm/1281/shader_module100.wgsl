struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false));

var<private> global1: array<Struct_3, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-377f, _wgslsmith_div_f32(1692f, -1455f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-920f, 403f))))));
    var var_1 = !(!(!select(vec4<bool>(false, true, false, true), !global0[_wgslsmith_index_u32(1u, 15u)], true)));
    var_0 = -341f;
    var var_2 = Struct_1(u_input.a, u_input.b.x, 449f, -11337i);
    var_1 = !global0[_wgslsmith_index_u32(~1u, 15u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)) + var_2.c);
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = array<Struct_3, 2>();
    var var_0 = select(select(all(vec4<bool>(true, true, true, true)), true, true), 4294967295u >= _wgslsmith_mod_u32(~reverseBits(u_input.e), u_input.c.x), true);
    var_0 = true;
    var var_1 = false;
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.c.x, u_input.e, u_input.e)), ~u_input.c), _wgslsmith_sub_u32(u_input.a, u_input.a >> (102915u % 32u)), ~0u) & ~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 33680u, 0u, 1u), vec4<u32>(117751u, u_input.a, 41722u, u_input.c.x)) & vec4<u32>(64628u, 60549u, 47064u, u_input.c.x)), firstTrailingBit(min(abs(vec4<u32>(31722u, 1u, 1u, 35747u)) >> (~vec4<u32>(4294967295u, u_input.a, u_input.c.x, 50419u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(41773u, u_input.e, u_input.c.x, 50481u), vec4<u32>(u_input.a, u_input.c.x, 55720u, 11068u)))));
    return 1000f;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: f32) -> vec2<f32> {
    let var_0 = 1u;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(u_input.e, var_0)), max(37863u, ~4294967295u) | _wgslsmith_dot_vec2_u32(~u_input.c.zx, ~countOneBits(vec2<u32>(var_0, var_0))), u_input.a, abs(firstLeadingBit(var_0)));
    global0 = array<vec4<bool>, 15>();
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 20235u, var_0), var_1) | max(63805u, 1u), 68098u), _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, ~(~u_input.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_2)))))), _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(21541i, abs(u_input.d)))));
    let var_3 = Struct_3(Struct_1(u_input.a, abs(u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_3(Struct_2(-983f))))), ~_wgslsmith_sub_i32(~10004i, u_input.d)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))));
    var var_1 = u_input.c;
    var var_2 = vec4<u32>(~(~(arg_2 << (u_input.e % 32u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 0u, 4294967295u), min(u_input.c, vec3<u32>(var_1.x, 5964u, arg_2))), arg_2, _wgslsmith_mult_u32(select(4832u << (var_1.x % 32u), ~22582u, true), max(17172u, u_input.a))) ^ ~vec4<u32>(1u, ~64138u, 48748u, ~reverseBits(var_1.x));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + arg_0.x)))))));
    let var_4 = var_3;
    return StorageBuffer(vec2<u32>(~_wgslsmith_sub_u32(57570u, ~var_1.x), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 15>();
    let var_0 = !global0[_wgslsmith_index_u32(23595u, 15u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(450f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-796f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1626f, 326f)))))), -1482f);
    let var_2 = ~(~countOneBits(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.e, u_input.e, 61065u), vec4<u32>(1u, 4294967295u, 82557u, u_input.e)), min(vec4<u32>(u_input.c.x, 54358u, u_input.c.x, 1u), vec4<u32>(1u, u_input.a, u_input.c.x, u_input.a)), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))))));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(var_1.x, -665f), true, var_1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -473f)))))), ~((vec4<i32>(-1i) * -vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.b.x)) | vec4<i32>(_wgslsmith_div_i32(-29227i, -9084i), -u_input.d, 2147483647i, abs(0i))), abs(min(u_input.c.x, ~u_input.a)) >> (27384u % 32u));
}

