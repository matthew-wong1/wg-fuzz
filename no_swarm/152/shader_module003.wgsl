struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
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

var<private> global0: Struct_2 = Struct_2(false, Struct_1(vec4<u32>(0u, 39157u, 1u, 1u), 20167i, 20717u), false, Struct_1(vec4<u32>(14678u, 28065u, 1u, 0u), -1i, 0u), Struct_1(vec4<u32>(4294967295u, 48192u, 4294967295u, 1u), i32(-2147483648), 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    return global0.e.a;
}

fn func_4(arg_0: vec4<u32>) -> bool {
    global0 = Struct_2(global0.a, Struct_1(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(global0.b.c, 31112u)), _wgslsmith_add_u32(48385u, 9886u)), global0.d.a.x, u_input.c.x, firstLeadingBit(30143u)), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(-1i, u_input.a.x)) & u_input.a.x, _wgslsmith_div_u32(6293u, 30124u ^ u_input.c.x) & u_input.b.x), all(vec2<bool>(true, true)), global0.e, Struct_1(func_3(39778u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, u_input.a.x), -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.d.b, -1i, u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), 4294967295u));
    global0 = Struct_2(false, global0.b, true, global0.d, global0.e);
    var var_0 = vec4<i32>(global0.e.b, abs(0i), 20313i, ~u_input.a.x) | select(u_input.a, u_input.a, !(!select(vec4<bool>(global0.c, true, true, false), vec4<bool>(global0.c, global0.a, false, global0.a), vec4<bool>(false, global0.c, true, global0.a))));
    let var_1 = ~max(u_input.b.zy, arg_0.xy);
    let var_2 = !(!select(!select(vec3<bool>(true, false, global0.a), vec3<bool>(global0.a, global0.c, true), vec3<bool>(false, global0.c, global0.c)), vec3<bool>(32858u == u_input.b.x, global0.a || true, true), select(select(vec3<bool>(true, global0.c, true), vec3<bool>(global0.a, global0.a, global0.c), global0.a), vec3<bool>(false, global0.a, true), select(vec3<bool>(true, true, global0.a), vec3<bool>(false, global0.c, global0.a), global0.a))));
    return true;
}

fn func_2() -> Struct_3 {
    global0 = Struct_2(func_4(func_3(80236u)), global0.d, global0.a && !global0.a, Struct_1(~(global0.b.a | _wgslsmith_mod_vec4_u32(u_input.c, u_input.c)), _wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(~u_input.a.x, u_input.a.x)), max(~(~u_input.c.x), u_input.b.x)), Struct_1(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x) >> ((1u | u_input.b.x) % 32u), ~firstTrailingBit(6084u), firstLeadingBit(u_input.b.x), u_input.c.x & ~u_input.c.x), -(~global0.b.b), global0.e.c));
    var var_0 = Struct_3(~vec2<u32>(~(~u_input.b.x), 0u), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-977f, _wgslsmith_div_f32(-1960f, 650f))))), true);
    var_0 = Struct_3(reverseBits(vec2<u32>(func_3(var_0.a.x).x, ~u_input.b.x) << (min(_wgslsmith_mod_vec2_u32(u_input.b.zy, global0.e.a.zw), ~global0.e.a.zx) % vec2<u32>(32u))), var_0.b, any(vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e.b, -1i), vec2<i32>(u_input.a.x, global0.d.b)) == global0.e.b, var_0.c)));
    var var_1 = global0.d;
    let var_2 = false;
    return Struct_3(~(~vec2<u32>(var_1.a.x, func_3(var_0.a.x).x)), var_0.b, var_0.c);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = true;
    global0 = Struct_2(true, Struct_1(global0.b.a, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a.zzx, vec3<i32>(u_input.a.x, 2147483647i, global0.b.b)), ~(-12511i)), global0.e.c), (u_input.a.x << (32111u % 32u)) <= 1i, global0.d, Struct_1(select(_wgslsmith_mod_vec4_u32(u_input.c, u_input.c), func_3(4294967295u), all(vec3<bool>(global0.a, false, true))) & select(vec4<u32>(0u, 35314u, 2104u, 4294967295u) | u_input.c, ~vec4<u32>(4294967295u, arg_2, 24427u, 1u), global0.e.b != -2147483647i), ~(-u_input.a.x) & -29274i, 4294967295u));
    global0 = Struct_2(true, Struct_1(global0.b.a, min(global0.d.b, ~(~0i)), min(~arg_3.a.x, func_2().a.x | (1u << (arg_2 % 32u)))), true | arg_0.x, global0.e, Struct_1(global0.e.a, ~_wgslsmith_mod_i32(countOneBits(-36338i), global0.d.b), _wgslsmith_dot_vec2_u32(u_input.c.yx, ~vec2<u32>(1u, 1u))));
    global0 = Struct_2(6541u == ~arg_2, Struct_1(vec4<u32>(firstLeadingBit(arg_3.a.x), arg_3.a.x, _wgslsmith_mod_u32(0u, arg_2), 0u) ^ func_3(countOneBits(33221u)), (30760i & max(u_input.a.x, -1i)) << ((abs(arg_2) >> (u_input.b.x % 32u)) % 32u), u_input.c.x), true, global0.e, Struct_1(select(vec4<u32>(42816u, func_3(u_input.c.x).x, firstTrailingBit(global0.d.c), _wgslsmith_dot_vec2_u32(vec2<u32>(63178u, 15823u), global0.e.a.yy)), u_input.c, !vec4<bool>(arg_1, arg_0.x, global0.a, true)), ~(-12953i), 1u));
    var var_1 = Struct_1(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(18174u, 4294967295u), vec2<u32>(24290u, 4294967295u)), ~arg_3.a.x, 35374u, arg_3.a.x) >> (global0.d.a % vec4<u32>(32u))), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(2147483647i, u_input.a.x, global0.e.b, global0.e.b) ^ (u_input.a << (vec4<u32>(arg_3.a.x, global0.e.a.x, 31859u, arg_3.a.x) % vec4<u32>(32u))))), global0.b.c);
    return global0.e;
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec2_i32(u_input.a.xw, ~(-u_input.a.yx));
    var var_1 = func_5(vec2<bool>(reverseBits(0i) < ~min(global0.b.b, u_input.a.x), !arg_0), any(!vec2<bool>(false | arg_0, global0.c)), 4294967295u, func_2());
    var var_2 = abs(_wgslsmith_mult_u32(global0.e.a.x, func_5(vec2<bool>(true, true), global0.c, global0.e.a.x, Struct_3(global0.b.a.zw, 1080f, all(vec4<bool>(false, true, arg_0, false)))).a.x));
    let var_3 = Struct_3(_wgslsmith_div_vec2_u32(~u_input.b.yz, ~vec2<u32>(abs(u_input.b.x), global0.e.a.x)), _wgslsmith_f_op_f32(func_2().b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1102f * _wgslsmith_f_op_f32(f32(-1f) * -226f)), _wgslsmith_f_op_f32(-1000f - func_2().b)))), !all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_4 = var_3.b;
    return _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(~(~u_input.b.xy)), firstTrailingBit(~countOneBits(var_1.a.yz))), func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~reverseBits(u_input.c.yzy)) ^ global0.e.a.wzw;
    global0 = Struct_2(reverseBits(~(global0.e.b >> (0u % 32u))) == 9490i, Struct_1(max(~(vec4<u32>(u_input.b.x, global0.e.a.x, 68291u, u_input.c.x) | global0.b.a), firstTrailingBit(vec4<u32>(4294967295u, 29041u, global0.e.c, var_0.x))), global0.e.b, 1u), global0.c, Struct_1(vec4<u32>(_wgslsmith_mod_u32(~0u, var_0.x), ~(~1u), _wgslsmith_dot_vec2_u32(u_input.b.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(20545u, 0u), global0.e.a.zz)), 36537u), 1i, _wgslsmith_dot_vec2_u32(func_1(true), ~(vec2<u32>(1u, global0.d.a.x) & u_input.b.xy))), func_5(!select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.c), vec2<bool>(global0.a, global0.c)), select(vec2<bool>(global0.a, global0.a), vec2<bool>(false, global0.a), true), select(vec2<bool>(true, global0.c), vec2<bool>(true, global0.c), vec2<bool>(global0.c, false))), _wgslsmith_div_f32(3424f, -763f) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, -2083f)))), var_0.x, func_2()));
    global0 = Struct_2(false != any(select(select(vec3<bool>(global0.c, global0.c, false), vec3<bool>(true, true, global0.c), vec3<bool>(global0.c, false, global0.a)), !vec3<bool>(true, true, global0.c), select(vec3<bool>(true, global0.c, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), func_5(select(vec2<bool>(true, !global0.a), vec2<bool>(true, !global0.a), true), true, min(4294967295u, ~global0.e.a.x), Struct_3(vec2<u32>(min(global0.e.c, var_0.x), global0.b.c), -1264f, all(select(vec3<bool>(global0.c, global0.a, global0.a), vec3<bool>(global0.c, false, true), vec3<bool>(true, false, false))))), all(select(vec2<bool>(true, true), select(select(vec2<bool>(global0.c, global0.a), vec2<bool>(false, global0.a), true), vec2<bool>(true, true), false), !(global0.e.b == 8788i))), Struct_1(vec4<u32>(~20292u, global0.b.a.x, u_input.c.x, abs(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 0u, 32283u, var_0.x)))), _wgslsmith_dot_vec4_i32(u_input.a, abs(select(vec4<i32>(-2147483647i, global0.d.b, u_input.a.x, global0.d.b), vec4<i32>(u_input.a.x, global0.d.b, -1i, global0.b.b), global0.a))), 31916u), func_5(vec2<bool>(all(vec2<bool>(true, false)) && any(vec2<bool>(false, false)), any(vec2<bool>(true, true))), !(global0.c & false), func_1(true).x, Struct_3(select(vec2<u32>(4294967295u, 4294967295u), func_1(global0.a), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(931f))), any(select(vec3<bool>(false, true, false), vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, false, false))))));
    global0 = Struct_2(global0.a, func_5(vec2<bool>(all(!vec3<bool>(global0.c, true, true)), true), true, 13235u, Struct_3(~var_0.zz, _wgslsmith_f_op_f32(round(-444f)), any(vec2<bool>(true, true)))), !global0.c, global0.e, func_5(!(!vec2<bool>(global0.c, global0.c)), true, reverseBits(max(_wgslsmith_div_u32(global0.e.a.x, u_input.b.x), func_1(global0.c).x)), func_2()));
    global0 = Struct_2(any(!(!select(vec2<bool>(true, global0.a), vec2<bool>(true, global0.a), global0.a))), Struct_1(u_input.c, u_input.a.x, _wgslsmith_dot_vec3_u32(global0.e.a.xyw, vec3<u32>(4294967295u, global0.e.c, ~global0.e.c))), !global0.a, Struct_1(vec4<u32>(_wgslsmith_sub_u32(func_5(vec2<bool>(true, false), global0.c, global0.e.a.x, Struct_3(vec2<u32>(68006u, u_input.c.x), -872f, false)).c, ~u_input.c.x), 0u, u_input.c.x, global0.d.a.x), 0i & _wgslsmith_div_i32(i32(-1i) * -20975i, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(0u), _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(u_input.c.x, u_input.c.x, u_input.b.x)), _wgslsmith_mult_u32(6183u, global0.b.c), 4846u), func_5(select(vec2<bool>(false, global0.a), vec2<bool>(false, global0.c), vec2<bool>(false, global0.a)), global0.a, var_0.x, Struct_3(u_input.b.xy, 649f, true)).a)), Struct_1(global0.e.a, _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(-83558i, u_input.a.x, -46368i, 0i)), 21074u));
    global0 = Struct_2(true, Struct_1(vec4<u32>(~(~global0.e.a.x), max(13367u | var_0.x, 116152u), _wgslsmith_sub_u32(var_0.x, ~0u), ~(~1u)), _wgslsmith_add_i32(u_input.a.x, global0.e.b), _wgslsmith_sub_u32(~(~global0.b.a.x), countOneBits(0u))), (~0u ^ global0.e.a.x) == ~20405u, global0.d, global0.b);
    global0 = Struct_2(!global0.c || !global0.c, global0.b, true, global0.d, Struct_1(~_wgslsmith_div_vec4_u32(global0.b.a, vec4<u32>(14895u, 0u, global0.b.c, u_input.b.x) >> (u_input.c % vec4<u32>(32u))), -firstTrailingBit(0i), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1229f)));
}

