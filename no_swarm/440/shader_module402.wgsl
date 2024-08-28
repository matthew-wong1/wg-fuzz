struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_u32(~(~_wgslsmith_div_vec2_u32(reverseBits(arg_0.wy), arg_0.zy)), vec2<u32>(arg_1, _wgslsmith_sub_u32(1u, firstLeadingBit(arg_0.x))) >> (~firstLeadingBit(_wgslsmith_mod_vec2_u32(arg_0.xy, vec2<u32>(arg_1, arg_1))) % vec2<u32>(32u)));
    let var_1 = Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(819f, arg_2.x))), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(736f)) + -1639f), _wgslsmith_mult_u32(firstTrailingBit(arg_1), firstLeadingBit(15218u))), Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) * arg_2.zx))), _wgslsmith_f_op_f32(-arg_2.x), 431f, 35586u), !(true && any(vec4<bool>(false, false, true, false)))), 4294967295u, Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yx * arg_2.zx), _wgslsmith_f_op_vec2_f32(min(arg_2.yz, arg_2.yy))), _wgslsmith_f_op_f32(min(arg_2.x, 410f)), -1331f, ~firstTrailingBit(0u)), Struct_1(vec3<bool>(true, true, true), arg_2.xz, _wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_div_f32(-807f, -2018f), select(max(1u, 1758u), ~arg_1, false)), !any(vec4<bool>(false, true, true, true))), u_input.a.xz, Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a.x < -27887i), arg_2.zx, arg_2.x, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), var_0.x), Struct_1(vec3<bool>(true, true, true), arg_2.yy, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(45342u, arg_1), arg_0.yz)), u_input.b > 42731i));
    var var_2 = ~1i;
    var var_3 = -621f;
    var var_4 = vec2<bool>(var_1.a.c, var_1.a.b.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(963f)) * _wgslsmith_f_op_f32(ceil(-1377f)));
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(-abs(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(28640i, u_input.d), u_input.a.zx))));
    var var_1 = ~_wgslsmith_sub_u32(~(~50273u), select(~1u, ~0u, select(false, false, true))) << (1u % 32u);
    let var_2 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_1 = ~82456u;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(~vec4<u32>(107601u, 14008u, 26193u, 100699u), 35045u, vec3<f32>(-1230f, -1542f, -939f))), _wgslsmith_f_op_f32(f32(-1f) * -467f)))), _wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1466f) * _wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(721f, -150f), 679f, !var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -369f)))));
    return Struct_1(vec3<bool>(true, true, any(!(!vec2<bool>(var_2, false)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(var_3.xw)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_3.zw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, 1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.xw)))))), _wgslsmith_f_op_f32(abs(945f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-998f, _wgslsmith_f_op_f32(max(var_3.x, var_3.x)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(var_3.x - 1000f))))), ~max(firstLeadingBit(1u), _wgslsmith_add_u32(min(19384u, 1u), max(9791u, 26679u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec3<bool>(true, arg_1.x, arg_2.a.x);
    let var_1 = arg_2;
    let var_2 = !var_1.a;
    let var_3 = !(!var_1.a.x && ((u_input.b <= u_input.b) | (all(vec4<bool>(var_0.x, var_0.x, arg_2.a.x, arg_1.x)) == true)));
    var_0 = select(var_2, vec3<bool>(true, -11290i < u_input.c.x, true), !select(vec3<bool>(any(var_0.yx), any(arg_1), !var_1.a.x), vec3<bool>(true, !arg_1.x, var_1.c <= var_1.c), select(88503u, arg_2.e, arg_1.x) != 0u));
    return vec4<bool>(true, all(arg_2.a), _wgslsmith_div_f32(1531f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d) * -246f)) > _wgslsmith_f_op_f32(f32(-1f) * -2780f), var_3);
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = select(vec4<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), 1951i > u_input.b, true, select(true, arg_0 > -1000f, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false))))), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false)), func_4(max(vec3<i32>(u_input.a.x, u_input.d, u_input.c.x), vec3<i32>(-58540i, 3538i, 2829i)), vec2<bool>(false, true), func_2())), ~max(abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(99275u, 0u), vec2<u32>(4294967295u, 23282u))) >= 1u);
    var_0 = select(!vec4<bool>(any(vec2<bool>(var_0.x, false)), var_0.x, var_0.x, false), vec4<bool>(func_4(u_input.a.wyz, var_0.yw, Struct_1(var_0.xxy, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1267f, -1011f), vec2<f32>(-602f, -2339f), vec2<bool>(var_0.x, true))), func_2().b.x, _wgslsmith_f_op_f32(func_3(vec4<u32>(16991u, 1u, 0u, 4294967295u), 26467u, vec3<f32>(-658f, -1145f, -422f))), ~24163u)).x, var_0.x, !(-2147483647i == ~u_input.b), var_0.x), select(4294967295u, 1u, var_0.x) == 9797u);
    var_0 = select(func_4(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.a.x, 2147483647i), -vec4<i32>(u_input.a.x, u_input.c.x, u_input.d, u_input.b)), abs(-1i), select(min(u_input.b, u_input.c.x), -1i, true)), var_0.yw, Struct_1(!(!vec3<bool>(var_0.x, var_0.x, false)), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -591f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f * 718f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), abs(19594u))), vec4<bool>(all(select(!vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), true)), true, all(func_4(abs(u_input.a.wzz), vec2<bool>(true, true), func_2())), var_0.x), var_0.x);
    var var_1 = _wgslsmith_f_op_f32(func_3(min(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(70234u, 4294967295u, 42712u, 74124u), vec4<u32>(4294967295u, 28657u, 4294967295u, 78814u), vec4<u32>(0u, 0u, 50785u, 8566u))), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2108f, arg_0, -817f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(347f, 910f, -2205f))))))) >= _wgslsmith_f_op_f32(f32(-1f) * -1105f);
    var_1 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-764f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f * arg_0) + _wgslsmith_f_op_f32(arg_0 * -356f)), _wgslsmith_f_op_f32(step(1120f, _wgslsmith_f_op_f32(arg_0 - arg_0))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 1573f, func_2().d) * vec3<f32>(-244f, _wgslsmith_f_op_f32(arg_0 * arg_0), -1443f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.d) | abs(vec2<i32>(u_input.c.x, u_input.d)), ~_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(u_input.b, u_input.c.x)), min(vec2<i32>(44766i, u_input.d), vec2<i32>(u_input.a.x, u_input.b)))), -49739i ^ u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), -1000f, 1442f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(-1017f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2021f, 1000f, -1000f) - vec3<f32>(-985f, -747f, 658f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1864f, 1000f), -1000f, -273f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1195f, 291f, -1502f))))))));
}

