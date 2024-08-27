struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = Struct_1(countOneBits(countOneBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 35022u), global0.a))), global0.b);
    var var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(-101f * -295f);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(603f, 392f), _wgslsmith_f_op_f32(step(-1000f, 920f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1883f, 181f)) + _wgslsmith_f_op_f32(1424f + -444f)))) * -568f), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(global0.a, global0.a, global0.a))), (vec3<u32>(0u, u_input.c.x, u_input.a) << (vec3<u32>(4294967295u, 73808u, u_input.c.x) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_u32(vec3<u32>(23290u, global0.a, 1u), vec3<u32>(1u, u_input.e, 1u))), ~firstTrailingBit(vec3<u32>(22467u, 70719u, 42963u) << (vec3<u32>(25738u, global0.a, 4294967295u) % vec3<u32>(32u))), firstLeadingBit(abs(~vec3<u32>(u_input.e, u_input.e, 4294967295u)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -114f)) * var_2.a);
    return var_2.b;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = Struct_2(-482f, ~abs(~vec3<u32>(18566u, global0.a, u_input.a)) & _wgslsmith_mult_vec3_u32(~(vec3<u32>(global0.a, u_input.e, 81120u) ^ vec3<u32>(arg_1.a, 24436u, arg_1.a)), ~vec3<u32>(u_input.c.x, 94422u, 18854u)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-var_0.a)), -1226f)), select(_wgslsmith_mult_vec3_u32(var_0.b, select(func_3(20043i), vec3<u32>(43946u, 0u, 6247u), select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(false, false, arg_1.b), vec3<bool>(false, global0.b, false)))), ~var_0.b, select(!vec3<bool>(true, false, arg_1.b), select(select(vec3<bool>(false, arg_1.b, false), vec3<bool>(true, global0.b, arg_1.b), vec3<bool>(arg_1.b, false, false)), vec3<bool>(false, arg_1.b, arg_1.b), vec3<bool>(true, global0.b, false)), vec3<bool>(true, false, true))));
    var var_1 = ~func_3(firstLeadingBit(-select(u_input.b.x, 2147483647i, global0.b)));
    global0 = Struct_1(14831u, false);
    let var_2 = arg_1;
    return -vec4<i32>(_wgslsmith_clamp_i32(53771i, u_input.d.x, i32(-1i) * -1i), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.b.x), u_input.d)), abs(-u_input.d.x)), ((u_input.d.x | u_input.d.x) | _wgslsmith_mod_i32(u_input.d.x, 0i)) | u_input.d.x, -max(-60441i, 2147483647i));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(154f, -161f, false)) + -1378f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-877f * 1990f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(715f * 1539f))))));
    let var_1 = Struct_2(-1445f, ~vec3<u32>(min(u_input.a, _wgslsmith_mod_u32(1u, u_input.e)), global0.a, u_input.e));
    let var_2 = ~abs(firstTrailingBit(func_2(vec3<f32>(var_1.a, 553f, -370f), Struct_1(global0.a, true)))) & _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-23903i, u_input.b.x, u_input.d.x, -2147483647i) << (~vec4<u32>(51078u, 24403u, global0.a, 4454u) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_add_i32(-13317i, -7565i), u_input.d.x << (16732u % 32u), u_input.b.x)), vec4<i32>(_wgslsmith_add_i32(~u_input.b.x, 1i), u_input.d.x, abs(_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), u_input.d.x));
    var var_3 = select(select(vec4<bool>(all(!vec4<bool>(arg_1.x, false, global0.b, global0.b)), _wgslsmith_f_op_f32(floor(var_0)) == _wgslsmith_f_op_f32(var_0 - var_0), !arg_1.x, false), !select(!vec4<bool>(arg_0.x, false, true, global0.b), vec4<bool>(arg_1.x, arg_0.x, global0.b, true), select(vec4<bool>(arg_1.x, arg_1.x, global0.b, arg_0.x), vec4<bool>(false, arg_0.x, true, global0.b), arg_1.x)), !vec4<bool>(true, u_input.d.x == 1i, true, true)), !select(select(select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(false, arg_0.x, true, arg_1.x), vec4<bool>(false, true, true, false)), vec4<bool>(false, global0.b, false, arg_1.x), global0.b), select(!vec4<bool>(true, arg_1.x, true, arg_1.x), select(vec4<bool>(arg_1.x, global0.b, arg_0.x, false), vec4<bool>(arg_1.x, arg_0.x, arg_0.x, true), true), !arg_1.x), arg_0.x), global0.b);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(select(1816f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-170f * var_1.a))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(sign(var_0)))), any(select(var_3.zx, arg_1.xy, global0.b)))), true)), vec3<u32>(~global0.a, reverseBits(global0.a << (1u % 32u)), 1u) >> (_wgslsmith_sub_vec3_u32(func_3(max(45636i, -2147483647i)), vec3<u32>(global0.a, 16566u, global0.a)) % vec3<u32>(32u)));
    return Struct_1(4294967295u | (var_4.b.x ^ (func_3(1i).x << (~1u % 32u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-628f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(473f - 605f)))))));
    var var_1 = func_1(!select(select(vec2<bool>(global0.b, true), select(vec2<bool>(true, false), vec2<bool>(global0.b, global0.b), vec2<bool>(true, global0.b)), any(vec4<bool>(global0.b, false, true, true))), !vec2<bool>(global0.b, global0.b), global0.b && global0.b), !vec3<bool>(!all(vec2<bool>(false, global0.b)), !global0.b, true));
    let var_2 = Struct_1(~(~(~36078u) & (4294967295u ^ var_1.a)), !any(!vec2<bool>(var_1.b, true)));
    var var_3 = false;
    var var_4 = (_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 101764u, 110028u) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4913u, global0.a, 10632u)), ~(~vec3<u32>(23977u, global0.a, 11088u))) & vec3<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 3307u, global0.a, var_2.a), vec4<u32>(global0.a, 0u, 29506u, 69614u)), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), global0.b), ~_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.a, 72943u, 20958u), select(vec4<u32>(4294967295u, u_input.c.x, var_1.a, 4294967295u), vec4<u32>(var_2.a, 89814u, global0.a, 4294967295u), vec4<bool>(true, false, true, var_2.b))))) >> (max(vec3<u32>(~(~1u), _wgslsmith_sub_u32(0u, var_1.a | global0.a), 76581u), select(vec3<u32>(firstTrailingBit(var_1.a), 14960u, u_input.e), vec3<u32>(abs(u_input.e), ~22684u, abs(11409u)), !select(vec3<bool>(global0.b, true, var_1.b), vec3<bool>(var_2.b, true, global0.b), vec3<bool>(global0.b, false, true)))) % vec3<u32>(32u));
    let var_5 = _wgslsmith_mult_vec3_i32(u_input.d, _wgslsmith_div_vec3_i32(vec3<i32>(57044i << (0u % 32u), 1i, func_2(vec3<f32>(-253f, 581f, 488f), var_2).x >> (var_4.x % 32u)), select(~vec3<i32>(55851i, 0i, u_input.d.x), u_input.d, !global0.b)));
    var_4 = vec3<u32>(abs(global0.a) ^ 51540u, ~func_1(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(var_1.b, false)), vec3<bool>(all(vec4<bool>(var_1.b, true, var_1.b, var_1.b)), any(vec2<bool>(false, true)), var_1.b)).a, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x >> (~(~57891u) % 32u), abs(var_4.zz));
}

