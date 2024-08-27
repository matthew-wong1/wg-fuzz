struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(808f, vec2<i32>(24771i, 53777i), vec3<u32>(0u, 1u, 26752u), vec4<i32>(42498i, -1i, 43379i, -23102i)), Struct_2(-195f, vec2<i32>(18952i, 0i), vec3<u32>(52039u, 38260u, 83786u), vec4<i32>(i32(-2147483648), -52013i, 28089i, i32(-2147483648))), Struct_2(-1922f, vec2<i32>(7162i, 16040i), vec3<u32>(54519u, 27479u, 22284u), vec4<i32>(1i, -52573i, 0i, -1i)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    global0 = array<Struct_2, 3>();
    let var_0 = Struct_1(arg_1.d, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(192f, _wgslsmith_f_op_f32(1364f * _wgslsmith_f_op_f32(select(arg_2, arg_1.a, true)))))), select(1i, -32739i, !(_wgslsmith_f_op_f32(-arg_1.a) > _wgslsmith_f_op_f32(min(arg_1.a, arg_2)))), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)))));
    var var_1 = Struct_2(-1008f, select(arg_1.b, vec2<i32>(1i, select(-9440i, arg_1.d.x, var_0.d.x) & u_input.a), true), vec3<u32>((arg_1.c.x & 11562u) | max(0u, 1u), select(firstTrailingBit(arg_1.c.x), _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(0u, 46790u)), var_0.d.x), arg_1.c.x), var_0.a);
    var var_2 = var_0.d.x;
    global0 = array<Struct_2, 3>();
    return var_0.a.wyx;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = arg_1.x;
    let var_1 = max(vec3<i32>(~((u_input.a ^ u_input.a) & _wgslsmith_mult_i32(u_input.a, 1i)), u_input.a << (84743u % 32u), 16621i), func_3(vec2<i32>(-1i ^ _wgslsmith_div_i32(u_input.a, 2147483647i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -83559i, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), -45246i)), Struct_2(_wgslsmith_f_op_f32(round(912f)), -_wgslsmith_div_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.a, 1i)), arg_1, firstLeadingBit(min(vec4<i32>(-23315i, u_input.a, u_input.a, u_input.a), vec4<i32>(27454i, -1i, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(sign(-621f)))))));
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    return 1f;
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -30195i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, -46954i) << (vec4<u32>(14018u, 1u, 26117u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -414f))), _wgslsmith_sub_i32(-(~(-51306i)), ~1i), arg_0.wy));
    global0 = array<Struct_2, 3>();
    let var_1 = Struct_1(firstTrailingBit(firstTrailingBit(max(min(vec4<i32>(-1i, 1i, 0i, 2147483647i), var_0.a.a), vec4<i32>(u_input.a, var_0.a.c, -4092i, 0i)))), _wgslsmith_f_op_f32(func_2(vec3<f32>(304f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(abs(-887f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b)))), vec3<u32>(1u, 1u, 1u))), 0i, !var_0.a.d);
    var var_2 = !(!var_0.a.d.x);
    var var_3 = Struct_2(186f, vec2<i32>(var_1.a.x, _wgslsmith_mod_i32(i32(-1i) * -var_1.a.x, -68715i & -var_0.a.a.x)), reverseBits(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(0u, 54100u, 4759u)), ~vec3<u32>(0u, 104577u, 2740u))) | vec3<u32>(firstLeadingBit(1u), min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(35786u, 43602u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, 4294967295u, 1u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 14102u), vec4<u32>(62958u, 3538u, 0u, 24938u))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, _wgslsmith_mod_i32(u_input.a, var_1.c), 2147483647i, 2147483647i), vec4<i32>(var_0.a.a.x, var_0.a.c, abs(20581i), 1i)), vec4<i32>(_wgslsmith_sub_i32(u_input.a, -var_0.a.a.x), 31089i, u_input.a, _wgslsmith_sub_i32(u_input.a, _wgslsmith_div_i32(22408i, 24300i)))));
    return Struct_3(Struct_1(vec4<i32>(1i, -var_0.a.c, var_1.a.x, -2147483647i), 623f, abs(_wgslsmith_add_i32(var_0.a.c, -2147483647i)), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_0.x, arg_0.x)), arg_0.yy, vec2<bool>(false, var_3.c.x < var_3.c.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    global0 = array<Struct_2, 3>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b, -279f, 1175f) + vec3<f32>(arg_1.a.b, arg_2.a.b, -432f))))));
    let var_1 = vec2<i32>(-42691i, 0i);
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b, arg_1.a.b, 734f)))), vec3<f32>(_wgslsmith_f_op_f32(max(710f, arg_2.a.b)), var_0.x, -800f)))), vec3<f32>(-619f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.a.b, -675f)), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-741f)))));
    let var_2 = !select(!arg_1.a.d, arg_1.a.d, !vec2<bool>(true, 457f == var_0.x));
    return _wgslsmith_f_op_f32(-arg_2.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)) - _wgslsmith_f_op_f32(f32(-1f) * -844f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(any(vec4<bool>(true, true, true, true)), Struct_3(Struct_1(~vec4<i32>(5946i, u_input.a, -3891i, -12877i), _wgslsmith_f_op_f32(397f + -160f), -u_input.a, select(vec2<bool>(true, true), vec2<bool>(true, true), true))), func_1(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true)))));
    let var_1 = _wgslsmith_mult_u32(~(~1u), ~4294967295u);
    var var_2 = -976f;
    var var_3 = _wgslsmith_div_vec4_u32(min(max(abs(vec4<u32>(1u, 0u, var_1, 0u)), vec4<u32>(var_1, 9208u, 0u, var_1)), abs(~vec4<u32>(var_1, 0u, 8347u, var_1))) ^ vec4<u32>(var_1, var_1, 36742u ^ ~var_1, ~reverseBits(var_1)), reverseBits(reverseBits(vec4<u32>(var_1 | 0u, 1u, ~17935u, 0u))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(func_1(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true)).a.b, _wgslsmith_f_op_f32(func_4(true, func_1(vec4<bool>(false, false, false, true)), func_1(vec4<bool>(false, false, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2486f * -665f)))))) * 1275f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, 2147483647i, 1i), ~(-min(-50384i << (var_3.x % 32u), -2147483647i)));
}

