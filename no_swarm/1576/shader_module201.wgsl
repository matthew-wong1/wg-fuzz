struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> vec2<u32> {
    let var_0 = 29056i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))))) * -1168f);
    var var_2 = Struct_5(false, arg_2);
    var_2 = Struct_5(all(select(!var_2.b.c.xy, vec2<bool>(var_2.a, arg_2.c.x), !arg_2.c.yy)), Struct_4(Struct_2(var_2.b.a.c.x, Struct_1(~arg_2.a.b.b.x, ~vec3<u32>(arg_1.a, 1u, var_2.b.a.d.x), vec3<i32>(var_2.b.a.b.c.x, u_input.c.x, -2147483647i)), var_2.b.a.c, var_2.b.a.d), var_1, !vec3<bool>(arg_2.c.x, false == var_2.b.c.x, arg_2.a.d.x != 1u)));
    var var_3 = arg_1.c;
    return select(~_wgslsmith_clamp_vec2_u32(select(var_2.b.a.d.yx, arg_2.a.d.wx, var_2.b.c.yy), vec2<u32>(1u, 0u) >> (~var_2.b.a.d.wx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.d.zy, var_2.b.a.d.wx)), ~(arg_2.a.d.zy ^ var_2.b.a.d.xx), !(true && arg_2.c.x));
}

fn func_2() -> vec4<u32> {
    var var_0 = !select(vec4<bool>(any(vec3<bool>(false, true, true)), false, false, true), vec4<bool>(false, false, false, select(all(vec4<bool>(false, true, true, false)), true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var_0 = vec4<bool>(!(_wgslsmith_add_i32(u_input.c.x, select(u_input.b.x, 6072i, var_0.x)) >= reverseBits(~u_input.c.x)), var_0.x, any(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, true, false))), !var_0.x & true);
    var_0 = vec4<bool>(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(2147483647i, u_input.b.x)), vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(2147483647i, u_input.a.x))) == 5683i, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x) > _wgslsmith_dot_vec2_u32(func_3(0u, Struct_1(u_input.d.x, vec3<u32>(u_input.d.x, 16602u, u_input.d.x), u_input.a.wzx), Struct_4(Struct_2(299f, Struct_1(32792u, vec3<u32>(1u, 0u, 5904u), u_input.a.zyy), vec4<f32>(371f, 359f, 1167f, -640f), vec4<u32>(260u, 4294967295u, 0u, 43330u)), -145f, vec3<bool>(var_0.x, var_0.x, true)), -1000f), vec2<u32>(27126u, u_input.d.x) | vec2<u32>(25591u, u_input.d.x)), false, !(!var_0.x) || true);
    var_0 = select(vec4<bool>(var_0.x, true, !var_0.x, !var_0.x | select(var_0.x || var_0.x, var_0.x, true)), select(vec4<bool>(all(vec2<bool>(true, true)), var_0.x, all(select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), true)), false), select(!select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, true, false, false), var_0.x), select(select(vec4<bool>(false, false, false, true), vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, true, var_0.x, true)), vec4<bool>(false, true, var_0.x, var_0.x), true), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x)), 2147483647i > abs(~u_input.a.x)), select(select(vec4<bool>(var_0.x, all(vec2<bool>(var_0.x, false)), var_0.x, false), !(!vec4<bool>(false, true, var_0.x, true)), !(!vec4<bool>(var_0.x, true, var_0.x, var_0.x))), select(select(vec4<bool>(true, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, false, true, var_0.x), !var_0.x), select(select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, true, false, var_0.x)), vec4<bool>(var_0.x, true, var_0.x, var_0.x), !vec4<bool>(true, true, false, var_0.x)), !(!vec4<bool>(false, var_0.x, true, var_0.x))), var_0.x));
    var_0 = select(select(select(!vec4<bool>(var_0.x, false, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), all(vec4<bool>(true, true, var_0.x, var_0.x)) & var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), !(!all(var_0.yw))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, true, false, false), var_0.x)), select(!vec4<bool>(false, false, false, var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, true, true))), reverseBits(77084u) <= _wgslsmith_clamp_u32(0u, 24605u, 0u)), var_0.x);
    return abs(~vec4<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(35492u, u_input.d.x, 9352u, u_input.d.x), vec4<u32>(u_input.d.x, 55237u, 18242u, 73549u)), u_input.d.x));
}

fn func_1() -> Struct_4 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(func_2(), vec4<u32>(u_input.d.x, min(1u, u_input.d.x), u_input.d.x, ~0u) & vec4<u32>(~45526u, ~39856u, ~u_input.d.x, u_input.d.x ^ u_input.d.x)), 41355u, _wgslsmith_div_u32(abs(4294967295u), 1u));
    var var_1 = vec3<bool>(true, !all(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, var_0.x, 46473u, 1u), u_input.d) > ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.d.yz), _wgslsmith_mult_u32(var_0.x, 0u)));
    var var_2 = Struct_3(u_input.a, Struct_1(u_input.d.x, abs(u_input.d.www), countOneBits(u_input.b.xxy)), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(1u, u_input.d.x), true), ~vec2<u32>(var_0.x, 50442u)), select(vec2<u32>(0u, 34107u), _wgslsmith_clamp_vec2_u32(u_input.d.zy, vec2<u32>(var_0.x, 1u), var_0.xy), true)), ~(~vec3<u32>(54722u, u_input.d.x, var_0.x)), ~(~u_input.b.yyw & ~vec3<i32>(u_input.a.x, -17512i, 11026i))));
    var_1 = !select(vec3<bool>(true, !(var_1.x == true), any(!vec3<bool>(var_1.x, false, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, true, true)), var_1.x), !select(select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, false, false), vec3<bool>(false, var_1.x, var_1.x)), !vec3<bool>(var_1.x, var_1.x, var_1.x), all(vec4<bool>(var_1.x, var_1.x, true, false))));
    var_2 = Struct_3(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -3777i, abs(1i), -49934i), vec4<i32>(_wgslsmith_add_i32(var_2.b.c.x, _wgslsmith_mult_i32(u_input.b.x, var_2.a.x)), 1i, -1i, _wgslsmith_clamp_i32(var_2.a.x, _wgslsmith_div_i32(var_2.a.x, u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x, u_input.b.x, 25255i), vec3<i32>(var_2.c.c.x, -53451i, 0i))))), Struct_1(17689u, ~u_input.d.wzw, ~var_2.c.c), var_2.b);
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-363f, -1190f)) * -326f), var_2.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-278f, -1818f, -821f, -340f)) - vec4<f32>(1f, 1f, 1f, 1f)))), ~_wgslsmith_add_vec4_u32(u_input.d, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-944f * 1666f))))), vec3<bool>(var_1.x, true, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 50717u;
    let var_1 = ~(-4676i);
    var var_2 = Struct_2(2719f, Struct_1(u_input.d.x, _wgslsmith_div_vec3_u32(u_input.d.yxy, min(~vec3<u32>(75417u, 13247u, 0u), ~u_input.d.yxx)), countOneBits(vec3<i32>(var_1, var_1, -1i)) & select(abs(vec3<i32>(var_1, u_input.c.x, u_input.c.x)), countOneBits(vec3<i32>(-2147483647i, u_input.a.x, var_1)), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1676f, -549f, -445f, 738f))))), vec4<u32>(~u_input.d.x, 30879u, 1u, u_input.d.x));
    let var_3 = func_1();
    let var_4 = Struct_5((var_1 <= countOneBits(_wgslsmith_clamp_i32(u_input.a.x, var_3.a.b.c.x, -1i))) != var_3.c.x, Struct_4(var_3.a, var_3.b, !var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec3_i32(countOneBits(-vec3<i32>(var_4.b.a.b.c.x, var_1, var_1)), vec3<i32>(var_4.b.a.b.c.x & var_4.b.a.b.c.x, 2147483647i, -var_4.b.a.b.c.x))), ~abs(var_4.b.a.b.c.x));
}

