struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: f32) -> bool {
    var var_0 = Struct_4(true, !arg_1.d.a.x | arg_1.b, 0u, arg_1.d);
    return true;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: f32, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_4(arg_0.a.a, arg_0.a.a, ~(~u_input.b ^ 4726u), Struct_1(vec4<bool>(true && any(vec4<bool>(false, true, false, arg_0.a.a)), !all(vec2<bool>(true, arg_0.a.a)), arg_0.a.a, func_3(arg_0, Struct_4(false, arg_0.a.a, u_input.b, Struct_1(vec4<bool>(true, false, arg_0.a.a, arg_0.a.a), -1099f, vec3<f32>(arg_2, arg_2, arg_2))), -u_input.a, _wgslsmith_f_op_f32(select(-1485f, arg_2, arg_0.a.a)))), _wgslsmith_f_op_f32(arg_2 - arg_2), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), -378f, -1225f)));
    let var_1 = var_0;
    var var_2 = arg_0;
    let var_3 = 564f;
    var var_4 = select(vec4<bool>(58090u < u_input.b, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -932f)) <= _wgslsmith_f_op_f32(ceil(var_1.d.b)), true), var_0.d.a, arg_0.a.a);
    return Struct_3(Struct_2(!select(var_0.a, !var_4.x, !var_4.x)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = Struct_1(vec4<bool>(arg_2.a.a, !(u_input.a.x == select(u_input.a.x, u_input.c, arg_0)), false, true), _wgslsmith_div_f32(731f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-414f, -1030f, false)), -1064f), -366f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(368f)), _wgslsmith_f_op_f32(-257f - -348f), -845f))))));
    let var_1 = ~firstTrailingBit(~select(~vec3<u32>(u_input.b, u_input.d, arg_1), ~vec3<u32>(arg_1, 101984u, 4294967295u), !vec3<bool>(arg_0, false, false)));
    var var_2 = true;
    var var_3 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.c, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.c, -1i, u_input.c, u_input.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-2682i, u_input.a.x, u_input.c, u_input.c))), -14412i, u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 8462i, -1i), vec3<i32>(u_input.c, u_input.c, 2147483647i)), vec3<i32>(-1i, -21973i, 2147483647i)) ^ -2147483647i));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, var_0.b, var_0.c.x, -1221f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, var_0.b, -1042f, -1473f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1163f, var_0.c.x, 950f, -1198f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1624f, 493f, var_0.c.x, var_0.b)), vec4<f32>(1687f, var_0.b, 772f, var_0.b)))))));
    return all(vec4<bool>(!arg_2.a.a, all(vec4<bool>(true, arg_2.a.a, false & arg_2.a.a, false)), true && arg_2.a.a, var_3.x <= u_input.c));
}

fn func_1(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = ~(-26368i);
    let var_1 = arg_0;
    let var_2 = Struct_3(Struct_2(func_4(true, ~65083u << (0u % 32u), func_2(Struct_3(Struct_2(true)), vec2<i32>(-18638i, -1i) >> (vec2<u32>(arg_0.c, u_input.d) % vec2<u32>(32u)), -503f, -u_input.c))));
    let var_3 = func_2(var_2, ~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-880f))) + _wgslsmith_f_op_f32(-var_1.d.c.x)), 40393i);
    let var_4 = _wgslsmith_f_op_f32(min(2085f, _wgslsmith_div_f32(-683f, 944f)));
    return vec3<bool>(select(true, func_2(Struct_3(var_3.a), vec2<i32>(~var_0, -var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.c.x - -1772f) * _wgslsmith_f_op_f32(ceil(803f))), 1i).a.a, arg_0.b), var_2.a.a, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(true, all(func_1(Struct_4(false, false, u_input.b, Struct_1(vec4<bool>(false, true, true, false), 2016f, vec3<f32>(-1000f, -432f, 1000f))))), true, !(u_input.c == -42724i)), select(vec4<bool>(false, true, func_2(Struct_3(Struct_2(false)), vec2<i32>(-7419i, u_input.c), -598f, u_input.a.x).a.a, true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !(-u_input.a.x != _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.c), vec3<i32>(-1i, u_input.a.x, u_input.a.x))));
    var var_1 = func_2(func_2(Struct_3(func_2(Struct_3(Struct_2(var_0.x)), ~vec2<i32>(7355i, u_input.a.x), -1730f, u_input.a.x).a), -(u_input.a & reverseBits(vec2<i32>(u_input.a.x, 74716i))), 1f, _wgslsmith_dot_vec2_i32(vec2<i32>(-40540i, -23322i) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), abs(abs(u_input.a)))), _wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.a), vec2<i32>(~u_input.c >> (u_input.d % 32u), u_input.c), _wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(~2147483647i, u_input.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1237f, 126f)))))), u_input.c).a;
    var_1 = Struct_2(false);
    var var_2 = ~(~reverseBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.d), vec2<u32>(u_input.b, 0u)))));
    var_1 = func_2(func_2(Struct_3(Struct_2(u_input.c <= u_input.a.x)), firstTrailingBit(-vec2<i32>(-1i, 83304i)), 225f, _wgslsmith_clamp_i32(0i, 0i, min(~(-60095i), _wgslsmith_sub_i32(-1i, u_input.c)))), vec2<i32>(27004i, ~(-1i)), -1000f, 7564i).a;
    var_1 = Struct_2(func_3(Struct_3(func_2(Struct_3(Struct_2(true)), u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_clamp_i32(5609i, 36256i, 1i)).a), Struct_4(true, true, select(59408u << (u_input.b % 32u), _wgslsmith_mod_u32(u_input.b, u_input.d), var_1.a), Struct_1(var_0, _wgslsmith_f_op_f32(-1857f - 1299f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(755f, 1309f, 1000f), vec3<f32>(1580f, -1000f, -534f))))), u_input.a, 1587f));
    let var_3 = Struct_1(!var_0, _wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(426f)), -1648f, -1000f)))));
    var var_4 = !func_1(Struct_4((14192u << (0u % 32u)) <= u_input.b, var_3.a.x, select(1u >> (u_input.d % 32u), 1u, true), var_3)).xz;
    var_2 = abs(56767u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2309f, var_3.b, 1000f, var_3.b)))), -4888i, var_3.c.xz);
}

