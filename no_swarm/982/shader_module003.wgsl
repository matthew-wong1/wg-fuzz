struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    var var_0 = ~u_input.d;
    var var_1 = vec4<i32>(_wgslsmith_add_i32(select(u_input.c.x, ~1i, all(vec3<bool>(true, true, true))), _wgslsmith_sub_i32(-(u_input.e.x | u_input.e.x), u_input.e.x)), u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(min(-32597i, -1i), _wgslsmith_add_i32(-16415i, u_input.e.x), ~0i)), abs(min(-16671i, u_input.c.x | u_input.e.x))), u_input.c.x);
    var var_2 = arg_3;
    var_0 = u_input.d;
    let var_3 = vec3<f32>(-158f, -989f, arg_0);
    return -1165f;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = !vec2<bool>(select(true, all(vec3<bool>(true, false, false)), true), !(select(false, true, true) | false));
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(~vec2<u32>(arg_1.x, arg_1.x), u_input.d.zx, var_0.x), Struct_4(_wgslsmith_div_f32(2307f, 752f)), Struct_4(1f))) <= -2295f, var_0.x);
    var var_1 = ~min(u_input.d.x, 5713u);
    var_1 = u_input.a;
    var_0 = vec2<bool>(!any(select(vec4<bool>(true, true, var_0.x, true), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, true, false, false), var_0.x), all(vec3<bool>(true, var_0.x, true)))), !any(!vec3<bool>(var_0.x, var_0.x, var_0.x)));
    return Struct_2(Struct_1(!vec4<bool>(true, true, any(vec3<bool>(false, false, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, true, false))), _wgslsmith_add_u32(0u, arg_1.x), _wgslsmith_f_op_f32(248f - 1f), all(vec4<bool>(select(true, var_0.x, var_0.x), all(vec3<bool>(true, var_0.x, var_0.x)), all(vec4<bool>(true, var_0.x, false, false)), var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(-678f - _wgslsmith_f_op_f32(-147f * 474f)), false))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<f32>(514f, _wgslsmith_div_f32(-1447f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1571f, -794f))), _wgslsmith_f_op_f32(-1556f + _wgslsmith_f_op_f32(select(-325f, -513f, false)))))));
    return func_2(~1u, ~u_input.d.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.d.yy, ~(u_input.d.xz << (vec2<u32>(2086u, u_input.b) % vec2<u32>(32u)))), u_input.a, var_0.a.b));
    let var_2 = 1i;
    var var_3 = Struct_3(vec2<f32>(var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1085f * _wgslsmith_f_op_f32(-var_0.a.c)) + func_1().a.e)), select(!select(vec2<bool>(true, false), func_1().a.a.xz, vec2<bool>(false, false)), vec2<bool>(false, true), select(all(var_0.a.a.xwy), reverseBits(26225u) < var_0.a.b, false)));
    var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_3.a * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, -1149f))))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a.e)), -1000f)))), select(!var_0.a.a.wy, var_3.b, var_0.a.a.yz));
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(674f + -2118f)), vec2<u32>(~11316u, firstTrailingBit(4294967295u)), Struct_4(var_4.c), Struct_4(_wgslsmith_f_op_f32(var_3.a.x + -743f)))) * _wgslsmith_f_op_f32(f32(-1f) * -2074f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1187f * -944f)), _wgslsmith_f_op_f32(var_0.a.e - -477f), -496f)), -_wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, -var_2), u_input.e.x));
}

