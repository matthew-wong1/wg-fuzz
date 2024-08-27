struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = all(vec4<bool>(!(u_input.a < -1i), true, true, all(vec4<bool>(true, true, true, true)))) || true;
    var var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(select(-countOneBits(arg_0), 15735i, !any(vec3<bool>(false, true, true))), arg_0 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), max(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 89939u, 7552u))) % 32u), countOneBits(1i), u_input.a | _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0), u_input.b.yx))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, ~11551i), _wgslsmith_div_i32(arg_0, arg_0) >> (4294967295u % 32u)), 0i >> (1u % 32u), ~(~(-17060i) >> (~u_input.c.x % 32u)), 22748i));
    let var_2 = ~(u_input.c.yy | max(select(~u_input.c.zy, vec2<u32>(u_input.c.x, 1u), vec2<bool>(true, true)), ~max(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x))));
    return firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, var_1.x), -106147i));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec3<bool> {
    let var_0 = arg_0.d.zx;
    var var_1 = _wgslsmith_div_i32(select(~_wgslsmith_div_i32(arg_0.c, -1i), arg_0.c, false), arg_0.c);
    var var_2 = Struct_1(func_3(firstTrailingBit(i32(-1i) * -44518i)) >= (firstLeadingBit(-1i) & _wgslsmith_mod_i32(arg_0.c, u_input.a)), select(arg_0.b, select(select(arg_0.b, select(arg_0.b, arg_0.b, vec3<bool>(false, true, true)), arg_1), vec3<bool>(!arg_0.b.x, any(vec2<bool>(true, false)), true), false), false), u_input.a, _wgslsmith_f_op_vec4_f32(-arg_0.d), _wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(reverseBits(arg_0.e), ~vec2<u32>(u_input.c.x, 29067u), reverseBits(u_input.c.xx))), u_input.c.zz, select(arg_0.e, vec2<u32>(u_input.c.x ^ arg_0.e.x, ~95832u), arg_1)));
    var_2 = Struct_1(all(select(var_2.b.yz, vec2<bool>(all(vec2<bool>(arg_1, arg_0.b.x)), any(vec4<bool>(arg_1, arg_1, false, false))), var_2.a)), !var_2.b, -28185i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(585f, var_0.x, var_0.x, -153f) + vec4<f32>(var_2.d.x, arg_0.d.x, -175f, arg_0.d.x)), vec4<f32>(var_2.d.x, 1346f, -1006f, var_2.d.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.d) + var_2.d))), ~(~vec2<u32>(~66618u, u_input.c.x)));
    let var_3 = _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.xx, ~(~u_input.b.yy))), reverseBits(-13978i));
    return vec3<bool>(true, false, arg_1);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_2(select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), !func_2(Struct_1(true, vec3<bool>(true, false, false), -1i, vec4<f32>(-1465f, -398f, 1601f, -290f), u_input.c.zx), true)), vec3<bool>(true, true, true), true));
    var var_1 = Struct_2(var_0.a);
    let var_2 = var_0;
    let var_3 = 1u;
    let var_4 = Struct_1(!var_2.a.x, select(select(func_2(Struct_1(false, var_2.a, u_input.b.x, vec4<f32>(333f, 832f, -548f, 602f), vec2<u32>(var_3, u_input.c.x)), !var_0.a.x), select(var_1.a, vec3<bool>(var_2.a.x, true, var_0.a.x), var_3 <= 15233u), var_0.a.x), var_1.a, select(vec3<bool>(false, var_0.a.x, true), vec3<bool>(any(var_2.a.yy), all(var_1.a.xz), true), false)), ~2147483647i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(599f)) * -347f), -498f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -400f), 145f)), 1142f), vec4<f32>(-1442f, _wgslsmith_f_op_f32(step(-330f, _wgslsmith_f_op_f32(f32(-1f) * -137f))), _wgslsmith_f_op_f32(-536f * 669f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1608f)))))), _wgslsmith_clamp_vec2_u32(u_input.c.xx, max(_wgslsmith_div_vec2_u32(u_input.c.yy << (vec2<u32>(u_input.c.x, 5867u) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, 4294967295u) | vec2<u32>(1u, 93477u)), vec2<u32>(u_input.c.x, 1u) >> (select(u_input.c.xx, vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(true, false)) % vec2<u32>(32u))), u_input.c.yx));
    return select(func_2(var_4, all(vec2<bool>(func_2(var_4, var_4.a).x, 4294967295u < u_input.c.x))), select(var_2.a, var_0.a, var_4.b), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(all(vec3<bool>(true, true, true)), false);
    var var_1 = -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, u_input.b.x, 1i, -2147483647i), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.a, u_input.a, 0i, -2147483647i) | vec4<i32>(-1i, 40077i, -21535i, u_input.b.x)), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), abs(vec2<i32>(2147483647i, u_input.a))), ~(~u_input.a), abs(1i >> (u_input.c.x % 32u))));
    var_0 = !vec2<bool>(false, var_0.x);
    let var_2 = vec2<u32>(u_input.c.x, u_input.c.x);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1014f, 394f), _wgslsmith_f_op_f32(-539f * -1099f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-404f, -587f))))));
    var_3 = -876f;
    var var_4 = Struct_2(!select(select(!vec3<bool>(true, var_0.x, var_0.x), func_1(vec4<i32>(var_1.x, 49741i, 0i, -7510i), 19354i), !vec3<bool>(true, var_0.x, false)), !select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), var_0.x), !(!vec3<bool>(var_0.x, false, var_0.x))));
    let var_5 = 33937u;
    let var_6 = var_1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xxz, 1834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f)));
}

