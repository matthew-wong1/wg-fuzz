struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: Struct_3 = Struct_3(Struct_1(71621u, -999f), false, 0i, 4294967295u);

var<private> global2: Struct_4;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = global1.a.b;
    var var_1 = false;
    global2 = Struct_4(Struct_1(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.b, global1.a.b))), global2.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.b, global2.c.x, global2.b.a.b, global1.a.b), _wgslsmith_f_op_vec4_f32(-global2.c))))));
    let var_2 = Struct_1(_wgslsmith_sub_u32(37552u, global1.d), -1347f);
    return Struct_4(Struct_1(31267u, global2.a.b), global2.b, vec4<f32>(234f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a.b + -411f))), -1000f, var_2.b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> Struct_3 {
    let var_0 = select(arg_0.b.d & 48232u, 36904u, all(select(vec3<bool>(global2.b.b, all(global0.yy), all(global0.zww)), select(global0.wxz, select(vec3<bool>(false, arg_0.b.b, global0.x), global0.yzw, true), global0.x), false)));
    var var_1 = arg_1.b.b;
    global1 = func_2(vec4<bool>(arg_3.b.b, any(!select(vec4<bool>(false, true, false, true), vec4<bool>(arg_0.b.b, false, global0.x, false), global0.x)), global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(742f, -1958f)), _wgslsmith_f_op_f32(-arg_0.c.x)) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-888f * arg_3.a.b)))), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(54897u, arg_1.b.a.a), _wgslsmith_div_u32(max(_wgslsmith_add_u32(11489u, 1291u), 1u), ~_wgslsmith_div_u32(0u, global1.d)), select(2712u, _wgslsmith_div_u32(var_0, arg_1.a.a), u_input.c <= 4294967295u) >> (~_wgslsmith_div_u32(global2.a.a, 83149u) % 32u)), !select(vec4<bool>(!global2.b.b, false | global0.x, true, true), !vec4<bool>(arg_0.b.b, true, arg_1.b.b, false), select(!vec4<bool>(false, false, arg_0.b.b, false), !vec4<bool>(arg_1.b.b, arg_3.b.b, false, global2.b.b), true)), select(select(vec3<bool>(true, true, global0.x), select(global0.xwz, vec3<bool>(arg_0.b.b, true, true), global0.www), !(!global0.wzx)), vec3<bool>(global2.c.x > _wgslsmith_f_op_f32(-global2.c.x), global0.x, arg_3.b.b), select(true, true, global1.b))).b;
    global2 = arg_0;
    let var_2 = vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(abs(-1691f)), _wgslsmith_f_op_f32(-1000f - -237f), 1975f);
    return func_2(vec4<bool>(true, true && !(arg_0.b.b && false), true, all(vec2<bool>(false, any(global0.xx)))), u_input.a, select(select(!(!vec4<bool>(arg_1.b.b, global1.b, global2.b.b, true)), select(vec4<bool>(arg_1.b.b, true, global2.b.b, arg_3.b.b), !vec4<bool>(global1.b, global1.b, global2.b.b, true), !global0.x), select(select(vec4<bool>(global0.x, false, true, global1.b), vec4<bool>(true, global0.x, global2.b.b, true), false), vec4<bool>(arg_1.b.b, false, true, false), all(vec2<bool>(false, global2.b.b)))), select(vec4<bool>(true, select(false, global1.b, true), arg_0.b.b, true & global2.b.b), select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1.b.b, global1.b, global0.x, true), vec4<bool>(false, true, true, true)), !vec4<bool>(true, false, global1.b, false), all(vec4<bool>(global1.b, true, arg_3.b.b, true))), global1.b), all(select(global0.yy, !global0.yx, !global0.zw))), !(!vec3<bool>(false, any(vec3<bool>(false, true, global0.x)), true))).b;
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> vec2<i32> {
    let var_0 = arg_0;
    global1 = func_3(var_0, arg_0, 1037f, func_2(select(vec4<bool>(arg_1, false, global0.x, all(vec2<bool>(true, false))), vec4<bool>(true, true, all(global0.zww), global1.b), (arg_0.b.a.a & 0u) >= 4294967295u), reverseBits(0u), select(vec4<bool>(any(vec4<bool>(global1.b, var_0.b.b, true, true)), any(vec4<bool>(true, global2.b.b, false, global2.b.b)), arg_0.b.b, arg_0.b.b || false), vec4<bool>(29634u <= var_0.a.a, !global2.b.b, all(global0.xxy), true), arg_1), !(!(!global0.wzz))));
    var var_1 = var_0.b.a;
    var var_2 = arg_0.c.wxx;
    var var_3 = _wgslsmith_add_vec3_i32(select(-vec3<i32>(_wgslsmith_sub_i32(var_0.b.c, global1.c), arg_0.b.c, -2147483647i), vec3<i32>(_wgslsmith_mod_i32(arg_0.b.c, -5566i), -34228i, func_3(Struct_4(global1.a, Struct_3(Struct_1(29462u, 196f), var_0.b.b, global2.b.c, 0u), vec4<f32>(165f, 403f, -1781f, var_1.b)), var_0, arg_0.b.a.b, Struct_4(arg_0.b.a, Struct_3(Struct_1(0u, arg_0.b.a.b), var_0.b.b, global1.c, u_input.a), vec4<f32>(var_0.c.x, 761f, global1.a.b, 1060f))).c) >> (vec3<u32>(_wgslsmith_add_u32(var_1.a, 124812u), ~var_0.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.d, global2.b.a.a, 1u), vec3<u32>(73043u, u_input.a, var_1.a))) % vec3<u32>(32u)), arg_0.b.b), ~(~vec3<i32>(-2147483647i, ~global1.c, 1i)));
    return (var_3.xx << (u_input.d % vec2<u32>(32u))) << (u_input.d % vec2<u32>(32u));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = !(!select(!vec3<bool>(true, global1.b, true), vec3<bool>(true, true, true), true));
    let var_1 = Struct_3(global2.a, !global2.b.b, -35328i, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(37180u, u_input.a), ~u_input.a) & ~(~0u), firstTrailingBit(~global1.d)));
    global0 = !select(!(!vec4<bool>(false, true, var_1.b, global1.b)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1154f) > _wgslsmith_f_op_f32(trunc(global2.a.b)), global0.x, select(global0.x, any(var_0.yy), true), any(arg_2)), all(arg_2));
    global2 = func_2(select(arg_2, arg_2, arg_2), firstTrailingBit(firstTrailingBit(global1.d)), arg_2, select(!arg_2.zwy, vec3<bool>(!(global2.b.b & true), all(!var_0), select(false, global1.b, false) != !global2.b.b), select(global0.xxz, var_0, global0.wyy)));
    let var_2 = _wgslsmith_f_op_f32(func_3(func_2(vec4<bool>(false & global0.x, arg_2.x, all(vec2<bool>(var_1.b, false)), all(vec2<bool>(var_0.x, var_1.b))), func_2(vec4<bool>(true, var_1.b, global0.x, false), abs(var_1.d), select(arg_2, arg_2, var_1.b), select(vec3<bool>(false, false, true), arg_2.zyz, vec3<bool>(global2.b.b, arg_2.x, true))).b.d, arg_2, vec3<bool>(all(var_0), true & global1.b, true)), func_2(!select(arg_2, vec4<bool>(var_1.b, false, var_0.x, false), global0.x), ~(~53430u), arg_2, vec3<bool>(global1.b, true, false && global2.b.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1189f, -353f)) + var_1.a.b))), Struct_4(global1.a, func_3(Struct_4(global2.b.a, var_1, global2.c), Struct_4(Struct_1(1u, -158f), Struct_3(global1.a, global0.x, u_input.e, 13050u), vec4<f32>(var_1.a.b, global2.c.x, -530f, global2.a.b)), _wgslsmith_f_op_f32(abs(265f)), Struct_4(Struct_1(var_1.a.a, var_1.a.b), Struct_3(Struct_1(global2.b.d, -1207f), false, -30524i, 1u), global2.c)), vec4<f32>(-870f, -192f, 342f, -734f))).a.b * 484f);
    return Struct_2(true, Struct_1(_wgslsmith_dot_vec2_u32(u_input.d, reverseBits(vec2<u32>(8999u, 20646u)) | u_input.d), global1.a.b), vec3<f32>(global2.c.x, global1.a.b, var_1.a.b), Struct_1(abs(0u), _wgslsmith_f_op_f32(-arg_1)));
}

fn func_1(arg_0: i32) -> bool {
    global0 = !vec4<bool>(all(vec4<bool>(any(vec2<bool>(global0.x, true)), all(vec3<bool>(false, global0.x, true)), any(global0.zxx), true & global2.b.b)), true, true, true);
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(global1.c, -countOneBits(global2.b.c), _wgslsmith_mult_i32(firstTrailingBit(global2.b.c), global2.b.c), -51510i), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.e, 0i), arg_0), arg_0, global2.b.c ^ global1.c, -1i)) ^ vec4<i32>(u_input.e >> ((reverseBits(11787u) >> (firstTrailingBit(75562u) % 32u)) % 32u), _wgslsmith_mod_i32(global2.b.c, _wgslsmith_sub_i32(~54238i, i32(-1i) * -20398i)), min(_wgslsmith_sub_i32(reverseBits(arg_0), arg_0), -u_input.e), -41476i);
    let var_1 = func_5(func_4(Struct_4(global1.a, func_3(Struct_4(Struct_1(4294967295u, global1.a.b), Struct_3(global1.a, false, -1i, 3005u), vec4<f32>(1059f, global1.a.b, global2.b.a.b, global2.c.x)), func_2(vec4<bool>(true, false, global0.x, true), 106454u, vec4<bool>(false, false, true, global0.x), global0.zxw), _wgslsmith_f_op_f32(round(-1107f)), func_2(vec4<bool>(false, false, global1.b, false), 10771u, vec4<bool>(false, false, false, global2.b.b), global0.zzz)), global2.c), true), 420f, select(vec4<bool>(all(!vec2<bool>(true, global0.x)), false && (845f != global1.a.b), global0.x, !(!global1.b)), !(!vec4<bool>(true, false, global2.b.b, global2.b.b)), reverseBits(-var_0.x) != -_wgslsmith_div_i32(u_input.e, -2147483647i)));
    let var_2 = global1.d;
    var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-1i, global1.c, arg_0, global1.c) >> (vec4<u32>(4294967295u, 22973u, var_1.b.a, global2.b.a.a) % vec4<u32>(32u))), vec4<i32>(select(0i, u_input.e ^ -23983i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 0i, 0i, global2.b.c), vec4<i32>(23060i, 45285i, global1.c, global1.c) ^ vec4<i32>(-28351i, var_0.x, u_input.e, 52994i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(19916i, u_input.e), _wgslsmith_clamp_i32(-1i, -23739i, global1.c)), -81662i)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(max(2147483647i, -_wgslsmith_add_i32(1i >> (u_input.b % 32u), reverseBits(-43562i))));
    var var_1 = Struct_2(false, Struct_1(func_2(vec4<bool>(func_2(vec4<bool>(global0.x, false, false, true), 1u, vec4<bool>(false, true, false, true), vec3<bool>(global0.x, false, global2.b.b)).b.b, u_input.b < global1.d, false, global2.b.b), func_3(Struct_4(global2.a, Struct_3(Struct_1(global2.a.a, 618f), true, 2862i, global2.b.d), vec4<f32>(360f, 1768f, -2525f, global1.a.b)), Struct_4(Struct_1(global2.a.a, global2.b.a.b), Struct_3(Struct_1(u_input.d.x, global2.c.x), false, -2147483647i, u_input.b), vec4<f32>(global2.a.b, 926f, 187f, -2456f)), _wgslsmith_f_op_f32(1000f * -1109f), Struct_4(global1.a, Struct_3(global1.a, global2.b.b, global1.c, global2.b.d), global2.c)).a.a, vec4<bool>(global2.b.b, global1.b, false, false), select(select(global0.ywx, vec3<bool>(true, global1.b, global0.x), global1.b), !global0.wzy, !global0.zzz)).a.a, _wgslsmith_f_op_f32(trunc(global2.c.x))), vec3<f32>(global2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(178f)) * 1257f) + global1.a.b), global1.a.b), func_5((firstLeadingBit(vec2<i32>(0i, -19639i)) >> ((vec2<u32>(global1.a.a, 50295u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (~vec2<u32>(global2.a.a, global2.a.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -163f), select(!select(vec4<bool>(true, true, global1.b, global2.b.b), vec4<bool>(true, global1.b, true, true), global1.b), vec4<bool>(-1i < global2.b.c, func_1(global2.b.c), false, global0.x || global2.b.b), select(vec4<bool>(true, global2.b.b, global0.x, global0.x), !vec4<bool>(false, false, global2.b.b, false), !vec4<bool>(true, global0.x, true, true)))).d);
    var var_2 = countOneBits(vec2<i32>(-20921i, 0i));
    let var_3 = _wgslsmith_div_vec4_f32(global2.c, _wgslsmith_f_op_vec4_f32(-global2.c));
    var var_4 = select(u_input.d, u_input.d, select(select(vec2<bool>(false | var_1.a, true), global0.zy, vec2<bool>(global2.b.b || false, any(global0.ww))), !(!select(global0.yx, vec2<bool>(false, var_1.a), var_1.a)), vec2<bool>(var_1.a, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b, _wgslsmith_f_op_f32(sign(var_3.x)), global2.a.b, 794f)));
}

