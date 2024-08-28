struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<i32>) -> bool {
    return all(vec3<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), true)), true, !(!any(vec4<bool>(false, false, false, false)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -444f) - _wgslsmith_f_op_f32(ceil(-450f)))))) != 1385f;
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = !select(arg_0.x, any(arg_0.yxx) && !(42490u <= u_input.b.x), arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(select(1000f, -412f, func_4(Struct_1(-_wgslsmith_mod_vec2_i32(vec2<i32>(63041i, 0i), vec2<i32>(-22926i, -2147483647i))), false, select(select(arg_0.xz, select(arg_0.ww, vec2<bool>(false, false), arg_0.x), arg_0.xz), vec2<bool>(!arg_0.x, true), func_3(Struct_1(vec2<i32>(0i, 1i)), -vec3<i32>(0i, 40925i, 20752i), vec3<i32>(-2147483647i, 0i, 1i))), Struct_1(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(-18291i, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(11147i, 1280i), vec2<i32>(4709i, -6955i), vec2<i32>(0i, 1i)))))));
    let var_2 = vec3<bool>(!func_3(Struct_1(-vec2<i32>(-2147483647i, -2147483647i)), ~vec3<i32>(0i, 10637i, -10995i) >> (vec3<u32>(u_input.a, u_input.a, 103130u) % vec3<u32>(32u)), vec3<i32>(max(22122i, 5122i), i32(-1i) * -2147483647i, firstLeadingBit(-21337i))), arg_0.x, arg_0.x);
    var var_3 = reverseBits(-15275i);
    var_3 = i32(-1i) * -1i;
    return var_2.x;
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = select(vec4<bool>(all(vec3<bool>(true, true, true)), func_2(vec4<bool>(true, true, true, true)), -firstTrailingBit(arg_0) <= -22681i, all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true))), vec4<bool>(true, true, false, max(firstTrailingBit(864u), ~96387u) >= u_input.c.x), vec4<bool>(true, func_3(Struct_1(vec2<i32>(1i, arg_0) << (vec2<u32>(94407u, u_input.b.x) % vec2<u32>(32u))), vec3<i32>(arg_0, -36126i, arg_0), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0, -62939i, arg_0) << (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), -vec3<i32>(arg_0, arg_0, -1i))), true, false));
    var_0 = !(!vec4<bool>(func_3(Struct_1(vec2<i32>(arg_0, arg_0)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0, -36127i), vec3<i32>(-18265i, 2147483647i, arg_0)), ~vec3<i32>(arg_0, arg_0, arg_0)), var_0.x, true, !any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))));
    var var_1 = Struct_1(~(-vec2<i32>(arg_0, arg_0)));
    let var_2 = !(!var_0.zxx);
    var var_3 = ~(abs(~vec4<u32>(u_input.a, u_input.c.x, 0u, u_input.a)) | ~(~(~vec4<u32>(40257u, u_input.b.x, 589u, 4294967295u))));
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(firstLeadingBit(~select(vec2<i32>(-24245i, 7265i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, false)))));
    let var_1 = vec2<u32>(u_input.c.x, 4294967295u);
    let var_2 = func_1(i32(-1i) * -1i);
    let var_3 = u_input.b;
    let var_4 = !vec2<bool>(all(vec4<bool>(true, true, true, true)), true);
    var var_5 = Struct_1(-vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -1i, -13412i, var_0.a.x), vec4<i32>(30365i, -1i, 46891i, var_2.a.x)), 4156i));
    var_5 = func_1(var_2.a.x);
    var var_6 = ~4061i;
    var var_7 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(~vec3<u32>(1u, 41658u, 62108u)), ~vec3<u32>(65290u, u_input.c.x, 4294967295u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, var_3.x, var_3.x), vec3<u32>(var_1.x, var_1.x, 36094u)), select(select(vec3<bool>(var_4.x, var_4.x, var_4.x), vec3<bool>(false, true, var_4.x), var_4.x), vec3<bool>(var_4.x, false, var_4.x), false)) | ~(~(~vec3<u32>(4294967295u, var_1.x, 12200u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, -646f, 448f, -382f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-724f, -760f, -996f, -1000f) - vec4<f32>(-281f, 833f, 720f, -1413f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1478f, 256f, -636f, 851f)) + vec4<f32>(313f, -1320f, -544f, -1406f))))));
}

