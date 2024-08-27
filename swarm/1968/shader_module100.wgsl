struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(i32(-1i) * -45110i);
    var var_1 = any(vec3<bool>(false, true, all(select(select(vec4<bool>(false, false, global0.x, true), vec4<bool>(false, false, true, true), global0.x), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(false, global0.x, global0.x, false)), !vec4<bool>(global0.x, false, global0.x, global0.x)))));
    var var_2 = Struct_2(u_input.a);
    var_2 = Struct_2(-2147483647i);
    var var_3 = Struct_2(1i);
    return ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(42457u, 50515u, 39542u, 1u), vec4<u32>(4294967295u, 13444u, 69176u, 0u)), 1u), reverseBits(firstLeadingBit(vec4<u32>(4294967295u, 101861u, 36376u, 0u))), ~vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_2() -> bool {
    var var_0 = -23099i;
    var var_1 = ~firstTrailingBit(_wgslsmith_add_vec4_u32(select(~vec4<u32>(87857u, 31713u, 4294967295u, 1u), min(vec4<u32>(42068u, 0u, 75055u, 1u), vec4<u32>(12994u, 87748u, 2605u, 4294967295u)), global0.x), func_3()));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f * 548f)), -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1812f)))), -186f, 0u <= var_1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-593f * -324f), _wgslsmith_f_op_f32(step(350f, -1112f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -953f))));
    global0 = select(select(!vec2<bool>(u_input.a > u_input.a, global0.x), !(!select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), true)), true), select(select(select(vec2<bool>(false, true), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, false)), !select(vec2<bool>(true, false), vec2<bool>(global0.x, global0.x), false), all(vec3<bool>(global0.x, false, global0.x))), select(select(select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), !vec2<bool>(global0.x, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(!global0.x, global0.x | global0.x)), true), !select(global0.x, any(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), global0.x)), global0.x));
    var var_3 = !(!select(select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), vec2<bool>(false, true)), !vec2<bool>(true, global0.x), vec2<bool>(false, global0.x)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), vec2<bool>(true, true)), vec2<bool>(true, global0.x)), global0.x));
    return any(!select(select(vec4<bool>(false, global0.x, true, var_3.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, global0.x, var_3.x, false), global0.x), true), !(!vec4<bool>(var_3.x, global0.x, var_3.x, global0.x)), true));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_2(arg_1.d.x);
    global0 = !select(!select(vec2<bool>(false, arg_1.c.x), !vec2<bool>(arg_1.c.x, false), arg_1.c.x), arg_1.c.zy, !arg_1.c.zy);
    global0 = vec2<bool>(false, arg_1.c.x);
    global0 = select(vec2<bool>(select(!arg_0.x, false, arg_0.x), all(arg_0.xw)), select(select(arg_0.yw, select(select(vec2<bool>(false, arg_1.c.x), arg_0.yw, vec2<bool>(arg_0.x, arg_0.x)), select(arg_1.c.xz, vec2<bool>(arg_1.c.x, arg_1.c.x), arg_1.c.yy), vec2<bool>(global0.x, arg_1.c.x)), arg_1.c.yz), arg_1.c.zz, select(arg_1.c.xz, select(arg_1.c.zz, vec2<bool>(true, false), select(arg_0.yz, arg_0.wy, arg_0.xz)), arg_0.x)), arg_0.x | !all(arg_1.c.zy));
    global0 = !arg_0.yy;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1476f * _wgslsmith_f_op_f32(min(arg_1.b.x, 164f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)) * arg_1.b.x))), arg_1.b, arg_0.wwy, vec4<i32>(firstLeadingBit(0i ^ arg_1.d.x), min(reverseBits(-54022i), reverseBits(-1i)), firstLeadingBit(32264i), 0i) << (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec2<i32> {
    let var_0 = func_4(select(select(vec4<bool>(!global0.x, arg_0.x != -1048f, global0.x || global0.x, true), vec4<bool>(false, true, all(vec2<bool>(global0.x, global0.x)), func_2()), true), select(vec4<bool>(global0.x & true, global0.x, false, true), !vec4<bool>(global0.x, global0.x, global0.x, true), global0.x), select(vec4<bool>(global0.x, true, global0.x, any(vec4<bool>(false, false, false, global0.x))), select(vec4<bool>(global0.x, true, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, global0.x, false), true), (-38419i <= arg_1) && all(vec2<bool>(global0.x, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, -1551f), arg_0)), arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), 1802f, _wgslsmith_f_op_f32(-950f * -788f))), select(vec3<bool>(u_input.a != u_input.a, -2147483647i <= u_input.a, any(vec2<bool>(false, global0.x))), !select(vec3<bool>(false, global0.x, true), vec3<bool>(false, false, global0.x), false), false), min(abs(vec4<i32>(u_input.a, -71228i, -45459i, u_input.a)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), -select(vec4<i32>(arg_1, arg_1, 0i, 19823i), vec4<i32>(2147483647i, 1i, arg_1, u_input.a), vec4<bool>(true, global0.x, global0.x, global0.x)))), -1183f);
    let var_1 = -749f;
    let var_2 = _wgslsmith_add_vec3_i32(var_0.d.zwz, func_4(vec4<bool>(false, true, var_0.c.x, !global0.x), var_0, _wgslsmith_f_op_f32(max(-476f, _wgslsmith_f_op_f32(arg_0.x - var_0.a.x)))).d.wxy & vec3<i32>(-44449i, -1i, -arg_1 | arg_1));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 1u), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 0u, 2702u, 7770u), vec4<u32>(23499u, 0u, 5431u, 1981u), vec4<bool>(var_0.c.x, true, global0.x, global0.x)), vec4<u32>(0u, 61876u, 937u, 0u)), _wgslsmith_div_u32(~15213u, ~50065u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 16660u), vec3<u32>(10194u, 4294967295u, 24319u)))));
    var var_4 = Struct_2(~25609i);
    return var_2.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>((i32(-1i) * -1i) | u_input.a, 5204i), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -56645i), func_1(vec2<f32>(-723f, 191f), u_input.a)), vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(0i, u_input.a)), abs(0i)));
    var var_1 = reverseBits(select(-_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, 2147483647i) ^ vec2<i32>(-21862i, var_0.x), vec2<i32>(var_0.x, var_0.x) << (vec2<u32>(43479u, 1u) % vec2<u32>(32u))), reverseBits(firstLeadingBit(func_4(vec4<bool>(global0.x, true, false, true), Struct_1(vec2<f32>(577f, -1715f), vec3<f32>(-1251f, 2115f, 117f), vec3<bool>(global0.x, true, global0.x), vec4<i32>(var_0.x, var_0.x, u_input.a, 1078i)), -2376f).d.xx)), true));
    global0 = vec2<bool>(func_4(select(select(!vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), false)), vec4<bool>(all(vec2<bool>(global0.x, true)), true, true, global0.x), vec4<bool>(true, global0.x && true, !global0.x, true)), func_4(select(select(vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(true, false, global0.x, global0.x), true), vec4<bool>(global0.x, true, false, true), !vec4<bool>(true, global0.x, false, true)), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(601f, 1128f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, -1956f, 1106f)), vec3<bool>(false, true, true), -vec4<i32>(1i, u_input.a, 9964i, 0i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f), -805f)), 555f).c.x, true);
    var_1 = vec2<i32>(-12372i, 45696i);
    var var_2 = func_4(!select(select(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, true, false, true), global0.x), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, false, global0.x, global0.x), global0.x), true), vec4<bool>(true, select(true, true, global0.x), any(vec4<bool>(false, true, false, false)), all(vec2<bool>(global0.x, global0.x))), select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, false, global0.x, true), global0.x), vec4<bool>(global0.x, true, global0.x, true), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, global0.x, false, global0.x), false))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1326f, 826f)), vec2<f32>(-1587f, -466f)))), vec3<f32>(1f, 1f, 1f), select(select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, true)), vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, global0.x)), !(!vec3<bool>(global0.x, false, global0.x)), true), vec4<i32>(_wgslsmith_clamp_i32(1i, 2147483647i | var_0.x, var_0.x & var_1.x), i32(-1i) * -2147483647i, 0i, -1i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1133f))));
    var var_3 = vec2<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(30673u, 43306u), vec2<u32>(13084u, 1u)), countOneBits(0u)), abs(1u), ~_wgslsmith_div_u32(1u, 54053u)), _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(70720u, 42693u), vec2<u32>(34290u, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(9208u, 29643u), vec2<u32>(0u, 36559u))) | _wgslsmith_add_u32(0u >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(13341u, 49371u), vec2<u32>(1u, 4294967295u)))));
    let var_4 = _wgslsmith_mod_vec2_u32(~vec2<u32>(var_3.x, var_3.x), vec2<u32>(_wgslsmith_div_u32(34770u, firstLeadingBit(max(var_3.x, 0u))), var_3.x));
    var var_5 = _wgslsmith_dot_vec2_i32(abs(firstLeadingBit(vec2<i32>(2147483647i, 2147483647i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i >> (var_3.x % 32u), -1301i), vec2<i32>(select(var_0.x, -1i, true), ~var_1.x), countOneBits(vec2<i32>(2147483647i, 1i)))) >> (var_3.x % 32u);
    var var_6 = var_2.d.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec3_i32(-var_2.d.zzx ^ -var_2.d.wzz, _wgslsmith_mult_vec3_i32(var_2.d.wyy, var_2.d.xyz))));
}

