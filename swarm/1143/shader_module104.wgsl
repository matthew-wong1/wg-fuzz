struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<vec3<bool>, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    global0 = 1i;
    let var_0 = all(global1[_wgslsmith_index_u32(~1u, 7u)]);
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(reverseBits(-2147483647i >> (u_input.b % 32u)) << (u_input.a % 32u), (_wgslsmith_dot_vec3_i32(vec3<i32>(-40174i, 1i, -53487i), vec3<i32>(1i, 34835i, 90031i)) ^ _wgslsmith_add_i32(-73469i, -53046i)) >> (abs(_wgslsmith_mod_u32(1u, 58934u)) % 32u)), ~(-14269i), ~((1i >> (u_input.b % 32u)) | firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -2147483647i), vec3<i32>(-9596i, -58374i, 18642i)))));
    let var_2 = countOneBits(~vec2<u32>(1u, 0u) & firstLeadingBit(reverseBits(~vec2<u32>(u_input.b, u_input.a))));
    var var_3 = var_1.x <= 600i;
    return var_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), -1000f)))), arg_1.b, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c.x, 37949u, 34526u), vec3<u32>(u_input.a, u_input.a, arg_1.c.x)), ~vec3<u32>(67339u, arg_2.c.x, 25767u)), arg_2.c.x, abs(u_input.b | 73578u)), ~(~0u)));
    let var_1 = Struct_1(var_0.a, arg_2.b, var_0.c);
    let var_2 = !all(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), vec2<bool>(true, true), func_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-385f, -704f, -465f))))));
    var_0 = arg_1;
    global0 = var_0.b.x;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f * var_0.a.x) * 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 1000f))))), abs(firstLeadingBit(vec2<i32>(2147483647i, arg_2.b.x))), var_1.c);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec3<bool>, 7>();
    let var_0 = arg_0;
    let var_1 = -164f;
    let var_2 = ~(~var_0.c.x) == 78995u;
    var var_3 = func_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-888f + var_1)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x * -1501f))), abs(var_0.b), ~arg_0.c), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-351f - var_1))), var_0.a.x), firstLeadingBit(~abs(var_0.b)), firstTrailingBit(vec2<u32>(arg_0.c.x, 1u)) >> ((~vec2<u32>(u_input.b, 1u) ^ select(vec2<u32>(var_0.c.x, var_0.c.x), arg_0.c, var_2)) % vec2<u32>(32u))), arg_0, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(143f * 1496f) - var_0.a.x) - -933f), 875f, -818f));
    return var_0;
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec3<bool>, 7>();
    global0 = _wgslsmith_mult_i32(-55589i ^ _wgslsmith_clamp_i32(func_1(Struct_1(arg_3.a, vec2<i32>(arg_3.b.x, 29720i), arg_3.c)).b.x, max(min(arg_3.b.x, 1i), arg_1.x), ~min(5116i, -10392i)), 2147483647i);
    let var_0 = !(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    let var_1 = !(any(vec3<bool>(true, u_input.b != arg_3.c.x, any(vec3<bool>(false, var_0.x, var_0.x)))) == true);
    let var_2 = ~reverseBits(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_2, arg_2, 55501u, u_input.b)), vec4<u32>(arg_2, 1u, u_input.b, arg_3.c.x) & firstLeadingBit(vec4<u32>(0u, 113643u, arg_2, u_input.a)), ~(~vec4<u32>(arg_3.c.x, arg_3.c.x, u_input.a, 4294967295u))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = ~16471i;
    global1 = array<vec3<bool>, 7>();
    var var_1 = func_4(-111f, ~vec4<i32>(0i, 2718i, countOneBits(i32(-1i) * -69638i), -1i), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a ^ 1u, 0u, _wgslsmith_div_u32(u_input.a, 4294967295u), ~u_input.b), (vec4<u32>(64493u, 52221u, u_input.a, 0u) | vec4<u32>(u_input.a, u_input.a, u_input.a, 86325u)) & select(vec4<u32>(u_input.b, 36893u, 56927u, 0u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.a), vec4<bool>(true, false, false, true))), func_1(Struct_1(vec2<f32>(-924f, _wgslsmith_div_f32(-1177f, 104f)), vec2<i32>(1i, -2147483647i), max(~vec2<u32>(59291u, u_input.b), vec2<u32>(u_input.a, 61662u)))));
    var_0 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(-411f, 1543f)) * _wgslsmith_f_op_vec2_f32(exp2(var_1.a))), vec2<f32>(func_2(Struct_1(var_1.a, var_1.b, var_1.c), Struct_1(var_1.a, vec2<i32>(-2147483647i, var_1.b.x), vec2<u32>(8441u, var_1.c.x)), Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), var_1.b, var_1.c), vec3<f32>(142f, var_1.a.x, var_1.a.x)).a.x, var_1.a.x)) + _wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-458f, var_1.a.x) + vec2<f32>(1132f, var_1.a.x)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))))), ~var_1.c.x, vec3<i32>(var_1.b.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, var_1.b.x), -1i), _wgslsmith_mod_i32(-var_1.b.x, -52882i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.x, 68493u ^ u_input.b, func_1(Struct_1(vec2<f32>(-1872f, var_1.a.x), vec2<i32>(-11872i, var_1.b.x), vec2<u32>(31589u, u_input.b))).c.x), vec3<u32>(_wgslsmith_div_u32(var_1.c.x, u_input.a), var_1.c.x, _wgslsmith_sub_u32(0u, u_input.b))) % vec3<u32>(32u)), firstLeadingBit(u_input.a));
}

