struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_1(~(~(~vec2<u32>(u_input.b, 33871u))));
    let var_1 = Struct_1(vec2<u32>(var_0.a.x, var_0.a.x));
    var var_2 = var_0.a;
    var var_3 = ~_wgslsmith_sub_i32(-global0.a, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, 2147483647i), _wgslsmith_mult_i32(u_input.a, global0.a)) & ~_wgslsmith_sub_i32(u_input.a, global0.c.x));
    global0 = Struct_2(1i, global0.b, vec2<i32>(u_input.a, ~(-u_input.a)));
    return u_input.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = !vec2<bool>(global0.b, true);
    var var_1 = 4935u;
    let var_2 = ~arg_1;
    var var_3 = _wgslsmith_f_op_f32(497f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-462f)))), 1f));
    let var_4 = func_3(true);
    return vec4<bool>(all(select(vec4<bool>(!var_0.x, any(vec3<bool>(false, global0.b, global0.b)), false != global0.b, all(vec3<bool>(global0.b, global0.b, true))), vec4<bool>(any(var_0), all(vec4<bool>(false, false, false, false)), !var_0.x, !global0.b), true)), !(!select(any(vec4<bool>(global0.b, global0.b, var_0.x, true)), true, !var_0.x)), var_0.x, any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(global0.b, var_0.x, var_0.x, global0.b), global0.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    var var_1 = (abs(u_input.b >> (4294967295u % 32u)) >> (u_input.b % 32u)) << (0u % 32u);
    let var_2 = select(vec4<bool>(_wgslsmith_div_u32(0u, reverseBits(u_input.b)) < 43529u, ~(~103675u) < _wgslsmith_clamp_u32(abs(1837u), 51846u, _wgslsmith_add_u32(u_input.b, u_input.b)), var_0, var_0), select(!(!(!vec4<bool>(true, false, global0.b, false))), !vec4<bool>(0i != u_input.a, any(vec2<bool>(true, global0.b)), global0.b | false, all(vec4<bool>(false, false, var_0, var_0))), select(vec4<bool>(true, u_input.b < 4034u, true, all(vec4<bool>(false, global0.b, var_0, true))), select(select(vec4<bool>(global0.b, true, var_0, var_0), vec4<bool>(false, true, global0.b, false), false), func_2(vec2<u32>(106500u, u_input.b), vec3<u32>(u_input.b, 1u, 0u), Struct_1(vec2<u32>(1u, u_input.b))), select(vec4<bool>(global0.b, true, true, false), vec4<bool>(var_0, global0.b, false, var_0), var_0)), all(vec2<bool>(false, true)) | true)), vec4<bool>(func_2(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), var_0), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 52393u), vec3<u32>(28854u, u_input.b, u_input.b)), Struct_1(vec2<u32>(u_input.b, u_input.b))).x && !(u_input.b <= 255u), all(vec4<bool>(false, true, false && var_0, all(vec4<bool>(var_0, true, true, false)))), all(func_2(abs(vec2<u32>(u_input.b, 41535u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 424u, 7180u)), Struct_1(vec2<u32>(u_input.b, 41267u))).zyw), false));
    var var_3 = all(select(select(var_2.xxz, select(var_2.yxw, vec3<bool>(global0.b, true, var_2.x), var_2.x), var_2.zwx), var_2.wwx, any(var_2.zz)));
    let var_4 = 1263f;
    return Struct_1(vec2<u32>(u_input.b, 39206u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(-(~global0.c.x), !global0.b, abs(global0.c));
    global0 = Struct_2(var_0.c.x, false, vec2<i32>(reverseBits(max(_wgslsmith_div_i32(u_input.a, u_input.a), var_0.c.x)), -14325i));
    var var_1 = !(func_2(vec2<u32>(max(arg_1.a.x, 4294967295u), 1u), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(0u, 103268u, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 107798u, arg_0.a.x), vec3<u32>(arg_0.a.x, arg_0.a.x, 1u), vec3<u32>(1u, arg_2.a.x, arg_2.a.x))), func_1()).x & !select(global0.b, 0i >= global0.c.x, true));
    let var_2 = vec3<bool>(any(select(select(select(vec4<bool>(false, global0.b, true, true), vec4<bool>(var_0.b, global0.b, var_0.b, var_0.b), false), select(vec4<bool>(var_0.b, var_0.b, true, true), vec4<bool>(false, true, global0.b, false), vec4<bool>(var_0.b, var_0.b, var_0.b, global0.b)), func_2(arg_0.a, vec3<u32>(u_input.b, arg_2.a.x, arg_1.a.x), arg_1).x), !vec4<bool>(true, true, true, global0.b), any(vec3<bool>(var_0.b, var_0.b, false)))), all(vec2<bool>(any(!vec4<bool>(false, false, false, var_0.b)), false)), var_0.b);
    var_0 = Struct_2(_wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(global0.a, -1i), firstLeadingBit(-2147483647i) | u_input.a), 0i), all(var_2.zz), abs(vec2<i32>(abs(~20046i), -3090i)));
    return Struct_1(firstLeadingBit(vec2<u32>(0u, func_1().a.x)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(arg_0.a);
    var var_1 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(~arg_0.a.x, ~0u) >> (vec2<u32>(_wgslsmith_sub_u32(u_input.b, 4294967295u), firstTrailingBit(u_input.b)) % vec2<u32>(32u)), vec2<u32>(0u, ~29203u)));
    var_0 = Struct_1(vec2<u32>(var_1.a.x << (~firstTrailingBit(26063u) % 32u), var_1.a.x));
    let var_2 = func_4(arg_0, arg_0, Struct_1(select(vec2<u32>(93462u, u_input.b), arg_0.a, true) & ~vec2<u32>(4207u, u_input.b)));
    var var_3 = Struct_1(vec2<u32>(4294967295u, ~_wgslsmith_sub_u32(abs(var_0.a.x), 31218u)));
    return Struct_2(_wgslsmith_div_i32(-(0i | countOneBits(u_input.a)), u_input.a), !global0.b, vec2<i32>(1i, ~(~global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(!(false | global0.b), global0.b, !(!global0.b), u_input.a >= _wgslsmith_div_i32(-2147483647i, global0.c.x)));
    var var_1 = func_5(func_4(Struct_1(countOneBits(~vec2<u32>(u_input.b, 3915u))), func_1(), func_1()));
    var_1 = Struct_2(-_wgslsmith_div_i32(countOneBits(1i), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_1.a, var_1.c.x, var_1.c.x), -3978i)), func_2(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(2578u, 4294967295u)), countOneBits(abs(vec2<u32>(4294967295u, 1u)))), firstTrailingBit(~(~vec3<u32>(u_input.b, 47411u, u_input.b))), Struct_1(vec2<u32>(u_input.b, 12571u) ^ vec2<u32>(1u, u_input.b))).x, var_1.c);
    let var_2 = vec3<i32>(10374i >> (u_input.b % 32u), u_input.a, min(var_1.a, -21291i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(520f)))), -3097f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, -261f) + vec2<f32>(-349f, 451f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-541f, -1628f), vec2<f32>(544f, 2531f)))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(1142f, -284f), true)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -576f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2455f, 1770f)), false)))));
}

