struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0;
    var var_1 = false;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(sign(var_0.b.b.a)), false)), vec3<i32>(-(~_wgslsmith_dot_vec2_i32(var_0.b.b.b.yy, arg_0.a.b.zz)), -1i, -max(0i, i32(-1i) * -1i)));
    let var_3 = Struct_2(~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -14909i, -2147483647i, -2147483647i), select(vec4<i32>(10472i, 0i, -27587i, arg_1), vec4<i32>(arg_1, -25367i, arg_1, arg_0.a.b.x), vec4<bool>(false, false, false, true))), firstLeadingBit(arg_2.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - 629f), var_2.b));
    let var_4 = any(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f), var_0.c)));
}

fn func_2() -> vec4<i32> {
    var var_0 = -642f;
    var_0 = -197f;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, 2147483647i, -21090i), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, 1i), 2147483647i, -2147483647i))), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -27348i, 1i), ~max(vec3<i32>(-14750i, -14541i, 2147483647i), vec3<i32>(-31530i, 0i, -2147483647i))), Struct_1(-1370f, vec3<i32>(-21158i, 1i, -2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(390f + 1308f), 179f));
    var_0 = 295f;
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(-var_1.b.b.a))), -vec3<i32>(-15318i, 0i, 1i)), Struct_2(-7449i, var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(var_1.c, var_1.b.b.b), Struct_2(var_1.b.b.b.x, var_1.a), var_1.c), var_1.b.b.b.x, Struct_1(var_1.c, var_1.b.b.b))), _wgslsmith_f_op_f32(max(297f, var_1.c))))));
    return vec4<i32>(var_1.a.b.x >> (u_input.c.x % 32u), firstTrailingBit(abs(-var_1.a.b.x)), abs(i32(-1i) * -var_1.b.b.b.x), _wgslsmith_div_i32(~5012i, abs(-firstTrailingBit(-2693i))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> f32 {
    let var_0 = -2147483647i;
    var var_1 = ~((min(func_2(), -vec4<i32>(var_0, 1i, var_0, 2147483647i)) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 1i, -8405i, var_0), vec4<i32>(1i, 5456i, 24729i, 3836i))) ^ func_2());
    var_1 = -countOneBits(vec4<i32>(-20977i, ~58684i, _wgslsmith_dot_vec3_i32(var_1.xyz, var_1.xwx), ~0i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, 77927u, 1u) >> (vec4<u32>(1u, 28140u, arg_0, 0u) % vec4<u32>(32u)), reverseBits(vec4<u32>(34019u, u_input.b.x, 36990u, u_input.c.x))) % vec4<u32>(32u)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), ~(~vec3<i32>(-6471i, var_0, var_0) >> (u_input.b.xzz % vec3<u32>(32u)))), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_1.x), var_1.yy), -var_1.x), var_1.wzz), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), abs(var_1.wxw))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, -1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(674f - 437f) + _wgslsmith_f_op_f32(-438f - _wgslsmith_f_op_f32(-1141f - -348f)))));
    var var_3 = -1i;
    return -878f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(-24080i, 1i), select(~abs(-4257i), _wgslsmith_mult_i32(-1i, 0i), false), ~_wgslsmith_div_i32(27760i, ~min(-2147483647i, 49322i)), 1i);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<f32>(-822f, -621f, 1371f, -692f), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))))))));
    var var_2 = Struct_2(9454i, Struct_1(-2227f, ~var_0.yyz));
    var_2 = Struct_2(var_0.x, Struct_1(728f, vec3<i32>(var_2.a, -3373i, 34436i)));
    let var_3 = select(vec3<bool>(any(vec2<bool>(true, true)), true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, false, true)))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, abs(2147483647i) != var_0.x), vec3<bool>((var_2.b.a < 194f) || all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)), true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false)), all(vec2<bool>(true, true)))), select(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(all(vec3<bool>(true, false, true)), true, all(vec4<bool>(false, false, true, true))), true), select(vec3<bool>(true, true, any(vec3<bool>(true, false, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, false, false), false), vec3<bool>(select(true, false, false), true, true)), false));
    var_1 = 1216f;
    var_2 = Struct_2(i32(-1i) * -_wgslsmith_sub_i32(var_2.b.b.x, var_2.a), var_2.b);
    let var_4 = firstLeadingBit(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~9583u, -751f, select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4, firstTrailingBit(-1i), 1i >> (u_input.a.x % 32u)), var_0.zxw), firstTrailingBit(-21064i), var_3.x), u_input.c.x);
}

