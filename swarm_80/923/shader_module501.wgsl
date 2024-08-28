struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -495f))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: i32) -> u32 {
    let var_0 = Struct_1(-944f, vec3<u32>(min(u_input.b.x ^ 1u, firstLeadingBit(4294967295u)), u_input.a.x, _wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(39172u, 16273u))))), arg_2 >> (u_input.b.x % 32u), u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, -1344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - 488f) - arg_0.x)), _wgslsmith_f_op_vec3_f32(-arg_0.wxy), vec3<bool>(arg_1.b.x, !arg_1.b.x, all(vec4<bool>(false, arg_1.b.x, true, arg_1.b.x))))));
    let var_3 = vec2<bool>(false, false);
    let var_4 = arg_1.d;
    return countOneBits(min(var_0.d.x, select(_wgslsmith_sub_u32(u_input.b.x << (0u % 32u), 1u), 0u, true)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> vec2<i32> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(abs(1i), _wgslsmith_add_i32(_wgslsmith_mod_i32(-56835i, arg_1.a.c), 1i))), vec2<i32>(0i, -16731i), countOneBits(firstTrailingBit(vec2<i32>(arg_1.a.c, 2147483647i) & vec2<i32>(var_0.a.c, arg_1.a.c)) << (vec2<u32>(func_2(vec4<f32>(arg_1.a.a, -1215f, -1000f, 937f), Struct_3(vec2<f32>(-342f, 224f), var_0.b.yx, vec4<f32>(-711f, -606f, arg_1.a.a, var_0.a.a), vec3<i32>(-56646i, -25144i, -15067i)), 0i), ~75561u) % vec2<u32>(32u))));
    var_1 = vec2<i32>(_wgslsmith_mult_i32(var_1.x, 17606i), -7937i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.a), arg_2)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1338f * -1000f)) + var_0.a.a)), ~vec3<u32>(10528u, ~(~37139u), abs(var_0.a.b.x)), var_1.x | -1i, ~vec2<u32>(26012u, ~4294967295u));
    var var_3 = var_2;
    return vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_2.c & countOneBits(arg_1.a.c), -var_3.c, reverseBits(var_2.c)), firstLeadingBit(-vec3<i32>(-1i, arg_0, -48398i))), arg_0 >> (30544u % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a, arg_1.c.x, 220f, -1090f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.c, vec4<f32>(arg_1.a.x, -968f, -2068f, arg_0.a.a)))))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.a + -911f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.a.x, arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-503f))))), _wgslsmith_f_op_f32(sign(arg_0.a.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-137f)))))), any(arg_1.b)));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(arg_1.c.wz)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.zy))));
    let var_3 = var_0.ww;
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), var_0.zx, !var_1.b.x))) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))), 376f)), arg_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -357f, -1554f, 1336f), vec4<f32>(arg_1.a.x, 1054f, -1000f, 1000f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.c) - vec4<f32>(456f, -608f, 1000f, -595f)))), arg_1.d);
    return ~vec3<i32>(arg_1.d.x, _wgslsmith_clamp_i32(44263i, -9464i, _wgslsmith_mult_i32(func_1(2147483647i, arg_0, 1064f).x, func_1(var_1.a.c, Struct_2(var_1.a, arg_0.b), -1168f).x)), _wgslsmith_add_i32(reverseBits(~(-2147483647i)), _wgslsmith_mult_i32(~var_1.a.c, arg_2.x & arg_0.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(28866i, _wgslsmith_dot_vec4_i32(vec4<i32>(-41775i, 1i, -38201i, 323i), vec4<i32>(2147483647i, -1i, -1i, -1i)), i32(-1i) * -30060i)) ^ -func_4(Struct_2(Struct_1(1574f, u_input.b.ywz, 0i, u_input.b.ww), vec4<bool>(false, false, false, true)), Struct_3(vec2<f32>(-1015f, 277f), vec2<bool>(true, true), vec4<f32>(1307f, -354f, -1000f, -1309f), vec3<i32>(2147483647i, -1i, 20392i)), func_1(842i, Struct_2(Struct_1(678f, vec3<u32>(49605u, 4294967295u, 4294967295u), 2147483647i, vec2<u32>(1u, 1u)), vec4<bool>(true, false, false, true)), -1207f)), ~vec3<i32>(1i, -42522i, 36449i) & vec3<i32>(min(~32148i, _wgslsmith_sub_i32(-1i, 1411i)), -22356i, ~21546i >> (func_2(vec4<f32>(-1133f, 531f, 2639f, 643f), Struct_3(vec2<f32>(1000f, -927f), vec2<bool>(false, false), vec4<f32>(-1205f, -765f, -1252f, -1223f), vec3<i32>(15926i, 0i, -45542i)), 8237i) % 32u)));
    let var_1 = u_input.a.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(356f)), u_input.b.xwz, select(-2147483647i, 0i, false), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x), max(vec4<u32>(u_input.a.x, 64579u, 1u, u_input.b.x), u_input.b)), abs(abs(var_1)))), !(!vec4<bool>(true, true, false, all(vec3<bool>(true, false, false)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_2.a.a)))), 1000f, _wgslsmith_f_op_f32(max(-111f, _wgslsmith_f_op_f32(-var_2.a.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(432f, var_2.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-433f, -921f)))));
    var var_4 = 60690i;
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1527f, -1792f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) + _wgslsmith_f_op_f32(-var_2.a.a)), var_3.x)));
    var var_6 = ~var_1;
    var var_7 = firstLeadingBit(-_wgslsmith_add_i32(41334i, ~1i));
    var var_8 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_1, -select((var_0 >> (var_2.a.d.x % 32u)) | 0i, -1i, (var_0 < var_0) & true), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.xyz ^ vec3<u32>(21533u, 55963u, 3889u), vec3<u32>(37203u, var_1, 1u)), 63678u) & var_2.a.b.xx, 1u);
}

