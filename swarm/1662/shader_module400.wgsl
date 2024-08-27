struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, -2010i);

var<private> global1: array<Struct_2, 11>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = 1359f;
    let var_1 = Struct_2(arg_0, 36264u, 2147483647i, -1552f);
    global1 = array<Struct_2, 11>();
    let var_2 = any(!vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), false, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + var_1.d), 1125f)));
    return vec2<i32>(_wgslsmith_div_i32(-(~global0.x | var_1.c), i32(-1i) * -(~50557i)), i32(-1i) * -countOneBits(_wgslsmith_mult_i32(15110i, global0.x)));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = vec4<i32>(global0.x >> (0u % 32u), -(~global0.x), _wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(global0.x, -21066i) ^ firstLeadingBit(1i)), global0.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-func_3(Struct_1(-1000f)), abs(global0.yx)), _wgslsmith_div_vec2_i32(vec2<i32>(global0.x, 0i), global0.xy)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_div_f32(-203f, -302f)))))), ~(~u_input.a.x), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 844f)) * -827f), arg_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1003f)));
    var var_2 = _wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 32152u, 0u, var_1.b), firstTrailingBit(vec4<u32>(var_1.b, 4294967295u, 37782u, 44589u))), ~(~vec4<u32>(87490u, u_input.a.x, 49680u, var_1.b)))), ~vec4<u32>(40569u, var_1.b, 51279u, var_1.b));
    var var_3 = ~var_2.x | 1u;
    global0 = vec3<i32>(-max(countOneBits(global0.x), _wgslsmith_add_i32(1i, global0.x)), min(_wgslsmith_mult_i32(~var_1.c, global0.x) >> (var_2.x % 32u), -10519i), ~1i);
    return vec3<bool>(select(true, any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), false, true);
}

fn func_1() -> u32 {
    global1 = array<Struct_2, 11>();
    global0 = _wgslsmith_sub_vec3_i32(abs(vec3<i32>(37808i, global0.x, global0.x) | ~vec3<i32>(11950i, -1i, 0i)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(16990i, 3979i, 5903i), vec3<i32>(-36363i, global0.x, global0.x)), ~vec3<i32>(global0.x, global0.x, global0.x)) << (~(~vec3<u32>(u_input.a.x, u_input.a.x, 14147u)) % vec3<u32>(32u))) ^ vec3<i32>(global0.x | global0.x, global0.x ^ -45596i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(4735i, 2147483647i), global0.xy), _wgslsmith_mod_vec2_i32(global0.xx, vec2<i32>(-2882i, -50901i))), _wgslsmith_mod_i32(-11582i, _wgslsmith_mult_i32(global0.x, 2147483647i))));
    let var_0 = _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)), vec4<u32>(75355u, 24918u, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(~(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(11003u, 4294967295u, 97949u, u_input.a.x)), abs(vec4<u32>(u_input.a.x, 86945u, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))))) | select(~vec4<u32>(22780u | u_input.a.x, u_input.a.x ^ 0u, 0u, 0u), _wgslsmith_mod_vec4_u32(min(~vec4<u32>(30377u, u_input.a.x, u_input.a.x, 12637u), select(vec4<u32>(32978u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(32242u, u_input.a.x, 3485u, 1u), vec4<bool>(true, false, false, false))), countOneBits(~vec4<u32>(0u, 0u, 1u, 4294967295u))), vec4<bool>(true, true, true, all(func_2(-1429f))));
    global0 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(92333i, 0i, 0i), reverseBits(vec3<i32>(global0.x, global0.x, global0.x))), -vec3<i32>(~global0.x, global0.x, -1i));
    global0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(10635i, -global0.x, global0.x & _wgslsmith_add_i32(9053i, -69426i)), firstTrailingBit(_wgslsmith_sub_vec3_i32(-vec3<i32>(-26488i, global0.x, global0.x), vec3<i32>(global0.x, global0.x << (var_0.x % 32u), -1i))), ~max((vec3<i32>(global0.x, global0.x, 57858i) << (vec3<u32>(27717u, var_0.x, u_input.a.x) % vec3<u32>(32u))) >> (var_0.wzw % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global0.x, 67514i) | vec3<i32>(global0.x, global0.x, 0i), min(vec3<i32>(2147483647i, global0.x, 1i), vec3<i32>(16664i, -63907i, global0.x)))));
    return 62088u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-1164f), func_1(), min(firstTrailingBit(reverseBits(-1i)), global0.x), -242f);
    let var_1 = abs(_wgslsmith_div_i32(select(global0.x, ~var_0.c, true), global0.x) ^ 0i);
    let var_2 = Struct_1(var_0.a.a);
    let var_3 = ~global0.yy;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(step(-167f, var_0.d))))));
    global1 = array<Struct_2, 11>();
    var var_5 = u_input.a.x;
    let var_6 = Struct_1(var_0.a.a);
    global1 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1390f, 613f) * vec2<f32>(609f, -520f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(744f, var_0.a.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-710f, 878f) - vec2<f32>(var_4, -1291f)))))), ~var_0.c, abs(firstLeadingBit(_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_3.x, -48393i, 0i, -74769i)), vec4<i32>(var_3.x, 0i, var_3.x, global0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_6.a)) * _wgslsmith_f_op_f32(max(-155f, 1494f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1157f)) * _wgslsmith_f_op_f32(trunc(-582f)))))));
}

