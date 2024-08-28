struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = Struct_1(0u >> (u_input.b % 32u), select(!all(select(vec4<bool>(true, arg_0.b, false, arg_0.b), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), arg_0.b)), false, arg_0.b), 0i);
    let var_1 = any(select(!select(select(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<bool>(arg_0.b, true, arg_0.b), false), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), select(vec3<bool>(arg_0.b, var_0.b, var_0.b), vec3<bool>(true, arg_0.b, true), false)), select(vec3<bool>(all(vec4<bool>(false, false, true, arg_0.b)), 4087u == var_0.a, any(vec4<bool>(arg_0.b, true, true, false))), vec3<bool>(true, true | arg_0.b, false), 0i >= u_input.c.x), !select(vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(arg_0.b, arg_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, arg_0.b))));
    let var_2 = abs(vec2<u32>(0u, 27960u));
    let var_3 = arg_0.a;
    let var_4 = !select(!vec3<bool>(false, any(vec4<bool>(true, var_0.b, var_0.b, true)), !var_0.b), select(!(!vec3<bool>(false, true, var_0.b)), !select(vec3<bool>(var_1, true, true), vec3<bool>(var_0.b, true, false), true), vec3<bool>(all(vec4<bool>(true, true, false, var_0.b)), !var_0.b, any(vec2<bool>(var_0.b, var_1)))), select(!(!vec3<bool>(true, true, var_1)), vec3<bool>(true, all(vec4<bool>(true, arg_0.b, var_1, false)), all(vec2<bool>(arg_0.b, true))), true));
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = vec2<u32>(arg_2, 65274u);
    let var_1 = reverseBits(arg_2);
    let var_2 = any(!vec4<bool>(all(select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_0), arg_1)), !any(vec2<bool>(arg_1, arg_1)), true, false));
    var var_3 = var_0;
    var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(arg_2), 79169u, ~0u), countOneBits(~vec3<u32>(var_3.x, var_1, arg_2))), arg_2) | vec2<u32>(_wgslsmith_div_u32(4294967295u, u_input.b), var_0.x);
    return 1u;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0), 1129f);
    let var_2 = firstTrailingBit(1u);
    let var_3 = vec4<u32>(func_4(arg_0.b, arg_0.b, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, -1474f)))), ~((40119u | var_2) << (1u % 32u)), var_2 ^ ~u_input.b, 1u);
    var var_4 = arg_0;
    return select(select(!(!vec4<bool>(arg_0.b, var_4.b, false, var_4.b)), select(select(!vec4<bool>(arg_0.b, var_4.b, arg_0.b, false), select(vec4<bool>(var_4.b, var_4.b, false, var_4.b), vec4<bool>(var_4.b, true, true, arg_0.b), vec4<bool>(false, false, true, true)), arg_0.b), vec4<bool>(!var_4.b, u_input.c.x >= u_input.c.x, true, true), vec4<bool>(all(vec4<bool>(true, true, false, false)), var_4.b, !arg_0.b, true)), !vec4<bool>(true, true & arg_0.b, var_4.b != var_4.b, all(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true)))), vec4<bool>(all(vec4<bool>(any(vec4<bool>(true, arg_0.b, arg_0.b, false)), any(vec4<bool>(true, false, var_4.b, true)), false, true)), all(!vec4<bool>(false, arg_0.b, false, false)), var_4.b, true), vec4<bool>(!(arg_0.b & arg_0.b), all(!vec4<bool>(arg_0.b, false, var_4.b, true)), any(!vec2<bool>(var_4.b, false)), arg_0.b));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = select(!vec2<bool>(false, all(!vec2<bool>(false, arg_1))), !(!vec2<bool>(arg_1, any(vec3<bool>(false, arg_1, arg_1)))), any(!(!func_2(Struct_1(u_input.b, arg_1, 20117i)))));
    var_0 = !select(!vec2<bool>(!var_0.x, !arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(!var_0.x, var_0.x), -5509i < _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), true);
    return !var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~38675u;
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1042f, _wgslsmith_f_op_f32(ceil(1082f)), any(vec2<bool>(false, false)))))), false & any(vec4<bool>(true, true, true, any(vec2<bool>(false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f), _wgslsmith_f_op_f32(-1000f + -163f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2277f * -409f)))));
    let var_2 = -select(max(max(u_input.c.wz & vec2<i32>(1i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x) & vec2<i32>(u_input.c.x, -17280i)), select(max(u_input.c.zw, vec2<i32>(-31721i, u_input.c.x)), u_input.c.xy | u_input.c.yx, true)), _wgslsmith_clamp_vec2_i32(u_input.c.ww, u_input.c.yw, vec2<i32>(0i, 2147483647i)), vec2<bool>(all(vec3<bool>(true, false, true)) & (u_input.c.x <= u_input.c.x), all(vec2<bool>(true, true))));
    let var_3 = Struct_2(select(select(vec4<bool>(true, true, true, true), select(func_2(Struct_1(u_input.b, true, u_input.c.x)), vec4<bool>(true, true, true, true), var_0 <= var_0), all(vec3<bool>(true, true, true))), vec4<bool>(false, !func_1(-697f, false, 1000f), false, false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), func_2(Struct_1(var_0, true, u_input.c.x)))), 1u, Struct_1(var_0, !select(false, true, all(vec2<bool>(false, false))), _wgslsmith_add_i32(-1i, var_2.x & 14767i)), Struct_1(_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(~1u, 8567u)), true, u_input.c.x));
    let var_4 = func_4(false, true, ~firstTrailingBit(u_input.a), -389f);
    var var_5 = firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(select(_wgslsmith_div_i32(1i, var_2.x), _wgslsmith_mult_i32(var_2.x, u_input.c.x), var_3.c.b), ~abs(12019i), _wgslsmith_mult_i32(-u_input.c.x, -34823i)), u_input.c.zzy >> (vec3<u32>(~4294967295u, 1u, var_4 << (1u % 32u)) % vec3<u32>(32u))));
    var_5 = u_input.c.zxy;
    var var_6 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_2(!var_3.a, _wgslsmith_clamp_u32(u_input.a | 0u, ~var_3.c.a, 2732u) | 15411u, var_3.c, Struct_1(~min(u_input.a, 10377u), var_3.c.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, var_3.c.c), abs(var_3.d.c)))), _wgslsmith_div_u32(25839u, ~_wgslsmith_clamp_u32(12766u, var_4, var_0)) >= (abs(func_4(var_3.a.x, true, var_3.c.a, -397f)) & (u_input.b ^ var_0)));
    var var_7 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(-(-2147483647i | var_7.c), u_input.c.x | firstTrailingBit(var_6.b.c.c)));
}

