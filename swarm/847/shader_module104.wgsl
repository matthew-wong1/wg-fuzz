struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    let var_0 = 932f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-600f, -303f)) + _wgslsmith_f_op_f32(-1001f - 180f)), _wgslsmith_f_op_f32(trunc(-889f)), true)));
    var var_1 = Struct_4(Struct_2(vec4<f32>(_wgslsmith_div_f32(-175f, -289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-163f + -151f) * 1545f), _wgslsmith_f_op_f32(f32(-1f) * -1743f), _wgslsmith_f_op_f32(floor(-158f))), -vec3<i32>(firstTrailingBit(8099i), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 21865i, 16299i), vec3<i32>(2147483647i, 0i, u_input.a))), -_wgslsmith_sub_i32(u_input.a | u_input.a, i32(-1i) * -14068i)), _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(min(u_input.b.x, 21464u)), _wgslsmith_dot_vec4_u32(countOneBits(u_input.b), countOneBits(u_input.b)), ~u_input.b.x, max(4294967295u, 12245u) & u_input.b.x), max(u_input.b, ~_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(0u, 97405u, u_input.c.x, 64536u), u_input.b))), Struct_3(Struct_1(~max(u_input.c.x, 35358u), vec3<bool>(16617u < u_input.c.x, all(vec4<bool>(false, true, true, var_0)), false), vec4<f32>(1019f, _wgslsmith_f_op_f32(1190f + -325f), _wgslsmith_f_op_f32(max(175f, 1000f)), 2866f))), Struct_1(~u_input.c.x | _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, ~u_input.c.x), !vec3<bool>(false, true, var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(626f, 1000f, -621f, -313f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-446f, 646f, -1249f, 175f), vec4<f32>(-104f, 1384f, -1241f, -753f)))))));
    var var_2 = Struct_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(1749f + -1039f), _wgslsmith_div_f32(-1245f, _wgslsmith_f_op_f32(abs(-648f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.c.a.c.x, 230f)), _wgslsmith_f_op_f32(-var_1.d.c.x))), -1000f), var_1.a.b, 39307i), _wgslsmith_add_vec4_u32(var_1.b, var_1.b), var_1.c, Struct_1(0u, !var_1.d.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a.x, 846f, var_1.c.a.c.x, var_1.d.c.x)))));
    var var_3 = vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(~(_wgslsmith_add_u32(11834u, u_input.c.x) ^ u_input.b.x), min(4294967295u, var_1.d.a), 26870u), ~var_1.d.a, 4294967295u);
    var var_4 = Struct_4(var_2.a, ~(~max(vec4<u32>(var_1.b.x, 4294967295u, var_3.x, 4294967295u) ^ u_input.b, var_2.b)), var_2.c, var_2.c.a);
    return vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a.x), var_4.c.a.c.x);
}

fn func_2(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = i32(-1i) * -6562i;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_2 = !(arg_0.x < max(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, arg_0.x), vec2<u32>(u_input.c.x, 1u)), ~u_input.c.x));
    var var_3 = vec3<i32>(~var_0, -14822i, 0i) | vec3<i32>(-2147483647i, ~19478i, select(abs(25431i), -firstLeadingBit(u_input.a), var_2));
    var_3 = select(~(vec3<i32>(1i, 2147483647i, var_3.x) >> (abs(_wgslsmith_mod_vec3_u32(u_input.b.zww, u_input.b.zxx)) % vec3<u32>(32u))), firstTrailingBit(min(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, var_0, 15003i), vec3<i32>(u_input.a, 38830i, var_0)) | countOneBits(vec3<i32>(0i, var_3.x, -1i)), vec3<i32>(reverseBits(-19380i), u_input.a & u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-54672i, u_input.a), var_3.yx)))), vec3<bool>(var_2, false, any(!(!vec4<bool>(var_2, false, var_2, true)))));
    return vec3<u32>(select(1u, _wgslsmith_div_u32(~49319u, ~_wgslsmith_clamp_u32(arg_0.x, u_input.c.x, 0u)), select(var_2, var_2, false)), 37067u, ~(~(~max(u_input.b.x, u_input.b.x))));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    var var_0 = func_2(~(~(~(~vec2<u32>(u_input.c.x, u_input.c.x)))));
    var var_1 = Struct_2(arg_0, abs(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, u_input.a), i32(-1i) * -1661i, u_input.a), vec3<i32>(36041i, 30302i, _wgslsmith_div_i32(u_input.a, u_input.a)))), _wgslsmith_div_i32(1i, -max(u_input.a, _wgslsmith_mult_i32(-30342i, -2203i))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1395f, var_1.a.x)), _wgslsmith_f_op_f32(step(var_1.a.x, 945f)))))));
    let var_3 = false;
    var var_4 = u_input.b.xyz;
    return all(!select(select(!vec4<bool>(false, var_3, true, false), select(vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(var_3, false, var_3, false), true), vec4<bool>(var_3, true, true, true)), vec4<bool>(any(vec4<bool>(false, var_3, false, false)), true, arg_0.x <= 1251f, var_3), select(vec4<bool>(true, var_3, var_3, var_3), select(vec4<bool>(false, false, true, false), vec4<bool>(var_3, true, true, true), vec4<bool>(false, var_3, true, var_3)), true)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_1.a.c.xx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.c.x, -350f), vec2<f32>(arg_2, arg_2)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.c.yw - arg_1.a.c.yy))));
    var var_1 = arg_1.a.b.yy;
    var var_2 = vec4<bool>(true, true, var_1.x, func_1(arg_1.a.c));
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_1.a.c.x, 497f)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-arg_1.a.c.wz);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + _wgslsmith_f_op_f32(abs(arg_1.a.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, Struct_3(Struct_1(0u, vec3<bool>(true, false, false), vec4<f32>(-1104f, 1891f, 1108f, 1465f))), _wgslsmith_f_op_f32(1650f + 1000f), func_1(vec4<f32>(892f, 2216f, -334f, -1000f)))) - -578f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-752f, _wgslsmith_f_op_f32(1000f * 894f), false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -700f) + _wgslsmith_f_op_f32(f32(-1f) * -913f))), -607f, 1f), vec3<i32>(_wgslsmith_sub_i32(abs(2147483647i) >> ((1u << (u_input.b.x % 32u)) % 32u), (u_input.a | u_input.a) ^ u_input.a), 1i, 2147483647i), -55304i);
    var var_1 = Struct_3(Struct_1(u_input.c.x, select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), var_0.a));
    var_1 = Struct_3(Struct_1(~0u, select(!var_1.a.b, vec3<bool>(select(false, var_1.a.b.x, true), select(false, var_1.a.b.x, var_1.a.b.x), true), select(select(var_1.a.b, vec3<bool>(true, var_1.a.b.x, var_1.a.b.x), var_1.a.b), select(var_1.a.b, var_1.a.b, var_1.a.b.x), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(var_1.a.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a)))));
    let var_2 = ~_wgslsmith_mod_u32(func_2(vec2<u32>(32635u, 1u)).x & ~25333u, 1u) & (u_input.c.x ^ ~(~func_2(vec2<u32>(var_1.a.a, var_1.a.a)).x));
    var var_3 = vec4<i32>(-(~_wgslsmith_mult_i32(_wgslsmith_add_i32(19098i, var_0.b.x), -1i >> (var_1.a.a % 32u))), _wgslsmith_add_i32(-1i, select(~var_0.c, 1i, false)) ^ 1i, 21876i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(640f, var_0.a.x), var_1.a.c.x, 1f, _wgslsmith_f_op_f32(exp2(var_1.a.c.x)))), _wgslsmith_mult_u32(~u_input.c.x, 32813u));
}

