struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32) -> vec2<i32> {
    return vec2<i32>(~1i | min(-27757i, abs(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x))), abs(~(-u_input.b.x)) | 2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = vec3<u32>(1012u, 1u, u_input.c.x);
    let var_1 = Struct_2(arg_0, arg_0);
    let var_2 = vec2<i32>(1i, _wgslsmith_mult_i32(-2147483647i << (firstLeadingBit(var_0.x) % 32u), arg_0.c)) & func_2(0u);
    var var_3 = var_1.b;
    var var_4 = Struct_2(arg_0, var_1.a);
    return var_1.a;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    let var_0 = ~vec4<u32>(min(1u, ~_wgslsmith_add_u32(0u, u_input.d)), min(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(13234u, 24916u), u_input.c), _wgslsmith_add_vec2_u32(u_input.a.yy, u_input.c)), ~reverseBits(u_input.a.x)), u_input.c.x, u_input.c.x);
    return firstTrailingBit(~(~max(min(vec4<i32>(-4620i, 0i, u_input.b.x, 2147483647i), vec4<i32>(arg_0.c, u_input.b.x, -1i, 19633i)), ~vec4<i32>(-1i, -25973i, arg_0.c, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(141f)))), -29265i, u_input.b.x, _wgslsmith_f_op_f32(round(-1296f))), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(-1i, -2147483647i) >> (vec2<u32>(u_input.d, 62092u) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(-max(vec4<i32>(var_0.c, var_0.c, 2147483647i, 2147483647i), vec4<i32>(-3077i, var_0.c, 0i, 50749i)), ~vec4<i32>(var_0.c, 30027i, 6809i, 2147483647i) << (u_input.a % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(func_3(func_1(Struct_1(1501f, u_input.b.x, var_0.b, 933f), vec2<i32>(38415i, var_0.c)), _wgslsmith_f_op_f32(ceil(629f))), vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, -45261i), ~(-1i), 30632i, max(~50712i, i32(-1i) * -29983i))));
    var_1 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, var_1.x, i32(-1i) * -24013i, ~15664i), _wgslsmith_div_vec4_i32(-vec4<i32>(0i, 57899i, var_0.c, 38589i), -vec4<i32>(u_input.b.x, 21276i, -2147483647i, 11174i))) << (~select(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(25767u, u_input.d, u_input.d, 40493u)) ^ firstLeadingBit(u_input.a), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, 69312u, u_input.c.x, 8268u)), ~u_input.a), select(true, true, true)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.d))))));
    var_1 = -vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 1i) | ~(~func_3(Struct_1(-1105f, -3924i, -24974i, var_0.d), var_0.a));
    var var_3 = false;
    var_1 = vec4<i32>(var_1.x, var_1.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -var_1.x, firstTrailingBit(var_0.c), 38455i), abs(vec4<i32>(var_1.x, -13051i, u_input.b.x, var_0.b) << (max(vec4<u32>(81097u, 4294967295u, u_input.a.x, u_input.c.x), u_input.a) % vec4<u32>(32u)))), -2147483647i);
    var var_4 = var_0;
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(sign(655f)), _wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d, -433f, var_5))))), vec4<i32>(~func_2(_wgslsmith_mult_u32(u_input.d, 0u)).x, _wgslsmith_mult_i32(-47726i, ~(-27339i)), u_input.b.x, -22615i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1594f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d))))), 1f);
}

