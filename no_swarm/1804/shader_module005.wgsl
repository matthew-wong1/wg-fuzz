struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23>;

var<private> global1: Struct_1 = Struct_1(-589f, vec2<u32>(9306u, 104980u));

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 25>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> u32 {
    global3 = array<vec4<u32>, 25>();
    global0 = array<vec4<f32>, 23>();
    global0 = array<vec4<f32>, 23>();
    global1 = Struct_1(_wgslsmith_f_op_f32(-global2.a), (vec2<u32>(1u, ~4294967295u) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, global2.b.x), global2.b) % vec2<u32>(32u))) | (global2.b << (global2.b % vec2<u32>(32u))));
    global1 = Struct_1(_wgslsmith_f_op_f32(round(1042f)), vec2<u32>(0u, ~global2.b.x) & vec2<u32>(~global1.b.x, 14238u));
    return ~(~(~(~1u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(-arg_1.a)) - 1f) * _wgslsmith_f_op_f32(-arg_2.a)), vec2<u32>(1u, 1u));
    global2 = Struct_1(_wgslsmith_f_op_f32(max(894f, 1078f)), vec2<u32>(func_3(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), arg_2.a, arg_2.a), firstLeadingBit(vec2<i32>(0i, u_input.b)), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a.x, -2147483647i, u_input.b), firstLeadingBit(vec3<i32>(u_input.b, u_input.a.x, 32657i)))), _wgslsmith_mod_u32(global1.b.x, global1.b.x)));
    global2 = Struct_1(global1.a, global1.b);
    var var_0 = ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(firstTrailingBit(u_input.b) ^ _wgslsmith_sub_i32(19486i, -9305i), countOneBits(firstLeadingBit(0i))), max(countOneBits(u_input.b), _wgslsmith_div_i32(_wgslsmith_mult_i32(7626i, u_input.a.x), abs(-2147483647i))));
    var var_1 = arg_2;
    return ~abs(24906i);
}

fn func_1(arg_0: bool) -> vec2<bool> {
    var var_0 = ~_wgslsmith_mod_vec3_i32(countOneBits(~vec3<i32>(0i, u_input.b, u_input.b)), min(countOneBits(vec3<i32>(-2147483647i, u_input.a.x, 40387i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 51213i, u_input.a.x), vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(u_input.b, -1i, u_input.b)))) ^ select(-_wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.b, u_input.b), vec3<i32>(u_input.a.x, u_input.b, 9671i)), ~vec3<i32>(54194i, u_input.a.x, -17891i)), vec3<i32>(i32(-1i) * -1i, -6326i, firstTrailingBit(u_input.a.x)) | vec3<i32>(func_2(global2.b, Struct_1(-450f, vec2<u32>(u_input.c.x, global2.b.x)), Struct_1(267f, vec2<u32>(global2.b.x, 4034u))), 14259i, i32(-1i) * -40937i), !any(vec2<bool>(true, arg_0)));
    global2 = Struct_1(-848f, abs(min(select(u_input.c, u_input.c, arg_0), vec2<u32>(global1.b.x, u_input.c.x)) >> (global1.b % vec2<u32>(32u))));
    var var_1 = firstLeadingBit(_wgslsmith_mod_i32(var_0.x & 1i, -2147483647i) & _wgslsmith_add_i32(-61232i, -u_input.a.x)) & ~(-21359i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(floor(106f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-787f - 144f) * _wgslsmith_f_op_f32(global2.a - global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(f32(-1f) * -2875f)), any(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f)));
    let var_3 = _wgslsmith_f_op_f32(step(-1459f, -569f));
    return select(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, arg_0), arg_0), vec2<bool>(arg_0, arg_0), arg_0), select(vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false), u_input.c.x == global1.b.x), true), vec2<bool>(true, true), !select(vec2<bool>(false, false), !vec2<bool>(false, arg_0), true)), select(!vec2<bool>(false, all(vec4<bool>(true, arg_0, arg_0, arg_0))), !(!(!vec2<bool>(false, arg_0))), !vec2<bool>(true, arg_0)), !(!select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 23>();
    let var_0 = select(func_1(!all(vec2<bool>(true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), false);
    var var_1 = Struct_1(1020f, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(35157u, 1u), vec2<u32>(1u, _wgslsmith_mod_u32(global1.b.x, 0u))), reverseBits(select(u_input.c, vec2<u32>(global1.b.x, 4294967295u), any(vec2<bool>(var_0.x, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a, 108f, true)) * -1048f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1144f, 1390f))))), -12729i);
}

