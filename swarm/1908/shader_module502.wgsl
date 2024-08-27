struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, true, true), 24796u, false, vec2<i32>(i32(-2147483648), 0i));

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 13>;

var<private> global3: bool = true;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(min(arg_0.e, arg_0.a));
    var var_1 = global1.d.x;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 78299u)), abs(vec2<u32>(61506u, 0u))), u_input.d), 13u)];
    var var_3 = global2[_wgslsmith_index_u32(28875u, 13u)];
    global3 = true;
    return select(select(vec3<bool>(true, false, false), !(!(!vec3<bool>(global1.c, global0.a.x, global0.a.x))), (global0.b == var_3.b) && false), vec3<bool>(global0.a.x, select(!any(vec4<bool>(true, arg_0.d, var_3.a.x, global1.a.x)), false, true && all(vec3<bool>(true, false, var_3.a.x))), any(global0.a.zz)), -1i < -(min(-36849i, 1i) & min(var_3.d.x, 2147483647i)));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_vec3_u32(select(abs(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(global0.b, global0.b, 54216u), vec3<u32>(1u, 4294967295u, 0u)))), vec3<u32>(~(global1.b | global0.b), 0u, ~4294967295u), select(!(!global1.a), select(select(vec3<bool>(arg_0, global0.c, global0.a.x), vec3<bool>(true, global0.c, false), vec3<bool>(false, true, global1.c)), func_3(Struct_1(283f, true, global0.a.yz, global0.a.x, 458f)), vec3<bool>(false, arg_0, global0.a.x)), any(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, global0.c), arg_0)))), vec3<u32>(global0.b ^ 88274u, _wgslsmith_div_u32(4278u, ~(~global0.b)), global0.b | ~(global0.b >> (1u % 32u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1396f, _wgslsmith_f_op_f32(min(-716f, -1683f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-701f)))))), -1193f);
    global0 = Struct_2(!(!global0.a), max(_wgslsmith_dot_vec2_u32(var_0.yz, (vec2<u32>(var_0.x, 33617u) >> (var_0.yx % vec2<u32>(32u))) & vec2<u32>(var_0.x, 62577u)), ~_wgslsmith_mult_u32(1u, 51218u)), select(any(global0.a), false, !(!any(vec4<bool>(arg_0, global1.c, global0.a.x, arg_0)))), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.zxx, _wgslsmith_clamp_vec3_i32(u_input.c.zxw << (vec3<u32>(4294967295u, global1.b, 1u) % vec3<u32>(32u)), select(vec3<i32>(global0.d.x, global0.d.x, 2147483647i), u_input.c.zyw, false), vec3<i32>(global0.d.x, -8015i, global0.d.x))), firstTrailingBit(reverseBits(-25153i))));
    global0 = Struct_2(!global0.a, ~26018u | ~firstLeadingBit(select(global1.b, 9821u, false)), any(global1.a.zz), abs(global1.d) | vec2<i32>(~firstLeadingBit(-1i), global0.d.x));
    var var_2 = Struct_2(global1.a, min(~max(~var_0.x, 576u), _wgslsmith_sub_u32(u_input.d, _wgslsmith_div_u32(37784u << (global1.b % 32u), _wgslsmith_mod_u32(4294967295u, global1.b)))), global1.a.x, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.xyy, vec3<i32>(global1.d.x, 64023i, u_input.b.x)), 0i), vec2<i32>(-global1.d.x, -21067i) | _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(2147483647i, -5760i)), global1.d, ~u_input.b)));
    return vec2<u32>(max(global1.b, var_0.x), countOneBits(1u));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = ~(~abs(~func_2(global0.c)));
    var var_1 = select(!select(select(!vec4<bool>(true, global1.a.x, global1.c, true), !vec4<bool>(false, false, global1.a.x, false), !global0.a.x), vec4<bool>(global0.a.x, !global1.c, true, any(global0.a.zy)), select(!vec4<bool>(true, global0.a.x, global1.c, global1.a.x), vec4<bool>(true, false, global1.a.x, global1.a.x), !vec4<bool>(false, global1.c, global1.c, true))), !vec4<bool>(all(vec4<bool>(global0.c, global1.c, global1.a.x, true)), true, any(!vec4<bool>(global0.c, false, global0.a.x, false)), !(var_0.x < var_0.x)), select(select(!select(vec4<bool>(true, global0.c, false, false), vec4<bool>(false, true, true, global0.a.x), vec4<bool>(true, true, global0.a.x, true)), vec4<bool>(any(global1.a.xx), true, any(global0.a), !global1.a.x), func_3(Struct_1(640f, global1.a.x, vec2<bool>(global1.c, global1.a.x), global0.a.x, arg_0)).x), select(!vec4<bool>(true, global1.c, global0.a.x, true), select(select(vec4<bool>(false, global1.a.x, global0.a.x, global1.a.x), vec4<bool>(global1.a.x, true, true, true), vec4<bool>(false, true, global1.c, global0.a.x)), !vec4<bool>(global0.a.x, global0.a.x, global1.a.x, true), vec4<bool>(global0.c, global0.c, true, global1.a.x)), vec4<bool>(global0.a.x && false, func_3(Struct_1(-853f, global1.a.x, vec2<bool>(global1.a.x, global0.a.x), global1.a.x, 833f)).x, func_3(Struct_1(arg_0, global0.a.x, global0.a.xz, true, -138f)).x, false)), select(vec4<bool>(false | global1.c, any(vec4<bool>(false, true, global0.a.x, false)), !global0.c, 1u <= global0.b), !select(vec4<bool>(true, global0.a.x, global1.a.x, false), vec4<bool>(false, global0.c, false, global1.a.x), vec4<bool>(true, false, global1.a.x, true)), global0.c)));
    var var_2 = _wgslsmith_add_i32(max(global1.d.x, -2147483647i), ~(-8696i));
    var var_3 = 193f;
    var_2 = _wgslsmith_clamp_i32(~u_input.a.x, 16665i, ~global1.d.x);
    return vec4<bool>(global1.a.x, u_input.d == _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_0, _wgslsmith_div_vec2_u32(vec2<u32>(14553u, 1u), vec2<u32>(27932u, 19903u))), abs(var_0) ^ (vec2<u32>(1812u, global1.b) | vec2<u32>(var_0.x, 4294967295u))), global0.c, false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(0u, global1.b, ~func_2(true).x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.d, 96202u), _wgslsmith_mod_u32(global0.b, global1.b), global0.b | 69538u), ~countOneBits(1u)), ~reverseBits(17396u)), vec3<u32>(19722u, ~(4294967295u | select(u_input.d, global0.b, true)), (global1.b & ~global1.b) & ~2627u));
    global1 = global2[_wgslsmith_index_u32(u_input.d, 13u)];
    let var_1 = global1.d.x;
    let var_2 = arg_1.e;
    var var_3 = Struct_2(arg_0.wzy, ~_wgslsmith_sub_u32(global0.b, u_input.d), select(select(false, true, !arg_1.d), true, true) & (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 57083u, u_input.d), vec4<u32>(u_input.d, global0.b, 13453u, u_input.d)), 4294967295u) != min(~global1.b, ~1u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-6123i, global1.d.x), min(_wgslsmith_div_vec2_i32(u_input.c.yx, vec2<i32>(arg_2.x, -12161i)) << (~vec2<u32>(global0.b, 14560u) % vec2<u32>(32u)), global1.d)));
    return vec3<u32>(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.b, 52232u, u_input.d) | _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, global1.b, 1u, global1.b), vec4<u32>(u_input.d, 10517u, 46946u, 4294967295u)), ~(~vec4<u32>(u_input.d, var_3.b, global1.b, 6406u))), _wgslsmith_mod_u32(var_3.b, ~abs(u_input.d)), (arg_0.x & true) && func_3(arg_1).x), global0.b, abs(_wgslsmith_sub_u32(u_input.d, 1u) << (abs(var_3.b) % 32u)) << (firstLeadingBit(~func_2(true).x) % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_2.c.x;
    var_0 = !global0.c;
    global2 = array<Struct_2, 13>();
    let var_1 = Struct_2(arg_3.a, firstLeadingBit(24089u), arg_2.b, arg_3.d);
    let var_2 = vec4<bool>(global1.c, arg_3.c, true, false);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.e - arg_0.e) * _wgslsmith_f_op_f32(f32(-1f) * -1020f)), arg_2.a)), true, !global0.a.xx, _wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - -1148f) * -216f), -706f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(-252f, global1.a.x, global1.a.zz, all(vec3<bool>(global0.c | false, all(global1.a.zy), global0.a.x & global0.a.x)), 704f), func_4(!func_1(_wgslsmith_f_op_f32(round(-292f))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1334f)), _wgslsmith_f_op_f32(f32(-1f) * -1055f), true)), !global1.a.x, select(func_1(1000f).yz, global0.a.zz, !global0.a.zz), true, -1129f), vec4<i32>(select(global1.d.x, 3656i, false) ^ -44663i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c.xwz, vec3<i32>(global0.d.x, global0.d.x, global1.d.x)), 1i), 1i, global1.d.x)), Struct_1(_wgslsmith_f_op_f32(abs(266f)), false, vec2<bool>(!func_3(Struct_1(358f, global1.a.x, vec2<bool>(global0.a.x, false), global1.a.x, -608f)).x, true), global1.a.x, 2224f), Struct_2(global1.a, _wgslsmith_mult_u32(firstTrailingBit(countOneBits(128858u)), global1.b), !(_wgslsmith_clamp_i32(global1.d.x, 2147483647i, 31443i) <= select(52480i, -1i, false)), _wgslsmith_mod_vec2_i32(u_input.c.ww, _wgslsmith_div_vec2_i32(abs(vec2<i32>(-19618i, global0.d.x)), ~global0.d))));
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(max(~9595u, global0.b), countOneBits(72098u) ^ (1u | global0.b), 54819u), min(~(~vec3<u32>(4294967295u, 4294967295u, global0.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, 1u, 30168u), _wgslsmith_add_vec3_u32(vec3<u32>(38568u, global0.b, 7320u), vec3<u32>(24467u, 85355u, u_input.d))))), 13u)];
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-773f + var_0.e)), true, !vec2<bool>(var_0.d && func_5(var_0, vec3<u32>(20015u, 95044u, global1.b), var_0, Struct_2(var_1.a, 4294967295u, false, vec2<i32>(-21233i, 27717i))).c.x, global0.a.x), !func_3(var_0).x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))))));
    var_2 = func_5(func_5(var_0, vec3<u32>(0u, var_1.b, ~(~0u)), var_0, global2[_wgslsmith_index_u32(reverseBits(firstLeadingBit(0u)), 13u)]), func_4(select(vec4<bool>(false, !global1.c, var_0.c.x | false, var_2.b), !vec4<bool>(var_0.c.x, var_0.b, global0.c, global0.c), !vec4<bool>(var_2.b, var_1.c, true, var_2.c.x)), Struct_1(var_0.a, false, vec2<bool>(true, true), true, 1000f), select(-vec4<i32>(-2147483647i, global0.d.x, global0.d.x, global1.d.x), u_input.c & _wgslsmith_clamp_vec4_i32(u_input.c, u_input.c, vec4<i32>(-15678i, global1.d.x, -35636i, -34535i)), any(global0.a))), var_0, global2[_wgslsmith_index_u32(57431u, 13u)]);
    global3 = any(vec4<bool>(select(false & var_2.c.x, var_1.a.x, global0.a.x), var_1.c, var_1.c, var_2.c.x)) & !global0.a.x;
    let var_3 = global1.d.x;
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.d, func_2(var_2.d || var_0.b).x, ~(0u << (global1.b % 32u))), var_2.e);
}

