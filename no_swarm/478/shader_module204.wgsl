struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<i32> {
    let var_0 = 95175i;
    let var_1 = Struct_1(abs(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(28928i, var_0, var_0), vec3<i32>(var_0, var_0, var_0), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -77i, var_0), vec3<i32>(0i, 15592i, -23150i)))), reverseBits(select(vec2<i32>(~var_0, var_0), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(var_0, var_0)), vec2<i32>(9164i, var_0)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)))), -236f, 2147483647i);
    let var_2 = _wgslsmith_clamp_i32(var_0, 5247i, var_0);
    var var_3 = any(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    var_3 = false;
    return vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(-36005i, -2147483647i | var_0), abs(19648i), firstLeadingBit(1i)), ~(-13694i), var_0);
}

fn func_2() -> Struct_1 {
    return Struct_1(reverseBits(~(func_3() >> (~vec3<u32>(u_input.a, u_input.a, u_input.b.x) % vec3<u32>(32u)))), vec2<i32>(1i, -2147483647i), _wgslsmith_f_op_f32(trunc(-325f)), -(_wgslsmith_dot_vec4_i32(-vec4<i32>(7920i, 14362i, -5359i, -8333i), firstTrailingBit(vec4<i32>(-1i, -1148i, 59142i, -1082i))) | ~(i32(-1i) * -1i)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> bool {
    var var_0 = func_2();
    var var_1 = var_0.b.x;
    var_0 = Struct_1(arg_0, vec2<i32>(2147483647i, -arg_0.x), arg_3.x, 0i);
    var var_2 = Struct_1(arg_0, vec2<i32>(arg_0.x, _wgslsmith_dot_vec2_i32(select(-vec2<i32>(19077i, 1i), vec2<i32>(arg_0.x, var_0.d), arg_1.xz), _wgslsmith_sub_vec2_i32(reverseBits(var_0.a.xx), ~var_0.b))), arg_3.x, var_0.a.x);
    var_2 = Struct_1(max(countOneBits(var_0.a), reverseBits(vec3<i32>(0i, 12627i, arg_0.x))) << (u_input.b.zyy % vec3<u32>(32u)), vec2<i32>(-14723i, var_0.a.x ^ var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_div_i32(~(-22167i), var_2.d << (countOneBits(4294967295u) % 32u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(all(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(vec3<i32>(-12245i, -5365i, 24165i), vec3<bool>(false, false, true), u_input.b.yw, vec4<f32>(1467f, 225f, -1000f, 2161f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f + 486f) + -1131f)))));
}

