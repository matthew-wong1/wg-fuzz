struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> vec4<bool> {
    return vec4<bool>(false, true, -540f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-457f - 1f))), true);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1055f, -335f)))))), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-9363i, _wgslsmith_add_i32(u_input.a.x, -5089i), u_input.a.x, -2147483647i), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, 29441i, 49391i), _wgslsmith_sub_vec4_i32(vec4<i32>(-34211i, u_input.a.x, -2147483647i, 25346i), vec4<i32>(-24160i, u_input.a.x, u_input.a.x, 1i))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, var_0.a.x))))))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-(vec4<i32>(17302i, 4444i, -19019i, var_0.b.x) >> (vec4<u32>(u_input.b.x, 19112u, u_input.c, 1u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(10066i, -1i, u_input.a.x, 18604i) | var_0.b, vec4<i32>(var_0.b.x, 33097i, -2147483647i, 8139i) & vec4<i32>(-10595i, u_input.a.x, -1i, var_0.b.x))), _wgslsmith_div_vec4_i32(firstLeadingBit(var_0.b), -select(vec4<i32>(var_0.b.x, 2147483647i, var_0.b.x, 2147483647i), var_0.b, vec4<bool>(true, false, false, false)))));
    return vec2<bool>((false | (~4294967295u <= u_input.c)) | (var_1.a.x < var_0.a.x), !(!all(vec4<bool>(true, true, true, true))));
}

fn func_2() -> vec3<f32> {
    var var_0 = !(!select(vec2<bool>(true, true), func_3(), select(vec2<bool>(false, true), vec2<bool>(true, true), func_1().yx)));
    var_0 = select(vec2<bool>(true, all(!func_3())), func_1().zz, !var_0.x);
    var_0 = !vec2<bool>(false, !var_0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1312f, 161f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f)))), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(37304i, u_input.a.x), u_input.a.zy), max(~(0i << (u_input.b.x % 32u)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-47221i, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(23475i, u_input.a.x, -5085i), u_input.a, u_input.a))), -u_input.a.x, -81711i));
    var var_2 = vec3<i32>(var_1.b.x, u_input.a.x, var_1.b.x);
    return vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x - -304f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1157f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(638f * -1093f))))), 1f);
    var var_1 = func_1();
    let var_2 = u_input.a.x;
    let var_3 = countOneBits(73237u);
    let var_4 = Struct_1(var_0.yx, _wgslsmith_add_vec4_i32(-select(~vec4<i32>(u_input.a.x, u_input.a.x, 42886i, -26804i), vec4<i32>(u_input.a.x, u_input.a.x, var_2, u_input.a.x) >> (vec4<u32>(u_input.b.x, var_3, var_3, u_input.c) % vec4<u32>(32u)), var_1.x), vec4<i32>(1i, firstLeadingBit(1i | u_input.a.x), 2147483647i, u_input.a.x)));
    let var_5 = var_4;
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1227f + 351f), 881f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_5.a.x, -591f, -1000f), vec3<f32>(var_4.a.x, var_0.x, var_4.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, -716f, var_0.x) * vec3<f32>(1556f, 816f, var_4.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1103f, var_4.a.x, var_5.a.x)) + _wgslsmith_f_op_vec3_f32(func_2()))), !vec3<bool>(!any(vec4<bool>(false, var_1.x, var_1.x, false)), var_1.x, -1i != var_4.b.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), var_5.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b.x, var_5.b, 0i, (max(vec2<i32>(-2147483647i, var_4.b.x), abs(var_5.b.xw)) & var_4.b.xy) >> ((select(_wgslsmith_mult_vec2_u32(u_input.b.xw, vec2<u32>(var_3, var_3)), ~vec2<u32>(u_input.b.x, var_3), var_1.x) & ~u_input.b.ww) % vec2<u32>(32u)));
}

