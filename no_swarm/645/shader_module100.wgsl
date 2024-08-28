struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(703f, 629f)))));
    var var_1 = _wgslsmith_f_op_f32(ceil(var_0));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0)));
    var_1 = _wgslsmith_f_op_f32(721f - _wgslsmith_f_op_f32(f32(-1f) * -179f));
    var var_2 = 1000f;
    return false;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = true;
    let var_1 = ~_wgslsmith_sub_vec3_u32(firstLeadingBit(max(~vec3<u32>(0u, u_input.a.x, 66717u), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.b, arg_2.b, u_input.a.x), vec3<u32>(1u, u_input.b.x, 34558u)))), u_input.a.zxw);
    var_0 = func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1653f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-348f)), 909f))), _wgslsmith_f_op_f32(470f + _wgslsmith_f_op_f32(f32(-1f) * -702f)), -884f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -195f, 113f, -1229f) + vec4<f32>(-1199f, 1784f, 736f, -845f)))))));
    var_0 = arg_2.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1038f, -1812f)) + var_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-252f, -223f)))));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = countOneBits(~(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, arg_0, arg_0), -vec3<i32>(arg_0, -16978i, -16187i)) ^ -5605i));
    var_0 = abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, 1i, 630i), vec4<i32>(arg_0, -24671i, 8310i, 1i))), -abs(vec2<i32>(-59103i, arg_0))), ~abs(-vec2<i32>(arg_0, arg_0))));
    var var_1 = arg_0;
    let var_2 = -303f;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, 1961f), vec2<f32>(794f, var_2)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(383f * var_2))), _wgslsmith_f_op_f32(min(-176f, _wgslsmith_f_op_f32(-101f * -1045f))))));
    return false && any(vec2<bool>(true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(3093i, -26358i, 1i), 0i, Struct_1(false, 42956u, vec4<i32>(-1i, 2147483647i, 0i, 18340i), 2147483647i))) - -1000f))), _wgslsmith_f_op_f32(348f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -730f))))));
    var var_2 = Struct_1(func_3(i32(-1i) * -16655i), countOneBits(~_wgslsmith_mult_u32(u_input.b.x << (u_input.b.x % 32u), _wgslsmith_sub_u32(u_input.b.x, u_input.a.x))), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-2147483647i, -13771i, 1i, -44703i), vec4<i32>(-27584i, 3632i, 7490i, -2147483647i)) << (u_input.a % vec4<u32>(32u))), ~_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(0i, 29249i)), firstTrailingBit(-vec2<i32>(-2147483647i, 5308i))));
    let var_3 = vec4<bool>(!any(vec3<bool>(select(false, false, true), var_2.a, -62833i >= var_2.c.x)), !func_3(var_2.c.x), !all(!select(vec3<bool>(true, var_0, var_2.a), vec3<bool>(var_2.a, false, var_0), false)), var_0);
    var var_4 = abs(30441u);
    var var_5 = Struct_2(_wgslsmith_dot_vec3_i32(var_2.c.zxz, abs(vec3<i32>(i32(-1i) * -24099i, var_2.c.x, -1i))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1677f * -371f))) < var_1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 38761u), vec2<u32>(_wgslsmith_div_u32(var_2.b, 8262u), _wgslsmith_clamp_u32(var_2.b, u_input.a.x, 0u))), ~min(vec4<i32>(-34408i, 2147483647i, -33671i, -1i) | vec4<i32>(var_2.c.x, 0i, 2147483647i, -60332i), _wgslsmith_sub_vec4_i32(var_2.c, var_2.c)), 21267i), Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), var_2.c.yw) == var_2.d, ~max(_wgslsmith_add_u32(44995u, 1u), ~var_2.b), firstTrailingBit(var_2.c), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(11822i, var_2.d), -32596i | var_2.d)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1848f, -292f, 648f), vec3<f32>(-1404f, var_1.x, var_1.x))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-838f, var_1.x, var_1.x))))), vec3<f32>(_wgslsmith_div_f32(-686f, var_1.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, 1000f)))), var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(var_1.x)), -1i, vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-14744i, var_2.d), var_2.c.yx), _wgslsmith_sub_i32(3091i, -1i), var_2.d << (4294967295u % 32u)), ~countOneBits(1i), Struct_1(true, _wgslsmith_clamp_u32(45760u, 0u, 42891u), vec4<i32>(var_2.d, var_5.c.d, var_5.c.d, var_2.c.x) | vec4<i32>(2147483647i, 55751i, var_5.a, var_2.c.x), ~0i))), _wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_5.c.c.zzz, var_2.c.x, var_5.b)))) + -2181f));
}

