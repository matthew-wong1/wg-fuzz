struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(498f, 2584f, true)))), _wgslsmith_div_f32(341f, _wgslsmith_f_op_f32(min(-453f, 393f))), 958f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1730f, -941f, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-565f, 1599f, 290f))))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(120f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2747f, -341f))), _wgslsmith_f_op_f32(f32(-1f) * -835f)))));
    let var_1 = -_wgslsmith_mult_i32(arg_3.b.b & 1i, -4330i);
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(select(arg_1.x << (1u % 32u), 19170u, arg_2), ~(~arg_3.a.a), arg_3.b.a), abs(abs(~vec3<u32>(arg_3.b.a, 0u, arg_1.x)))), 0i >> (firstLeadingBit(~(arg_1.x ^ arg_3.a.a)) % 32u));
    var var_3 = (~(~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 2348i), u_input.a.xx)) | ~(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3.a.b, arg_0), vec2<i32>(var_2.b, 8741i)) & min(vec2<i32>(-29148i, 18495i), vec2<i32>(var_2.b, var_1)))) & firstTrailingBit(u_input.a.zz);
    var_2 = arg_3.b;
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, var_0.x, -2361f, -2024f) * vec4<f32>(var_0.x, var_0.x, 822f, -536f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-812f, var_0.x, var_0.x, -138f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
}

fn func_2() -> bool {
    let var_0 = -firstTrailingBit(0i);
    var var_1 = Struct_4(Struct_3(Struct_2(Struct_1(~44351u, -6419i), Struct_1(firstLeadingBit(0u), u_input.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a.x, vec2<u32>(120873u, 15277u), true, Struct_2(Struct_1(0u, var_0), Struct_1(53859u, var_0)))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(1465f)), _wgslsmith_f_op_f32(floor(1000f)), 1f))), select(true, !(var_0 <= -47373i), all(vec4<bool>(true, true, true, true))));
    var_1 = Struct_4(Struct_3(var_1.a.a, _wgslsmith_f_op_vec4_f32(var_1.a.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.b.x, -233f, var_1.a.b.x, 1000f), vec4<f32>(var_1.a.b.x, -324f, 310f, var_1.a.b.x))))), var_1.b);
    var_1 = Struct_4(var_1.a, false);
    var_1 = Struct_4(var_1.a, any(vec4<bool>(any(vec3<bool>(false, false, true)), !var_1.b, 1u >= var_1.a.a.a.a, -1i != u_input.a.x)) & ((_wgslsmith_mult_u32(7162u, 40095u) >> (_wgslsmith_add_u32(var_1.a.a.b.a, var_1.a.a.b.a) % 32u)) < var_1.a.a.a.a));
    return select(var_1.a.a.b.a, 22738u, any(!(!vec3<bool>(true, var_1.b, var_1.b)))) == _wgslsmith_div_u32(29448u, reverseBits(~abs(38506u)));
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(select(_wgslsmith_sub_u32(31620u, 1u), 1u, any(vec4<bool>(true, true, false, true))), ~firstLeadingBit(4294967295u)), _wgslsmith_mod_u32(firstTrailingBit(31921u), _wgslsmith_sub_u32(1u, 1u))), 14131i);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1729f) + -1000f), 857f)), -699f, _wgslsmith_f_op_f32(-1485f + _wgslsmith_f_op_f32(round(1141f))));
    var_0 = Struct_1(var_0.a, -28i >> (~var_0.a % 32u));
    var_0 = Struct_1(var_0.a, _wgslsmith_dot_vec2_i32(u_input.a.zy ^ (abs(vec2<i32>(-43056i, var_0.b)) << ((vec2<u32>(var_0.a, var_0.a) & vec2<u32>(var_0.a, 96860u)) % vec2<u32>(32u))), vec2<i32>(select(_wgslsmith_add_i32(61619i, 1i), var_0.b, func_2()), var_0.b)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-169f - 597f))), _wgslsmith_div_f32(-857f, var_1.x), -448f)));
    return Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_mult_u32(var_0.a, 45722u), var_0.b ^ -6311i), Struct_1(_wgslsmith_sub_u32(var_0.a, var_0.a), 0i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1167f * -1930f), -1167f, _wgslsmith_f_op_f32(-var_1.x), var_1.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -1621f, var_1.x, -289f), vec4<f32>(var_1.x, 1307f, -436f, var_1.x))), _wgslsmith_f_op_vec4_f32(func_3(10655i, vec2<u32>(0u, 57360u), false, Struct_2(Struct_1(var_0.a, -29203i), Struct_1(var_0.a, 0i)))), vec4<bool>(false, false, true, true))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(reverseBits(~select(u_input.a.x, 9176i, true) ^ u_input.a.x), reverseBits(-1i), ~u_input.a.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.yz), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 41042i), ~(-vec2<i32>(u_input.a.x, 2147483647i)))));
    var var_1 = func_1();
    var var_2 = all(select(!vec4<bool>(false, any(vec3<bool>(var_1.b, false, var_1.b)), func_1().b, var_1.b), vec4<bool>(true, false, var_1.b, -u_input.a.x <= func_1().a.a.a.b), !(!select(vec4<bool>(true, var_1.b, true, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, false), vec4<bool>(false, var_1.b, true, var_1.b)))));
    var var_3 = select(select(select(vec2<bool>(any(vec4<bool>(var_1.b, true, false, var_1.b)), true), vec2<bool>(var_1.b, var_1.b), -var_1.a.a.a.b != ~9691i), !select(vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, var_1.b), !var_1.b), var_1.b), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), select(select(select(vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, true)), !vec2<bool>(var_1.b, true), var_1.b), select(vec2<bool>(true, var_1.b), vec2<bool>(true, true), true), !any(vec2<bool>(var_1.b, var_1.b))), var_1.b), !vec2<bool>(!all(vec2<bool>(var_1.b, var_1.b)), var_1.b));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1165f, var_1.a.b.x, _wgslsmith_f_op_f32(-var_1.a.b.x), 917f) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b.x + -1593f) + var_1.a.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.a.b.x, -263f)))), _wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(757f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(29521u, vec3<i32>((u_input.a.x >> (_wgslsmith_mod_u32(var_1.a.a.a.a, 1u) % 32u)) << (36460u % 32u), ~u_input.a.x, var_0.x << (var_1.a.a.a.a % 32u)), ~(~(~(~vec4<u32>(var_1.a.a.a.a, 0u, var_1.a.a.a.a, 43986u)))), var_1.a.a.b.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(-32291i, min(vec2<u32>(var_1.a.a.b.a, var_1.a.a.a.a), vec2<u32>(var_1.a.a.a.a, var_1.a.a.a.a)), true, Struct_2(func_1().a.a.b, Struct_1(0u, var_0.x)))).x)));
}

