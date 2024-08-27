struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> u32 {
    let var_0 = select(vec2<u32>(countOneBits(firstTrailingBit(arg_2.b.b) | arg_2.a.a), arg_2.a.a), ~vec2<u32>(firstTrailingBit(arg_2.b.b), arg_2.a.a), arg_2.c.wz);
    var var_1 = select(arg_2.c.xzy, arg_2.c.yzw, !arg_2.c.x);
    var var_2 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_div_vec3_i32(~vec3<i32>(8741i, -13177i, 26745i), u_input.a)), vec3<i32>(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 37689i, -2147483647i), vec3<i32>(arg_1, arg_1, -47757i)) ^ firstLeadingBit(57579i), 33388i)) ^ 23909i;
    var var_3 = any(vec3<bool>(!any(vec4<bool>(false, true, true, var_1.x)), true, !arg_2.c.x));
    let var_4 = Struct_2(arg_2.a, arg_2.b.c.a >> (reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 84781u), vec2<u32>(var_0.x, 22022u)), firstLeadingBit(0u))) % 32u), Struct_1(18858u), vec2<f32>(_wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_2.b.d.x, -543f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f), -877f)))));
    return 6826u;
}

fn func_2(arg_0: bool) -> vec2<f32> {
    var var_0 = ~_wgslsmith_mod_u32(18220u, 6668u);
    var_0 = _wgslsmith_add_u32(~firstTrailingBit(reverseBits(1u)), 1u);
    var_0 = ~func_3(_wgslsmith_add_i32(u_input.a.x ^ u_input.a.x, _wgslsmith_mult_i32(u_input.a.x | 1882i, min(u_input.a.x, 11858i))), _wgslsmith_add_i32(u_input.a.x, ~1i), Struct_3(Struct_1(~1u), Struct_2(Struct_1(1u), ~0u, Struct_1(1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-365f, 1000f))), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0, true, true, false), select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(false, false, arg_0, arg_0))), Struct_1(4294967295u)));
    var_0 = firstLeadingBit(~66226u);
    var_0 = _wgslsmith_mod_u32(0u, ~1u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1028f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-391f, -286f)) * _wgslsmith_f_op_f32(trunc(645f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(254f)), -537f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: u32) -> i32 {
    let var_0 = vec3<bool>(max(arg_2.x, ~_wgslsmith_dot_vec2_u32(arg_2, arg_2)) >= 1u, true, !(!((i32(-1i) * -2147483647i) >= -u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -229f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(-1381f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1935f), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x))), vec4<f32>(arg_1.x, arg_1.x, arg_0.x, -248f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(var_1.xz))));
    var var_3 = !select(var_0.xy, !select(!vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), all(vec4<bool>(false, false, true, false))), var_0.x);
    var var_4 = var_3.x;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(max(0i, 0i)), _wgslsmith_add_i32(u_input.a.x, -1i)), select(u_input.a.xx << (vec2<u32>(arg_3, arg_2.x) % vec2<u32>(32u)), abs(u_input.a.zx), var_3.x)), firstTrailingBit(u_input.a.zz));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> bool {
    var var_0 = vec2<i32>(25299i, u_input.a.x);
    var_0 = select(vec2<i32>(func_4(_wgslsmith_f_op_vec2_f32(func_2(false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_0.b.d.x, arg_1.x, arg_1.x), vec4<f32>(arg_0.b.d.x, -748f, -1432f, 724f), true))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(4294967295u, arg_0.d.a)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_0.b.c.a), vec2<u32>(40540u, 4294967295u))), arg_0.a.a), (~u_input.a.x & (i32(-1i) * -2147483647i)) >> (arg_0.d.a % 32u)), ~countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(var_0.x, 1i))), arg_0.c.xz);
    var var_1 = true;
    return any(vec4<bool>(var_0.x == (func_4(arg_0.b.d, vec4<f32>(arg_0.b.d.x, -789f, arg_0.b.d.x, -1000f), vec2<u32>(arg_0.d.a, arg_0.a.a), 4294967295u) & var_0.x), true, true, any(select(!arg_0.c.wwz, select(vec3<bool>(true, false, arg_0.c.x), vec3<bool>(true, true, arg_2), arg_0.c.xxz), arg_2))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: vec3<bool>) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(13958u, 0u)))), Struct_2(Struct_1(1u), ~1u, Struct_1(~firstLeadingBit(14372u)), _wgslsmith_f_op_vec2_f32(round(arg_0))), !select(!vec4<bool>(arg_2, false, arg_2, arg_3.x), !select(vec4<bool>(false, arg_3.x, arg_2, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_2, false), vec4<bool>(arg_2, arg_3.x, false, true)), !vec4<bool>(false, true, arg_2, true)), Struct_1(min(93675u, abs(27615u))));
    let var_1 = _wgslsmith_f_op_f32(sign(-243f));
    var_0 = Struct_3(var_0.d, var_0.b, var_0.c, var_0.a);
    let var_2 = vec3<u32>(~var_0.d.a, 1u, var_0.a.a);
    var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(71335u, 1u, 36540u, var_0.a.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(66467u, var_2.x, 8920u, 15735u), vec4<u32>(var_2.x, var_2.x, var_0.b.b, 4294967295u)))), var_0.b, vec4<bool>(true, var_0.c.x, arg_2, false || (!arg_2 | true)), Struct_1(~max(var_2.x, 4294967295u) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.yy, vec2<u32>(4294967295u, 4294967295u)), abs(var_2.zx))));
    return _wgslsmith_f_op_vec2_f32(round(var_0.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1236f, 577f))), vec3<i32>(2147483647i, u_input.a.x, 0i) << (abs(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), any(vec4<bool>(true, true, true, true)), vec3<bool>(all(vec4<bool>(true, false, false, false)) != true, true && func_1(Struct_3(Struct_1(0u), Struct_2(Struct_1(5303u), 106359u, Struct_1(1u), vec2<f32>(1795f, 733f)), vec4<bool>(true, false, false, false), Struct_1(1u)), vec2<f32>(916f, 282f), true), true))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(!(u_input.a.x == 1i))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(vec2<f32>(1710f, 727f), u_input.a, true, vec3<bool>(true, true, false))).x)))));
    var var_1 = !(!select(vec3<bool>(all(vec2<bool>(false, true)), false, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), any(vec4<bool>(true, true, true, false))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(245f, var_0.x), vec2<f32>(var_0.x, var_0.x)) * vec2<f32>(var_0.x, var_0.x)) + vec2<f32>(662f, _wgslsmith_f_op_f32(f32(-1f) * -384f))) * _wgslsmith_f_op_vec2_f32(func_5(vec2<f32>(var_0.x, _wgslsmith_div_f32(-458f, 617f)), u_input.a | abs(vec3<i32>(-1i, u_input.a.x, u_input.a.x)), var_1.x, select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, var_1.x), false), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, true))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, 1099f, var_1.x)), -1058f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f * 843f)))) + var_0.x), 1471f);
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1642f, -581f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(746f, var_0.x), vec2<f32>(var_0.x, var_0.x)))))));
    var_1 = select(!(!select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, false, var_1.x)), select(vec3<bool>(false, var_1.x, true), vec3<bool>(false, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), select(vec3<bool>(false, var_1.x, true), vec3<bool>(true, var_1.x, false), vec3<bool>(false, var_1.x, var_1.x)))), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, func_1(Struct_3(Struct_1(1u), Struct_2(Struct_1(4294967295u), 63530u, Struct_1(4294967295u), vec2<f32>(751f, var_2.x)), vec4<bool>(var_1.x, false, false, var_1.x), Struct_1(0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(343f, -241f) + vec2<f32>(var_2.x, var_0.x)), false == var_1.x)), vec3<bool>(all(vec2<bool>(true, true)), !(!var_1.x), false)), select(vec3<bool>(var_1.x, false, any(!vec3<bool>(true, false, var_1.x))), vec3<bool>(true, _wgslsmith_mod_u32(0u, 55135u) != select(19354u, 1u, var_1.x), var_1.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~firstLeadingBit(-1i), u_input.a.x, _wgslsmith_clamp_i32(-50991i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -8531i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)) & -1i), -2147483647i), -select(_wgslsmith_clamp_i32(-47969i, ~u_input.a.x, -1i), ~(~u_input.a.x), true), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), ~(~vec3<u32>(38161u, 85079u, 1u)), max(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(4294967295u, 1u, 0u)))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), min(4294967295u, 1074u), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_2.x) * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -558f)))));
}

