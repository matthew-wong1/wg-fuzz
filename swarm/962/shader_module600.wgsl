struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_4,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> bool {
    var var_0 = vec4<u32>(u_input.d.x, _wgslsmith_mult_u32(~(~0u), 0u) >> (_wgslsmith_div_u32(98194u, u_input.d.x) % 32u), u_input.c.x, firstLeadingBit(_wgslsmith_mod_u32(u_input.d.x, ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x))));
    var var_1 = Struct_2(Struct_1(select(vec2<u32>(~0u, u_input.c.x << (u_input.d.x % 32u)), max(~vec2<u32>(u_input.d.x, 4294967295u), select(u_input.d.xx, vec2<u32>(4294967295u, 84044u), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, arg_0), false), vec2<bool>(true, arg_0), !vec2<bool>(arg_0, arg_0))), vec2<bool>(arg_0, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1578f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1553f))))), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.x, u_input.a.x, 54674i, 64991i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 55455i, arg_1.x), vec4<i32>(16080i, -1i, 0i, -28904i), vec4<i32>(2147483647i, 42278i, u_input.a.x, -44104i))), ~(-arg_1.x)) & u_input.b.yx, abs(u_input.d.zz), !vec3<bool>(arg_0, false, all(vec2<bool>(arg_0, arg_0)) & arg_0));
    var_1 = Struct_2(var_1.a, select(arg_1, u_input.b.xy, true), ~abs(u_input.d.zz), var_1.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(f32(-1f) * -2202f), _wgslsmith_f_op_f32(606f - -600f)))))));
    var_0 = u_input.d;
    return var_1.a.b.x;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> vec4<bool> {
    return !select(!vec4<bool>(u_input.a.x < 40021i, any(vec3<bool>(true, false, true)), true, false), select(vec4<bool>(2147483647i == arg_1.x, any(vec2<bool>(true, false)), true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, false), func_3(true, arg_1.yx)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), vec4<bool>(true, true, !(arg_0 < -456f), any(vec4<bool>(true, false, false, false))));
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    let var_0 = !func_2(-1261f, vec4<i32>(u_input.a.x | -u_input.a.x, firstTrailingBit(2147483647i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-25223i, -30205i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 35771i, u_input.b.x, 59501i)), -2147483647i));
    var var_1 = Struct_2(Struct_1(vec2<u32>(u_input.d.x, firstLeadingBit(u_input.d.x)), vec2<bool>(var_0.x, false & any(var_0.ww)), 1605f), arg_0, vec2<u32>(1u, ~5251u), var_0.yxw);
    let var_2 = var_1.c.x;
    let var_3 = max(-47706i, -var_1.b.x);
    let var_4 = Struct_1(~firstTrailingBit(vec2<u32>(~20082u, ~var_1.c.x)), var_0.zy, _wgslsmith_f_op_f32(-var_1.a.c));
    return vec2<u32>(1u, var_4.a.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(u_input.d.zy, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + -1000f))), vec2<i32>(~u_input.b.x, u_input.b.x), firstTrailingBit(vec2<u32>(~(arg_3.x >> (1u % 32u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, arg_3.x)), firstLeadingBit(u_input.d.yw)))), !(!(!func_2(2387f, arg_1).zzz)));
    let var_1 = Struct_2(Struct_1(firstLeadingBit(arg_3), select(arg_2, arg_2, var_0.a.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-255f)))))), ~var_0.b, abs(abs(~(~vec2<u32>(21455u, var_0.c.x)))), select(vec3<bool>(false, var_0.d.x, true), select(select(var_0.d, var_0.d, all(vec2<bool>(false, false))), !select(vec3<bool>(true, arg_2.x, true), vec3<bool>(true, false, var_0.a.b.x), arg_0.x), arg_0.x), !vec3<bool>(arg_0.x, false, var_0.a.b.x)));
    let var_2 = Struct_4(u_input.d.wyy);
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(min(arg_1, ~arg_1), arg_1), var_1.b.x & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b.x) ^ vec2<i32>(var_0.b.x, -29900i), arg_1.yz), _wgslsmith_div_i32(u_input.b.x, u_input.a.x), ~(~var_1.b.x ^ _wgslsmith_dot_vec3_i32(arg_1.wxz, arg_1.wxy))), vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_0.b.x, u_input.b.x)), var_0.b), select(var_1.b, select(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(u_input.b.x, -1i), false), true)), ~_wgslsmith_mod_i32(~var_1.b.x, max(6163i, 1i)), 10289i));
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(482f, var_0.a.c)));
    return StorageBuffer(-(var_3.wx | _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(var_3.x, arg_1.x)), abs(var_0.b))), var_3, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.c), 281f, _wgslsmith_f_op_f32(select(var_0.a.c, 452f, true)), -1290f)))), countOneBits(abs(vec2<u32>(u_input.d.x >> (arg_3.x % 32u), 23672u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(vec2<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), u_input.c.x < 1u)), false), vec4<i32>(-1i) * -vec4<i32>(min(u_input.b.x, u_input.b.x), -u_input.b.x, u_input.a.x, -7501i ^ u_input.b.x), vec2<bool>(true, true), max(select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), func_1(u_input.a.yy)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(u_input.c.x, 4294967295u), u_input.d.zz), ~vec2<u32>(1u, 1u)), vec2<bool>(func_2(-559f, vec4<i32>(-47460i, 1i, -2147483647i, 1594i)).x, false)), u_input.c));
}

