struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = -(~_wgslsmith_add_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.b.x), vec2<i32>(48761i, u_input.b.x)), -u_input.b.yw));
    return 1u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3.b.x;
    var var_1 = arg_2;
    var var_2 = arg_0.x;
    var var_3 = func_2(!(!arg_3.b.x));
    var_1 = arg_2;
    return 0i;
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(firstLeadingBit(-8697i), vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), false, false), ~(~_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -38015i, -3605i, 17005i))), ~(_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(0i, -25905i, -37918i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)) >> ((vec4<u32>(u_input.a, 76063u, 61211u, u_input.d.x) | vec4<u32>(u_input.c, 1u, u_input.a, u_input.d.x)) % vec4<u32>(32u))), firstTrailingBit(vec2<i32>(-394i, ~25862i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1860f, -197f, _wgslsmith_f_op_f32(1421f * -668f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-523f, -2075f, -1238f) * vec3<f32>(-1000f, 184f, -791f))))));
    let var_1 = 0u;
    let var_2 = Struct_4(Struct_1(~var_0.a.a & -2147483647i, vec3<bool>(true, any(!vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, var_0.a.b.x)), var_0.a.b.x), vec4<i32>(_wgslsmith_mult_i32(~var_0.a.a, 0i), 2147483647i, abs(u_input.b.x), u_input.b.x), ~var_0.a.d, _wgslsmith_div_vec2_i32(~(var_0.a.e >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), firstTrailingBit(-vec2<i32>(var_0.a.d.x, u_input.b.x)))), abs(firstLeadingBit(~u_input.b.x) & var_0.a.a), Struct_2(Struct_1(_wgslsmith_add_i32(var_0.a.e.x, ~(-1i)), vec3<bool>(-15862i >= u_input.b.x, true || var_0.a.b.x, true), countOneBits(vec4<i32>(u_input.b.x, 0i, u_input.b.x, 1i)), _wgslsmith_mod_vec4_i32(~var_0.a.d, var_0.a.c << (vec4<u32>(var_1, 37684u, 84918u, var_1) % vec4<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(-21457i, var_0.a.c.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.b.xw, vec2<i32>(var_0.a.a, u_input.b.x)), vec2<i32>(var_0.a.c.x, _wgslsmith_mod_i32(-24596i, u_input.b.x)))), ~(u_input.d << ((firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)) | max(vec2<u32>(u_input.a, u_input.d.x), vec2<u32>(var_1, 0u))) % vec2<u32>(32u))));
    let var_3 = 903f;
    return vec3<bool>(true, false & (var_2.c.a.b.x == true), !all(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec3<i32>(35305i, func_1(vec4<bool>(true, true, false, false), ~vec2<i32>(-24686i, u_input.b.x), Struct_4(Struct_1(u_input.b.x, vec3<bool>(true, true, true), u_input.b, vec4<i32>(-9105i, -41206i, u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.x, Struct_2(Struct_1(-48445i, vec3<bool>(true, true, false), u_input.b, u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(u_input.b.x, -1i)), vec2<u32>(u_input.d.x, u_input.a)), Struct_1(1i, vec3<bool>(false, false, true), vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, u_input.b.x), u_input.b, vec2<i32>(u_input.b.x, 42985i))), countOneBits(u_input.b.x)));
    var var_1 = any(select(vec3<bool>(true, true, true), !func_3(), vec3<bool>(true, true, true)));
    var_0 = vec3<i32>(-reverseBits(-46747i), u_input.b.x, u_input.b.x);
    let var_2 = (1i | _wgslsmith_add_i32(var_0.x | ~u_input.b.x, _wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)))) | firstTrailingBit(-1i);
    var_0 = vec3<i32>(-_wgslsmith_mod_i32(var_0.x | var_2, var_2), _wgslsmith_dot_vec4_i32(abs(u_input.b), vec4<i32>(-1i, var_0.x, var_2, -8376i >> (u_input.d.x % 32u))), -2147483647i) >> (select(countOneBits(vec3<u32>(min(35014u, 1u), u_input.c, u_input.c | 20093u)), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, u_input.d), select(vec2<u32>(42524u, 0u), vec2<u32>(1u, u_input.c), true)), ~(u_input.c << (u_input.c % 32u)), u_input.c), -(var_2 >> (0u % 32u)) <= 2147483647i) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(66180i, 26639i), var_0.zx), -1i, func_1(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec2_i32(-vec2<i32>(var_0.x, var_2), firstLeadingBit(u_input.b.xz)), Struct_4(Struct_1(var_2, vec3<bool>(false, true, false), vec4<i32>(-2147483647i, -2147483647i, var_2, 46660i), vec4<i32>(u_input.b.x, var_0.x, var_0.x, var_0.x), vec2<i32>(u_input.b.x, var_2)), -var_2, Struct_2(Struct_1(var_2, vec3<bool>(false, false, true), vec4<i32>(-1i, var_0.x, 1i, var_0.x), u_input.b, var_0.zz), u_input.b.xy), vec2<u32>(75133u, u_input.c)), Struct_1(var_0.x, select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), u_input.b, -vec4<i32>(-8844i, var_2, -2147483647i, -61051i), vec2<i32>(var_0.x, 5684i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(862f, _wgslsmith_f_op_f32(abs(245f)), _wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_div_f32(751f, -494f)))) * vec4<f32>(1000f, _wgslsmith_f_op_f32(round(840f)), 103f, _wgslsmith_f_op_f32(ceil(-169f)))));
}

