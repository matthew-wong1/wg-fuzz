struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> i32 {
    let var_0 = !select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, -32007i > (-38682i >> (u_input.a % 32u))), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))));
    let var_1 = -552f;
    let var_2 = Struct_3(-min(~vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_div_i32(-2147483647i, 28734i), countOneBits(-34750i))), vec3<bool>(var_0.x, !(~u_input.d > ~36912u), _wgslsmith_f_op_f32(-var_1) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(421f + var_1) * _wgslsmith_f_op_f32(-var_1))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(countOneBits(u_input.c), u_input.b.x), ~u_input.d, ~u_input.d << (1u % 32u), ~4294967295u), abs(vec4<u32>(reverseBits(u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, 4294967295u, u_input.b.x)), u_input.a | u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 23003u, u_input.a), vec3<u32>(u_input.c, 4294967295u, u_input.b.x))))), _wgslsmith_f_op_f32(941f - -1762f), select(vec4<bool>(true, all(select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x), var_0.x)), true, var_0.x), vec4<bool>(_wgslsmith_mult_u32(21189u, u_input.c) > ~u_input.b.x, var_0.x, all(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, true), false)), var_0.x), select(true, false, !var_0.x) | false));
    var var_3 = select(!(!vec2<bool>(var_0.x && var_0.x, var_0.x)), select(var_0, var_2.b.yy, select(select(select(var_2.e.wx, var_2.b.zz, var_0), select(vec2<bool>(true, false), vec2<bool>(var_0.x, var_2.e.x), var_0.x), !var_0), select(select(var_0, vec2<bool>(var_2.e.x, var_0.x), var_0), !var_0, select(var_0, var_0, var_0.x)), _wgslsmith_f_op_f32(var_2.d * 669f) > -1453f)), select(var_2.b.xx, select(select(var_0, !vec2<bool>(true, var_2.b.x), select(vec2<bool>(true, false), vec2<bool>(false, var_2.e.x), var_2.e.yz)), vec2<bool>(true, true), select(var_2.b.zy, !vec2<bool>(var_2.b.x, var_0.x), var_0.x & var_0.x)), all(select(!var_2.e, select(var_2.e, var_2.e, vec4<bool>(var_2.e.x, var_0.x, var_2.e.x, var_2.e.x)), !var_2.b.x))));
    var var_4 = -(~vec2<i32>(-2147483647i, min(_wgslsmith_mod_i32(var_2.a.x, var_2.a.x), _wgslsmith_mod_i32(2147483647i, 2147483647i))));
    return var_4.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    let var_0 = func_3();
    let var_1 = any(!select(select(vec3<bool>(arg_1.x, true, arg_1.x), select(vec3<bool>(arg_2, false, true), arg_1.xyy, arg_2), !arg_1.xww), select(select(vec3<bool>(true, arg_1.x, false), arg_1.wyz, vec3<bool>(true, arg_2, true)), !arg_1.wyx, true), false));
    var var_2 = Struct_3(vec2<i32>(var_0, var_0 ^ max(0i, 846i)) | -reverseBits(-vec2<i32>(var_0, var_0)), arg_1.zxy, ~(~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, u_input.c, arg_0.x), vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.b.x)) >> ((vec4<u32>(77231u, u_input.c, u_input.a, 54230u) >> (vec4<u32>(24282u, 1u, 0u, arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)))), -1720f, !select(select(select(vec4<bool>(arg_1.x, var_1, false, true), vec4<bool>(arg_1.x, false, true, false), true), !arg_1, vec4<bool>(arg_2, arg_2, var_1, arg_2)), arg_1, !arg_1.x));
    let var_3 = Struct_2(!((var_2.d == var_2.d) && true), select(arg_0.x, firstLeadingBit(_wgslsmith_add_u32(max(u_input.b.x, var_2.c.x), _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(80411u, var_2.c.x, 4294967295u)))), -max(-1i, var_2.a.x) > _wgslsmith_dot_vec2_i32(vec2<i32>(7498i, var_0), ~vec2<i32>(var_2.a.x, var_0))));
    var_2 = Struct_3(min(~vec2<i32>(var_2.a.x, var_0), var_2.a), vec3<bool>(true, true, !arg_2 | var_1), vec4<u32>(~firstLeadingBit(1u >> (arg_0.x % 32u)), _wgslsmith_sub_u32(arg_0.x, countOneBits(1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~51874u, 1042u, 11505u, _wgslsmith_div_u32(41842u, u_input.c)), var_2.c), 4294967295u), 556f, vec4<bool>(var_2.a.x <= firstTrailingBit(abs(var_2.a.x)), any(!arg_1.zwy), var_3.a, arg_1.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), var_2.d);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.wyw) - vec3<f32>(_wgslsmith_f_op_f32(func_2(~vec3<u32>(u_input.b.x, 44183u, 62970u), vec4<bool>(all(vec4<bool>(false, false, false, true)), false, true, true), all(vec3<bool>(true, true, false)) | true)), _wgslsmith_f_op_f32(min(arg_1.x, 136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(711f + arg_1.x)))));
    let var_1 = !vec3<bool>(select(any(vec4<bool>(false, true, false, true)), true, all(vec4<bool>(true, true, true, true))), !all(vec3<bool>(true, true, true)), !all(vec3<bool>(false, false, false)));
    var var_2 = Struct_2(all(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1133f) < _wgslsmith_f_op_f32(403f + arg_1.x), all(vec4<bool>(true, var_1.x, false, var_1.x)))), u_input.a);
    var_2 = Struct_2(false, reverseBits(~24899u));
    var_0 = _wgslsmith_f_op_vec3_f32(select(arg_1.yyw, _wgslsmith_f_op_vec3_f32(-arg_1.xyy), vec3<bool>(true, any(select(!vec4<bool>(true, var_1.x, false, var_2.a), vec4<bool>(false, var_1.x, var_1.x, false), select(true, var_2.a, true))), true)));
    return all(!select(!(!var_1), !var_1, all(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(vec2<bool>(func_1(-8761i, vec4<f32>(148f, -1421f, 445f, -565f)), false)) && true, func_1(7431i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, -588f, -1424f, -1494f)))))));
    var var_1 = vec3<i32>(1i, 1i, 1i);
    let var_2 = Struct_3(firstLeadingBit(~(~vec2<i32>(var_1.x, -31764i))), !vec3<bool>(!var_0.x, all(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, true, var_0.x, true), var_0.x)), true), vec4<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 6706u, u_input.b.x, u_input.d), ~vec4<u32>(u_input.c, 13149u, 43373u, 1u)), u_input.b.x, _wgslsmith_mult_u32(19810u, u_input.d), firstTrailingBit(min(_wgslsmith_mult_u32(u_input.a, u_input.b.x), 50219u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1510f))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, true)), select(vec4<bool>(true, !var_0.x, !var_0.x, true), !select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(true, var_0.x, true, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), !vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, true, false, true)))));
    var_1 = -(~(~(~(~vec3<i32>(var_1.x, 14656i, var_2.a.x)))));
    let var_3 = _wgslsmith_mult_vec3_i32(-select(~firstLeadingBit(vec3<i32>(var_1.x, 2147483647i, -2147483647i)), vec3<i32>(_wgslsmith_add_i32(var_2.a.x, -2147483647i), var_2.a.x | var_2.a.x, 38646i), !all(var_2.b)), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -var_2.a.x, min(1i, var_1.x)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(2147483647i, var_1.x, var_1.x)), vec3<i32>(-16421i, -45799i, 2435i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(abs(var_1.zx), var_2.a), u_input.b.yx);
}

