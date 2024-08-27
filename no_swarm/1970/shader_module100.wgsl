struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(2471i, 0i), vec4<f32>(572f, -1543f, 1094f, 886f)), Struct_1(vec2<i32>(1i, 0i), vec4<f32>(1734f, 930f, 655f, 1572f)), Struct_1(vec2<i32>(17227i, 0i), vec4<f32>(1710f, 1000f, -145f, 629f)), Struct_1(vec2<i32>(-8698i, 1i), vec4<f32>(-1088f, -557f, 539f, 481f)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec4<f32>(-1000f, -1279f, -353f, -282f)), Struct_1(vec2<i32>(-13104i, -35227i), vec4<f32>(742f, 213f, 779f, 543f)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = ~select(vec3<u32>(30564u, select(0u, ~arg_0, arg_0 >= 1u), reverseBits(~arg_0)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0, 6748u), 1u), 1u, 4294967295u), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)));
    let var_1 = select(vec2<bool>(!any(vec2<bool>(false, true)), ((arg_0 >= 59368u) || (0i >= u_input.b)) && true), vec2<bool>(true, true), -countOneBits(u_input.a << (var_0.x % 32u)) >= ~u_input.a);
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    return 4294967295u;
}

fn func_2() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(64504u, _wgslsmith_sub_u32(func_3(75919u), min(78881u, 1u)), 1u), abs(countOneBits(~vec3<u32>(45485u, 4294967295u, 2312u)))), _wgslsmith_add_u32(1u, firstLeadingBit(abs(4294967295u))), (u_input.a >= _wgslsmith_mult_i32(29687i, firstTrailingBit(u_input.a))) | !any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), 6u)];
    var_0 = global0[_wgslsmith_index_u32(67508u, 6u)];
    let var_1 = 140f;
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(8185u, 0u)))), 6u)];
    var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(12391u, 1u, 46352u, 55040u))), reverseBits(_wgslsmith_add_u32(1u, 1u))), 6u)];
    return var_1;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(769f, -1000f, 172f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -318f, -1101f) + vec3<f32>(-822f, 542f, 249f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(222f, -1036f, 470f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1189f * var_0.x), _wgslsmith_f_op_f32(func_2()))), 1f, 477f) + vec4<f32>(-1150f, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-774f - var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-538f, var_0.x)))));
    global0 = array<Struct_1, 6>();
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(select(1615f, -683f, false)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(353f * var_1.x), _wgslsmith_f_op_f32(min(var_0.x, 1000f)))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51549u, 15679u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 10675u)), 95415u), min(3305u, ~1u), 36028u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 62191u, 0u, 21799u), vec4<u32>(4294967295u, 12389u, 15235u, 6354u), false), ~vec4<u32>(0u, 1u, 0u, 0u))), vec4<u32>(~_wgslsmith_div_u32(15840u, 82666u), min(0u, _wgslsmith_add_u32(1u, 10085u)), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 53681u), ~26382u), ~1u >> (0u % 32u))), func_3(1u)), 6u)];
    return 41786u;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec2<i32>(-55226i >> (~firstLeadingBit(arg_2) % 32u), arg_3.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, arg_0.b.x, -469f, arg_3.b.x), _wgslsmith_f_op_vec4_f32(-arg_0.b), vec4<bool>(true, true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) - _wgslsmith_f_op_f32(step(arg_3.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -187f))), _wgslsmith_f_op_f32(floor(-1635f))))));
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    var_0 = Struct_1(_wgslsmith_mult_vec2_i32(min(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, -2147483647i), abs(vec2<i32>(u_input.b, -26319i))), vec2<i32>(arg_3.a.x, -2147483647i)), _wgslsmith_clamp_vec2_i32(var_0.a, max(~arg_3.a, -vec2<i32>(-75159i, var_0.a.x)), var_0.a)), _wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), arg_3.b))));
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(arg_3.a.x, arg_0.a.x), max(-arg_1, abs(11654i)));
    global0 = array<Struct_1, 6>();
    return Struct_1(arg_3.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.b)) + vec4<f32>(-1495f, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), _wgslsmith_f_op_f32(sign(-2348f)), arg_3.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1059f, -292f, arg_3.b.x, arg_3.b.x))) * var_0.b), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0[_wgslsmith_index_u32(~reverseBits(max(49317u, _wgslsmith_dot_vec3_u32(vec3<u32>(53655u, 4294967295u, 0u), vec3<u32>(55949u, 0u, 28446u)))), 6u)], -u_input.a, ~_wgslsmith_mod_u32(~24217u, _wgslsmith_add_u32(func_1(-14424i, u_input.c, 24576i), 10478u)), Struct_1(~abs(vec2<i32>(1i, u_input.b) & vec2<i32>(-2147483647i, -21565i)), vec4<f32>(509f, 577f, _wgslsmith_f_op_f32(963f - -2755f), 1423f)));
    var_0 = global0[_wgslsmith_index_u32(~1u, 6u)];
    global0 = array<Struct_1, 6>();
    var_0 = global0[_wgslsmith_index_u32(0u, 6u)];
    var_0 = global0[_wgslsmith_index_u32(1u, 6u)];
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b)))));
    let var_1 = true;
    var_0 = Struct_1(var_0.a ^ vec2<i32>(_wgslsmith_add_i32(~u_input.c, u_input.a >> (1u % 32u)), u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.b, var_0.b)) * var_0.b));
    global0 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(abs(1u), ~(~1u)), -1i, var_0.a, vec2<f32>(-546f, var_0.b.x), ~23576u);
}

