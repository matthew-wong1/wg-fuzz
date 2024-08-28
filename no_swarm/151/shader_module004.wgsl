struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = u_input.b.yxz;
    let var_1 = var_0;
    var var_2 = Struct_1(arg_0.a.a);
    var_2 = arg_0.a;
    let var_3 = vec3<bool>(true, true, true);
    return 25691u;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = max(vec3<i32>(u_input.a, ~firstTrailingBit(min(u_input.a, u_input.a)), u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 13757i, -48424i), firstLeadingBit(vec3<i32>(u_input.a, 2147483647i, u_input.a) | vec3<i32>(-12422i, 2147483647i, u_input.a))));
    let var_1 = Struct_3(vec2<u32>(reverseBits(func_3(Struct_2(Struct_1(vec3<i32>(-17744i, var_0.x, u_input.a))))), max(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(46017u, u_input.b.x)), ~3654u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * _wgslsmith_f_op_f32(arg_1.x * arg_0)), -836f, vec4<bool>(true, !any(!vec2<bool>(arg_2, arg_2)), all(select(!vec4<bool>(true, true, arg_2, arg_2), !vec4<bool>(true, false, arg_2, true), false)), arg_2));
    var var_2 = arg_1.yy;
    return Struct_1(vec3<i32>(u_input.a, u_input.a, ~33070i));
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    var var_0 = vec4<i32>(u_input.a, ~_wgslsmith_dot_vec3_i32(min(-vec3<i32>(arg_0.x, -45907i, 58593i), vec3<i32>(u_input.a, 0i, u_input.a) & vec3<i32>(-13471i, u_input.a, arg_0.x)), vec3<i32>(reverseBits(-1i), -2147483647i, arg_0.x)), -1i, i32(-1i) * -19924i);
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1053f - 755f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1924f))), 1000f, 871f), true));
    var var_2 = select(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), vec2<bool>(false, any(vec2<bool>(false, true))), _wgslsmith_add_i32(-27315i, arg_0.x) < ~u_input.a), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(any(vec3<bool>(true, true, true)), _wgslsmith_sub_u32(49143u, u_input.b.x) <= u_input.b.x)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), all(vec2<bool>(true, true))), vec2<bool>(true, true), all(vec3<bool>(false, true, true))), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), false)));
    var var_3 = Struct_3(~vec2<u32>(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 74203u), select(countOneBits(4294967295u), u_input.b.x << (64320u % 32u), false)), 570f, 1f, !vec4<bool>(!(!var_2.x), true, true, _wgslsmith_f_op_f32(trunc(129f)) <= 1048f));
    var var_4 = Struct_3(~vec2<u32>(~_wgslsmith_add_u32(u_input.b.x, 4294967295u), 37090u), var_3.b, -465f, vec4<bool>(true, var_2.x, var_2.x, var_2.x));
    return StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(func_2(var_3.b, vec3<f32>(var_3.c, -1015f, -2134f), var_3.b > 137f).a.x, -(i32(-1i) * -2147483647i), -3872i, -u_input.a), select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.a.x, var_1.a.a.x, -69243i, arg_0.x), vec4<i32>(1i, -2147483647i, -14767i, -2147483647i)) << (select(vec4<u32>(1u, u_input.b.x, 6979u, 1u), vec4<u32>(var_3.a.x, var_3.a.x, 0u, 15143u), var_3.d) % vec4<u32>(32u)), -(vec4<i32>(u_input.a, -15794i, u_input.a, 1i) & vec4<i32>(var_1.a.a.x, var_0.x, 2147483647i, arg_0.x)), any(!var_4.d))), -35963i ^ _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.a.x, arg_0.x, -2147483647i, -2147483647i), vec4<i32>(-32731i, arg_0.x, 2147483647i, var_1.a.a.x)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a, -2147483647i, u_input.a, var_0.x)), vec4<i32>(-28897i, arg_0.x, -2147483647i, arg_0.x) << (vec4<u32>(var_4.a.x, var_4.a.x, u_input.b.x, 0u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(_wgslsmith_mult_u32(~(~31518u), 0u) <= abs(_wgslsmith_clamp_u32(~u_input.b.x, ~u_input.b.x, u_input.b.x | 1u)), any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true), true)), true, true);
    let var_1 = Struct_2(Struct_1(~countOneBits(max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i)))));
    var var_2 = ~u_input.b.zyz << (u_input.b.ywy % vec3<u32>(32u));
    var_2 = vec3<u32>(var_2.x, 4294967295u, 4294967295u);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f) - _wgslsmith_f_op_f32(-488f * 1001f)))) + -1795f)));
    let var_4 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(select(~u_input.b.x, var_2.x, any(!var_0)), u_input.b.x), _wgslsmith_sub_u32(~(~min(u_input.b.x, 4294967295u)), 4401u), ~0u);
    var_2 = u_input.b.ywx;
    let var_5 = var_0.wy;
    var_2 = ~firstLeadingBit(~u_input.b.wwx);
    let x = u_input.a;
    s_output = func_1(-select(_wgslsmith_div_vec2_i32(var_1.a.a.xz, vec2<i32>(-1i, var_1.a.a.x)), -var_1.a.a.xx & var_1.a.a.yy, var_5));
}

