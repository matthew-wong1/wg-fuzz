struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_1(arg_1.xyy, _wgslsmith_div_f32(-210f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) - 503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(884f, -725f)))))), ~_wgslsmith_add_i32(1i, 1741i), arg_0);
    let var_1 = select(vec3<bool>(true, true, false), !vec3<bool>(!all(vec2<bool>(true, true)), true, true), vec3<bool>(!all(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)), false != !any(vec4<bool>(true, true, false, false))));
    let var_2 = vec2<bool>(true, var_1.x && (~(var_0.c & -1608i) < arg_0.x));
    let var_3 = !var_1;
    var var_4 = Struct_2(var_0.a);
    return vec4<bool>(var_2.x, all(vec3<bool>((true | var_1.x) & !var_2.x, true, true)), true, any(vec3<bool>(false, true, true)));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = 0i;
    var_0 = max(-23510i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-37536i, firstLeadingBit(16545i & u_input.b)), -2147483647i));
    var var_1 = func_3(~(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, 12195i), vec2<i32>(u_input.d, u_input.c), vec2<i32>(-272i, u_input.b)))), ~vec4<u32>(0u, 10154u, 4294967295u, 9485u));
    var var_2 = Struct_1(~(~vec3<u32>(4294967295u, u_input.a.x, 24509u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 14943u, u_input.a.x)) % vec3<u32>(32u))) & ~vec3<u32>(abs(u_input.a.x), reverseBits(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, 9384u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -492f) * 804f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1077f, 804f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-692f + -541f), _wgslsmith_div_f32(2249f, -906f)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -35116i, u_input.d, u_input.c), vec4<i32>(u_input.c, u_input.c, 1i, u_input.b)) >= (u_input.b >> (u_input.a.x % 32u))))), -15496i >> (abs(1u) % 32u), vec2<i32>(~u_input.c, u_input.c));
    var_2 = Struct_1(var_2.a, _wgslsmith_f_op_f32(var_2.b + var_2.b), ~abs(abs(_wgslsmith_sub_i32(u_input.b, u_input.d))), abs(-var_2.d));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f), var_2.b);
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec4<u32>(0u, 3951u, u_input.a.x, u_input.a.x);
    var var_1 = Struct_1(var_0.xzz, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1848f - -128f) - -1806f)))), -29849i, vec2<i32>(u_input.c, u_input.c));
    var var_2 = any(!(!select(func_3(var_1.d, vec4<u32>(74547u, var_1.a.x, 41782u, 52987u)), vec4<bool>(false, false, false, false), true)));
    let var_3 = Struct_1(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.a.x, 1u, u_input.a.x), abs(vec3<u32>(4294967295u, u_input.a.x, var_1.a.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_1.a.x, 0u), vec3<u32>(1u, u_input.a.x, 32833u))) | vec3<u32>(61393u, ~abs(25299u), abs(u_input.a.x ^ var_0.x)), -254f, firstTrailingBit(u_input.d | var_1.c), select(var_1.d, select(-var_1.d, -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.d), vec2<i32>(0i, 9662i)), _wgslsmith_f_op_f32(var_1.b - 950f) >= _wgslsmith_f_op_f32(exp2(var_1.b))), true));
    var_1 = Struct_1(var_0.wwz, var_3.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_3.d.x, 1i, 37958i), -(~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_1.d.x, var_3.d.x), vec3<i32>(u_input.b, var_1.d.x, 57783i)))), ~var_1.d);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(u_input.d, _wgslsmith_div_i32(u_input.b, ~abs(u_input.d)));
    let var_1 = Struct_1(vec3<u32>(~u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(select(130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-869f + 361f))), !any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))))), u_input.b, abs(vec2<i32>(2147483647i, reverseBits(-u_input.c))));
    var_0 = firstLeadingBit(-11995i);
    var var_2 = func_1();
    var_0 = var_1.c;
    let var_3 = vec4<i32>(2147483647i, -(~2889i), var_2.c, ~(-(~(-u_input.b))));
    var var_4 = var_3.x;
    let var_5 = vec2<f32>(var_1.b, _wgslsmith_f_op_f32(-2075f * _wgslsmith_f_op_f32(f32(-1f) * -1362f)));
    var var_6 = (_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~var_3.zwx, var_3.wwy), vec3<i32>(7703i, var_1.d.x, ~1i)) & ~(vec3<i32>(-1i) * -vec3<i32>(var_2.c, 40678i, var_1.c))) >> (var_2.a % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1240f)))), vec4<f32>(249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - 200f) * _wgslsmith_f_op_f32(max(var_2.b, -1178f)))), var_2.b, _wgslsmith_f_op_f32(trunc(1475f))), _wgslsmith_sub_vec2_u32(~vec2<u32>(~var_1.a.x, max(var_1.a.x, u_input.a.x)), ~select(vec2<u32>(var_1.a.x, 15223u), vec2<u32>(u_input.a.x, 42051u) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), true)));
}

