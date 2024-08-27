struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(vec2<u32>(max(_wgslsmith_mult_u32(abs(u_input.a.x), 1u), arg_0), countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a.x, 3014u, 379u)), abs(vec3<u32>(arg_0, u_input.a.x, arg_0))))), ~(~27524i), arg_0 <= ~(~1u), select(select(vec2<bool>(true, 78583u > arg_0), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))));
    global0 = array<i32, 5>();
    var var_1 = vec2<u32>(80721u, u_input.a.x >> (~(~(~4294967295u)) % 32u));
    let var_2 = Struct_2(u_input.b);
    var_1 = ~countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.x, u_input.a.x), abs(u_input.a)) << (var_0.a % vec2<u32>(32u)));
    return Struct_2(20713i);
}

fn func_3(arg_0: i32) -> vec4<i32> {
    global0 = array<i32, 5>();
    return ~reverseBits(min(~(~vec4<i32>(u_input.b, -2147483647i, global0[_wgslsmith_index_u32(56885u, 5u)], u_input.b)), abs(max(vec4<i32>(u_input.b, 0i, global0[_wgslsmith_index_u32(1u, 5u)], -1i), vec4<i32>(-43106i, u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], arg_0)))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = array<i32, 5>();
    var var_0 = func_2(arg_0);
    var_0 = Struct_2(~(-39596i));
    let var_1 = _wgslsmith_clamp_vec4_i32(func_3(1i << (1u % 32u)), -(~vec4<i32>(~var_0.a, ~(-41i), ~u_input.b, _wgslsmith_mod_i32(5777i, var_0.a))), abs(firstLeadingBit(abs(vec4<i32>(-16550i, global0[_wgslsmith_index_u32(60462u, 5u)], global0[_wgslsmith_index_u32(80021u, 5u)], -1i)))) & vec4<i32>(global0[_wgslsmith_index_u32(8118u, 5u)] & ~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(31869i, var_0.a)) << (24898u % 32u), i32(-1i) * -2147483647i, -2147483647i));
    let var_2 = -19251i;
    return func_2(23162u);
}

fn func_4(arg_0: Struct_2) -> f32 {
    global0 = array<i32, 5>();
    var var_0 = Struct_1(u_input.a, _wgslsmith_div_i32(u_input.b, arg_0.a) | _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(64343i, arg_0.a, 0i), ~vec3<i32>(0i, -20060i, 62865i)), -vec3<i32>(1i, arg_0.a, -24951i) << (~vec3<u32>(33760u, u_input.a.x, 4294967295u) % vec3<u32>(32u))), true, vec2<bool>(true, true));
    let var_1 = 46793i;
    global0 = array<i32, 5>();
    var var_2 = firstLeadingBit(arg_0.a << (1u % 32u));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1750f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(642f + -1000f), _wgslsmith_f_op_f32(select(-583f, -1000f, var_0.c))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 14704u, u_input.a.x, 21488u)))));
    let var_1 = vec2<bool>(any(vec3<bool>(_wgslsmith_f_op_f32(round(var_0)) == _wgslsmith_f_op_f32(abs(968f)), false, false)), all(vec4<bool>(true, true, true, true)));
    var var_2 = _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.b, (global0[_wgslsmith_index_u32(1u, 5u)] | 2147483647i) ^ u_input.b, _wgslsmith_clamp_i32(~global0[_wgslsmith_index_u32(20253u, 5u)], -2147483647i, 0i), -(~5362i))), abs(func_3((0i & u_input.b) | 1i)), firstTrailingBit(~countOneBits(-vec4<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.b))));
    let var_3 = Struct_1(vec2<u32>(14614u, 1u), global0[_wgslsmith_index_u32(0u, 5u)], var_1.x, var_1);
    var var_4 = Struct_1(vec2<u32>(_wgslsmith_div_u32(~var_3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, 0u, 67455u, 37239u), vec4<u32>(1u, 1u, u_input.a.x, var_3.a.x)) << (~13961u % 32u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, u_input.a.x, u_input.a.x) | vec3<u32>(4438u, u_input.a.x, 0u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_3.a.x, u_input.a.x, 28830u), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))))), -568i, !(all(vec4<bool>(var_1.x, var_1.x, true, false)) | var_3.d.x), var_1);
    var var_5 = func_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_3.a.x, 4294967295u) & _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(98629u, 0u)), u_input.a) & _wgslsmith_mult_u32(1u, 4294967295u));
    var var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0, _wgslsmith_f_op_f32(-365f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_div_f32(-447f, var_0), firstTrailingBit(0u) == (var_4.a.x << (u_input.a.x % 32u))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-402f, var_0, 1000f, var_0))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, 2059f, -1000f, var_0))))))), vec2<u32>(~(~var_3.a.x | _wgslsmith_mod_u32(1u, var_4.a.x)), min(4294967295u, ~u_input.a.x)), var_2.yw);
}

