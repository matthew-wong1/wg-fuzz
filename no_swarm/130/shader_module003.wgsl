struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 1u, 69426u, 14532u), vec4<u32>(4294967295u, 38388u, 32244u, 21720u), vec3<i32>(12891i, i32(-2147483648), 40475i), vec3<bool>(false, false, true));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> vec3<u32> {
    var var_0 = !vec3<bool>(all(!(!global0.d.zx)), !(arg_0.x < ~global0.a.x), global0.d.x == global0.d.x);
    var var_1 = Struct_1(select(global0.a, global0.b, true), ~(~vec4<u32>(~arg_0.x, _wgslsmith_mod_u32(1u, 25582u), 4294967295u, select(u_input.b, global0.a.x, true))), u_input.d.yyx, vec3<bool>(true, global0.d.x, any(vec2<bool>(false, var_0.x))));
    var var_2 = ~firstLeadingBit(arg_0.x);
    var var_3 = 1u;
    var_2 = ~select(arg_0.x, 41376u, var_1.c.x < min(u_input.d.x, global0.c.x)) | _wgslsmith_mod_u32(~(1u & ~global0.b.x), 4470u);
    return global0.a.xxz;
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_1(vec4<u32>(62502u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.a.x, global0.b.x, 20837u, global0.b.x)), vec4<u32>(4294967295u, u_input.b, arg_0, arg_0) & _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 6789u, 50282u, 0u))), ~_wgslsmith_div_u32(max(25466u, 69366u), u_input.a.x ^ 67568u), 49908u), select(global0.b, vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, global0.b.x, u_input.b), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), ~u_input.b, global0.b.x, 1u), vec4<bool>(false, true, true, true)), global0.c, vec3<bool>(true, global0.d.x && global0.d.x, true));
    let var_0 = Struct_1(abs(global0.b >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(33455u, u_input.a.x, 4294967295u, arg_0), u_input.a) % vec4<u32>(32u))), abs(~vec4<u32>(~0u, _wgslsmith_mult_u32(global0.a.x, arg_0), ~0u, countOneBits(4294967295u))), vec3<i32>(0i, max(u_input.d.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c.x, 0i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -1i, u_input.d.x), vec3<i32>(-2060i, 1i, 0i)))), -12026i), select(!select(global0.d, global0.d, all(vec2<bool>(global0.d.x, global0.d.x))), vec3<bool>(all(vec4<bool>(true, true, false, false)), false, select(false, !global0.d.x, false)), global0.d));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1568f - -737f), _wgslsmith_div_f32(1258f, -1228f), _wgslsmith_f_op_f32(step(-584f, -598f)), _wgslsmith_f_op_f32(floor(-1490f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, -1742f, _wgslsmith_f_op_f32(1315f * 605f), _wgslsmith_f_op_f32(468f * -479f))))));
    var var_2 = Struct_1(vec4<u32>(51129u, global0.a.x, ~(1u & (77381u << (arg_0 % 32u))), 22053u), _wgslsmith_div_vec4_u32(abs(u_input.a & var_0.b), var_0.a), vec3<i32>(-(27000i >> (var_0.b.x % 32u)), var_0.c.x, firstTrailingBit(global0.c.x)), !vec3<bool>(!(true | var_0.d.x), var_0.d.x, all(select(global0.d, var_0.d, false))));
    var var_3 = var_0.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1295f) * _wgslsmith_f_op_f32(ceil(-995f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(445f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x | global0.b.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-314f * -281f) + -1618f)), -1000f), vec3<f32>(arg_0.x, -281f, arg_0.x));
    var var_1 = u_input.b;
    let var_2 = var_0.xz;
    let var_3 = u_input.d.wxz;
    let var_4 = arg_0.x;
    return !vec3<bool>(!(global0.d.x | false) & arg_1.x, select(true, arg_1.x || any(global0.d.yy), arg_1.x), true);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = !select(!(!vec4<bool>(false, arg_1.x, global0.d.x, true)), select(select(!vec4<bool>(false, global0.d.x, arg_1.x, false), !vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), all(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true))), select(vec4<bool>(true, global0.d.x, false, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x), select(vec4<bool>(global0.d.x, false, true, true), vec4<bool>(false, arg_1.x, false, false), true)), select(select(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, arg_1.x), vec4<bool>(global0.d.x, global0.d.x, true, true), vec4<bool>(false, arg_1.x, arg_1.x, global0.d.x)), select(vec4<bool>(true, global0.d.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, false), global0.d.x), false)), select(!(!vec4<bool>(arg_1.x, false, false, true)), !vec4<bool>(false, false, arg_1.x, arg_1.x), !(!arg_1.x)));
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(~firstTrailingBit(abs(u_input.a)), firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(global0.b.x, arg_0.x, arg_0.x, arg_2), vec4<u32>(1u, 4294967295u, arg_2, 6447u)))), firstTrailingBit(u_input.a), global0.c | vec3<i32>(select(~0i, u_input.d.x, true), global0.c.x, i32(-1i) * -614i), vec3<bool>(global0.d.x, _wgslsmith_dot_vec4_u32(global0.a, arg_3) >= _wgslsmith_dot_vec3_u32(abs(vec3<u32>(24741u, 0u, arg_0.x)), select(vec3<u32>(118525u, u_input.a.x, 0u), vec3<u32>(1u, arg_0.x, 44721u), global0.d)), var_0.x));
    let var_2 = true;
    global0 = var_1;
    global0 = var_1;
    return vec4<u32>(arg_3.x, ~global0.a.x, 1u, 31390u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_add_vec4_u32(func_4(func_1(~u_input.a.zy, _wgslsmith_add_i32(0i, 23245i)), select(select(vec3<bool>(global0.d.x, global0.d.x, global0.d.x), vec3<bool>(global0.d.x, false, global0.d.x), global0.d.x), vec3<bool>(true, true, global0.d.x), func_2(vec3<f32>(-878f, -226f, 693f), vec4<bool>(global0.d.x, global0.d.x, true, false))), firstLeadingBit(0u), vec4<u32>(4294967295u, ~3483u, u_input.a.x, 1u)), u_input.a & ~(~u_input.a)), u_input.a & global0.a, ~_wgslsmith_div_vec3_i32(abs(vec3<i32>(-3270i, u_input.d.x, global0.c.x)), min(~u_input.d.yxw, u_input.d.ywz)), !global0.d);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1098f, -918f, -1000f, 828f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -199f, 480f, 191f) + vec4<f32>(-825f, -1155f, 536f, 1158f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(-928f, 2116f)), -223f, 418f, _wgslsmith_f_op_f32(1000f * 353f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1114f, -424f, 1266f, 1353f) + vec4<f32>(-508f, 400f, -945f, 934f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1189f, 529f, -717f))) + vec4<f32>(912f, -246f, -1098f, 1015f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-141f, 770f, -978f, -1717f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(706f, -1253f, 913f, -388f))))));
    global0 = Struct_1(global0.a, global0.b, global0.c, vec3<bool>(true, ~u_input.a.x == ~_wgslsmith_sub_u32(4294967295u, u_input.b), global0.d.x));
    let var_1 = Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(47385u, 7834u, u_input.b, u_input.b), _wgslsmith_div_vec4_u32(global0.b, vec4<u32>(102156u, 0u, 9193u, u_input.b)), min(vec4<u32>(1u, global0.a.x, global0.a.x, u_input.a.x), u_input.a)), u_input.a)), vec4<u32>(0u, ~(~global0.a.x & 1u), ~(76816u >> (u_input.b % 32u)) >> ((~94501u | u_input.b) % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(global0.a.x, global0.a.x), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), global0.a.xx)))), vec3<i32>(-1i) * -global0.c, global0.d);
    global0 = var_1;
    global0 = Struct_1(u_input.a, ~u_input.a, _wgslsmith_clamp_vec3_i32((global0.c | var_1.c) & _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, 0i), vec3<i32>(global0.c.x, -36975i, -54357i)), vec3<i32>(-global0.c.x, min(0i, 30756i), abs(0i)), -var_1.c) << (var_1.a.xyz % vec3<u32>(32u)), var_1.d);
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(select(u_input.a, _wgslsmith_div_vec4_u32(vec4<u32>(1984u, u_input.a.x, 63668u, global0.b.x), vec4<u32>(22270u, var_1.b.x, 0u, 1u)), false), vec4<u32>(~37564u, global0.a.x, ~u_input.a.x, 0u)), vec4<u32>(~min(4294967295u, 18170u), _wgslsmith_dot_vec3_u32(countOneBits(u_input.a.zyw), _wgslsmith_sub_vec3_u32(vec3<u32>(32623u, 1u, u_input.b), vec3<u32>(1u, 162367u, global0.b.x))), 6414u, global0.a.x) ^ ~(abs(var_1.a) & u_input.a), ~(~vec3<i32>(105613i, ~u_input.c, select(var_1.c.x, 45117i, false))), select(!(!var_1.d), vec3<bool>(any(!var_1.d), true, all(vec4<bool>(var_1.d.x, global0.d.x, var_1.d.x, false))), func_2(var_0.zzy, !vec4<bool>(true, var_1.d.x, false, var_1.d.x))));
    let var_3 = 49413u;
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(var_1.c) << (u_input.a.xxx % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, u_input.b), var_3), ~firstLeadingBit(4294967295u), var_3 & _wgslsmith_dot_vec4_u32(global0.a, global0.b)) % vec3<u32>(32u)), 1u, u_input.d << (_wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(1u, global0.a.x, 4294967295u, global0.a.x)), countOneBits(~var_1.a)) % vec4<u32>(32u)));
}

