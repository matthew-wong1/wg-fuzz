struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
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

var<private> global0: f32;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(28266u, vec4<f32>(1430f, -1854f, -114f, -1417f), vec2<u32>(89179u, 25580u), vec4<bool>(true, true, false, false)), Struct_1(7070u, vec4<f32>(546f, -1362f, -939f, -687f), vec2<u32>(1u, 20835u), vec4<bool>(true, false, true, false)), Struct_1(1u, vec4<f32>(-193f, 1207f, -142f, 513f), vec2<u32>(50799u, 0u), vec4<bool>(false, false, false, true)), Struct_1(40455u, vec4<f32>(-488f, -1614f, 1703f, -395f), vec2<u32>(35498u, 4294967295u), vec4<bool>(true, false, false, false)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_add_u32(u_input.a.x, firstLeadingBit(u_input.a.x & 5575u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(877f, 2183f, 375f, -2313f)) - vec4<f32>(_wgslsmith_f_op_f32(-495f - 718f), _wgslsmith_div_f32(1000f, 343f), -231f, -141f))), max(countOneBits(~u_input.a.zy), _wgslsmith_add_vec2_u32(min(u_input.b.xy, vec2<u32>(52264u, 4294967295u)), u_input.b.wy & vec2<u32>(u_input.b.x, 4294967295u))) << (_wgslsmith_div_vec2_u32(~u_input.a.yx, ~vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u)), !vec4<bool>(!all(vec3<bool>(false, false, false)), true, true, true));
    global1 = array<Struct_1, 4>();
    let var_1 = var_0.d.zz;
    var var_2 = ~_wgslsmith_div_u32(var_0.a, ~1u) & abs(~u_input.a.x & 71439u);
    let var_3 = var_0.b.wxz;
    return Struct_1(firstTrailingBit(u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(1285f, var_3.x, var_0.b.x, -1000f) - var_0.b)) - vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), -373f, _wgslsmith_f_op_f32(var_0.b.x + var_3.x), _wgslsmith_f_op_f32(max(var_0.b.x, -258f))))), vec2<u32>(var_0.c.x, ~(~var_0.a)), select(!var_0.d, vec4<bool>(any(select(var_0.d.yw, vec2<bool>(false, var_0.d.x), true)), var_1.x, var_1.x, var_0.d.x), select(var_0.d, !vec4<bool>(var_1.x, true, true, false), !(var_0.b.x == 2283f))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1.b.xy;
    global0 = -316f;
    let var_1 = countOneBits(-(~(-vec2<i32>(8033i, -7293i))) >> ((u_input.b.yw >> ((~vec2<u32>(u_input.b.x, 4294967295u) | ~arg_1.c) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = arg_1.d.zxx;
    var var_3 = min(max(~(~vec3<i32>(var_1.x, -71239i, var_1.x) & _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -19656i, var_1.x), vec3<i32>(2147483647i, var_1.x, 29598i))), select(-firstTrailingBit(vec3<i32>(var_1.x, var_1.x, -18373i)), vec3<i32>(var_1.x, var_1.x, -28472i), true)), (_wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i, 21046i), vec3<i32>(0i, 0i, 27262i)) ^ abs(vec3<i32>(var_1.x, var_1.x, -8349i))) | -max(~vec3<i32>(var_1.x, var_1.x, -30612i), ~vec3<i32>(27895i, var_1.x, -1i)));
    return var_1.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(185f, 1234f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1046f, 152f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1424f, 1122f) * vec2<f32>(-508f, -561f))))))));
    global0 = -1096f;
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(2147483647i, func_3(select(arg_0, vec2<bool>(arg_1, true), arg_1), func_2())), _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, 1i, 1i, 1i), -firstLeadingBit(vec4<i32>(0i, -21480i, 8391i, -2147483647i))), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, 1i, -9485i, -1i), ~vec4<i32>(1i, -1i, 1i, -2147483647i))), 1i >> (func_2().c.x % 32u), _wgslsmith_div_i32(abs(-2147483647i), 2147483647i));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = -7110i;
    global1 = array<Struct_1, 4>();
    let var_2 = u_input.a.yy;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))))));
    global1 = array<Struct_1, 4>();
    global0 = _wgslsmith_f_op_f32(525f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(any(vec4<bool>(false, false, false, false)), true), true)) - 2266f));
    let var_3 = vec2<i32>(var_1, ~(-46976i));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(var_3.x, var_1)) >> (~min(4294967295u, 4294967295u) % 32u)));
}

