struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(322f, _wgslsmith_f_op_f32(-297f * 1f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2040f)) - -182f), -490f);
    return u_input.b;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = arg_0;
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1234f, _wgslsmith_f_op_f32(1145f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-782f + 979f))))));
    var_0 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-555f + _wgslsmith_f_op_f32(-913f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1186f)) + 399f))));
    return select(!(!vec4<bool>(true, !arg_0.b.x, true, false)), !vec4<bool>(all(vec3<bool>(var_0.b.x, arg_1.b.x, var_0.b.x)) && (u_input.b >= arg_1.a.x), _wgslsmith_f_op_f32(select(var_2, -1910f, arg_1.b.x)) > _wgslsmith_f_op_f32(max(var_2, 572f)), arg_0.b.x, true), vec4<bool>(var_0.b.x, all(vec4<bool>(var_0.b.x, true, false, true)), true, all(vec2<bool>(all(arg_1.b), arg_0.b.x))));
}

fn func_2() -> Struct_4 {
    let var_0 = ~(i32(-1i) * -44963i);
    var var_1 = !(!select(vec4<bool>(false, true, any(vec2<bool>(true, true)), true), !func_3(Struct_1(vec2<u32>(1u, u_input.b), vec2<bool>(true, true), vec2<i32>(-2147483647i, 16596i)), Struct_1(vec2<u32>(16161u, 8987u), vec2<bool>(true, true), vec2<i32>(var_0, -42839i)), u_input.c.x, vec3<u32>(4294967295u, 103205u, u_input.b)), vec4<bool>(all(vec4<bool>(true, false, true, false)), -10798i != var_0, true, var_0 <= -31039i)));
    var var_2 = Struct_1(vec2<u32>(u_input.b, reverseBits((u_input.b >> (u_input.b % 32u)) >> (min(u_input.b, 2493u) % 32u))), !func_3(Struct_1(vec2<u32>(u_input.b, u_input.a.x), var_1.wz, ~vec2<i32>(var_0, 9276i)), Struct_1(vec2<u32>(u_input.a.x, u_input.b), select(vec2<bool>(false, true), var_1.xx, vec2<bool>(var_1.x, var_1.x)), vec2<i32>(var_0, -2147483647i) ^ vec2<i32>(-27784i, 49930i)), u_input.b, (u_input.c.wxy & u_input.c.zzx) & u_input.c.zzz).xy, _wgslsmith_add_vec2_i32(-(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, -12435i), vec2<i32>(var_0, 0i))), ~vec2<i32>(~(-13678i), var_0)));
    var_1 = select(vec4<bool>(false || all(vec3<bool>(var_1.x, true, true)), any(vec3<bool>(var_2.b.x, true, func_3(Struct_1(var_2.a, var_1.zy, vec2<i32>(0i, -2147483647i)), Struct_1(var_2.a, vec2<bool>(var_2.b.x, var_1.x), vec2<i32>(var_2.c.x, -2396i)), 4294967295u, vec3<u32>(u_input.a.x, u_input.b, 33212u)).x)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-18585i, -9111i, 72813i)), vec3<i32>(var_2.c.x, -8790i, -1i)) == (-2326i | var_2.c.x), var_1.x), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, var_2.b.x, false, var_2.b.x)), vec4<bool>(all(vec4<bool>(var_1.x, false, var_1.x, false)), all(vec4<bool>(var_1.x, var_1.x, var_2.b.x, true)) || true, all(var_2.b), true)), !var_1.x);
    let var_3 = false;
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-938f, -1053f, var_2.b.x)) * _wgslsmith_f_op_f32(select(238f, -1538f, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(295f)))))), select(func_3(Struct_1(_wgslsmith_mult_vec2_u32(u_input.c.xx, vec2<u32>(var_2.a.x, 47728u)), select(var_2.b, vec2<bool>(false, var_1.x), var_3), -vec2<i32>(var_2.c.x, var_0)), Struct_1(vec2<u32>(var_2.a.x, 46317u), !var_2.b, vec2<i32>(var_2.c.x, -2147483647i) ^ vec2<i32>(var_2.c.x, var_2.c.x)), 15312u, reverseBits(u_input.c.zyz) << (vec3<u32>(u_input.b, u_input.a.x, 0u) % vec3<u32>(32u))), vec4<bool>(!var_1.x | func_3(Struct_1(vec2<u32>(u_input.a.x, 113736u), vec2<bool>(var_1.x, var_3), var_2.c), Struct_1(vec2<u32>(25157u, 1u), vec2<bool>(var_2.b.x, var_1.x), vec2<i32>(1i, var_2.c.x)), u_input.b, u_input.a.zzz).x, all(!vec4<bool>(var_1.x, false, var_3, var_3)), select(true, var_1.x, true), !all(vec2<bool>(var_3, false))), var_3), !func_3(Struct_1(abs(var_2.a), vec2<bool>(true, false), -vec2<i32>(var_0, var_0)), Struct_1(~var_2.a, vec2<bool>(true, var_2.b.x), abs(var_2.c)), 1u, _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.c.x, 0u, u_input.c.x)), u_input.a.xzw)), vec2<f32>(_wgslsmith_div_f32(-1740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f))), _wgslsmith_f_op_f32(trunc(1029f))), u_input.c.zyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 137977u >> (abs(func_1(Struct_1(reverseBits(u_input.a.zx), vec2<bool>(true, true), -vec2<i32>(1i, -47135i)))) % 32u);
    let var_1 = func_2();
    var var_2 = ~(~((1322u ^ u_input.b) << (4294967295u % 32u)));
    let var_3 = ~var_1.e.x;
    let var_4 = true;
    let var_5 = 11748u;
    var var_6 = Struct_2(vec3<u32>(u_input.b, u_input.c.x, ~(~(~0u))), Struct_1(_wgslsmith_mod_vec2_u32(~reverseBits(vec2<u32>(1u, 1442u)), firstLeadingBit(var_1.e.xx) ^ abs(u_input.c.yx)), var_1.b.yw, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(~vec2<i32>(8572i, 2147483647i), reverseBits(vec2<i32>(2147483647i, -43151i))))), Struct_1(select(vec2<u32>(1u, var_3) | ~u_input.a.yy, min(~u_input.a.ww, abs(u_input.c.yw)), !var_1.c.xx), !vec2<bool>(all(var_1.b.xy), !var_4), vec2<i32>(-1i, _wgslsmith_add_i32(-1i, -44767i)) >> (~min(vec2<u32>(var_1.e.x, 1u), var_1.e.xy) % vec2<u32>(32u))), Struct_1(u_input.a.yz, vec2<bool>(false, !(!var_1.b.x)), vec2<i32>(1i, _wgslsmith_add_i32(_wgslsmith_div_i32(45570i, 43331i), 1i))), !((_wgslsmith_f_op_f32(-var_1.a) >= _wgslsmith_f_op_f32(-var_1.a)) && true));
    let var_7 = var_6.e;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -(~var_6.d.c.x));
}

