struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(714f);

var<private> global2: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3) -> vec4<i32> {
    global2 = ~reverseBits(global0.a);
    let var_0 = Struct_1(-368f);
    var var_1 = Struct_2(4294967295u);
    var var_2 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_div_u32(select(arg_2.d, arg_0, true), ~global0.a), ~arg_1.x) | u_input.a);
    var var_3 = arg_2;
    return ~(~(-(vec4<i32>(u_input.d, u_input.b.x, -10878i, -2147483647i) | abs(vec4<i32>(17416i, u_input.d, u_input.d, u_input.b.x)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: bool, arg_3: i32) -> f32 {
    var var_0 = arg_2;
    global0 = Struct_2(~(~(~global0.a)));
    var_0 = !(true && any(select(vec2<bool>(true, false), vec2<bool>(false, false), all(vec4<bool>(arg_2, true, arg_2, true)))));
    let var_1 = 73735i;
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-global1.a)), Struct_1(global1.a), arg_2, ~_wgslsmith_mult_u32(~26171u, (arg_1 | 1u) ^ global0.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, 666f) - vec2<f32>(global1.a, global1.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, -662f)))))));
    return _wgslsmith_f_op_f32(global1.a * 192f);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    var var_0 = ~min(abs(vec3<u32>(89149u, 4294967295u, ~global0.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.e), vec3<u32>(41358u, global0.a, 4294967295u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(global0.a, global0.a, 17301u), vec3<u32>(103647u, global0.a, u_input.a))));
    global1 = arg_1;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(global0.a, var_0.yy, Struct_3(arg_1, arg_1, true, var_0.x, vec2<f32>(global1.a, global1.a))), countOneBits(41525u), !arg_0, _wgslsmith_mod_i32(u_input.c.x, 11674i))))), Struct_1(global1.a), !(arg_0 && arg_0) && any(vec3<bool>(arg_0 && arg_0, !arg_0, -2147483647i == u_input.b.x)), ~(~(~global0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(645f, _wgslsmith_f_op_f32(-global1.a)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1123f, arg_1.a)))))));
    let var_2 = u_input.c.x;
    var_0 = ~vec3<u32>(firstLeadingBit(8561u), ~(~31142u ^ _wgslsmith_mod_u32(32900u, var_0.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.e, 4294967295u, var_1.d, u_input.e)), _wgslsmith_mult_vec4_u32(vec4<u32>(17713u, 36552u, global0.a, global0.a), vec4<u32>(94876u, global0.a, var_1.d, var_1.d))), vec4<u32>(~global0.a, reverseBits(18923u), var_0.x, 5406u)));
    return Struct_3(Struct_1(-313f), var_1.a, !(!var_1.c), countOneBits(abs(~(~u_input.a))), vec2<f32>(-2345f, _wgslsmith_f_op_f32(var_1.a.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1921f), _wgslsmith_f_op_f32(round(159f))))));
}

fn func_1() -> u32 {
    let var_0 = func_2(true, Struct_1(global1.a));
    let var_1 = func_2(func_2(!(!all(vec3<bool>(var_0.c, false, true))), func_2(false, var_0.b).b).c, Struct_1(-264f));
    global0 = Struct_2((4294967295u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, var_0.d, var_0.d), vec3<u32>(3470u, var_1.d, 1u))) | global0.a);
    let var_2 = var_1;
    global1 = var_1.b;
    return firstLeadingBit(abs(~global0.a));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = ~(~arg_0);
    var_0 = arg_0;
    var var_1 = arg_0;
    global0 = Struct_2(~(~(~(~4294967295u))));
    var var_2 = _wgslsmith_sub_vec3_i32(u_input.b & u_input.b, u_input.b) & reverseBits(u_input.b);
    return Struct_2(~var_0.x << (_wgslsmith_sub_u32(arg_0.x, global0.a) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5((~(~vec2<u32>(68592u, global0.a)) << (firstLeadingBit(countOneBits(vec2<u32>(4424u, u_input.e))) % vec2<u32>(32u))) << (max(~_wgslsmith_mod_vec2_u32(vec2<u32>(57547u, 1u), vec2<u32>(51079u, 12663u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 1u) & vec2<u32>(global0.a, 20740u), ~vec2<u32>(4294967295u, global0.a))) % vec2<u32>(32u)), _wgslsmith_mult_u32(~func_1(), 43458u));
    var var_0 = u_input.e;
    global1 = func_2(global1.a >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(true, Struct_1(-882f)).a.a)), Struct_1(global1.a)).a;
    let var_1 = !vec4<bool>(true, any(vec2<bool>(select(false, false, false), true)), true, true);
    global0 = func_5(select(vec2<u32>(~4294967295u, global0.a), vec2<u32>(1u, _wgslsmith_add_u32(1u, u_input.e)), !var_1.yy) | vec2<u32>(abs(~1844u), ~(58241u << (global0.a % 32u))), abs(firstTrailingBit(~_wgslsmith_add_u32(global0.a, u_input.e))));
    let var_2 = !select(var_1.xxw, vec3<bool>(true, var_1.x, true), !(!(!var_1.yww)));
    global0 = func_5(abs(~(~(vec2<u32>(global0.a, 0u) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global0.a, firstLeadingBit(4294967295u), 1u), _wgslsmith_sub_u32(global0.a, 9699u) ^ ~1u, 55215u, 9430u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, 22680u, 0u, 0u), ~vec4<u32>(u_input.a, global0.a, global0.a, u_input.e))));
    var var_3 = ~vec4<u32>(~(~_wgslsmith_mod_u32(u_input.a, 0u)), func_5(~vec2<u32>(43112u, u_input.a) ^ abs(vec2<u32>(global0.a, 392u)), 0u).a, global0.a, 4294967295u);
    var var_4 = abs(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1160f, global1.a, global1.a, global1.a))), vec4<f32>(_wgslsmith_f_op_f32(func_4(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.d), var_3.x, var_2.x, var_4.x)), 1000f, -1000f, 1f))));
}

