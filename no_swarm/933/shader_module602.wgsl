struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 1u), -15958i, vec3<bool>(false, false, false), -1i, 37099i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = abs(u_input.a.x & ~2147483647i);
    var var_1 = global1.a;
    let var_2 = (4294967295u >= var_1.x) | true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-361f * -1441f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1144f), arg_1.a))))) * arg_1.a);
    var_0 = -44859i;
    return _wgslsmith_f_op_f32(f32(-1f) * -1161f);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3(-(select(-vec4<i32>(31970i, 1i, u_input.a.x, global1.e), vec4<i32>(26353i, u_input.a.x, global1.e, global1.d) << (vec4<u32>(0u, global1.a.x, 0u, 0u) % vec4<u32>(32u)), !vec4<bool>(false, true, false, global1.c.x)) << (vec4<u32>(u_input.c, 1u, _wgslsmith_sub_u32(global1.a.x, 12266u), 82776u) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1105f + arg_0.x) - _wgslsmith_f_op_f32(round(arg_0.x))))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -1i) ^ vec2<i32>(global1.b, -1i), abs(u_input.a)), select(!global1.c.xz, vec2<bool>(global1.c.x, true), all(select(vec3<bool>(true, false, global1.c.x), global1.c, global1.c))))));
    var var_1 = !(!select(!select(vec4<bool>(global1.c.x, global1.c.x, false, global1.c.x), vec4<bool>(false, false, global1.c.x, true), false), !vec4<bool>(false, false, false, global1.c.x), vec4<bool>(any(global1.c.xx), global1.c.x, any(vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x)), u_input.a.x < -2147483647i)));
    var var_2 = Struct_2(var_0, u_input.a ^ -(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)) ^ (u_input.a | u_input.a)), !select(!select(global1.c.zz, global1.c.xy, vec2<bool>(true, var_1.x)), select(!global1.c.yy, vec2<bool>(var_1.x, global1.c.x), var_1.zw), !select(var_1.xw, global1.c.xy, false)));
    var_1 = select(vec4<bool>(var_1.x, var_2.c.x, var_1.x, all(var_1.yxw)), vec4<bool>((_wgslsmith_mult_i32(62559i, 1i) <= var_2.b.x) || !(var_2.c.x | var_1.x), global1.c.x, any(vec4<bool>(any(vec3<bool>(false, false, false)), true, true, global1.c.x)), false), !all(vec3<bool>(true, !var_1.x, global1.c.x)));
    var var_3 = Struct_1(global1.a, -4763i & global1.e, global1.c, -2147483647i, ~(-2147483647i));
    return Struct_1(vec2<u32>(_wgslsmith_div_u32(6583u, _wgslsmith_div_u32(0u, global1.a.x | global1.a.x)), u_input.b), 21101i, !var_3.c, -_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(var_2.b.x, 52441i), _wgslsmith_mult_i32(u_input.a.x, ~(-1i)), 1i), 0i | u_input.a.x);
}

fn func_1() -> Struct_2 {
    global1 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    global1 = func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(874f, -1448f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, 1180f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1046f, -686f)))))))));
    global0 = 0u;
    let var_0 = countOneBits(vec2<i32>(0i, u_input.a.x));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(919f * _wgslsmith_f_op_f32(f32(-1f) * -1112f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(407f + 1189f), _wgslsmith_f_op_f32(f32(-1f) * -1048f), true | global1.c.x))))), _wgslsmith_mult_vec2_i32(max(countOneBits(vec2<i32>(-27200i, -1i)), vec2<i32>(1i, 14809i)), -u_input.a & _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(7308i, -21767i))) >> (~vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)), !global1.c.xz);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a, var_1.a), -1368f)))), ~_wgslsmith_add_vec2_i32(select(~var_1.b, select(var_0, var_1.b, false), true), -select(var_1.b, var_0, var_1.c.x)), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(805f, var_1.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 234f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a, 540f), vec2<f32>(545f, 384f)))))).c.zx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(-(~(i32(-1i) * -17128i))) <= _wgslsmith_div_i32(~_wgslsmith_mult_i32(global1.b, 1i), (_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, -1i) ^ abs(2147483647i)) >> (~(u_input.b | 1u) % 32u));
    var_0 = global1.c.x;
    var var_1 = func_1();
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~global1.a, vec2<u32>(0u, 0u)), u_input.b), firstLeadingBit(~(global1.a ^ vec2<u32>(global1.a.x, 43155u))), global1.a), i32(-1i) * -(firstTrailingBit(0i) << ((0u << (global1.a.x % 32u)) % 32u)), vec3<bool>(false, !var_1.c.x, var_1.c.x), global1.d, ~firstTrailingBit(2147483647i));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a, _wgslsmith_div_f32(243f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), 1041f)));
}

