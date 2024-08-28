struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1261f), 1110f, _wgslsmith_f_op_f32(floor(601f)), -701f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(114f * -415f) + var_0.x), -293f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(279f, -531f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_1, -1148f)) - _wgslsmith_f_op_vec3_f32(-var_0.wwy)))));
    var var_2 = true;
    var var_3 = u_input.a;
    let var_4 = var_1.x;
    return !arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-456f, 1357f, 1139f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-311f, -156f, 126f)) - vec3<f32>(-699f, -459f, 606f)))))));
    let var_1 = Struct_1(arg_2.a, countOneBits(arg_1.b));
    var var_2 = ~2147483647i;
    var_0 = vec3<f32>(375f, var_0.x, -730f);
    var_0 = vec3<f32>(-699f, -700f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.x)), 1184f)), _wgslsmith_f_op_f32(-var_0.x)));
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_3(false, arg_0, Struct_1(arg_0.a, u_input.b)));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-438f, _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(-187f - 1f)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))))));
    var var_1 = arg_1.yxy;
    let var_2 = arg_0;
    let var_3 = var_2;
    return Struct_1(min(vec3<u32>(17771u, 1u, reverseBits(1u)), vec3<u32>(var_3.b.x, ~firstLeadingBit(var_2.a.x), select(1u, ~u_input.a, any(vec3<bool>(false, false, arg_3))))), _wgslsmith_mult_vec2_u32(abs(var_3.b), var_3.b) << (select(u_input.b, min(~vec2<u32>(var_3.b.x, 122807u), _wgslsmith_sub_vec2_u32(vec2<u32>(43624u, arg_0.a.x), u_input.b)), vec2<bool>(false, arg_3)) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1719f - -2483f) - _wgslsmith_f_op_f32(ceil(-570f)))) - _wgslsmith_f_op_f32(-1269f + _wgslsmith_f_op_f32(157f + -954f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1443f * _wgslsmith_f_op_f32(-487f - -1000f)) - _wgslsmith_f_op_f32(min(1167f, -780f))));
    var_0 = arg_2;
    var_0 = true;
    var_0 = false;
    return func_2(func_2(Struct_1(arg_1, arg_0.b), vec4<f32>(1f, 1f, 1f, 1f), -vec2<i32>(13449i, 0i), !any(select(vec2<bool>(var_1, false), vec2<bool>(false, false), vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, -690f, -2352f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -1000f, -984f, 757f))))))), -u_input.d, false || (4294967295u != countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 57738u, 4294967295u, arg_1.x), vec4<u32>(4294967295u, arg_0.a.x, 4294967295u, 32898u)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = func_4(arg_0, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 100061u, arg_1.b.x) & max(vec3<u32>(34157u, 1u, arg_1.b.x), vec3<u32>(905u, u_input.b.x, arg_1.b.x)), vec3<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(23253u, 4294967295u, arg_1.a.x, arg_0.b.x), vec4<u32>(u_input.a, arg_1.b.x, 8821u, arg_1.b.x)), ~1u)), ~arg_0.b.x, u_input.a), false);
    let var_1 = _wgslsmith_add_u32(var_0.b.x, countOneBits(~(~firstTrailingBit(1u))));
    let var_2 = arg_0;
    let var_3 = Struct_1(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, arg_0.a.x, arg_1.a.x)), abs(vec3<u32>(63913u, var_0.a.x, 1u))) << (arg_0.a % vec3<u32>(32u)), vec2<u32>(firstLeadingBit(abs(_wgslsmith_mult_u32(var_2.a.x, arg_0.b.x))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(arg_0.a.yz, vec2<u32>(67358u, var_1)), 4294967295u & countOneBits(arg_0.a.x))));
    let var_4 = func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-524f * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) * 254f) + 2132f))), u_input.d.x, _wgslsmith_mod_vec3_i32(~reverseBits(-vec3<i32>(u_input.c, 2147483647i, -14952i)), -vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)));
    return ~(~vec4<u32>(~33707u << (var_1 % 32u), _wgslsmith_sub_u32(u_input.a | 4294967295u, max(var_3.a.x, 1u)), func_2(func_4(var_2, vec3<u32>(0u, 0u, 4294967295u), var_4.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-779f, 1000f, 1090f, -367f)), select(u_input.d, u_input.d, false), !var_4.x).b.x, arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-682f, -399f, 563f, -104f)), vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_1 = 44515u;
    let var_2 = vec3<bool>(true, true, all(func_1(vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1052f), ~u_input.d.x >> (_wgslsmith_mult_u32(47872u, u_input.b.x) % 32u), ~vec3<i32>(u_input.d.x, u_input.c, -36808i))));
    let var_3 = func_5(func_4(func_2(Struct_1(vec3<u32>(4294967295u, u_input.b.x, 40205u), vec2<u32>(u_input.a, 1u)), vec4<f32>(_wgslsmith_f_op_f32(-669f * 1000f), _wgslsmith_f_op_f32(var_0.x + var_0.x), 636f, 911f), u_input.d, abs(0u) >= var_1), ~vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.b.x, 1u, 0u), vec4<u32>(u_input.b.x, var_1, u_input.a, var_1))), false), Struct_1(~(~vec3<u32>(40017u, 1u, 31053u)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 19395u, var_1), vec3<u32>(0u, 0u, 4294967295u)), ~26434u)));
    var var_4 = func_2(Struct_1(firstLeadingBit(var_3.zww), ~(~(~u_input.b))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -378f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + -163f), any(!var_2.xx))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), 1f), _wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(~(~0i), _wgslsmith_mult_i32(~(-48736i), -27629i))), true);
    let var_5 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_u32(func_4(Struct_1(var_3.ywx, vec2<u32>(4294967295u, var_4.a.x)), vec3<u32>(0u, var_1, 0u), any(var_2)).b.x, 4294967295u)), var_0.x);
}

