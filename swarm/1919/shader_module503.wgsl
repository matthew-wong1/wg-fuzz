struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-429f)), -1442f)));
    var var_1 = global0.x;
    global0 = arg_0.xx;
    let var_2 = Struct_2(-8375i);
    var var_3 = Struct_1(u_input.c, -907f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1114f + var_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, 1230f, true)))), _wgslsmith_mod_i32(i32(-1i) * -global0.x, ~u_input.a), true);
    return arg_1;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(-259f)), arg_0.b, _wgslsmith_f_op_f32(func_3(vec3<i32>(1i, arg_0.d, arg_0.d), var_0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 546f, arg_0.c))))))));
    let var_2 = vec4<bool>(false, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~global0.x, -48035i), var_0.d, -2147483647i) <= (firstLeadingBit(-arg_0.d) >> (_wgslsmith_mod_u32(firstTrailingBit(0u), ~var_0.a) % 32u)), arg_0.e, true);
    var var_3 = reverseBits(vec3<u32>(arg_0.a, var_0.a, 7184u)) | ~(~(~(~vec3<u32>(36147u, 33614u, u_input.b.x))));
    let var_4 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-(arg_0.d & arg_0.d), ~countOneBits(-1i)), -15742i), -2147483647i);
    return 0u & (select(~var_3.x, _wgslsmith_sub_u32(var_3.x, select(18498u, 0u, false)), var_0.e) | reverseBits(abs(1u)));
}

fn func_1(arg_0: vec3<bool>) -> vec2<u32> {
    global0 = ~vec2<i32>(-49446i, u_input.a);
    return ~_wgslsmith_mult_vec2_u32((select(u_input.b, vec2<u32>(8002u, 0u), false) >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))) & (vec2<u32>(4294967295u, 1743u) | _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 59941u), u_input.b)), vec2<u32>(~func_2(Struct_1(5155u, -1545f, 826f, global0.x, false)), _wgslsmith_mult_u32(countOneBits(u_input.c), _wgslsmith_mod_u32(u_input.c, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~min(min((vec2<i32>(u_input.a, 49121i) & vec2<i32>(-2147483647i, u_input.a)) >> (func_1(vec3<bool>(false, true, true)) % vec2<u32>(32u)), firstTrailingBit(~vec2<i32>(global0.x, global0.x))), vec2<i32>(min(global0.x << (0u % 32u), global0.x), _wgslsmith_mod_i32(reverseBits(global0.x), min(global0.x, global0.x))));
    var var_0 = Struct_1(25099u, _wgslsmith_f_op_f32(select(412f, -630f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1110f))), ~(firstTrailingBit(20003i >> (u_input.c % 32u)) & 2147483647i), true);
    var var_1 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(reverseBits(45414i), global0.x, -u_input.a), 2147483647i));
    var_1 = Struct_2((-max(var_0.d, var_1.a) | ~global0.x) ^ (-(~var_1.a) & 952i));
    global0 = _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), firstLeadingBit(min(~vec2<i32>(0i, 31136i), _wgslsmith_mult_vec2_i32(vec2<i32>(-31781i, -1i), vec2<i32>(var_1.a, 1i))))) & max(-firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.d, var_1.a), vec2<i32>(var_0.d, var_1.a))), select(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.d, global0.x), vec2<i32>(var_0.d, u_input.a) >> (u_input.b % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.d, -34391i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, -2147483647i))), select(vec2<bool>(var_0.e, false), select(vec2<bool>(false, false), vec2<bool>(true, var_0.e), var_0.e), !var_0.e)));
    var_1 = Struct_2(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_0.b);
}

