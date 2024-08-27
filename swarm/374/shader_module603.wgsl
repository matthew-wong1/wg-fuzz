struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    let var_0 = arg_0.a.b;
    return arg_0.a;
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(true, -903f);
    global0 = array<vec3<f32>, 27>();
    let var_1 = Struct_2(firstTrailingBit(select(abs(~u_input.a), min(u_input.a >> (u_input.a % vec2<u32>(32u)), u_input.a), true)));
    var_0 = Struct_1(var_0.a, -1106f);
    global0 = array<vec3<f32>, 27>();
    return min(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) & abs(vec2<u32>(4294967295u, 39689u)), u_input.a), ~vec2<u32>(u_input.a.x, 0u) ^ reverseBits(var_1.a & u_input.a)), select(_wgslsmith_div_vec2_u32(~u_input.a, reverseBits(~u_input.a)), vec2<u32>(1u, 1u), !var_0.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = max(-countOneBits(-vec4<i32>(2147483647i, 18601i, arg_1.b, u_input.b)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(arg_1.b, u_input.b, -1i, arg_1.b)), countOneBits(vec4<i32>(42069i, 1i, 1i, u_input.b))), ~vec4<i32>(u_input.b, _wgslsmith_add_i32(arg_1.b, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, u_input.b), vec4<i32>(arg_1.b, arg_1.b, u_input.b, 0i)), ~arg_1.b)));
    global0 = array<vec3<f32>, 27>();
    let var_1 = vec2<f32>(arg_1.a.b, _wgslsmith_f_op_f32(select(-666f, 1f, (~arg_1.b >> (func_3().x % 32u)) == select(-u_input.b, 1i, arg_1.a.a))));
    global0 = array<vec3<f32>, 27>();
    global0 = array<vec3<f32>, 27>();
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<f32>(-967f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-437f)) * 546f)), arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-736f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1554f), true)), _wgslsmith_f_op_f32(func_4(Struct_2(vec2<u32>(31541u, u_input.a.x)), Struct_3(func_2(Struct_3(Struct_1(true, 692f), u_input.b), arg_1), ~u_input.b), Struct_2(func_3()), _wgslsmith_f_op_f32(max(arg_0.x, 156f)))))));
    var var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true)), !select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, u_input.a.x < 1u), 4294967295u < max(u_input.a.x, 4294967295u)));
    global0 = array<vec3<f32>, 27>();
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1184f + _wgslsmith_f_op_f32(select(911f, arg_1, var_1.x))), -655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) * -341f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2001f * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))))));
    var var_2 = reverseBits(u_input.b);
    return func_2(Struct_3(func_2(Struct_3(func_2(Struct_3(Struct_1(var_1.x, arg_0.x), u_input.b), 1741f), countOneBits(u_input.b)), _wgslsmith_f_op_f32(func_4(Struct_2(u_input.a), Struct_3(Struct_1(true, var_0.x), -1i), Struct_2(u_input.a), 642f))), abs(_wgslsmith_mult_i32(~(-24475i), abs(u_input.b)))), _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-756f + 726f) * _wgslsmith_f_op_f32(135f * -2446f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(170f + -585f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1375f)), -177f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))));
    var var_1 = -_wgslsmith_mod_i32(u_input.b, 0i);
    let var_2 = u_input.b ^ u_input.b;
    var_1 = -(~max(var_2, i32(-1i) * -5013i)) >> (u_input.a.x % 32u);
    var var_3 = firstLeadingBit((~(vec3<u32>(0u, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, 8765u, 31468u)) | ~(vec3<u32>(4294967295u, 58142u, 1u) >> (vec3<u32>(90413u, 35077u, u_input.a.x) % vec3<u32>(32u)))) & ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), max(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 21148u))));
    let var_4 = var_3.yz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.b, -30375i), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(u_input.a.x, 18826u) % vec2<u32>(32u)))), ~vec2<i32>(1i, _wgslsmith_mod_i32(u_input.b, var_2))));
}

