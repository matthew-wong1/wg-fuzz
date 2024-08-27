struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 1u, 1u);

var<private> global1: array<vec2<i32>, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> bool {
    global0 = vec3<u32>(26875u, 57692u, _wgslsmith_div_u32(_wgslsmith_sub_u32(firstTrailingBit(global0.x), 1u), global0.x) >> (global0.x % 32u));
    let var_0 = arg_2.c;
    var var_1 = Struct_2(387i, Struct_1(vec3<bool>((-28801i < u_input.d) && !arg_2.a.x, all(!vec4<bool>(true, arg_2.a.x, arg_2.a.x, false)), any(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(select(0u, global0.x, arg_2.a.x), ~arg_1), global0.zy), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1530f, var_0)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, 362f) - vec2<f32>(var_0, -1212f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, var_0, -807f), vec4<f32>(var_0, 459f, 860f, var_0))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-220f, var_0, -109f, var_0) + vec4<f32>(672f, 336f, 1155f, 830f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(952f, -1313f, arg_2.c, var_0)))))))));
    var var_2 = arg_2.a.x;
    var var_3 = reverseBits(vec4<u32>(arg_2.b, u_input.c, ~global0.x, ~arg_2.b));
    return all(!(!select(!vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, var_1.b.a.x), vec4<bool>(true, false, true, true), !arg_2.a.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<bool>) -> vec3<u32> {
    var var_0 = arg_3;
    var var_1 = ~select(vec2<i32>(2147483647i, u_input.d), _wgslsmith_sub_vec2_i32(arg_0.yy, vec2<i32>(5077i, -52847i)), vec2<bool>(true, !arg_3.x)) << (~(~(vec2<u32>(4294967295u, u_input.a) & (vec2<u32>(arg_1, 1u) ^ global0.zx))) % vec2<u32>(32u));
    let var_2 = Struct_1(select(!select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, arg_3.x, false), arg_3.x), vec3<bool>(arg_3.x, arg_3.x, true), select(vec3<bool>(true, arg_3.x, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, var_0.x, arg_3.x))), !vec3<bool>(func_3(vec2<i32>(arg_2.x, 2147483647i), 1u, Struct_1(vec3<bool>(arg_3.x, var_0.x, arg_3.x), u_input.c, 493f)), !arg_3.x, !arg_3.x), select(vec3<bool>(!var_0.x, true, var_0.x), select(!vec3<bool>(arg_3.x, arg_3.x, false), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, arg_3.x, false)), vec3<bool>(true, var_0.x, false)), select(true, any(vec4<bool>(false, false, arg_3.x, var_0.x)), all(vec4<bool>(var_0.x, false, true, arg_3.x))))), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1003f));
    let var_3 = (_wgslsmith_mult_i32(1i, -61217i) <= arg_2.x) && var_2.a.x;
    var_1 = arg_2.xx;
    return firstTrailingBit(~firstLeadingBit(~(vec3<u32>(arg_1, 56513u, 0u) | vec3<u32>(var_2.b, var_2.b, 4294967295u))));
}

fn func_1() -> u32 {
    global0 = ~(~(~abs(vec3<u32>(4294967295u, global0.x, 1516u) & vec3<u32>(u_input.c, 0u, 0u))));
    var var_0 = vec2<u32>(~_wgslsmith_mod_u32(~u_input.a, global0.x), u_input.b);
    var var_1 = Struct_1(!vec3<bool>(all(vec4<bool>(true, true, true, true)), (u_input.d >> (global0.x % 32u)) < 1i, false), reverseBits(13538u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-622f * -267f))))));
    global0 = reverseBits(func_2((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, -1i, u_input.d), vec4<i32>(u_input.d, 16243i, 59736i, u_input.d), vec4<i32>(u_input.d, 2147483647i, 1i, u_input.d)) ^ abs(vec4<i32>(-7313i, 1i, u_input.d, 1i))) | vec4<i32>(_wgslsmith_add_i32(u_input.d, -2147483647i), _wgslsmith_add_i32(-2147483647i, u_input.d), i32(-1i) * -1i, u_input.d), _wgslsmith_clamp_u32(countOneBits(var_0.x), u_input.b, abs(1u)), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(-40986i, u_input.d, u_input.d, u_input.d)), vec4<i32>(u_input.d, -u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-66118i, 45307i, -1i), vec3<i32>(u_input.d, -24610i, u_input.d)), u_input.d)), vec2<bool>(var_1.a.x || (var_1.a.x & true), true)));
    var_0 = firstTrailingBit(vec2<u32>(countOneBits(u_input.b), ~(~43237u)));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.d) >> (4294967295u % 32u), ~(-35620i), u_input.d, u_input.d) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(global0.zy, abs(vec2<u32>(143845u, 4294967295u))), func_1(), ~u_input.a, u_input.b), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.a, u_input.b), vec4<u32>(57476u, 67571u, u_input.b, global0.x), vec4<u32>(1u, u_input.c, global0.x, 0u)) | ~vec4<u32>(4294967295u, 1u, u_input.a, 1u))) % vec4<u32>(32u));
    global1 = array<vec2<i32>, 1>();
    let var_1 = Struct_1(vec3<bool>(true, true, true), min(4294967295u, 1u) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), func_2(vec4<i32>(-2147483647i, 2147483647i, var_0.x, u_input.d), 24971u, vec4<i32>(u_input.d, u_input.d, 36729i, 2147483647i), vec2<bool>(false, false))), -348f);
    global0 = vec3<u32>(8301u, 60550u, u_input.b);
    let var_2 = var_1;
    var var_3 = ~_wgslsmith_mod_u32(var_2.b, firstTrailingBit(24604u));
    var var_4 = Struct_2(var_0.x, var_1, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(-935f, _wgslsmith_f_op_f32(step(182f, 490f)), !var_2.a.x)), 271f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-837f, var_2.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(759f, 136f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.c)))), !(_wgslsmith_f_op_f32(f32(-1f) * -1906f) <= var_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, -472f, 808f, 808f), vec4<f32>(-204f, -1000f, 461f, -645f)) * vec4<f32>(-1000f, -357f, var_2.c, -1201f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(113f, -1215f, 227f, -1202f)))))));
    var var_5 = _wgslsmith_sub_u32(33702u, _wgslsmith_dot_vec3_u32(~vec3<u32>(3122u, 73490u ^ var_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 6789u, 12331u, 1u), vec4<u32>(1u, 51449u, 1u, var_1.b))), vec3<u32>(0u, _wgslsmith_div_u32(global0.x, var_2.b), ~firstTrailingBit(global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x, 1242f, ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.yy, vec2<u32>(u_input.b, 4294967295u), vec2<u32>(73038u, 0u)), vec2<u32>(u_input.c, 9051u)) | ~(vec2<u32>(var_4.b.b, global0.x) & (vec2<u32>(global0.x, 74198u) << (vec2<u32>(4294967295u, var_2.b) % vec2<u32>(32u)))), ~(global0.yy & vec2<u32>(4294967295u, var_4.b.b)) ^ ~countOneBits(firstTrailingBit(global0.zx)));
}

