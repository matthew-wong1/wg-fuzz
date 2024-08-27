struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~(-2147483647i), _wgslsmith_clamp_i32(u_input.a, -1i ^ u_input.a, u_input.a), u_input.a), _wgslsmith_mult_vec4_i32(~(vec4<i32>(-1i, 51710i, u_input.a, 38078i) | vec4<i32>(u_input.a, -7937i, u_input.a, u_input.a)), ~(~vec4<i32>(-3860i, -26700i, u_input.a, -14767i)))), all(!vec3<bool>(true, all(vec3<bool>(false, true, true)), any(vec4<bool>(false, false, false, false)))), arg_0.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -195f)));
    let var_1 = ~min(min(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-50425i, var_0.a, 0i, var_0.a)), ~vec4<i32>(-3856i, 1916i, u_input.a, var_0.a)), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, var_0.a, -4583i, -19501i), vec4<i32>(u_input.a, var_0.a, u_input.a, -1i) << (vec4<u32>(var_0.c.x, arg_0.x, var_0.c.x, arg_0.x) % vec4<u32>(32u)))), vec4<i32>(~select(var_0.a, -2147483647i, var_0.b), 21928i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-5933i, -2147483647i), vec2<i32>(-5772i, var_0.a), vec2<bool>(true, var_0.b)), vec2<i32>(2147483647i, 1i)), firstLeadingBit(abs(u_input.a))));
    let var_2 = Struct_2(vec4<bool>(!var_0.b, !var_0.b, var_0.b, var_0.b));
    let var_3 = any(var_2.a.zx);
    let var_4 = !var_0.b;
    return vec4<bool>(var_0.b, var_4, false, all(select(!var_2.a.zzy, select(var_2.a.wyz, !var_2.a.yxw, all(vec4<bool>(false, var_3, true, var_0.b))), select(var_2.a.zzw, var_2.a.zwz, var_2.a.xzw))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, 497f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(617f, 136f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-281f, -1000f) - vec2<f32>(139f, -1989f)))))));
    return Struct_2(select(vec4<bool>(true, true, false, true == any(vec4<bool>(false, true, true, false))), vec4<bool>(false, true, !all(vec3<bool>(false, true, true)), true), !select(vec4<bool>(true, true, true, true), func_3(vec4<u32>(16387u, 26076u, 34203u, 1u)), true)));
}

fn func_1() -> Struct_2 {
    let var_0 = select(u_input.a, ~19619i | u_input.a, all(vec4<bool>(true, select(true, true, false), !all(vec4<bool>(false, true, false, true)), false)));
    let var_1 = u_input.a;
    var var_2 = 4294967295u;
    var_2 = ~(~(~(~23028u)));
    var_2 = 30614u;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = vec3<i32>(-_wgslsmith_dot_vec3_i32((vec3<i32>(1i, 1i, -60290i) << (vec3<u32>(arg_3.x, arg_3.x, 26618u) % vec3<u32>(32u))) | min(vec3<i32>(0i, -4081i, u_input.a), vec3<i32>(-2147483647i, 39988i, u_input.a)), select(max(vec3<i32>(u_input.a, u_input.a, -21544i), vec3<i32>(2147483647i, u_input.a, u_input.a)), -vec3<i32>(2147483647i, u_input.a, -2147483647i), true)), -reverseBits(u_input.a), reverseBits(u_input.a));
    var var_1 = func_2();
    let var_2 = Struct_1(~max(var_0.x, 1i), false, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, ~arg_3.x) >> (select(vec2<u32>(12584u, 56241u) & arg_3, vec2<u32>(0u, arg_3.x), arg_2.a.xw) % vec2<u32>(32u)), vec2<u32>(~(~4294967295u), 74753u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 1065f)) + 1f)), 1984f));
    var var_3 = vec2<u32>(~abs(1u), 0u << (var_2.c.x % 32u));
    var_3 = abs(vec2<u32>(abs(~11907u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(arg_3.x, var_3.x, 24134u, var_3.x)))) << (~arg_3 % vec2<u32>(32u));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs((vec2<u32>(1u, 1u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 85367u), vec2<u32>(17718u, 0u), vec2<u32>(117304u, 4294967295u))) | abs(~vec2<u32>(13665u, 503u)));
    var_0 = func_4(func_1(), _wgslsmith_add_u32(~_wgslsmith_mult_u32(~4294967295u, var_0.x), ~21942u), func_2(), max(vec2<u32>(~var_0.x, ~_wgslsmith_mult_u32(0u, 52780u)), vec2<u32>(var_0.x, var_0.x)));
    let var_1 = func_2();
    let var_2 = Struct_1(2147483647i, true, _wgslsmith_mult_vec2_u32(~max(vec2<u32>(10902u, 83412u), vec2<u32>(var_0.x, var_0.x)), vec2<u32>(var_0.x, ~var_0.x)) & firstLeadingBit(vec2<u32>(51221u, firstLeadingBit(4294967295u))), _wgslsmith_f_op_f32(select(825f, 1f, false)));
    var_0 = vec2<u32>(~2433u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(949f, 818f, var_2.d), vec3<f32>(416f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.d)) + _wgslsmith_f_op_f32(f32(-1f) * -1377f)))), _wgslsmith_f_op_f32(-132f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_div_f32(var_2.d, 540f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2100f))) * _wgslsmith_f_op_f32(floor(var_2.d))), countOneBits(max(vec3<u32>(6653u, 0u, 131737u) >> (vec3<u32>(var_2.c.x, 0u, 1u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, 30929u, 1u), vec3<u32>(var_2.c.x, 38836u, 0u)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.d, -551f, -1000f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-489f, 958f, var_2.d))), all(vec3<bool>(false, var_1.a.x, var_1.a.x)))))), vec3<f32>(_wgslsmith_f_op_f32(var_2.d * _wgslsmith_f_op_f32(sign(var_2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.d)) * _wgslsmith_f_op_f32(floor(var_2.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) + _wgslsmith_f_op_f32(1266f * var_2.d))))));
}

