struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = ~vec2<i32>(u_input.a.x, -9490i);
    var var_2 = ~(u_input.a ^ reverseBits(vec4<i32>(max(-2147483647i, var_1.x), 8787i, -2147483647i, -1i << (1u % 32u))));
    let var_3 = Struct_1(var_0.a, var_0.b);
    var_2 = select(_wgslsmith_add_vec4_i32(-reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, var_2.x, 0i, u_input.a.x), vec4<i32>(var_2.x, -56267i, var_1.x, var_1.x))), -(~(~u_input.a))), u_input.a, select(!(!select(vec4<bool>(var_3.b, true, true, var_0.b), vec4<bool>(false, true, var_0.b, var_0.b), var_3.b)), vec4<bool>(all(select(vec4<bool>(true, true, false, var_3.b), vec4<bool>(false, true, var_3.b, true), vec4<bool>(arg_0.b, false, true, arg_0.b))), any(vec2<bool>(var_0.b, true)), true, var_3.b), !var_0.b));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = countOneBits(vec4<u32>(u_input.b.x, _wgslsmith_add_u32(~u_input.c, 24230u), u_input.c, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(26207u, 151097u), ~vec2<u32>(4294967295u, u_input.c)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c, u_input.c, 4294967295u), u_input.c))));
    var_0 = vec4<u32>(var_0.x, u_input.c, func_3(Struct_1(_wgslsmith_div_u32(~u_input.c, 11093u), arg_1.x != _wgslsmith_f_op_f32(min(618f, -1000f)))), 4294967295u);
    var var_1 = Struct_1(~max(0u, 1u), any(select(vec3<bool>(true, select(false, true, false), arg_1.x >= arg_1.x), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_1 = Struct_1(select(1u << (firstTrailingBit(var_0.x) % 32u), _wgslsmith_mult_u32(~u_input.b.x, 4294967295u), !any(vec3<bool>(var_1.b, true, var_1.b))) & min(min(u_input.b.x, ~47530u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 68517u, var_0.x, var_1.a), max(vec4<u32>(var_0.x, var_1.a, u_input.b.x, var_0.x), vec4<u32>(1u, var_1.a, 34991u, var_0.x)))), false);
    var_1 = Struct_1(4294967295u, false);
    return Struct_1(abs(4294967295u), var_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<bool>) -> bool {
    let var_0 = func_2(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.a.x, 37510i, u_input.a.x, u_input.a.x)) | (reverseBits(vec4<i32>(-87464i, -1i, u_input.a.x, 3070i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 1131u, u_input.c, u_input.b.x), vec4<u32>(51685u, arg_0.a, u_input.c, 4294967295u)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x & u_input.a.x, -2147483647i), u_input.a.x, 14255i, _wgslsmith_add_i32(-u_input.a.x, countOneBits(-1395i)))), vec3<f32>(1622f, 1765f, -484f));
    var var_1 = var_0;
    let var_2 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(341f, -448f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-1042f - -1774f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-876f, 1253f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(530f)) - _wgslsmith_f_op_f32(select(-797f, 1105f, arg_1)))))));
    var_1 = Struct_1(var_0.a, u_input.a.x <= -13471i);
    var_1 = func_2(-31516i, _wgslsmith_f_op_vec3_f32(var_2.yxw * var_2.wwz));
    return !any(!(!vec4<bool>(false, arg_3.x, arg_1, false)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = reverseBits(~20881i ^ (u_input.a.x ^ 1i));
    let var_2 = any(!(!select(!vec3<bool>(arg_2.b, arg_2.b, false), vec3<bool>(var_0, false, false), func_2(u_input.a.x, vec3<f32>(-985f, -938f, -1518f)).b)));
    var var_3 = _wgslsmith_div_vec2_u32(u_input.b, ~u_input.b);
    var var_4 = -1901f;
    return func_2(-6643i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), _wgslsmith_f_op_f32(-501f - -1124f), _wgslsmith_f_op_f32(453f + -1272f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -949f, -1766f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2471f, 1000f, -1279f)))), select(func_4(Struct_1(51518u, arg_2.b), arg_2.a != 1u, vec3<u32>(38818u, u_input.c, u_input.b.x) & vec3<u32>(20758u, 93240u, u_input.b.x), select(arg_1, vec2<bool>(var_2, var_0), var_0)), true, arg_2.b))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(vec2<i32>(-2147483647i, 2147483647i), vec2<bool>(true, !func_4(func_2(2147483647i, vec3<f32>(-1830f, 342f, 1807f)), true, vec3<u32>(15113u, u_input.b.x, 1u) & vec3<u32>(4294967295u, u_input.c, u_input.c), select(vec2<bool>(false, true), vec2<bool>(false, true), false))), Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x | 31206u, 1u), reverseBits(max(33490u, 50759u))), true));
    let var_1 = func_2(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1137f * 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2077f)) * _wgslsmith_f_op_f32(round(-142f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2213f * -1437f)))));
    var_0 = Struct_1(44796u, select(func_5(vec2<i32>(u_input.a.x, 40771i), vec2<bool>(var_1.b, var_1.b), var_1).b, true, any(!vec4<bool>(var_0.b, var_0.b, false, var_0.b))) && !all(!vec2<bool>(var_1.b, false)));
    var_0 = Struct_1(func_2(select(abs(-19051i), -u_input.a.x, true), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -577f), -1000f)).a, true);
    var_0 = var_1;
    return func_5(max(vec2<i32>(40792i, u_input.a.x), u_input.a.xz), select(!vec2<bool>(var_1.b || false, true), !(!select(vec2<bool>(true, true), vec2<bool>(var_0.b, true), vec2<bool>(true, var_0.b))), all(!(!vec2<bool>(var_0.b, true)))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(_wgslsmith_div_u32(0u, ~1u), ~(~1u), var_0.a, 29932u)), ~(-_wgslsmith_add_i32(43764i, 36597i)));
}

