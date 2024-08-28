struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    let var_0 = !select(select(vec4<bool>(global0.x, global0.x, !global0.x, !arg_0.x), vec4<bool>(true, true, true, true), true), !(!(!vec4<bool>(global0.x, true, false, arg_0.x))), (u_input.c < _wgslsmith_mult_i32(1i, u_input.a.x)) && true);
    let var_1 = Struct_2(Struct_1(-244f), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -320f))))), vec2<i32>(u_input.a.x, 1i), Struct_1(_wgslsmith_f_op_f32(select(-701f, 1266f, var_0.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2498f * 139f), _wgslsmith_f_op_f32(step(1229f, 1000f))))));
    var var_2 = Struct_3(-_wgslsmith_clamp_i32(abs(var_1.c.x), ~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, var_1.c.x, -21720i), u_input.a)) << (u_input.d.x % 32u), 1038f, vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_add_u32(~17788u, _wgslsmith_sub_u32(4294967295u, u_input.d.x))), _wgslsmith_add_u32(~u_input.d.x, 33u)), vec2<i32>(u_input.c, ~reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.xy, var_1.c))), vec4<i32>(-((-2147483647i & var_1.c.x) & select(u_input.c, u_input.a.x, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-2147483647i, 12922i), 2338i), var_1.c), _wgslsmith_div_i32(var_1.c.x << (_wgslsmith_mult_u32(4294967295u, 1u) % 32u), 1i), -19644i));
    let var_3 = !(!(!select(vec4<bool>(arg_0.x, false, true, false), select(var_0, vec4<bool>(global0.x, var_0.x, global0.x, false), arg_0.x), true)));
    var var_4 = var_2.a;
    return var_2.c;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(arg_1), Struct_1(988f), vec2<i32>((u_input.c | -u_input.c) & (_wgslsmith_mod_i32(u_input.a.x, 1i) >> (select(u_input.b.x, 1u, false) % 32u)), -2147483647i & u_input.a.x), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, arg_1, false))), 1484f)), Struct_1(arg_1));
    var var_1 = select(!global0.zzy, !vec3<bool>(any(vec3<bool>(global0.x, arg_3, arg_3)), global0.x, all(vec2<bool>(global0.x, true)) | arg_3), false);
    var var_2 = ~_wgslsmith_add_vec2_u32(func_3(global0.wxy), ~max(~vec2<u32>(arg_0, 4294967295u), select(u_input.d.zy, vec2<u32>(u_input.b.x, arg_0), var_1.x)));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1026f, _wgslsmith_f_op_f32(min(arg_1, -197f)))))), var_0.b, var_0.c, Struct_1(-1389f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-702f, -919f)))) - 418f)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, var_0.e.a, arg_1, var_0.d.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1723f, 1439f, var_3.b.a, var_3.e.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.a, -566f, -178f, -359f) - vec4<f32>(var_0.d.a, var_3.b.a, var_0.d.a, 186f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, var_3.a.a, 678f, arg_1))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.a.a, -1000f, 1000f, var_3.b.a))))))));
    return -574f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    global0 = !vec4<bool>(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, true, true, global0.x))), true, !global0.x, all(global0.yww));
    var var_0 = Struct_3(-2147483647i, -1913f, _wgslsmith_mod_vec2_u32(max(_wgslsmith_div_vec2_u32(u_input.d.zy, ~u_input.d.yx), vec2<u32>(1u, ~19244u)), vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, ~3098u), u_input.b.x)), -vec2<i32>(~2147483647i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, 0i, u_input.c), vec4<i32>(-14036i, arg_2, -26224i, arg_2)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_2, u_input.c, arg_2), vec4<i32>(u_input.c, u_input.a.x, u_input.c, -1i))), countOneBits(reverseBits(vec4<i32>(arg_2, u_input.c, -1i, 25682i)))) & -vec4<i32>(countOneBits(-2147483647i), u_input.c, countOneBits(u_input.a.x), u_input.c << (33441u % 32u)));
    let var_1 = var_0.a;
    global1 = false;
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~max(var_0.e.yyz, min(u_input.a, vec3<i32>(var_0.e.x, -51792i, arg_2))), ~vec3<i32>(u_input.a.x << (0u % 32u), 0i, var_0.d.x | arg_2), vec3<i32>(~(arg_2 | 22885i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_0.e, var_0.e), vec4<i32>(43959i, -48322i, 5165i, -1i)), u_input.a.x)), -(vec3<i32>(-1i) * -var_0.e.yyx));
    return Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - -172f))), 1f)), arg_1, reverseBits(var_0.e.xx), arg_1, Struct_1(920f));
}

fn func_1() -> bool {
    var var_0 = -((-(vec4<i32>(1i, u_input.a.x, u_input.a.x, -2147483647i) << (vec4<u32>(u_input.d.x, 56589u, 22724u, u_input.d.x) % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))) >> (min(abs(vec4<u32>(u_input.b.x, u_input.d.x, u_input.b.x, 15275u)), ~(~vec4<u32>(1u, u_input.b.x, 0u, 4294967295u))) % vec4<u32>(32u)));
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-655f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1337f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~4294967295u, _wgslsmith_f_op_f32(-1000f - 681f), abs(u_input.d.x), global0.x && false)) * _wgslsmith_f_op_f32(f32(-1f) * -1513f))), Struct_1(-642f), _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(var_0.x, -32853i)));
    var var_2 = countOneBits(~(-(~u_input.a.x))) > 7954i;
    let var_3 = Struct_3(var_1.c.x, var_1.d.a, u_input.d.zy, countOneBits(-firstLeadingBit(-vec2<i32>(2147483647i, -16269i))), vec4<i32>(i32(-1i) * -2147483647i, ~min(-7073i, 1i << (1u % 32u)), 0i, -var_0.x));
    var var_4 = global0.yy;
    return all(vec4<bool>(global0.x, !(!global0.x), _wgslsmith_div_f32(1405f, _wgslsmith_f_op_f32(-1963f + var_1.a.a)) <= var_1.d.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, global0.x, func_1(), true);
    var var_0 = vec4<u32>(max(_wgslsmith_div_u32(~1u, ~u_input.d.x), _wgslsmith_add_u32(70865u, _wgslsmith_add_u32(20769u, min(32153u, 0u)))), select(45177u, 1u, -u_input.a.x > _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -2147483647i, -2147483647i))), 1u, ~(~1u));
    var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u << (select(abs(u_input.d.x), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), all(vec4<bool>(global0.x, true, true, false))) % 32u), var_0.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_0.ww, vec2<u32>(u_input.d.x, u_input.d.x)) & select(1u, 28911u, global0.x), _wgslsmith_sub_u32(4294967295u << (u_input.b.x % 32u), _wgslsmith_clamp_u32(u_input.d.x, 4294967295u, var_0.x)), 1u), 52414u), vec4<u32>(countOneBits(~_wgslsmith_div_u32(1u, var_0.x)), _wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b.x), vec2<u32>(56280u, var_0.x))), 1u), _wgslsmith_div_u32(4294967295u, var_0.x), var_0.x));
    var_0 = ~_wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(781u, 41216u, 1u, 51235u), vec4<u32>(u_input.d.x, u_input.d.x, 4215u, 26773u)), select(vec4<u32>(34232u, u_input.d.x, 51685u, 0u), vec4<u32>(1u, 2285u, 39436u, 0u), global0.x)), vec4<u32>(countOneBits(u_input.d.x | 701u), ~1u, 52533u, var_0.x));
    let var_1 = Struct_3(_wgslsmith_sub_i32(43784i, i32(-1i) * -9230i), _wgslsmith_f_op_f32(f32(-1f) * -1758f), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, var_0.x), _wgslsmith_mod_vec2_u32(~vec2<u32>(64272u, u_input.d.x), vec2<u32>(u_input.b.x, u_input.d.x)), ~vec2<u32>(var_0.x, var_0.x) << (_wgslsmith_clamp_vec2_u32(u_input.b.xx, vec2<u32>(0u, u_input.d.x), vec2<u32>(var_0.x, u_input.d.x)) % vec2<u32>(32u))), vec2<i32>(~u_input.c, -abs(~u_input.c)), min(_wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.a.x, u_input.c), vec4<i32>(u_input.c, 0i, u_input.a.x, 1i)), firstLeadingBit(vec4<i32>(u_input.c, -30979i, u_input.c, 17174i)), select(vec4<i32>(u_input.c, 0i, 38959i, u_input.c), vec4<i32>(u_input.a.x, 66723i, -11414i, u_input.a.x), vec4<bool>(true, global0.x, false, global0.x)) | vec4<i32>(-45117i, 0i, 20445i, u_input.c)), ~abs(-vec4<i32>(-2147483647i, 0i, 1i, 48743i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(2147483647i, u_input.c)), -min(var_1.e.x, -1i)), firstTrailingBit(select(u_input.c, abs(57438i), global0.x))), firstTrailingBit(~vec3<i32>(abs(u_input.a.x), ~var_1.a, i32(-1i) * -2147483647i)));
}

