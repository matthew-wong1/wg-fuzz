struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

var<private> global1: array<vec4<bool>, 18>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec3<i32>, 26>();
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(24697u, 13709u, _wgslsmith_mult_u32(~35079u, abs(u_input.a)), _wgslsmith_sub_u32(u_input.a, ~0u)), vec4<u32>(u_input.a, ~(~u_input.a), u_input.a, 4294967295u));
    global0 = array<vec3<i32>, 26>();
    var var_1 = -1000f;
    var var_2 = vec2<u32>(min(u_input.a, 1u | _wgslsmith_mult_u32(1994u, 4294967295u << (var_0.x % 32u))), u_input.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1536f + 167f), _wgslsmith_f_op_f32(-1000f + 928f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-536f, -1003f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1686f, 1000f)), -12029i != u_input.b))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2535f - 486f)), 1817f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(trunc(arg_1.b)))));
    var var_1 = _wgslsmith_f_op_f32(min(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + var_0), _wgslsmith_f_op_f32(max(-174f, arg_1.b)))));
    var var_2 = -vec2<i32>((u_input.b << (u_input.a % 32u)) << (1u % 32u), arg_1.a.x);
    var_2 = vec2<i32>(~(~(-16565i)) | var_2.x, arg_1.a.x);
    var_2 = reverseBits(vec2<i32>(-1i) * -(vec2<i32>(19729i, -2147483647i) >> (vec2<u32>(u_input.a, 6790u) % vec2<u32>(32u))));
    return _wgslsmith_f_op_vec2_f32(func_3());
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(abs(~select(countOneBits(global0[_wgslsmith_index_u32(u_input.a, 26u)]), min(global0[_wgslsmith_index_u32(29479u, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = vec3<u32>(firstLeadingBit(~(u_input.a & max(u_input.a, 58552u))), firstTrailingBit(~71792u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(1u, 15499u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 30563u), select(vec2<u32>(76632u, u_input.a), vec2<u32>(74634u, 0u), vec2<bool>(true, true)))), select(_wgslsmith_sub_vec2_u32(vec2<u32>(45028u, u_input.a), vec2<u32>(4294967295u, 0u)), vec2<u32>(u_input.a, u_input.a), false) | vec2<u32>(~u_input.a, abs(u_input.a))));
    var var_2 = Struct_2(~arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.b)))) + 1325f));
    var var_3 = -countOneBits(firstTrailingBit(~(~vec4<i32>(u_input.b, u_input.b, var_2.a.x, 1i))));
    let var_4 = _wgslsmith_mod_i32(var_0.a.x, 1i);
    return arg_3;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> i32 {
    let var_0 = 693f;
    var var_1 = Struct_1(~(u_input.a ^ 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, 711f, _wgslsmith_f_op_f32(-var_0), var_0) + vec4<f32>(554f, var_0, _wgslsmith_f_op_f32(-arg_0.b), arg_0.b)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, -1000f, arg_0.b, arg_0.b), vec4<f32>(-866f, arg_0.b, 767f, var_0))) - vec4<f32>(var_0, -1009f, var_0, arg_0.b))))));
    var var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(var_0 - var_1.b.x)), _wgslsmith_f_op_f32(abs(1f)), 585f), _wgslsmith_f_op_vec2_f32(func_2(~(vec3<i32>(-1i) * -arg_0.a), arg_0)), var_1.b.x, Struct_2(_wgslsmith_add_vec3_i32(arg_0.a, global0[_wgslsmith_index_u32(u_input.a, 26u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = _wgslsmith_mult_u32(~min(~(~4294967295u), ~0u), (u_input.a << (u_input.a % 32u)) ^ 55481u);
    global0 = array<vec3<i32>, 26>();
    return _wgslsmith_div_i32(~min(_wgslsmith_add_i32(1i, var_2.a.x), 1i | arg_0.a.x), _wgslsmith_div_i32(max(countOneBits(14695i), ~(var_2.a.x ^ -17911i)), 14684i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, false, select(true, any(vec3<bool>(true, true, true)) || false, false), any(vec4<bool>(true, true, true, true)));
    var_0 = global1[_wgslsmith_index_u32(u_input.a, 18u)];
    global1 = array<vec4<bool>, 18>();
    global1 = array<vec4<bool>, 18>();
    var var_1 = Struct_1(~(~_wgslsmith_mult_u32(1u, 3467u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1217f))), -276f, _wgslsmith_f_op_f32(select(-1000f, -1000f, !var_0.x)), -500f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~abs(var_1.a))), ~(_wgslsmith_mult_i32(firstTrailingBit(-1i), _wgslsmith_sub_i32(u_input.b, u_input.b)) << (_wgslsmith_sub_u32(var_1.a, _wgslsmith_sub_u32(42967u, u_input.a)) % 32u)), ~vec2<u32>(min(85645u, 36645u), abs(0u)) << (vec2<u32>(135463u >> (firstLeadingBit(var_1.a) % 32u), var_1.a) % vec2<u32>(32u)), func_1(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(27307u, u_input.a, 1u), ~vec3<u32>(var_1.a, u_input.a, u_input.a)), 26u)], 250f), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, u_input.b), u_input.b) | -_wgslsmith_add_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)));
}

