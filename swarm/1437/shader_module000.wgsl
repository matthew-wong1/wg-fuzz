struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(-1622f, _wgslsmith_f_op_f32(floor(-690f)), u_input.a.x), !(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_2(var_0.a, select(vec4<bool>(false, false, var_0.b.x, true), var_0.b, vec4<bool>(true, !var_0.b.x | any(vec4<bool>(true, true, var_0.b.x, var_0.b.x)), !all(var_0.b), false)));
    let var_2 = Struct_2(var_0.a, !vec4<bool>(false, var_1.b.x, var_1.b.x & true, all(vec3<bool>(true, true, true))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b, var_0.a.a)), _wgslsmith_div_vec2_f32(vec2<f32>(-620f, var_2.a.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, 271f))), !(!var_2.b.ww))) + vec2<f32>(-229f, _wgslsmith_f_op_f32(abs(-247f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1475f, var_0.a.a) - vec2<f32>(-395f, -1498f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1613f, var_1.a.b))), vec2<f32>(_wgslsmith_f_op_f32(var_2.a.a * var_2.a.a), var_1.a.b))));
    var_0 = var_1;
    return !vec2<bool>(var_2.b.x, !(!(true && var_2.b.x)));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = 0u;
    let var_1 = false;
    let var_2 = -u_input.a;
    let var_3 = func_3();
    let var_4 = _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, -35194i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -53035i, u_input.a.x, -1i), vec4<i32>(1381i, var_2.x, var_2.x, -34274i))), i32(-1i) * -1i), _wgslsmith_clamp_i32(u_input.b.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(27112i, -31335i, var_2.x, 87836i) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(0i, -1i, -34717i, var_2.x) ^ vec4<i32>(u_input.b.x, var_2.x, var_2.x, 2147483647i)))), _wgslsmith_mod_i32(~15532i | var_2.x, -(~var_2.x)));
    return u_input.c.x;
}

fn func_1() -> Struct_1 {
    let var_0 = ~func_2(vec2<f32>(1000f, 1f));
    let var_1 = Struct_3(Struct_2(Struct_1(582f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f + 375f)), -2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-30014i, u_input.a.x, -567i), vec3<i32>(u_input.b.x, 27692i, 2147483647i))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), false, false), true)), vec2<bool>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, 1i), u_input.b.x) != reverseBits(firstLeadingBit(2147483647i)), true));
    let var_2 = var_1.a.a;
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), var_1.a.a.b, _wgslsmith_sub_i32(~u_input.a.x, i32(-1i) * -2147483647i)), var_1.a.b), vec2<bool>(_wgslsmith_mult_i32(48299i, 27195i) > var_2.c, (var_1.a.b.x | (2147483647i < var_2.c)) & var_1.b.x));
    var var_4 = -min(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_3.a.a.c, -3245i), _wgslsmith_sub_vec2_i32(u_input.a, u_input.a)), var_3.a.a.c, 1i, var_2.c), vec4<i32>(var_3.a.a.c, abs(-33853i), firstTrailingBit(~27411i), -1i));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.a.b - 2796f))))), _wgslsmith_f_op_f32(var_1.a.a.b + _wgslsmith_f_op_f32(-var_1.a.a.a)), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -5699i), u_input.a), _wgslsmith_sub_i32(-6021i, 1i), 1i), _wgslsmith_mod_vec3_i32(firstLeadingBit(var_4.yxx), vec3<i32>(-2147483647i, -1i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = func_1();
    var_1 = Struct_1(385f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1682f, 660f)) + var_1.a))), firstLeadingBit(-1i));
    var_1 = func_1();
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b.x, var_1.c), ~vec3<i32>(u_input.a.x, var_1.c, 0i)), ~vec3<i32>(var_0, -2147483647i, -2147483647i), ~select(vec3<i32>(2147483647i, var_0, 1i), vec3<i32>(-2147483647i, var_0, var_1.c), vec3<bool>(true, false, true))), firstTrailingBit(vec3<i32>(-15935i, 0i, _wgslsmith_clamp_i32(15225i, u_input.a.x, 2147483647i)))));
    var var_3 = firstLeadingBit(~(_wgslsmith_add_vec4_u32(~u_input.c, u_input.c) << (~max(vec4<u32>(74017u, 96148u, 50169u, 1u), u_input.c) % vec4<u32>(32u))));
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_2, 10760i, _wgslsmith_mod_i32(reverseBits(-2147483647i), -35833i)));
}

