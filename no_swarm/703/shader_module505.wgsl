struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 10226u), vec2<u32>(1u, 44049u), vec2<u32>(0u, 1u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    global0 = array<vec2<u32>, 4>();
    global0 = array<vec2<u32>, 4>();
    var var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0.x, 4294967295u, u_input.a.x), _wgslsmith_div_vec3_u32(~arg_0, vec3<u32>(u_input.a.x, 0u, u_input.a.x)))) & arg_0;
    var var_1 = abs(vec4<i32>(-1i, arg_3 ^ -arg_3, arg_3, arg_3) >> (select(select(u_input.a << (vec4<u32>(arg_0.x, arg_0.x, arg_1.a.a.x, arg_1.b.a.x) % vec4<u32>(32u)), vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x) & u_input.a, false), vec4<u32>(29619u ^ arg_0.x, reverseBits(arg_1.b.a.x), ~u_input.a.x, arg_1.a.a.x), true) % vec4<u32>(32u)));
    let var_2 = arg_1;
    return ~(-(_wgslsmith_mult_i32(select(arg_3, -12469i, true), arg_3) >> (9006u % 32u)));
}

fn func_2() -> f32 {
    var var_0 = firstTrailingBit(countOneBits(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i))));
    var var_1 = vec4<i32>(-8628i, firstLeadingBit(reverseBits(var_0.x | select(-18215i, var_0.x, false))), -(var_0.x << (firstLeadingBit(1u) % 32u)), 35573i);
    global0 = array<vec2<u32>, 4>();
    let var_2 = _wgslsmith_div_i32(_wgslsmith_mod_i32(~func_3(~u_input.a.wyz, Struct_2(Struct_1(u_input.a.xyw), Struct_1(vec3<u32>(20855u, u_input.a.x, 0u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(448f, 342f)), _wgslsmith_add_i32(var_1.x, 17938i)), -var_1.x), 1i);
    var var_3 = Struct_1(vec3<u32>(select(u_input.a.x, abs(4294967295u), all(vec3<bool>(false, false, true))), ~(~0u), abs(38350u)) >> (u_input.a.yyw % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_4 {
    global0 = array<vec2<u32>, 4>();
    global0 = array<vec2<u32>, 4>();
    let var_0 = Struct_4(1u, max(arg_2.a.x, ~(~arg_2.a.x << (select(u_input.a.x, arg_2.a.x, arg_0) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * arg_1), _wgslsmith_sub_i32(13742i, arg_3.x) <= arg_3.x)) - _wgslsmith_f_op_f32(func_2())));
    global0 = array<vec2<u32>, 4>();
    global0 = array<vec2<u32>, 4>();
    return Struct_4(u_input.a.x, var_0.b, _wgslsmith_f_op_f32(sign(1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(countOneBits(vec2<i32>(-29904i, 2147483647i)) >> (_wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.a.x, 1u)), global0[_wgslsmith_index_u32(56482u, 4u)] | global0[_wgslsmith_index_u32(~25043u, 4u)]) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(1520f, _wgslsmith_f_op_f32(round(1757f))))), 797f, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)))));
    global0 = array<vec2<u32>, 4>();
    let var_2 = Struct_1(u_input.a.zzy);
    let var_3 = (~1u ^ u_input.a.x) > _wgslsmith_clamp_u32(~(~_wgslsmith_mod_u32(62570u, u_input.a.x)), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21723u, var_2.a.x, u_input.a.x), var_2.a), vec3<u32>(90456u, u_input.a.x, 1u)), vec3<u32>(_wgslsmith_mult_u32(13097u, u_input.a.x), firstLeadingBit(var_2.a.x), select(1u, u_input.a.x, false))));
    let var_4 = func_1(_wgslsmith_clamp_u32(53950u, var_2.a.x, ~76509u & abs(var_2.a.x)) <= 0u, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(1709f))), var_2, vec2<i32>(_wgslsmith_div_i32(-1i, -15763i), -var_0.x));
    var var_5 = !var_3;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(_wgslsmith_mod_u32(var_2.a.x & u_input.a.x, firstTrailingBit(var_4.b)) & select(4294967295u, 2262u, var_3)), _wgslsmith_f_op_f32(-var_4.c), vec4<i32>(~(var_0.x >> (var_4.b % 32u)), (-var_0.x >> (~var_2.a.x % 32u)) | ~(-1i), _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i, -2147483647i, -1i) & vec3<i32>(-1i, var_0.x, 1i)), _wgslsmith_add_vec3_i32(-vec3<i32>(var_0.x, var_0.x, 0i), reverseBits(vec3<i32>(var_0.x, -32877i, var_0.x)))), firstTrailingBit(var_0.x)), var_0);
}

