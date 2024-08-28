struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec3<f32> {
    let var_0 = 202f;
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_1(false, var_1.x, select(vec3<i32>(-1i) * -vec3<i32>(arg_0, arg_0, 0i), ~_wgslsmith_add_vec3_i32(max(vec3<i32>(1i, u_input.a, 0i), vec3<i32>(arg_0, 65937i, u_input.b)), ~vec3<i32>(-7782i, -1i, arg_0)), !select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, false, false), vec3<bool>(var_1.x, var_1.x, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-435f)) * arg_1.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-767f, 133f, var_1.x))))))), reverseBits(min(-vec2<i32>(arg_0, u_input.b), -(~vec2<i32>(-66230i, 8627i)))));
    var_1 = select(vec3<bool>(var_0 < var_0, any(vec2<bool>(false, -609i >= u_input.b)), _wgslsmith_sub_u32(u_input.c.x, ~u_input.c.x) > 45402u), !(!(!(!vec3<bool>(var_1.x, var_2.b, false)))), any(vec2<bool>(var_1.x, var_1.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(arg_1.wxy + arg_1.wwy);
    return vec3<f32>(-212f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1020f - arg_1.x) * var_0))), _wgslsmith_div_f32(var_3.x, arg_1.x));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = Struct_2(vec3<i32>(2147483647i, 7056i, ~0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-772f, arg_1)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b) + vec3<f32>(-1289f, -828f, 1457f))))));
    var var_1 = vec4<f32>(-218f, _wgslsmith_div_f32(-278f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(328f))))), -185f, var_0.b.x);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), 1483f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.x)), -954f)), var_0.b.x, -1535f, arg_1), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, _wgslsmith_f_op_f32(f32(-1f) * -493f), -666f, -1028f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, -675f, 333f, 399f), vec4<f32>(353f, arg_0.b.x, arg_1, -203f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b.x)));
    global0 = ~u_input.c.yx;
    return 1u;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec2<bool>, arg_3: f32) -> vec4<u32> {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) <= _wgslsmith_f_op_f32(-arg_3), _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0, min(arg_0, arg_0), -9094i << (u_input.c.x % 32u)), -reverseBits(min(vec3<i32>(-20757i, u_input.a, -37489i), vec3<i32>(4462i, 2147483647i, 1i)))), arg_3, firstLeadingBit(select(vec2<i32>(-1i & u_input.a, 64279i), ~(~vec2<i32>(arg_0, 0i)), !arg_2.x | false)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, var_0.d)))));
    var_0 = Struct_1(any(arg_2), var_0.b, min(var_0.c, vec3<i32>(countOneBits(2147483647i) >> (abs(arg_1) % 32u), ~2147483647i, firstLeadingBit(u_input.a))), -743f, min(_wgslsmith_sub_vec2_i32(select(var_0.e, vec2<i32>(0i, u_input.a), false) >> ((u_input.c.zz | u_input.c.yy) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(var_0.c.zz, var_0.c.xx) ^ ~var_0.e), -_wgslsmith_div_vec2_i32(var_0.c.zx, vec2<i32>(911i, 0i)) ^ _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(arg_0, -1i)), _wgslsmith_sub_vec2_i32(var_0.c.zx, var_0.e))));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(max(arg_1, u_input.c.x)), global0.x, min(arg_1, 20092u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, 0u), ~39777u, _wgslsmith_dot_vec3_u32(u_input.c.yzw, vec3<u32>(40048u, 1u, 1u)))) << (u_input.c % vec4<u32>(32u)), u_input.c, ~select(u_input.c, vec4<u32>(global0.x >> (global0.x % 32u), ~12256u, global0.x | u_input.c.x, ~u_input.c.x), true));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> bool {
    let var_0 = ~func_5(_wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.a), func_4(Struct_2(-vec3<i32>(u_input.b, -2147483647i, u_input.b), _wgslsmith_f_op_vec3_f32(func_3(arg_1.x, vec4<f32>(1176f, arg_0.x, arg_0.x, 390f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1000f)), arg_0.x))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), false), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), false), _wgslsmith_f_op_f32(-899f + arg_0.x));
    global0 = u_input.c.xz;
    global0 = var_0.zx | select(u_input.c.zz, u_input.c.xz, vec2<bool>(true, true));
    let var_1 = 38888u;
    global0 = ~_wgslsmith_clamp_vec2_u32(func_5(28448i ^ _wgslsmith_sub_i32(arg_1.x, -1i), firstLeadingBit(24557u), vec2<bool>(true, true), -902f).yw, abs(var_0.wx), vec2<u32>(~4294967295u, 38927u));
    return !(!(var_0.x > func_4(Struct_2(arg_1.xyw, arg_0), _wgslsmith_f_op_f32(trunc(-870f)))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: u32) -> vec2<bool> {
    let var_0 = vec4<bool>(true, func_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)), -(vec4<i32>(0i, 2147483647i, arg_1.a.x, -1i) >> (vec4<u32>(arg_3, 23319u, 101094u, 0u) % vec4<u32>(32u)))) || all(vec4<bool>(true, true, false | arg_0, !arg_2.x)), true, false);
    var var_1 = var_0.zz;
    global0 = abs(~(~vec2<u32>(5983u, u_input.c.x))) >> (reverseBits(u_input.c.xw) % vec2<u32>(32u));
    var_1 = arg_2.xy;
    var var_2 = false;
    return !select(select(select(var_0.zw, vec2<bool>(true, var_0.x), vec2<bool>(var_1.x, false)), var_0.zz, true), arg_2.ww, arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(global0.x, u_input.c.x) ^ global0.x, 1u)) & _wgslsmith_add_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 23585u), u_input.c.zy), 30888u), (u_input.c.zz | u_input.c.wx) & u_input.c.yy, select(vec2<bool>(false, false), vec2<bool>(false, false), func_1(false, Struct_2(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<f32>(-908f, 2876f, -1449f)), vec4<bool>(true, false, true, true), u_input.c.x))), select(~vec2<u32>(global0.x, 1u), ~firstLeadingBit(vec2<u32>(15723u, u_input.c.x)), all(vec2<bool>(true, true))));
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), -7490i), countOneBits(vec2<i32>(u_input.b, 1i)), countOneBits(reverseBits(vec2<i32>(1i, 1i)) >> (u_input.c.wy % vec2<u32>(32u))));
    let var_1 = Struct_1(0u != (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 41019u, u_input.c.x, 0u), firstTrailingBit(u_input.c)) ^ _wgslsmith_mod_u32(1u, u_input.c.x)), !(!func_2(vec3<f32>(1639f, -1087f, 550f), firstTrailingBit(vec4<i32>(var_0.x, u_input.b, u_input.a, var_0.x)))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(41973i, var_0.x << (103189u % 32u), _wgslsmith_clamp_i32(2147483647i, var_0.x, 34667i)), ~select(vec3<i32>(u_input.a, -57259i, var_0.x), vec3<i32>(39348i, 9897i, var_0.x), true)), vec3<i32>(_wgslsmith_sub_i32(-1i, u_input.b), ~19785i, -u_input.a)), -1200f, ~(~(~var_0)));
    var var_2 = ~(~var_1.c.yz);
    var var_3 = -(((~(-8546i) & _wgslsmith_div_i32(u_input.a, var_2.x)) & reverseBits(u_input.a)) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(var_1.e.x, var_1.e.x, 0i), var_1.c, vec3<bool>(var_1.b, true, var_1.a)), _wgslsmith_mult_vec3_i32(var_1.c, var_1.c)), vec3<i32>(~(-5344i), firstLeadingBit(var_2.x), ~(-87923i))));
    let x = u_input.a;
    s_output = StorageBuffer(min(min(~vec3<i32>(var_0.x, var_2.x, 11849i), ~(var_1.c & vec3<i32>(var_0.x, var_0.x, u_input.b))), max(-(vec3<i32>(var_2.x, var_1.c.x, var_0.x) | var_1.c), ~vec3<i32>(var_1.e.x, 2147483647i, u_input.a) | var_1.c)), -vec3<i32>(var_1.e.x, -18581i, -var_1.e.x), 2147483647i);
}

