struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    let var_0 = -3180f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0, 1073f)))))));
    var_1 = arg_0.x;
    var var_2 = ~arg_2.a.x;
    var_2 = 1u;
    return vec2<bool>(!(arg_1.b.x || any(arg_1.b)), true);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(arg_3 * -182f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(trunc(arg_3))), 137f, -1437f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, arg_3)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3, arg_3, 1168f, -357f))) * vec4<f32>(arg_3, arg_3, 1773f, 360f))))));
    let var_1 = -arg_2.b.wwy;
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - _wgslsmith_f_op_f32(-var_0.x)), arg_3, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1177f - var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * -1000f), _wgslsmith_f_op_f32(round(arg_3))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, -1000f, 351f, arg_3))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, var_0.x, arg_3, -460f))) * vec4<f32>(arg_3, arg_3, var_0.x, -837f)))))), !select(vec4<bool>(true, arg_1.b.x, arg_1.b.x, all(vec4<bool>(false, arg_0.x, false, false))), vec4<bool>(false, !arg_1.b.x, arg_1.b.x, any(vec4<bool>(arg_1.b.x, arg_0.x, arg_0.x, true))), select(!vec4<bool>(false, true, arg_1.b.x, false), !vec4<bool>(false, false, arg_1.b.x, arg_0.x), true))));
    let var_2 = Struct_3(true, arg_1);
    var var_3 = arg_2;
    return Struct_3(~_wgslsmith_clamp_u32(var_2.b.a.a.x, _wgslsmith_mult_u32(0u, var_3.a.x), var_3.a.x) < arg_2.a.x, Struct_2(Struct_1(arg_2.a, vec4<i32>(-arg_2.b.x, -arg_2.b.x, i32(-1i) * -29516i, var_2.b.a.b.x)), !select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(var_2.b.b.x, arg_0.x, arg_0.x), !vec3<bool>(var_2.a, var_2.b.b.x, arg_0.x))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: i32) -> bool {
    return arg_2;
}

fn func_5(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_mod_u32(arg_1 << (_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_add_u32(4294967295u, u_input.b), _wgslsmith_clamp_u32(arg_1, arg_1, 38718u)) % 32u), 0u), select(65053u, arg_1, arg_0.x), arg_1);
    var var_1 = -select(_wgslsmith_div_i32(i32(-1i) * -2147483647i, ~33864i), -97i << (~u_input.a.x % 32u), func_4(func_3(arg_0.zz, Struct_2(Struct_1(u_input.a.wzx, vec4<i32>(12738i, -1i, 14992i, -13897i)), vec3<bool>(false, arg_0.x, arg_0.x)), Struct_1(vec3<u32>(0u, arg_1, var_0.x), vec4<i32>(-1i, -7222i, -16617i, -13848i)), -274f), var_0.x, true, 0i)) << (arg_1 % 32u);
    var_1 = ~func_3(arg_0.zw, func_3(!vec2<bool>(arg_0.x, true), Struct_2(Struct_1(vec3<u32>(69648u, arg_1, u_input.a.x), vec4<i32>(2147483647i, -14330i, 30402i, 1i)), arg_0.zwz), Struct_1(firstLeadingBit(var_0), vec4<i32>(0i, -560i, 42961i, 44806i)), 1836f).b, func_3(vec2<bool>(select(arg_0.x, true, false), true), func_3(vec2<bool>(true, arg_0.x), func_3(arg_0.zw, Struct_2(Struct_1(vec3<u32>(arg_1, 0u, arg_1), vec4<i32>(-13103i, -16207i, -2147483647i, -2147483647i)), arg_0.wxz), Struct_1(vec3<u32>(1017u, 27526u, 49567u), vec4<i32>(-1i, -8493i, 1i, 44827i)), 924f).b, Struct_1(var_0, vec4<i32>(6695i, 37519i, 0i, 1i)), -407f).b, Struct_1(vec3<u32>(61653u, 66181u, u_input.b), vec4<i32>(23792i, 5426i, 0i, 25575i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(419f, -1532f)) * -1000f)).b.a, -530f).b.a.b.x;
    var_1 = 1i;
    var var_2 = Struct_2(func_3(!func_2(vec4<f32>(542f, 922f, -337f, -964f), Struct_2(Struct_1(u_input.a.zxy, vec4<i32>(24304i, 0i, 0i, 4795i)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), Struct_1(var_0, vec4<i32>(48117i, 1i, 11310i, 2882i)), all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), Struct_2(func_3(func_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<u32>(37692u, 36544u, 1u), vec4<i32>(1836i, 46691i, 0i, 38568i)), vec3<bool>(true, arg_0.x, arg_0.x)), Struct_1(vec3<u32>(arg_1, 4294967295u, 4294967295u), vec4<i32>(-1i, -16760i, -13948i, -26494i)), 1312f).b.b.xy, Struct_2(Struct_1(vec3<u32>(64884u, 33575u, arg_1), vec4<i32>(-7391i, 27891i, 31593i, -2147483647i)), arg_0.xxx), Struct_1(vec3<u32>(4294967295u, arg_1, 79396u), vec4<i32>(2147483647i, -1i, 2147483647i, -41034i)), _wgslsmith_f_op_f32(f32(-1f) * -881f)).b.a, vec3<bool>(!arg_0.x, true, any(vec2<bool>(true, false)))), func_3(arg_0.yz, Struct_2(Struct_1(vec3<u32>(0u, 48380u, var_0.x), vec4<i32>(-2147483647i, 0i, -1i, 2147483647i)), vec3<bool>(true, arg_0.x, true)), func_3(!arg_0.yx, Struct_2(Struct_1(vec3<u32>(var_0.x, 4294967295u, 0u), vec4<i32>(362i, 1i, -2147483647i, 25685i)), vec3<bool>(arg_0.x, true, arg_0.x)), Struct_1(var_0, vec4<i32>(48316i, -1i, -1i, -3246i)), -176f).b.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -832f), -1153f))).b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_div_f32(1390f, -1494f), true)))).b.a, arg_0.wxz);
    return Struct_1(~func_3(func_3(vec2<bool>(true, true), func_3(arg_0.xx, Struct_2(var_2.a, vec3<bool>(arg_0.x, arg_0.x, var_2.b.x)), var_2.a, -1000f).b, var_2.a, -683f).b.b.xz, func_3(arg_0.zy, Struct_2(var_2.a, vec3<bool>(var_2.b.x, true, true)), Struct_1(vec3<u32>(3998u, u_input.a.x, arg_1), var_2.a.b), _wgslsmith_f_op_f32(ceil(425f))).b, func_3(!arg_0.wx, Struct_2(var_2.a, vec3<bool>(true, true, true)), Struct_1(var_0, vec4<i32>(11618i, 1i, -1i, var_2.a.b.x)), _wgslsmith_div_f32(1298f, 455f)).b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1624f))).b.a.a, var_2.a.b);
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    var var_0 = func_5(vec4<bool>(func_4(func_3(func_2(vec4<f32>(1346f, 1798f, 149f, 715f), Struct_2(Struct_1(u_input.a.ywx, vec4<i32>(-2147483647i, 1i, -2147483647i, -6934i)), vec3<bool>(false, true, true)), Struct_1(vec3<u32>(1u, 2493u, arg_0.x), vec4<i32>(1i, -1i, 2147483647i, 2147483647i)), true), Struct_2(Struct_1(vec3<u32>(0u, 0u, u_input.b), vec4<i32>(26867i, 29663i, 13286i, -1i)), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(43202u, arg_0.x, 202u), vec4<i32>(7351i, 10154i, -6727i, -2147483647i)), 1316f), u_input.a.x, true, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -52471i, -15777i), vec3<i32>(1i, 1i, 1i))), !select(all(vec3<bool>(false, true, false)), true, false), false, all(vec3<bool>(all(vec4<bool>(true, true, false, true)), any(vec4<bool>(false, false, false, false)), true))), 4294967295u);
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(abs(var_0.b.x), var_0.b.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(max(var_0.b.x, 43718i) | var_0.b.x, select(_wgslsmith_sub_i32(1i, -41006i), var_0.b.x, true)), var_0.b.x));
    var var_2 = max(var_0.a, u_input.a.yzw << (~select(var_0.a, vec3<u32>(73443u, 4301u, 0u), func_3(vec2<bool>(false, true), Struct_2(Struct_1(u_input.a.xwy, vec4<i32>(var_0.b.x, var_0.b.x, var_1.x, var_0.b.x)), vec3<bool>(true, true, true)), Struct_1(u_input.a.zzz, var_0.b), 902f).b.b) % vec3<u32>(32u)));
    var var_3 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(-1000f - 289f), -789f, _wgslsmith_f_op_f32(ceil(1307f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, -1000f, 640f, -729f)))), func_3(vec2<bool>(true, true), Struct_2(func_5(vec4<bool>(false, true, false, false), var_0.a.x), vec3<bool>(false, false, true)), func_3(vec2<bool>(true, true), func_3(vec2<bool>(true, false), Struct_2(Struct_1(vec3<u32>(1u, var_2.x, u_input.b), vec4<i32>(13422i, 1109i, 1i, var_1.x)), vec3<bool>(true, false, true)), Struct_1(vec3<u32>(24600u, var_0.a.x, u_input.a.x), var_0.b), 564f).b, func_3(vec2<bool>(false, true), Struct_2(Struct_1(vec3<u32>(57984u, var_2.x, 6076u), vec4<i32>(-1i, var_0.b.x, 2147483647i, -28237i)), vec3<bool>(false, true, false)), Struct_1(u_input.a.zyw, var_0.b), -186f).b.a, _wgslsmith_f_op_f32(f32(-1f) * -1004f)).b.a, 1f).b, Struct_1(vec3<u32>(var_0.a.x, ~1u, var_0.a.x ^ 21254u), vec4<i32>(min(var_0.b.x, var_1.x), min(var_1.x, var_0.b.x), ~var_1.x, select(var_0.b.x, 24233i, false))), false).x, Struct_2(func_5(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(vec2<bool>(false, false), Struct_2(Struct_1(u_input.a.xyz, var_0.b), vec3<bool>(false, false, false)), Struct_1(var_0.a, vec4<i32>(-48429i, var_0.b.x, 27397i, var_0.b.x)), 696f).b.b.x), ~(~arg_0.x)), vec3<bool>(true, false, true)));
    var_0 = Struct_1(select(var_3.b.a.a, u_input.a.zyx, vec3<bool>(var_3.b.b.x, false, true | var_3.b.b.x)), -var_0.b);
    return Struct_3(var_3.a, func_3(var_3.b.b.yy, var_3.b, var_3.b.a, _wgslsmith_f_op_f32(-1f)).b);
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0.b.a;
    var_0 = func_5(!select(select(vec4<bool>(false, arg_0.b.b.x, true, arg_0.b.b.x), vec4<bool>(arg_0.a, true, true, false), !vec4<bool>(false, true, true, arg_0.a)), select(!vec4<bool>(true, false, false, arg_0.a), vec4<bool>(true, false, true, arg_0.a), arg_0.b.b.x), !(!vec4<bool>(true, arg_0.a, true, false))), 47577u);
    var_0 = Struct_1(func_5(vec4<bool>(arg_0.b.b.x, any(!vec4<bool>(true, arg_0.a, arg_0.a, false)), !(arg_0.b.b.x | true), true), select(_wgslsmith_sub_u32(countOneBits(6753u), arg_0.b.a.a.x), 1u, any(!arg_0.b.b.yy))).a, func_5(vec4<bool>(select(arg_0.a, true, arg_0.a), arg_0.a, false, !(!arg_0.a)), 27122u).b);
    var var_1 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(-35357i, ~abs(arg_0.b.a.b.x)), ~(vec2<i32>(var_0.b.x, 1i) & vec2<i32>(arg_1, -7088i))), select(var_0.b.wy, select(_wgslsmith_div_vec2_i32(arg_0.b.a.b.ww, vec2<i32>(arg_1, arg_0.b.a.b.x)), vec2<i32>(-53595i, arg_1) & vec2<i32>(arg_0.b.a.b.x, arg_1), vec2<bool>(true, arg_0.a)), !(!arg_0.a)) & func_3(!func_2(vec4<f32>(-1098f, 541f, 110f, 2013f), arg_0.b, Struct_1(vec3<u32>(arg_0.b.a.a.x, 1u, u_input.a.x), vec4<i32>(-50875i, -2147483647i, 34406i, -1i)), arg_0.a), Struct_2(arg_0.b.a, arg_0.b.b), Struct_1(~var_0.a, abs(var_0.b)), _wgslsmith_f_op_f32(2214f * _wgslsmith_f_op_f32(f32(-1f) * -469f))).b.a.b.yz);
    let var_2 = func_5(!select(select(select(vec4<bool>(true, true, arg_0.b.b.x, arg_0.a), vec4<bool>(false, arg_0.b.b.x, true, arg_0.b.b.x), true), !vec4<bool>(arg_0.a, true, arg_0.a, arg_0.b.b.x), !vec4<bool>(true, true, false, arg_0.a)), vec4<bool>(true, arg_0.b.b.x, any(vec4<bool>(arg_0.b.b.x, false, true, arg_0.a)), arg_0.a & true), !arg_0.b.b.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(max(vec2<u32>(1u, 31027u), arg_0.b.a.a.zy)), var_0.a.zy), ~u_input.b));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, func_6(func_1(vec2<u32>(firstLeadingBit(0u), _wgslsmith_sub_u32(0u, u_input.a.x))), _wgslsmith_mult_i32(i32(-1i) * -59361i, func_3(func_1(u_input.a.xy).b.b.xz, func_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<u32>(113399u, 4294967295u, u_input.b), vec4<i32>(6298i, -3252i, 88185i, -2147483647i)), vec3<bool>(false, true, true)), Struct_1(u_input.a.wzy, vec4<i32>(10477i, 1i, -16429i, -5401i)), 920f).b, Struct_1(u_input.a.ywx, vec4<i32>(-51836i, -38077i, 5057i, -3331i)), -1000f).b.a.b.x)));
    var_0 = func_3(vec2<bool>(false, !var_0.a), func_3(var_0.b.b.xx, func_1(_wgslsmith_sub_vec2_u32(~u_input.a.zy, ~var_0.b.a.a.zy)).b, func_1(select(firstTrailingBit(u_input.a.zx), u_input.a.xx, vec2<bool>(var_0.a, var_0.b.b.x))).b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -1013f))).b, func_3(var_0.b.b.yx, func_1(_wgslsmith_sub_vec2_u32(u_input.a.yx & var_0.b.a.a.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(24347u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)))).b, Struct_1(u_input.a.yzz, var_0.b.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-804f, 358f) * -657f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1469f))))).b.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1625f)))));
    let var_1 = var_0.b.a;
    var_0 = Struct_3(var_0.b.b.x, var_0.b);
    var var_2 = Struct_3(!var_0.b.b.x, var_0.b);
    let var_3 = Struct_1(~countOneBits(func_1(func_1(u_input.a.xy).b.a.a.yx).b.a.a), vec4<i32>(-1i) * -vec4<i32>(11825i >> (var_0.b.a.a.x % 32u), 1i, var_0.b.a.b.x, -1i));
    var_0 = func_1(_wgslsmith_add_vec2_u32(var_2.b.a.a.yz, var_1.a.zz));
    let var_4 = var_2.b;
    var var_5 = func_6(Struct_3(all(func_3(!var_2.b.b.zx, Struct_2(Struct_1(var_3.a, vec4<i32>(var_2.b.a.b.x, -21788i, -56435i, var_4.a.b.x)), var_0.b.b), Struct_1(var_0.b.a.a, vec4<i32>(-2147483647i, -15886i, 1i, var_3.b.x)), _wgslsmith_f_op_f32(min(464f, -191f))).b.b.yy), var_0.b), ~func_1(vec2<u32>(var_4.a.a.x, u_input.b)).b.a.b.x & (_wgslsmith_clamp_i32(-6028i, abs(-24852i), 2147483647i) << (var_0.b.a.a.x % 32u))).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.xw, _wgslsmith_mult_u32(~(~1u), _wgslsmith_add_u32(1u, abs(~27293u))), vec4<i32>(0i, ~var_5.b.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_1.b.x, -1i), ~var_1.b.x, var_3.b.x), _wgslsmith_add_i32(var_3.b.x, var_4.a.b.x)), func_5(!vec4<bool>(var_0.b.b.x, false, var_4.b.x, var_2.a), 19106u).b.x));
}

