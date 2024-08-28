struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true)), abs(firstTrailingBit(~vec3<u32>(36395u, 35427u, 1u))), ~abs(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(598f)) - _wgslsmith_f_op_f32(step(836f, -1697f))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1674f)) - 186f)))));
    var_0 = Struct_3(var_0.a);
    var var_2 = Struct_3(Struct_1(!var_0.a.a, vec3<u32>(var_0.a.b.x, ~(var_0.a.b.x >> (var_0.a.b.x % 32u)), ~(~42856u)), (1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.c, u_input.a.x, 43803i, var_0.a.c), vec4<i32>(var_0.a.c, var_0.a.c, var_0.a.c, -13382i))) >> (firstLeadingBit(max(var_0.a.b.x, var_0.a.b.x)) % 32u)));
    let var_3 = vec4<u32>(var_0.a.b.x, 38463u, abs(var_2.a.b.x), ~firstLeadingBit(_wgslsmith_mult_u32(4294967295u, var_2.a.b.x)) ^ select(23037u, var_0.a.b.x, var_2.a.a != (var_1 > 569f)));
    return var_2.a.b;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(-148f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-887f * 1031f), _wgslsmith_f_op_f32(f32(-1f) * -698f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(553f * -1000f), arg_0.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * arg_0.b.x), arg_0.b.x, (arg_0.a.a && true) || true)))));
    return Struct_1(any(vec4<bool>(arg_0.c.a, true | !arg_0.a.a, any(vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.c.a, false)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a.a, arg_0.a.a, true, true), arg_0.a.a)))), abs(~func_3()), arg_0.a.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> i32 {
    let var_0 = func_2(arg_0);
    let var_1 = var_0;
    var var_2 = _wgslsmith_div_u32(abs((arg_3 >> (_wgslsmith_div_u32(61750u, 99675u) % 32u)) & arg_0.a.b.x), _wgslsmith_mod_u32(~(~(~37677u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 1u, var_0.b.x, arg_1.b.x) << (vec4<u32>(0u, 1u, 1u, 23461u) % vec4<u32>(32u)), select(vec4<u32>(var_0.b.x, 1u, arg_3, 0u), vec4<u32>(arg_0.a.b.x, 4294967295u, 37294u, var_0.b.x), true)))));
    let var_3 = var_1;
    var var_4 = -(_wgslsmith_add_i32(arg_0.c.c, -23858i) ^ var_1.c);
    return var_3.c;
}

fn func_1() -> bool {
    var var_0 = ~vec4<i32>(-2147483647i, 0i, _wgslsmith_mod_i32(func_4(Struct_2(Struct_1(false, vec3<u32>(1u, 1u, 1u), -2147483647i), vec4<f32>(242f, 674f, -223f, -851f), Struct_1(true, vec3<u32>(1u, 4294967295u, 1u), u_input.a.x)), func_2(Struct_2(Struct_1(false, vec3<u32>(1u, 0u, 28629u), u_input.a.x), vec4<f32>(1000f, 243f, -238f, -515f), Struct_1(true, vec3<u32>(30402u, 6585u, 4982u), u_input.a.x))), true, _wgslsmith_sub_u32(4294967295u, 4294967295u)), u_input.a.x), ~(~u_input.a.x));
    let var_1 = Struct_3(Struct_1(!select(all(vec3<bool>(true, false, true)), true, true), select(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(20688u, 0u, 83233u), vec3<u32>(0u, 16605u, 5150u))), ~firstLeadingBit(vec3<u32>(0u, 5625u, 80377u)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false)), u_input.a.x));
    let var_2 = var_1.a;
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1108f, -1221f, 385f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1151f), _wgslsmith_f_op_f32(ceil(-129f)), _wgslsmith_f_op_f32(f32(-1f) * -722f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-246f, 199f, -357f), vec3<f32>(601f, -513f, 677f))) + vec3<f32>(-551f, 375f, 1000f)))))), select(vec3<bool>(any(select(vec4<bool>(true, var_3.a.a, false, var_2.a), vec4<bool>(var_3.a.a, false, false, false), var_1.a.a)), true, _wgslsmith_add_u32(var_1.a.b.x, 4294967295u) >= 0u), !vec3<bool>(false, var_2.a, false), select(select(!vec3<bool>(var_1.a.a, true, true), select(vec3<bool>(true, var_2.a, var_2.a), vec3<bool>(true, true, var_3.a.a), vec3<bool>(false, var_1.a.a, true)), select(vec3<bool>(var_3.a.a, false, false), vec3<bool>(var_1.a.a, true, true), true)), vec3<bool>(var_1.a.a && var_3.a.a, any(vec3<bool>(true, true, true)), any(vec3<bool>(var_1.a.a, var_2.a, false))), 1f == _wgslsmith_f_op_f32(trunc(453f))))));
    return !(!((!var_2.a | var_2.a) | func_2(Struct_2(var_1.a, vec4<f32>(var_4.x, var_4.x, var_4.x, var_4.x), var_1.a)).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1123f - -1384f);
    var var_1 = !(_wgslsmith_f_op_f32(-var_0) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 206f)) + -217f));
    var_1 = !all(vec2<bool>(true, true)) | ((firstTrailingBit(1i) > 8733i) != any(vec4<bool>(true, true, true, true)));
    let var_2 = Struct_2(Struct_1(func_1(), min(func_3(), countOneBits(~vec3<u32>(44349u, 44197u, 0u))), select(firstTrailingBit(u_input.a.x), u_input.a.x << (0u % 32u), true) & func_2(Struct_2(Struct_1(false, vec3<u32>(10578u, 4294967295u, 0u), u_input.a.x), vec4<f32>(-1020f, var_0, var_0, 394f), Struct_1(false, vec3<u32>(0u, 4294967295u, 4294967295u), 221i))).c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-var_0))))), Struct_1(true, vec3<u32>(~func_3().x, _wgslsmith_div_u32(func_3().x, 106424u), ~(~17669u)), -1i));
    var_1 = !var_2.a.a;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -621f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - -412f), -411f))) - _wgslsmith_f_op_f32(trunc(var_2.b.x))));
    var_1 = all(select(!vec4<bool>(true, true, !var_2.a.a, var_2.a.a), vec4<bool>(all(select(vec2<bool>(var_2.a.a, var_2.a.a), vec2<bool>(false, true), vec2<bool>(var_2.c.a, false))), abs(1i) > _wgslsmith_div_i32(51785i, u_input.a.x), var_2.a.a | !var_2.a.a, all(!vec3<bool>(var_2.a.a, var_2.c.a, true))), func_1() | !var_2.c.a));
    var var_4 = -23000i;
    var var_5 = vec2<u32>(var_2.c.b.x, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, abs(350u)), var_2.a.b.x), 32140u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(countOneBits(~abs(var_2.c.c))), var_5.x, ~(~(~vec4<u32>(50720u, 13216u, 467u, var_5.x))) >> (~(~(~vec4<u32>(var_5.x, var_5.x, 44284u, 71952u))) % vec4<u32>(32u)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x));
}

