struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: bool) -> vec4<bool> {
    var var_0 = ~arg_0.x;
    var_0 = abs(reverseBits(arg_0.x) & _wgslsmith_sub_u32(0u, ~_wgslsmith_dot_vec3_u32(arg_0, arg_0)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(916f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-170f))))) + -819f));
    let var_2 = 3084i;
    var_0 = ~arg_0.x;
    return !vec4<bool>(false, true, arg_2 | !(true || arg_2), arg_2);
}

fn func_3() -> vec4<i32> {
    var var_0 = vec2<u32>(1u ^ ~firstTrailingBit(0u), 0u);
    let var_1 = Struct_2(false);
    var var_2 = select(!(!select(!vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), !vec4<bool>(true, true, var_1.a, var_1.a), var_1.a)), !(!func_2(vec3<u32>(var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a), true)), true);
    var_2 = vec4<bool>(var_2.x, var_2.x, (var_2.x && true) | any(vec3<bool>(true, true, true)), true);
    return ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 2890i, 17054i), vec4<i32>(1i, 12998i, 1i, 0i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 13834i, -9961i, u_input.a), vec4<i32>(u_input.a, u_input.a, -20632i, 1i), vec4<i32>(21260i, -9638i, -44317i, -43594i)), ~vec4<i32>(-2147483647i, -20206i, u_input.a, u_input.a))) >> (min(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(26470u, 4294967295u, 4703u, var_0.x) | vec4<u32>(82802u, 24720u, var_0.x, 16925u)), ~abs(vec4<u32>(1u, var_0.x, 4294967295u, 1u))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) & vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)), vec4<u32>(var_0.x, 0u, 1u, var_0.x))) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = countOneBits(~(-_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -58280i), vec4<i32>(37064i, u_input.a, 0i, u_input.a)), -vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(-14105i, u_input.a, -35977i, u_input.a))));
    let var_1 = Struct_1(vec3<u32>(18651u, 4294967295u, 102694u), vec2<u32>(1u, 1u) | min(~select(vec2<u32>(102404u, 16963u), vec2<u32>(43284u, 0u), arg_0.x), ~vec2<u32>(26869u, 0u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1080f))));
    var var_3 = vec3<bool>(arg_0.x, arg_1.x, all(func_2(~vec3<u32>(37092u, 107608u, 4294967295u), -vec4<i32>(var_0.x, -2147483647i, var_0.x, 2147483647i), true == arg_1.x).zzx) | true);
    var_3 = select(select(vec3<bool>(false, true, var_2 < var_2), arg_0.zxz, !select(select(arg_0.zww, arg_0.xyz, false), arg_0.ywx, arg_0.wxy)), vec3<bool>(true, var_3.x, true), true);
    return Struct_2(true);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> bool {
    let var_0 = func_4(select(select(vec4<bool>(arg_0.x != arg_0.x, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true))), select(func_2(vec3<u32>(1u, 1u, 1u), -vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), true), func_2(~vec3<u32>(0u, 0u, 30255u), func_3(), true), vec4<bool>(true, true, true, true)), true), select(vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<bool>(any(vec2<bool>(true, false)), false), false));
    let var_1 = Struct_3(Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_u32(select(vec3<u32>(53485u, 0u, 0u), vec3<u32>(1844u, 80258u, 0u), var_0.a), vec3<u32>(1u, 1u, 1u))), ~vec2<u32>(reverseBits(4294967295u), _wgslsmith_add_u32(0u, 83482u))), _wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(1u, 79825u)), vec2<u32>(1u, 1u), any(select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.a, var_0.a, false, true), vec4<bool>(false, true, true, true)))), countOneBits(vec2<u32>(select(0u, 0u, var_0.a), countOneBits(4294967295u)))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1248f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(122f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_0.x))))))));
    var var_2 = var_0.a == var_0.a;
    let var_3 = ~var_1.a.a;
    var_2 = var_0.a;
    return !(!(_wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a) >= (0i << (var_1.b % 32u))) & any(select(vec3<bool>(true, false, var_0.a), !vec3<bool>(var_0.a, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~33898u), 0u) ^ vec2<u32>(~_wgslsmith_mult_u32(26590u, _wgslsmith_mod_u32(78244u, 12665u)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(29331u, 16100u, 4294967295u))));
    var var_1 = 7802u;
    var_0 = vec2<u32>(var_0.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.x, _wgslsmith_mod_u32(var_0.x, 7556u)), _wgslsmith_sub_u32(4294967295u, countOneBits(0u))), _wgslsmith_mod_u32(~var_0.x, _wgslsmith_clamp_u32(abs(var_0.x), 0u & var_0.x, var_0.x))));
    let var_2 = -1710f;
    let var_3 = !all(vec3<bool>(true, true, true)) & !select(func_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, var_2, 921f, 1502f))), vec4<i32>(u_input.a, 16104i, 2147483647i, -71361i)), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -843i, vec3<i32>(reverseBits(u_input.a), -2147483647i, -(u_input.a >> (var_0.x % 32u))) | _wgslsmith_mult_vec3_i32(max(firstLeadingBit(vec3<i32>(-17429i, -32369i, u_input.a)), max(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.a, 1562i))));
}

