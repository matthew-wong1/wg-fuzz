struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<u32>(35104u, 48032u, 4294967295u, 56677u), vec4<u32>(1u, 87586u, 32790u, 4294967295u), vec3<bool>(true, false, true)), Struct_1(vec4<u32>(0u, 49332u, 82230u, 91110u), vec4<u32>(20033u, 1u, 0u, 8410u), vec3<bool>(true, false, true)), Struct_1(vec4<u32>(6772u, 1u, 4294967295u, 4294967295u), vec4<u32>(10094u, 10200u, 3589u, 25483u), vec3<bool>(false, false, false)));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(18267u, 4294967295u, 13881u, 59711u), vec4<u32>(2333u, 0u, 17083u, 18699u), vec3<bool>(true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> u32 {
    let var_0 = ~vec3<i32>(-(~1i), -1i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, u_input.a, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -28318i, 19284i), vec3<i32>(u_input.a, -2147483647i, u_input.a)) << (u_input.c.zzx % vec3<u32>(32u))));
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    var var_1 = 1i;
    var var_2 = global0[_wgslsmith_index_u32(min(~u_input.b << (abs(_wgslsmith_mod_u32(u_input.b, 0u)) % 32u), 0u), 3u)];
    return 1u;
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1339f + 849f), _wgslsmith_f_op_f32(arg_0.x - -963f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))))));
    let var_1 = Struct_1(min(~vec4<u32>(global1.a.x, 16472u & u_input.b, global1.b.x, global1.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 13541u, ~global1.a.x, 0u >> (global1.b.x % 32u)), max(_wgslsmith_div_vec4_u32(vec4<u32>(18785u, 4294967295u, 0u, global1.a.x), u_input.c), u_input.c & global1.a))), vec4<u32>(~_wgslsmith_sub_u32(global1.b.x | u_input.c.x, 110112u), select(u_input.c.x, _wgslsmith_dot_vec3_u32(global1.b.yww, vec3<u32>(12967u, u_input.c.x, global1.b.x)), global1.c.x == global1.c.x) ^ ~1u, global1.b.x, min(u_input.b, ~13216u)), !global1.c);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(32784u, 1u), 3u)];
    var var_3 = vec3<bool>(true, !(!(!var_1.c.x)), all(select(vec3<bool>(true, false, var_1.c.x), vec3<bool>(true, true, true), !var_1.c.x)) | true);
    let var_4 = Struct_1(~reverseBits(~(~vec4<u32>(0u, 0u, var_2.a.x, 4294967295u))), _wgslsmith_sub_vec4_u32(max(select(select(vec4<u32>(global1.a.x, var_2.a.x, u_input.b, 1u), global1.b, var_3.x), global1.a, any(global1.c.xz)), var_1.b), vec4<u32>(~u_input.c.x & global1.a.x, 1u, ~104537u, ~max(global1.b.x, 0u))), var_2.c);
    return select(vec4<bool>(any(select(!vec2<bool>(var_2.c.x, false), !var_1.c.zz, true)), true, any(select(!vec2<bool>(global1.c.x, global1.c.x), !var_4.c.zz, vec2<bool>(var_3.x, global1.c.x))), any(var_4.c.zy)), !vec4<bool>(~global1.a.x > u_input.c.x, true, true, false), select(vec4<bool>(!all(var_2.c), var_4.c.x, global1.c.x, var_4.c.x & false), !(!select(vec4<bool>(var_1.c.x, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, var_2.c.x, false, var_4.c.x))), !vec4<bool>(var_1.c.x || var_2.c.x, var_2.c.x || true, !var_1.c.x, -1279f >= var_0)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1257f, -763f, global1.c.x)), -552f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(443f * 1992f), _wgslsmith_div_f32(341f, 822f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1430f - 896f) + 859f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2350f, -541f)) * _wgslsmith_f_op_f32(445f * -355f)))));
    let var_1 = ~(max(-574i, _wgslsmith_clamp_i32(~2147483647i, _wgslsmith_sub_i32(u_input.a, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-3970i, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, u_input.a)))) | select(_wgslsmith_add_i32(min(2147483647i, 2147483647i), 0i), _wgslsmith_dot_vec2_i32(-vec2<i32>(17706i, 10785i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-32539i, u_input.a))), arg_0));
    let var_2 = _wgslsmith_f_op_f32(select(-187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2037f))))), func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-120f, _wgslsmith_f_op_f32(688f + -995f), -217f, 958f), _wgslsmith_div_vec4_f32(vec4<f32>(-1265f, -150f, 1349f, -472f), _wgslsmith_div_vec4_f32(vec4<f32>(-356f, -936f, 1000f, 325f), vec4<f32>(771f, -143f, 211f, -1190f)))))).x));
    let var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f * var_2)))), 1f, var_2), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_2)))), _wgslsmith_f_op_f32(sign(-718f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 1221f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-969f, var_2, -443f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(262f, var_2, -439f), vec3<f32>(var_2, -1105f, var_2), global1.c.x)))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, -117f, 125f, var_2)))).x))));
    var var_4 = firstTrailingBit(2147483647i);
    return Struct_2(Struct_1(~vec4<u32>(0u << (0u % 32u), ~1u, u_input.c.x, arg_1.a.x >> (4294967295u % 32u)), ~(~abs(global1.a)), vec3<bool>(!arg_1.c.x, global1.c.x, select(global1.c.x, true, arg_1.c.x) & true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 59208u), 3u)];
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1738f)))))));
    global0 = array<Struct_1, 3>();
    var var_1 = func_2(true, Struct_1(u_input.c, vec4<u32>(4294967295u, u_input.b, ~abs(1u), ~func_1()), global1.c));
    let var_2 = Struct_1((_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.x, var_1.a.a.x, 0u, 1u), vec4<u32>(26890u, 48383u, var_1.a.b.x, u_input.b)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1.b.x, var_1.a.b.x, u_input.c.x) ^ vec4<u32>(global1.a.x, 1u, u_input.b, global1.a.x), u_input.c)) >> (vec4<u32>(~(var_1.a.a.x << (914u % 32u)), _wgslsmith_mod_u32(1u, ~0u), ~(u_input.c.x & 71467u), _wgslsmith_sub_u32(0u, 0u >> (1u % 32u))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~(~(global1.b << (vec4<u32>(196u, var_1.a.b.x, var_1.a.b.x, u_input.c.x) % vec4<u32>(32u)))), ~(~(vec4<u32>(4294967295u, 1301u, 1u, 1u) << (vec4<u32>(1u, global1.b.x, var_1.a.a.x, global1.b.x) % vec4<u32>(32u))))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(361f, -1018f, -1619f, -739f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1191f, -1275f, -740f, -393f) * vec4<f32>(-480f, -1000f, 135f, -579f))))).yww);
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a, 2147483647i));
}

