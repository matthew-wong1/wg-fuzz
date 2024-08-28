struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 1>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = vec3<i32>(global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(1u, arg_0.x)), 1u)], u_input.a, u_input.d);
    global0 = arg_3.a.x;
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(select(var_0.b.x, u_input.b.x, arg_3.a.x), arg_3.b.x), countOneBits(~arg_0.x)), 50144u, ~arg_0.x), 0u);
    global1 = array<i32, 1>();
    return all(select(vec4<bool>(var_2.x <= 1u, true, all(vec3<bool>(arg_2.a.x, arg_3.a.x, true)), true), select(arg_2.a, vec4<bool>(var_0.a.x, true, true, select(true, true, arg_3.a.x)), false), all(select(select(arg_3.a.xxy, arg_2.a.zzz, true), select(var_0.a.wwz, var_0.a.wxw, true), vec3<bool>(arg_2.a.x, arg_3.a.x, arg_2.a.x)))));
}

fn func_2(arg_0: vec4<u32>) -> bool {
    let var_0 = select(select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3(arg_0.xw, 57702u, Struct_1(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), select(u_input.b, arg_0.wz, vec2<bool>(true, false))), Struct_1(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), false), ~vec2<u32>(u_input.b.x, 68884u)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true))), vec4<bool>(true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 63563u), u_input.b) != 12635u, true), false), vec4<bool>(true, 1i <= global1[_wgslsmith_index_u32(arg_0.x, 1u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1112f), _wgslsmith_f_op_f32(floor(-1003f)))) != -324f, true));
    var var_1 = any(var_0.yw);
    let var_2 = Struct_1(var_0, _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, min(36829u, u_input.b.x)) >> (vec2<u32>(23254u, abs(u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_div_u32(arg_0.x, 124997u)), u_input.b), vec2<u32>(countOneBits(_wgslsmith_mod_u32(30361u, u_input.b.x)), 0u)));
    var var_3 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.wyx, ~min(vec3<u32>(u_input.b.x, 93352u, arg_0.x), arg_0.ywx), select(vec3<u32>(arg_0.x, 4294967295u, 4294967295u) ^ vec3<u32>(u_input.b.x, var_2.b.x, 0u), arg_0.zyy, true)), arg_0.yxx);
    return var_2.a.x;
}

fn func_1() -> Struct_1 {
    global0 = func_2(vec4<u32>(921u, u_input.b.x, firstLeadingBit(u_input.b.x), u_input.b.x));
    global0 = func_2(vec4<u32>(~_wgslsmith_clamp_u32(~0u, min(32990u, 1u), ~37116u), _wgslsmith_add_u32(countOneBits(u_input.b.x) ^ _wgslsmith_add_u32(u_input.b.x, 43664u), 4294967295u), select(~_wgslsmith_mod_u32(u_input.b.x, 1u), u_input.b.x, func_3(u_input.b, u_input.b.x, Struct_1(vec4<bool>(false, false, true, false), u_input.b), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(u_input.b.x, u_input.b.x))) | true), _wgslsmith_clamp_u32(~1u, u_input.b.x, u_input.b.x)));
    global0 = all(select(vec2<bool>(true, false), !vec2<bool>(true, u_input.b.x <= u_input.b.x), true));
    let var_0 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true && func_3(vec2<u32>(0u, 122156u), 36606u, Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(vec4<bool>(true, true, true, true), u_input.b))), vec2<u32>(~_wgslsmith_div_u32(min(1u, u_input.b.x), ~u_input.b.x), 1u));
    global0 = var_0.a.x;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    global0 = !(false || arg_0.a.x);
    let var_0 = Struct_1(select(select(arg_0.a, vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), arg_0.a), vec4<bool>(func_3(vec2<u32>(16911u, 6657u) << (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u)), ~u_input.b.x, Struct_1(arg_0.a, u_input.b), func_1()), arg_0.a.x, all(!vec4<bool>(arg_0.a.x, false, false, true)), arg_0.a.x), func_1().a), arg_0.b);
    var var_1 = !(!(!func_1().a.xww));
    global0 = var_0.a.x;
    var var_2 = Struct_1(vec4<bool>(any(!(!vec3<bool>(arg_0.a.x, var_1.x, true))), true, true, !var_1.x), vec2<u32>(arg_0.b.x, ~(33166u | _wgslsmith_mod_u32(4294967295u, u_input.b.x))));
    return StorageBuffer(select(_wgslsmith_mod_vec2_u32(arg_0.b ^ ~var_2.b, _wgslsmith_mod_vec2_u32(vec2<u32>(26695u, 4294967295u) | vec2<u32>(var_2.b.x, 26978u), var_2.b)), vec2<u32>(var_0.b.x, reverseBits(firstLeadingBit(var_2.b.x))), vec2<bool>(true, true)), _wgslsmith_sub_i32(67255i, ~(global1[_wgslsmith_index_u32(84544u, 1u)] & 0i)) ^ u_input.d, -vec3<i32>(~u_input.c, u_input.d, u_input.a), vec2<u32>(~(~115876u), ~arg_0.b.x) >> (u_input.b % vec2<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-10599i), -u_input.a), firstTrailingBit(u_input.d)), max(firstTrailingBit(-17138i), countOneBits(-1i)), -_wgslsmith_mod_i32(_wgslsmith_div_i32(-5120i, global1[_wgslsmith_index_u32(7682u, 1u)]), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1617f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-283f, _wgslsmith_f_op_f32(-1453f + 557f)))))));
}

