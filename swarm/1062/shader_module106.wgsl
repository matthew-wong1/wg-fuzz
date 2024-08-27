struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global1: array<Struct_2, 30>;

var<private> global2: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    return !vec2<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, true)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    var var_0 = vec2<i32>(-max(arg_0.b.x, firstLeadingBit(arg_1.b.x & -14275i)), arg_0.b.x | ~(-1i));
    var var_1 = arg_2 >> ((((arg_0.d | 1u) << (40434u % 32u)) & ~36108u) % 32u);
    let var_2 = !(!select(vec2<bool>(false, arg_0.a.x < 134f), vec2<bool>(true, true), func_3()));
    global1 = array<Struct_2, 30>();
    var_0 = min(arg_0.b.zx, vec2<i32>(arg_0.b.x, 2147483647i));
    return global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~arg_1.d, firstTrailingBit(~81386u & _wgslsmith_mod_u32(arg_2, u_input.a.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, arg_0.c)), ~u_input.a.zx), 1u)), 30u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global2 = 1u;
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_2.c)));
    let var_1 = (~select(~vec4<i32>(1i, -52899i, arg_2.b.b.x, 0i), max(vec4<i32>(arg_1.b.x, -1i, arg_2.b.b.x, arg_1.b.x), vec4<i32>(arg_2.a.b.x, arg_1.b.x, 1i, arg_1.b.x)), arg_1.b.x == arg_1.b.x) & select(select(min(vec4<i32>(arg_2.a.b.x, 30505i, 44036i, arg_1.b.x), vec4<i32>(2147483647i, arg_2.b.b.x, 0i, arg_2.a.b.x)), vec4<i32>(69740i, -38512i, -2147483647i, arg_2.a.b.x), true), ~min(vec4<i32>(-23154i, arg_2.b.b.x, -1i, 16266i), vec4<i32>(arg_2.b.b.x, arg_2.b.b.x, arg_2.b.b.x, -2147483647i)), vec4<bool>(true, true, true, true))) | vec4<i32>(arg_2.b.b.x, arg_1.b.x, arg_1.b.x, 2147483647i);
    let var_2 = Struct_2(arg_2.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1375f, 687f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + _wgslsmith_f_op_f32(abs(-571f)))), arg_1.b & vec3<i32>(countOneBits(arg_1.b.x), arg_2.b.b.x, max(arg_1.b.x, 0i)), u_input.a.x, ~28447u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(396f, 776f, 1052f, -522f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1743f, 1183f, -1343f, 912f), arg_2.c)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.c * arg_2.c))))));
    let var_3 = select(!vec2<bool>(!(0i > arg_2.b.b.x), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))), !func_3(), !(!(!func_3())));
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-501f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(279f, -521f)))))), vec3<i32>(_wgslsmith_dot_vec4_i32(var_1, ~countOneBits(var_1)), -arg_2.b.b.x, _wgslsmith_mult_i32(var_2.a.b.x, arg_2.b.b.x)), _wgslsmith_div_u32(_wgslsmith_div_u32(1u & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_2.b.c, arg_1.c), u_input.a), 12200u), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(58599u, 3103u), abs(0u))), _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(~1u, 78123u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<u32>) -> u32 {
    global2 = 1u;
    global0 = array<vec3<bool>, 3>();
    return arg_3.x;
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = vec3<u32>(func_5(u_input.a, func_4(arg_0.zz, Struct_1(_wgslsmith_f_op_vec2_f32(floor(arg_0.yz)), ~vec3<i32>(2147483647i, 1i, 2147483647i), firstTrailingBit(1u), 1u), func_2(Struct_1(arg_0.zy, vec3<i32>(0i, 2147483647i, 2147483647i), u_input.a.x, u_input.a.x), Struct_1(arg_0.xz, vec3<i32>(1i, -2147483647i, 98728i), u_input.a.x, 1u), _wgslsmith_mod_u32(57637u, u_input.a.x))), vec3<i32>(-abs(1i), ~(~(-2147483647i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, -53167i), -10244i >> (u_input.a.x % 32u))), _wgslsmith_sub_vec2_u32(u_input.a.xz, ~(~u_input.a.xy))), 1u, func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<f32>(arg_0.x, arg_0.x), vec3<i32>(-691i, 0i, 2147483647i), u_input.a.x, u_input.a.x), Struct_1(vec2<f32>(arg_0.x, -517f), vec3<i32>(2147483647i, 0i, -4935i), u_input.a.x, u_input.a.x), 19941u).a.a * arg_0.yz))), func_2(Struct_1(_wgslsmith_div_vec2_f32(arg_0.xy, arg_0.yx), -vec3<i32>(-13183i, 30824i, 0i), 48449u, 4294967295u), func_2(Struct_1(arg_0.zx, vec3<i32>(-2147483647i, 7589i, 14762i), u_input.a.x, 10482u), func_4(vec2<f32>(1822f, arg_0.x), Struct_1(arg_0.zx, vec3<i32>(40461i, -2147483647i, 1i), u_input.a.x, 64353u), global1[_wgslsmith_index_u32(0u, 30u)]), ~72972u).b, _wgslsmith_add_u32(14683u, _wgslsmith_add_u32(u_input.a.x, 0u))).b, func_2(func_2(Struct_1(arg_0.xz, vec3<i32>(-49974i, -2147483647i, 1i), 4294967295u, u_input.a.x), func_2(Struct_1(vec2<f32>(181f, 1602f), vec3<i32>(-20578i, 1i, 0i), 19055u, 4294967295u), Struct_1(vec2<f32>(arg_0.x, -580f), vec3<i32>(1i, -22216i, 17613i), 4294967295u, 69898u), 37339u).a, _wgslsmith_mult_u32(22054u, u_input.a.x)).b, func_4(vec2<f32>(932f, arg_0.x), func_4(vec2<f32>(504f, -876f), Struct_1(vec2<f32>(656f, arg_0.x), vec3<i32>(0i, 0i, -1i), u_input.a.x, 4294967295u), global1[_wgslsmith_index_u32(1u, 30u)]), Struct_2(Struct_1(arg_0.yx, vec3<i32>(-1i, 7301i, 1i), u_input.a.x, u_input.a.x), Struct_1(vec2<f32>(1890f, 769f), vec3<i32>(-2147483647i, 27823i, 0i), 17022u, u_input.a.x), vec4<f32>(arg_0.x, -1231f, arg_0.x, 1000f))), func_5(~vec3<u32>(4294967295u, 21941u, u_input.a.x), func_2(Struct_1(arg_0.yx, vec3<i32>(10932i, 26437i, 11738i), u_input.a.x, 83603u), Struct_1(arg_0.xx, vec3<i32>(-1916i, -2041i, -7623i), 47137u, u_input.a.x), 51823u).a, vec3<i32>(1i, 1i, 1i), max(vec2<u32>(1u, 0u), vec2<u32>(13836u, u_input.a.x))))).d);
    global1 = array<Struct_2, 30>();
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, u_input.a.x), u_input.a)), func_5(abs(var_0), func_2(Struct_1(arg_0.xy, vec3<i32>(0i, 0i, 21861i), var_0.x, u_input.a.x), Struct_1(arg_0.xy, vec3<i32>(-65625i, -16568i, -18156i), 0u, u_input.a.x), u_input.a.x).b, ~vec3<i32>(97346i, -1i, 1257i), vec2<u32>(var_0.x, var_0.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 31151u), ~var_0.x), vec3<u32>(reverseBits(u_input.a.x), ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1242u), u_input.a)), ~vec3<u32>(var_0.x, 4294967295u, 4294967295u))), 0u | _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 22129u, 68778u, 56651u), vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x))), func_2(func_2(Struct_1(vec2<f32>(294f, arg_0.x), vec3<i32>(-5256i, -6047i, 0i), 0u, 4294967295u), Struct_1(vec2<f32>(-909f, -1513f), vec3<i32>(1i, -1i, -10033i), var_0.x, u_input.a.x), 48280u).a, func_4(arg_0.yy, Struct_1(vec2<f32>(arg_0.x, arg_0.x), vec3<i32>(21168i, 15119i, 1i), 4294967295u, var_0.x), global1[_wgslsmith_index_u32(1u, 30u)]), 66913u).b.d));
    var var_2 = global1[_wgslsmith_index_u32(~u_input.a.x, 30u)];
    var var_3 = 1u;
    return !select(func_3(), select(vec2<bool>(all(vec2<bool>(true, false)), false), vec2<bool>(true, true), !all(vec2<bool>(false, false))), func_3());
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<u32> {
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    let var_0 = !(!(!vec4<bool>(arg_0.x, !arg_0.x, arg_0.x, arg_0.x)));
    let var_1 = u_input.a.x;
    var var_2 = max(arg_1, ~(~(~(vec4<i32>(-1i, arg_1.x, 2147483647i, arg_2.b.x) ^ vec4<i32>(arg_1.x, -4940i, arg_1.x, 1i)))));
    return vec4<u32>(4294967295u, func_5(reverseBits(u_input.a), func_4(arg_2.a, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1324f, arg_2.a.x) - vec2<f32>(877f, arg_2.a.x)), ~vec3<i32>(-1i, 16233i, var_2.x), 44144u, _wgslsmith_sub_u32(arg_2.d, 4294967295u)), func_2(Struct_1(vec2<f32>(-1024f, arg_2.a.x), vec3<i32>(arg_2.b.x, arg_1.x, 44938i), 12600u, u_input.a.x), func_2(Struct_1(arg_2.a, vec3<i32>(0i, arg_2.b.x, arg_2.b.x), 12112u, u_input.a.x), Struct_1(arg_2.a, arg_2.b, u_input.a.x, 30982u), 4294967295u).a, var_1 ^ 19990u)), vec3<i32>(-17548i, -1i, 27493i) >> (_wgslsmith_div_vec3_u32(~u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 43469u)) % vec3<u32>(32u)), _wgslsmith_clamp_vec2_u32(~u_input.a.zy, ~(~u_input.a.yy), vec2<u32>(58852u, 14940u))), u_input.a.x, _wgslsmith_mod_u32(~(~0u & arg_2.d), ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~u_input.a.x);
    var var_0 = global1[_wgslsmith_index_u32(~2673u, 30u)];
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(var_0.b.a - _wgslsmith_f_op_vec2_f32(-var_0.c.zy)), var_0.a.b ^ var_0.a.b, 1u, _wgslsmith_dot_vec4_u32(func_6(func_1(vec3<f32>(var_0.b.a.x, -2165f, var_0.a.a.x)), abs(vec4<i32>(var_0.b.b.x, var_0.a.b.x, 589i, var_0.b.b.x)), func_4(var_0.c.wy, Struct_1(vec2<f32>(var_0.b.a.x, var_0.c.x), var_0.a.b, u_input.a.x, var_0.b.d), Struct_2(Struct_1(vec2<f32>(var_0.c.x, var_0.a.a.x), var_0.a.b, u_input.a.x, 35354u), Struct_1(vec2<f32>(var_0.c.x, -600f), vec3<i32>(2147483647i, var_0.a.b.x, 1i), 0u, 0u), vec4<f32>(var_0.b.a.x, var_0.b.a.x, -2269f, 257f)))), ~vec4<u32>(var_0.b.d, 0u, u_input.a.x, var_0.a.c))), var_0.a, var_0.c);
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    var var_1 = Struct_1(var_0.b.a, vec3<i32>(var_0.b.b.x, _wgslsmith_mult_i32(var_0.a.b.x, var_0.b.b.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.b.b.xy, vec2<i32>(-1i, var_0.b.b.x)), -vec2<i32>(var_0.a.b.x, 0i))), u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, min(func_4(vec2<f32>(var_0.c.x, 1217f), var_0.a, global1[_wgslsmith_index_u32(var_0.a.d, 30u)]).c << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, var_0.a.c), vec3<u32>(var_0.a.c, u_input.a.x, u_input.a.x)) % 32u), 66578u)));
    var var_2 = func_3();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(65697u, 50545u), _wgslsmith_f_op_vec4_f32(-func_2(func_2(Struct_1(var_0.b.a, vec3<i32>(-2147483647i, var_0.a.b.x, var_0.a.b.x), 1u, 1u), Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), vec3<i32>(var_0.a.b.x, var_1.b.x, var_1.b.x), 4294967295u, 0u), ~var_1.c).b, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 125f) * vec2<f32>(-1029f, 430f)), vec3<i32>(var_1.b.x, 50444i, -33463i), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_0.b.c), vec4<u32>(1u, var_0.b.c, u_input.a.x, u_input.a.x))), u_input.a.x).c), firstTrailingBit(vec2<i32>(var_0.b.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.a.b.x, -16200i), -1i))));
}

