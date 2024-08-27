struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    return select(select(vec2<bool>(true, arg_0.x), arg_0.yz, arg_0.yy), arg_0.zx, select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, !(-16990i == u_input.b)), arg_0.x));
}

fn func_2() -> Struct_2 {
    var var_0 = false;
    var_0 = select(all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), true)), !(1i <= u_input.b), any(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), u_input.a.x >= 77636u), func_3(vec3<bool>(true, true, true)), true)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1136f);
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(~(~u_input.a.x), u_input.a.x) ^ 1u, max(u_input.a.x, ~(~(~u_input.a.x))), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x, ~_wgslsmith_mod_u32(u_input.a.x, 13424u)) & ~15803u);
    let var_3 = vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_sub_i32(16010i, u_input.b)), -u_input.b | u_input.b)), u_input.b);
    return Struct_2(30778i);
}

fn func_1() -> Struct_5 {
    var var_0 = func_2();
    var_0 = Struct_2(_wgslsmith_mult_i32(var_0.a, 0i));
    var var_1 = vec2<bool>(true, true);
    var_1 = select(!select(func_3(vec3<bool>(var_1.x, false, var_1.x)), !(!vec2<bool>(false, var_1.x)), var_1.x), !(!vec2<bool>(false, all(vec4<bool>(true, false, false, var_1.x)))), false);
    var_1 = !select(func_3(select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), false), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, true, var_1.x), true), true)), select(!func_3(vec3<bool>(false, var_1.x, var_1.x)), !vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, all(vec2<bool>(var_1.x, var_1.x)))), !vec2<bool>(any(vec2<bool>(false, true)), false));
    return Struct_5(vec4<bool>(!(!all(vec3<bool>(var_1.x, true, true))), false, false | (any(vec3<bool>(false, var_1.x, var_1.x)) | true), true));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, u_input.b, -u_input.b, _wgslsmith_add_i32(arg_2, _wgslsmith_div_i32(_wgslsmith_div_i32(arg_2, 0i), -13052i))), -vec4<i32>(i32(-1i) * -28624i, arg_2, 1i, -1i));
    var var_1 = _wgslsmith_mod_vec3_u32(u_input.a.xyx, firstTrailingBit(reverseBits(vec3<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 0u), abs(u_input.a.x)))));
    var var_2 = ~var_1.x;
    var var_3 = arg_2;
    let var_4 = vec3<i32>(-(~min(~0i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-u_input.b), firstLeadingBit(u_input.b), -4276i, arg_2), vec4<i32>(_wgslsmith_add_i32(u_input.b, u_input.b) ^ firstLeadingBit(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, -5218i, u_input.b), vec3<i32>(-29920i, arg_2, 46811i)), 54257i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_2, u_input.b), firstLeadingBit(51112i), u_input.b << (u_input.a.x % 32u)))), -abs(arg_2));
    return func_2();
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = u_input.a.x;
    let var_1 = arg_0.b >> (u_input.a.xx % vec2<u32>(32u));
    var_0 = 15266u;
    let var_2 = vec4<u32>(countOneBits(1u), _wgslsmith_div_u32(~u_input.a.x, 1u) | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(20856u, u_input.a.x, u_input.a.x)), vec3<u32>(106307u, 4294967295u, u_input.a.x)), 1u), u_input.a.x, _wgslsmith_add_u32(u_input.a.x, reverseBits(~u_input.a.x) >> (abs(min(u_input.a.x, u_input.a.x)) % 32u)));
    var_0 = abs(70341u);
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4) -> Struct_1 {
    let var_0 = ~(~(~u_input.a.wyx));
    var var_1 = arg_2.a;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-818f, 487f)), -775f))));
    let var_3 = Struct_1(abs(firstTrailingBit(~vec4<u32>(u_input.a.x, 41753u, 34891u, arg_2.a))));
    var var_4 = var_3;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a);
    var var_1 = 0u;
    let var_2 = func_6(Struct_2(-40945i << (select(countOneBits(0u), ~u_input.a.x, select(false, true, false)) % 32u)), func_5(Struct_3(func_4(func_1(), Struct_5(vec4<bool>(false, false, false, false)), min(u_input.b, u_input.b)), -vec2<i32>(-2060i, 0i) & vec2<i32>(1i, u_input.b), true), _wgslsmith_sub_i32(firstLeadingBit(u_input.b) ^ (-22685i << (var_0.a.x % 32u)), 1i), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2014f, -330f)))), Struct_4(firstTrailingBit(~1u), vec2<bool>((u_input.b != 2147483647i) && false, true)));
    let var_3 = vec4<bool>(false, false, false, true);
    var var_4 = abs(20322u >> (firstLeadingBit(countOneBits(4294967295u)) % 32u)) >> (~(~(~func_6(Struct_2(u_input.b), Struct_3(Struct_2(u_input.b), vec2<i32>(u_input.b, 2147483647i), var_3.x), Struct_4(u_input.a.x, var_3.yx)).a.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.yy, -813f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -196f) + _wgslsmith_div_f32(419f, 196f))))));
}

