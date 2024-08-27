struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = vec2<u32>(~_wgslsmith_div_u32(12698u, arg_0.d & u_input.b.x), firstLeadingBit(0u));
    var var_1 = !vec2<bool>(arg_0.b, true);
    var_1 = !vec2<bool>(!arg_1, true);
    var_1 = !select(vec2<bool>(all(vec4<bool>(true, arg_1, arg_1, true)), true), vec2<bool>(true, true), true);
    var_1 = !select(select(!(!vec2<bool>(false, arg_0.b)), select(vec2<bool>(false, false), vec2<bool>(true, true), arg_1), !select(vec2<bool>(false, arg_1), vec2<bool>(arg_0.b, arg_0.b), var_1.x)), vec2<bool>(!all(vec4<bool>(arg_1, arg_1, var_1.x, true)), any(!vec3<bool>(arg_0.b, true, false))), true);
    return arg_0.c;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, false | any(!vec4<bool>(true, true, arg_0.b, arg_0.b)), arg_0.e.x)) + 1493f);
    var_0 = arg_0.c;
    var_0 = arg_0.c;
    var_0 = _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.e.x, !any(!vec4<bool>(false, arg_0.b, true, arg_0.b)), _wgslsmith_f_op_f32(951f + _wgslsmith_f_op_f32(round(-734f))), 1u, firstTrailingBit(max(vec3<i32>(arg_0.e.x, arg_0.e.x, 3825i), arg_0.e) & countOneBits(arg_0.e))), true, select(~_wgslsmith_dot_vec2_i32(arg_0.e.zx, arg_0.e.xy), _wgslsmith_sub_i32(0i, 0i) >> ((~1u & ~u_input.c.x) % 32u), true)));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(310f, arg_0.c)))));
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_2(Struct_1(-10191i, true && all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2161f), _wgslsmith_f_op_f32(f32(-1f) * -436f)), ~(~(~25535u)), vec3<i32>(arg_0 & arg_0, arg_0, -arg_0)));
    var var_1 = min(select(~min(vec3<i32>(-35848i, 20104i, arg_0), ~vec3<i32>(var_0.e.x, 40436i, var_0.a)), var_0.e, -2147483647i == arg_0), firstTrailingBit(~vec3<i32>(func_2(Struct_1(arg_0, var_0.b, -1001f, 0u, vec3<i32>(var_0.a, arg_0, 1i))).a, -arg_0, -15434i >> (var_0.d % 32u))));
    let var_2 = ~(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(4294967295u, var_0.d, u_input.a.x, u_input.b.x)), ~(~vec4<u32>(4294967295u, u_input.c.x, 880u, u_input.c.x))) | ~max(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, var_0.d), vec4<u32>(4294967295u, var_0.d, 24298u, u_input.c.x)));
    return Struct_1(-abs(var_0.a), var_0.b, var_0.c, 77644u, vec3<i32>(-23968i, -33652i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, var_1.x, -2147483647i, -21873i), -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -54732i, 89560i, var_1.x), vec4<i32>(var_0.a, 32116i, var_1.x, 42719i)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(78100u, 18569u, u_input.b.x << (~49950u % 32u)), ~vec3<u32>(arg_0.x, firstLeadingBit(14989u), arg_3));
    var_0 = _wgslsmith_mult_u32(76833u, countOneBits(u_input.c.x));
    var var_1 = arg_1;
    let var_2 = ~reverseBits(arg_1.x) >> (~max((arg_3 ^ arg_3) >> ((arg_0.x ^ arg_3) % 32u), min(~1u, u_input.c.x & arg_3)) % 32u);
    var_1 = -vec4<i32>(-arg_1.x << (1u % 32u), var_2, reverseBits(abs(~1i)), reverseBits(func_2(Struct_1(arg_1.x, arg_2.b, -736f, arg_2.d, arg_2.e)).e.x));
    return select(!(!(!vec2<bool>(true, arg_2.b))), select(select(select(vec2<bool>(arg_2.b, true), !vec2<bool>(arg_2.b, arg_2.b), select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, arg_2.b), true)), select(vec2<bool>(arg_2.b, arg_2.b), select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(arg_2.b, true), vec2<bool>(true, arg_2.b)), vec2<bool>(true, true)), true), !select(!vec2<bool>(arg_2.b, false), vec2<bool>(false, false), arg_2.b), select(!vec2<bool>(arg_2.b, arg_2.b), select(vec2<bool>(true, arg_2.b), select(vec2<bool>(true, false), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, false)), !vec2<bool>(false, arg_2.b)), true)), !select(select(vec2<bool>(false, arg_2.b), !vec2<bool>(false, arg_2.b), !vec2<bool>(arg_2.b, true)), vec2<bool>(func_1(-49626i).b, arg_2.b), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.b.x);
    let var_1 = select(_wgslsmith_sub_i32(-7707i, -8326i), ~max(2147483647i, 1i), true);
    let var_2 = func_4(vec4<u32>(_wgslsmith_add_u32(abs(var_0), ~u_input.c.x) ^ countOneBits(u_input.a.x), _wgslsmith_mod_u32(firstTrailingBit(1u), ~u_input.b.x), ~3084u, ~u_input.b.x), -(~min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, -31633i, var_1, -13959i), vec4<i32>(var_1, var_1, var_1, var_1)), vec4<i32>(2147483647i, 13742i, -9589i, var_1))), func_1(-_wgslsmith_clamp_i32(2147483647i, i32(-1i) * -3407i, 5085i)), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, 28858u, max(var_0, 25149u))) & 1u);
    let var_3 = func_1(-var_1);
    let var_4 = any(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1492f + var_3.c) * var_3.c) < var_3.c, var_2.x, var_3.b));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c) - _wgslsmith_f_op_f32(func_3(Struct_1(var_3.e.x, var_4, var_3.c, 43386u, vec3<i32>(40099i, -1i, 2147483647i)), true, 51460i))))));
    var var_6 = false;
    var var_7 = func_2(var_3);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_3.c);
}

