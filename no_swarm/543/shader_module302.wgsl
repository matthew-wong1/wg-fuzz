struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(32383i, 0i), vec4<bool>(true, false, false, false), vec4<u32>(0u, 4294967295u, 118025u, 20019u), -811f, true), vec4<i32>(1i, i32(-2147483648), 2147483647i, 36020i), 698f), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(false, false, false, false), vec4<u32>(1u, 11728u, 1u, 0u), 1714f, false), vec4<i32>(-2479i, 2508i, 38797i, -36177i), 903f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(45896i, 1i), vec4<bool>(true, true, true, true), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), 820f, true), vec4<i32>(-29783i, -13290i, 0i, -14826i), 382f), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<i32>(18274i, 22190i), vec4<bool>(false, false, false, false), vec4<u32>(0u, 17771u, 4294967295u, 4294967295u), -479f, true), vec4<i32>(-10957i, 37351i, 2147483647i, 0i), 941f), Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<i32>(i32(-2147483648), 9209i), vec4<bool>(true, false, false, false), vec4<u32>(79363u, 28837u, 30110u, 5319u), -583f, true), vec4<i32>(2147483647i, 1i, -23988i, -1i), 1000f), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<i32>(0i, 10918i), vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 1u, 7689u, 44635u), -272f, true), vec4<i32>(-1i, 17654i, 39446i, i32(-2147483648)), -136f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(50473i, -26438i), vec4<bool>(false, false, true, true), vec4<u32>(0u, 5564u, 4294967295u, 19739u), -628f, false), vec4<i32>(1i, 0i, 2147483647i, 2147483647i), 1088f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<bool>(true, false, false, true), vec4<u32>(8221u, 1u, 6975u, 0u), -762f, true), vec4<i32>(0i, 50590i, -21841i, 55229i), -371f), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<i32>(0i, 9963i), vec4<bool>(false, true, false, true), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), -435f, true), vec4<i32>(1i, -1i, -7957i, 12198i), 651f), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<i32>(2147483647i, -49609i), vec4<bool>(true, true, true, true), vec4<u32>(0u, 0u, 4294967295u, 1u), -363f, false), vec4<i32>(i32(-2147483648), 18771i, -22595i, 0i), 3056f), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<i32>(1i, -26565i), vec4<bool>(true, false, true, false), vec4<u32>(0u, 75400u, 6371u, 33855u), 1000f, false), vec4<i32>(-10771i, 2147483647i, 752i, -1i), -236f));

var<private> global2: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(0u, 36529u), vec2<u32>(12053u, 12729u), vec2<u32>(7876u, 44393u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 50009u), vec2<u32>(52485u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(75352u, 1u), vec2<u32>(5081u, 1u), vec2<u32>(34835u, 0u), vec2<u32>(12709u, 12584u), vec2<u32>(14734u, 0u), vec2<u32>(51758u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(105497u, 83998u), vec2<u32>(8935u, 28281u), vec2<u32>(64439u, 0u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(step(-1079f, -1010f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_1.b.d, -1235f, global0.b.x))))))), global0.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    global1 = array<Struct_2, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(101277u, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_0));
    var var_1 = arg_0;
    global0 = Struct_1(vec2<i32>(~min(-5475i, firstLeadingBit(var_1.c.x)), 10971i), vec4<bool>(arg_0.a, (_wgslsmith_mult_u32(49542u, global0.c.x) | countOneBits(1u)) >= (_wgslsmith_mod_u32(u_input.c, u_input.e.x) | _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.e)), global0.b.x, !(global0.e & true)), _wgslsmith_sub_vec4_u32(abs(~(~vec4<u32>(u_input.e.x, 1963u, 0u, 5174u))), vec4<u32>(24692u, 0u, ~0u, 1u) << (~(~vec4<u32>(global0.c.x, u_input.e.x, 4294967295u, global0.c.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-596f, -1184f, false)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-global0.d))))), all(select(vec3<bool>(true, true, global0.e), global0.b.wxz, vec3<bool>(global0.e, any(vec4<bool>(arg_0.b.x, var_1.a, arg_0.a, global0.e)), any(var_1.b)))));
    var var_2 = Struct_3(true, !select(select(!vec2<bool>(true, arg_0.a), select(var_1.b, vec2<bool>(arg_0.a, arg_0.b.x), true), true), !(!vec2<bool>(arg_0.a, global0.e)), true), select(-select(arg_0.c << (global0.c.wwz % vec3<u32>(32u)), vec3<i32>(u_input.a.x, global0.a.x, var_1.c.x), true), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-13791i, u_input.a.x, 2147483647i) ^ var_1.c, ~u_input.a), vec3<bool>(select(!var_1.a, var_1.a, var_1.a && global0.e), true, !arg_0.a && true)));
    return global0.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = arg_1.b;
    var var_1 = ~reverseBits(90606u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(686f, 355f, 1640f, -1032f) - arg_0) - vec4<f32>(_wgslsmith_f_op_f32(183f * var_0.d), 769f, -680f, _wgslsmith_f_op_f32(-arg_1.b.d)))));
    var var_3 = vec4<bool>(_wgslsmith_dot_vec4_i32(-(~arg_1.c), -vec4<i32>(0i, u_input.a.x, var_0.a.x, var_0.a.x)) < (2147483647i | arg_1.b.a.x), _wgslsmith_mult_u32(32875u, 11903u) != _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(47455u, ~global0.c.x, 1u)), select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-515f, 1011f))) <= _wgslsmith_f_op_f32(select(1311f, _wgslsmith_f_op_f32(arg_0.x * global0.d), true)), false, arg_1.a.x), true);
    let var_4 = arg_1.b;
    return _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-1i) * -reverseBits(u_input.a), vec3<i32>(var_4.a.x, -1i, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-38157i, var_0.a.x)), arg_1.c.zw))), vec3<i32>(u_input.a.x, ~2147483647i, u_input.a.x), vec3<i32>(select(-max(-2147483647i, arg_1.c.x), -countOneBits(2147483647i), any(vec4<bool>(var_3.x, false, true, var_3.x))), var_0.a.x, global0.a.x));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(func_2(Struct_3(true, global0.b.zw, u_input.a)))), _wgslsmith_f_op_f32(global0.d * -1000f), global0.d, global0.d), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x ^ u_input.b.x, _wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(~4294967295u, _wgslsmith_add_u32(1u, u_input.e.x), 4294967295u, max(u_input.c, global0.c.x)))), 11u)]);
    var var_1 = Struct_1(vec2<i32>(abs(min(global0.a.x, -global0.a.x)), _wgslsmith_dot_vec3_i32(-var_0, vec3<i32>(var_0.x, -2147483647i, u_input.a.x))), select(!select(vec4<bool>(true, true, global0.e, global0.b.x), global0.b, !global0.b.x), vec4<bool>(true, true, any(global0.b), any(!global0.b.xyx)), !vec4<bool>(global0.e, true, global0.e | global0.e, all(vec3<bool>(true, global0.b.x, true)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(reverseBits(1u), max(global0.c.x, 16659u), reverseBits(u_input.b.x), 0u), vec4<u32>(32318u, ~u_input.d, u_input.b.x, u_input.e.x)), global0.d, true);
    let var_2 = select(var_1.b.xz, !(!vec2<bool>(any(vec4<bool>(global0.e, false, true, var_1.b.x)), any(vec3<bool>(true, global0.b.x, true)))), !var_1.b.xy);
    let var_3 = Struct_3(~max(var_1.c.x, global0.c.x) <= ~18793u, var_1.b.wx, vec3<i32>(global0.a.x, 1i, func_4(vec4<f32>(1745f, _wgslsmith_f_op_f32(ceil(global0.d)), -137f, 769f), Struct_2(!var_1.b.wyz, Struct_1(u_input.a.zz, vec4<bool>(global0.e, false, var_2.x, var_2.x), vec4<u32>(12577u, u_input.b.x, 49288u, u_input.b.x), 692f, var_1.b.x), -vec4<i32>(2147483647i, -31700i, 1i, 0i), -381f)).x));
    var var_4 = var_3;
    return Struct_1(~((var_3.c.zz ^ vec2<i32>(21349i, 4202i)) | select(vec2<i32>(-1i, -2147483647i), vec2<i32>(1i, 0i), true)) << (abs(vec2<u32>(global0.c.x, u_input.c)) % vec2<u32>(32u)), !var_1.b, vec4<u32>(~(~(~var_1.c.x)), ~var_1.c.x, u_input.e.x, ~_wgslsmith_dot_vec2_u32(global0.c.yw, reverseBits(global2[_wgslsmith_index_u32(u_input.c, 17u)]))), _wgslsmith_f_op_f32(max(-1402f, -1023f)), false);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_2.d));
    var var_1 = vec3<u32>(arg_1, ~(~arg_2.b.c.x), ~global0.c.x);
    global1 = array<Struct_2, 11>();
    let var_2 = Struct_1(-vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), 0i), _wgslsmith_add_i32(~1i, ~arg_0.c.x)), vec4<bool>((_wgslsmith_div_f32(arg_2.d, 497f) >= _wgslsmith_f_op_f32(abs(384f))) & false, true && !arg_2.b.e, arg_0.a.x | true, true), arg_0.b.c, _wgslsmith_div_f32(-1227f, arg_0.d), !any(!arg_2.a.zz));
    let var_3 = ~countOneBits(arg_0.b.a);
    return Struct_1(var_3, func_1().b, var_2.c, arg_0.b.d, global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(select(select(!global0.b.xxw, global0.b.zwx, all(vec4<bool>(global0.e, global0.e, false, false))), global0.b.xxx, !(!global0.b.x)), Struct_1(min(u_input.a.zz, _wgslsmith_add_vec2_i32(global0.a, vec2<i32>(1i, u_input.a.x))), vec4<bool>(true, true, true, true), global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d))), true), (_wgslsmith_div_vec4_i32(vec4<i32>(27666i, 0i, 0i, -1i), vec4<i32>(11484i, 32530i, global0.a.x, global0.a.x)) & -vec4<i32>(53662i, u_input.a.x, global0.a.x, u_input.a.x)) ^ (reverseBits(vec4<i32>(global0.a.x, 35469i, 18862i, global0.a.x)) >> (~global0.c % vec4<u32>(32u))), global0.d), _wgslsmith_mod_u32(0u, ~4773u), Struct_2(vec3<bool>(global0.b.x, true, all(select(vec4<bool>(true, global0.b.x, true, false), vec4<bool>(global0.b.x, global0.e, global0.e, global0.b.x), vec4<bool>(false, false, global0.e, global0.b.x)))), func_1(), select(vec4<i32>(firstTrailingBit(-10000i), 0i | global0.a.x, select(-15498i, u_input.a.x, global0.b.x), reverseBits(-25613i)), -(~vec4<i32>(u_input.a.x, 5764i, 2147483647i, 0i)), !(!vec4<bool>(true, false, true, global0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * global0.d) - -1642f)));
    global2 = array<vec2<u32>, 17>();
    let var_1 = vec2<bool>(!global0.e && false, !(0i != func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.d, global0.d, var_0.d) - vec4<f32>(2022f, -771f, 1000f, -699f)), Struct_2(vec3<bool>(false, global0.b.x, var_0.e), Struct_1(global0.a, var_0.b, var_0.c, global0.d, global0.e), vec4<i32>(2147483647i, 0i, 5639i, u_input.a.x), 553f)).x));
    global2 = array<vec2<u32>, 17>();
    let var_2 = !(!any(!(!global0.b.wwy)));
    global0 = Struct_1(global0.a, func_5(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global0.c.x), u_input.b.zy), 11u)], func_1().c.x, global1[_wgslsmith_index_u32(1u, 11u)]).b, func_5(global1[_wgslsmith_index_u32(1u, 11u)], u_input.c, global1[_wgslsmith_index_u32(select(global0.c.x, u_input.c, func_1().b.x), 11u)]).c, var_0.d, true);
    global0 = Struct_1(~(-(~vec2<i32>(global0.a.x, 54119i) << (reverseBits(global2[_wgslsmith_index_u32(var_0.c.x, 17u)]) % vec2<u32>(32u)))), select(var_0.b, select(global0.b, vec4<bool>(all(vec4<bool>(false, true, true, false)), all(global0.b.zx), false, false), true), global0.b), global0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(true, var_0.b.zz, u_input.a)))))), var_0.b.x);
    let var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(0u, ~u_input.c) >> (_wgslsmith_mod_u32(var_0.c.x, global0.c.x) % 32u), u_input.a.xy, u_input.b);
}

