struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = Struct_2(arg_0.b, arg_0.b, Struct_1(arg_0.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.b, 29464u), vec3<u32>(0u, arg_2.d.x, arg_2.e), vec3<u32>(1u, u_input.b, arg_0.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, 0u, arg_0.b), vec3<u32>(1u, arg_2.e, arg_2.e))), select(~vec3<u32>(arg_0.b, arg_2.d.x, 39576u), ~vec3<u32>(u_input.b, arg_2.e, u_input.b), true))));
    var var_1 = arg_0;
    let var_2 = var_0;
    var var_3 = Struct_2(~(~max(4294967295u, 0u) | _wgslsmith_sub_u32(arg_0.b, var_0.a)), _wgslsmith_div_u32(_wgslsmith_mult_u32(~7444u, ~var_0.b), ~var_1.b), var_2.c);
    var_3 = Struct_2(_wgslsmith_mult_u32(22293u, 0u), var_2.a, var_0.c);
    return vec4<i32>(arg_2.b, -reverseBits(2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -48580i, 2147483647i) ^ vec3<i32>(-1i, 1i, 6750i), vec3<i32>(arg_2.c, u_input.a, 56659i) & vec3<i32>(u_input.a, -2147483647i, u_input.a)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.c, -84380i, -7289i), vec3<i32>(-44178i, arg_2.c, -29157i)), -vec3<i32>(-39195i, arg_2.b, arg_2.c))), vec3<i32>(~u_input.a ^ u_input.a, _wgslsmith_sub_i32(arg_2.b, u_input.a) & (u_input.a ^ -1i), u_input.a)), 0i);
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = ~abs(func_3(Struct_1(!vec4<bool>(true, arg_0.x, arg_0.x, false), _wgslsmith_mod_u32(0u, 1u)), Struct_4(all(vec2<bool>(arg_0.x, false))), Struct_3(-566f, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, -1i), vec3<i32>(u_input.a, u_input.a, 23737i)), ~vec2<u32>(u_input.b, u_input.b), u_input.b)));
    var var_1 = select(vec4<bool>(false, true, !(!arg_0.x), any(!select(vec2<bool>(arg_0.x, false), arg_0, arg_0.x))), !vec4<bool>(true, select(true, any(vec4<bool>(false, false, true, arg_0.x)), -5887i >= var_0.x), false, arg_0.x), false);
    var var_2 = Struct_2(~1u, _wgslsmith_mod_u32(~0u, u_input.b) >> ((4294967295u >> (u_input.b % 32u)) % 32u), Struct_1(!select(vec4<bool>(true, arg_0.x, var_1.x, true), select(vec4<bool>(var_1.x, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, var_1.x, arg_0.x), arg_0.x), true), (u_input.b ^ u_input.b) ^ ~_wgslsmith_add_u32(u_input.b, u_input.b)));
    var var_3 = all(var_2.c.a);
    var var_4 = Struct_1(var_2.c.a, ~(u_input.b ^ ~4294967295u));
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -653f) + _wgslsmith_div_f32(935f, _wgslsmith_div_f32(-139f, 948f))), 1f)), var_0.x, min(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.xzw, var_0.yxw), vec3<i32>(u_input.a, 0i, u_input.a)), ~var_0.x), vec2<u32>(123398u & ~var_4.b, var_4.b) | vec2<u32>(0u, 84736u), _wgslsmith_clamp_u32(abs(1u), var_2.c.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, var_2.a, 0u), vec4<u32>(0u, 102568u, var_4.b, 1u) ^ vec4<u32>(0u, 1u, 23888u, 4294967295u))) & 18611u);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_4 {
    let var_0 = func_2(arg_0.a.zx);
    let var_1 = ~(-vec3<i32>(42930i, 1i, var_0.b << (firstTrailingBit(2560u) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.a);
    var var_3 = Struct_1(arg_0.a, _wgslsmith_mult_u32(~select(var_0.d.x, firstTrailingBit(u_input.b), all(vec3<bool>(arg_0.a.x, false, arg_0.a.x))), _wgslsmith_mod_u32(_wgslsmith_add_u32(func_2(vec2<bool>(arg_0.a.x, arg_0.a.x)).e, 1u), countOneBits(26147u))));
    let var_4 = Struct_4(false);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1658f - -161f), -2421f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1606f * 279f)))), _wgslsmith_f_op_f32(max(911f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-700f, -806f)) - _wgslsmith_f_op_f32(round(834f))))))), _wgslsmith_f_op_f32(-1503f * 120f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(573f)), _wgslsmith_div_f32(-777f, 1114f)))));
    let var_1 = all(vec2<bool>(true, true));
    var var_2 = vec2<i32>(-84772i, -1i);
    let var_3 = func_1(Struct_1(!(!select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(false, var_1, var_1, false), vec4<bool>(true, false, false, var_1))), 4294967295u), reverseBits(-2147483647i) | -countOneBits(_wgslsmith_mult_i32(25488i, var_2.x)));
    var var_4 = countOneBits(_wgslsmith_div_vec2_u32(~max(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 1u)), vec2<u32>(~1u, abs(40234u)))) >> (vec2<u32>(6743u << (u_input.b % 32u), u_input.b << (u_input.b % 32u)) % vec2<u32>(32u));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(552f, var_0.x, var_0.x), vec3<f32>(var_0.x, -854f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -317f, 1679f)))))));
    var var_5 = Struct_1(vec4<bool>(var_1, ((u_input.b < 1u) || (u_input.a >= -9788i)) | true, var_3.a, var_2.x < u_input.a), ~(min(abs(21909u), 1u) << (_wgslsmith_add_u32(~var_4.x, max(20393u, 15222u)) % 32u)));
    let var_6 = vec3<u32>(_wgslsmith_add_u32(min(1u, ~var_4.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_4.x, 0u), _wgslsmith_div_u32(1u, 4294967295u))), select(reverseBits(var_4.x), var_5.b, true), ~reverseBits(var_5.b)) >> (~(~firstTrailingBit(select(vec3<u32>(43717u, var_4.x, var_5.b), vec3<u32>(1u, 0u, var_4.x), vec3<bool>(var_3.a, true, false)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a, var_2.x, u_input.a)), -vec3<i32>(~1847i, ~var_2.x, i32(-1i) * -22350i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-494f, -270f, -1654f), vec3<f32>(1044f, 1099f, var_0.x), vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, 1709f, var_0.x))))), var_2.x, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(select(var_6 << (vec3<u32>(var_6.x, var_4.x, 1u) % vec3<u32>(32u)), ~var_6, !var_5.a.yxz), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 56159u, var_5.b), vec3<u32>(var_5.b, 0u, var_6.x), vec3<u32>(var_4.x, var_4.x, 6973u)), ~vec3<u32>(4294967295u, 0u, var_6.x))), var_6), var_0.x);
}

