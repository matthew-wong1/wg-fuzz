struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_2(vec3<bool>(true, -1i < ~arg_0.x, false && any(vec4<bool>(true, true, true, true))), Struct_1(reverseBits(u_input.d.yy), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1752f, 638f))), _wgslsmith_f_op_f32(-960f * _wgslsmith_f_op_f32(-1819f + 981f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(367f)), _wgslsmith_f_op_f32(2500f - -139f))), _wgslsmith_dot_vec2_u32(u_input.d.xy, min(countOneBits(u_input.d.xx), vec2<u32>(u_input.c, 2037u))), _wgslsmith_mult_vec2_i32(~(vec2<i32>(2147483647i, -1i) >> (u_input.d.xy % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(max(vec2<i32>(u_input.a, 2147483647i), arg_0), arg_0, vec2<i32>(0i, 1i))), abs(u_input.a) & ~arg_0.x), !(~max(arg_0.x, arg_0.x) < (i32(-1i) * -1i)));
    var_0 = Struct_2(var_0.a, Struct_1(~_wgslsmith_sub_vec2_u32(var_0.b.a, _wgslsmith_sub_vec2_u32(vec2<u32>(26713u, 1u), vec2<u32>(u_input.e, u_input.d.x))), var_0.b.b, reverseBits(var_0.b.a.x), select(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, arg_0.x), arg_0), arg_0, _wgslsmith_clamp_vec2_i32(var_0.b.d, vec2<i32>(u_input.b, 17893i), arg_0)), vec2<i32>(~arg_0.x, ~var_0.b.e), select(select(var_0.a.yy, var_0.a.xy, false), vec2<bool>(var_0.c, var_0.a.x), var_0.a.x)), 1i), select(!var_0.a.x, (var_0.c | select(var_0.c, false, var_0.c)) && (!var_0.a.x & any(var_0.a.xx)), any(vec4<bool>(true & var_0.a.x, all(vec4<bool>(true, var_0.a.x, false, var_0.a.x)), true, false))));
    var var_1 = -arg_0.x;
    let var_2 = -463f;
    var_0 = Struct_2(var_0.a, Struct_1(~var_0.b.a & vec2<u32>(~0u, min(var_0.b.a.x, 48174u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_2, -1026f)), _wgslsmith_f_op_f32(sign(-372f)), var_0.b.b.x)), 26658u | countOneBits(~u_input.e), reverseBits(-reverseBits(var_0.b.d)), arg_0.x), true & !(_wgslsmith_f_op_f32(min(-2116f, 1178f)) > _wgslsmith_f_op_f32(var_2 + -185f)));
    return _wgslsmith_f_op_f32(-var_0.b.b.x);
}

fn func_2() -> vec4<i32> {
    var var_0 = u_input.d.yx;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<i32>(-16714i, -2147483647i) & vec2<i32>(u_input.a, u_input.b))))) - -1287f));
    var_0 = firstLeadingBit(select(u_input.d.zy, u_input.d.zy, false && all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    var_0 = ~(~vec2<u32>(~var_0.x, ~_wgslsmith_mult_u32(304u, 134842u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -557f), var_1))))));
    return vec4<i32>(16475i, 16324i, _wgslsmith_sub_i32(_wgslsmith_add_i32(abs(~u_input.a), _wgslsmith_clamp_i32(u_input.b, ~u_input.a, -u_input.b)), -2147483647i), i32(-1i) * -2147483647i);
}

fn func_1() -> Struct_1 {
    var var_0 = select(firstTrailingBit(max(vec4<i32>(-2147483647i, u_input.b, 2147483647i, -1i), vec4<i32>(u_input.a, 38511i, u_input.b, -16796i)) << (vec4<u32>(u_input.e, u_input.c, u_input.c, u_input.d.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(2147483647i, u_input.a, 0i, 0i), reverseBits(vec4<i32>(22474i, u_input.b, u_input.b, -1i))), func_2()), all(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))))) << (((~(vec4<u32>(4294967295u, u_input.c, 38224u, u_input.d.x) >> (vec4<u32>(u_input.c, 27910u, u_input.e, u_input.d.x) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 16081u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.e, 29595u, 7807u), vec4<u32>(u_input.e, u_input.e, u_input.c, u_input.c)))) | max(~vec4<u32>(u_input.e, 80806u, 115933u, u_input.e) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 29371u, u_input.e, u_input.c), vec4<u32>(u_input.e, 1u, u_input.d.x, u_input.d.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(u_input.d.x, 64833u), ~u_input.d.x, ~u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(121581u, 4294967295u, u_input.d.x, 28522u), vec4<u32>(u_input.e, u_input.e, 133324u, 12741u))))) % vec4<u32>(32u));
    var_0 = vec4<i32>(select(var_0.x, _wgslsmith_dot_vec2_i32(~var_0.wy, var_0.xz), true), -1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.x, 0i, u_input.a), vec4<i32>(var_0.x, 46020i, var_0.x, u_input.a)) & var_0.x, -6239i) ^ vec4<i32>(var_0.x, var_0.x, u_input.a, 0i);
    var var_1 = u_input.d.xz;
    var var_2 = Struct_2(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))), Struct_1(~u_input.d.zz, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -699f, -757f)), vec3<f32>(-267f, -2599f, 857f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2178f, -1000f, -1552f))) + vec3<f32>(430f, 1660f, 1520f))), 44350u, -_wgslsmith_mult_vec2_i32(var_0.yx, vec2<i32>(-1i, u_input.b)), -4592i), !all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))));
    var var_3 = all(!(!vec4<bool>(var_2.c, !var_2.a.x, var_2.c, any(var_2.a))));
    return Struct_1(select(var_2.b.a, select(u_input.d.zx, vec2<u32>(u_input.e, 14382u) | (u_input.d.yy >> (vec2<u32>(1u, var_1.x) % vec2<u32>(32u))), false), !(!vec2<bool>(var_2.a.x, true))), _wgslsmith_f_op_vec3_f32(select(var_2.b.b, vec3<f32>(-1192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1309f)), _wgslsmith_div_f32(var_2.b.b.x, _wgslsmith_f_op_f32(-var_2.b.b.x))), vec3<bool>(!all(vec2<bool>(true, var_2.c)), any(!vec4<bool>(false, true, false, var_2.a.x)), _wgslsmith_f_op_f32(func_3(var_2.b.d)) <= -658f))), countOneBits(_wgslsmith_mod_u32(countOneBits(0u), var_1.x)), countOneBits(firstTrailingBit(_wgslsmith_div_vec2_i32(max(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, var_2.b.e)), var_0.xz))), func_2().x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f - 427f));
    let var_1 = func_1();
    var var_2 = Struct_2(select(vec3<bool>(!(u_input.a == u_input.a), 2782i > var_1.d.x, any(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), select(vec3<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(true, false, true, false)), true), vec3<bool>(true, true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), true), var_1, ~reverseBits(-u_input.b) < ~_wgslsmith_clamp_i32(countOneBits(var_1.d.x), u_input.a << (var_1.c % 32u), u_input.b));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2.b.b.xy), vec2<f32>(var_1.b.x, var_0)))), _wgslsmith_f_op_vec2_f32(var_1.b.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2169f, var_1.b.x) - var_2.b.b.yy))), var_2.c))));
    let var_4 = var_1;
    var var_5 = ~select(_wgslsmith_mod_vec2_u32(~var_1.a, vec2<u32>(4294967295u, 1u)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 5510u), min(vec2<u32>(var_4.a.x, 1u), u_input.d.yx)) % vec2<u32>(32u)), select(vec2<u32>(var_2.b.a.x ^ u_input.e, abs(var_4.c)), firstTrailingBit(vec2<u32>(var_1.a.x, 4294967295u)), select(!vec2<bool>(var_2.c, false), !var_2.a.xx, u_input.b >= 1i)), (_wgslsmith_sub_u32(var_2.b.a.x, u_input.e) < _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(47000u, 0u, 19525u))) & false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(vec2<i32>(min(~9095i, u_input.b ^ var_2.b.d.x), var_4.d.x))));
}

