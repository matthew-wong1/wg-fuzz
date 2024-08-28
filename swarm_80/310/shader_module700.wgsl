struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true));

var<private> global2: Struct_1;

var<private> global3: array<i32, 29> = array<i32, 29>(31822i, -60225i, 0i, 1i, 1i, 1i, -49067i, 1i, -1i, -35218i, 3731i, 13776i, -46845i, i32(-2147483648), 2147483647i, 3587i, i32(-2147483648), -7100i, 2147483647i, -1139i, 1i, 1i, 2147483647i, -16792i, 2147483647i, 1i, 93750i, -59827i, 0i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> f32 {
    global1 = array<vec4<bool>, 27>();
    var var_0 = _wgslsmith_mult_u32(abs(~u_input.b.x), global2.d << (0u % 32u)) ^ global2.d;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a))), select(!global1[_wgslsmith_index_u32(4294967295u, 27u)], global2.b, global2.b.x), select(vec2<bool>(min(global0.d, u_input.a.x) <= 1u, false), !select(vec2<bool>(global2.e, true), vec2<bool>(global2.e, global2.e), vec2<bool>(true, false)), false), ~4294967295u, global2.c.x);
    var var_2 = true;
    var_0 = ~4294967295u;
    return global0.a;
}

fn func_3(arg_0: Struct_1) -> bool {
    return false == global2.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = abs(max(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(global2.d, 111310u, 44153u), vec3<u32>(u_input.a.x, global0.d, 45405u), false), countOneBits(vec3<u32>(arg_1, arg_1, global0.d))), reverseBits(select(vec3<u32>(global0.d, 4294967295u, u_input.a.x), vec3<u32>(31167u, 4294967295u, 4294967295u), global2.b.ywy))), firstLeadingBit(reverseBits(vec3<u32>(0u, arg_1, 18722u))) | ~reverseBits(vec3<u32>(arg_1, 1u, 4294967295u))));
    global0 = Struct_1(_wgslsmith_f_op_f32(select(-2389f, -1007f, select(global0.e || any(vec3<bool>(arg_0.c.x, true, global2.c.x)), select(true, global0.e, !arg_0.b.x), !all(vec2<bool>(arg_0.c.x, global2.c.x))))), vec4<bool>(false, global0.b.x, global2.e && true, arg_0.b.x), !select(vec2<bool>(select(global2.e, true, false), global0.c.x), select(select(arg_0.b.yz, global0.b.wz, global2.b.x), global2.b.wy, vec2<bool>(global2.c.x, arg_0.b.x)), false), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(41377u, 58053u, arg_1), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(38032u, 48312u, global0.d), vec3<u32>(global2.d, 35038u, 4294967295u)), ~vec3<u32>(11885u, var_0.x, arg_1), var_0)), !global0.b.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.a)))), global0.b, vec2<bool>(any(arg_0.b), ~1u <= min(arg_1, _wgslsmith_mult_u32(global2.d, 9189u))), min(~73888u, 5743u), false);
    var var_2 = arg_0;
    var_1 = Struct_1(_wgslsmith_div_f32(188f, var_2.a), select(global0.b, select(!arg_0.b, select(global0.b, select(global0.b, vec4<bool>(true, true, true, false), vec4<bool>(true, false, var_1.b.x, false)), true), var_1.b), select(!select(vec4<bool>(global2.b.x, true, var_1.c.x, global0.e), global1[_wgslsmith_index_u32(16810u, 27u)], var_1.b), select(!vec4<bool>(global2.b.x, false, false, true), vec4<bool>(var_2.b.x, false, true, global2.e), global1[_wgslsmith_index_u32(21768u, 27u)]), arg_0.b)), vec2<bool>(global2.c.x, any(vec2<bool>(false, false))), abs(_wgslsmith_clamp_u32(1u, 15155u, ~4294967295u)), var_2.e);
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 130f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(706f)) - _wgslsmith_f_op_f32(887f - arg_2.a)))), global1[_wgslsmith_index_u32(max(global0.d, ~_wgslsmith_dot_vec2_u32(vec2<u32>(8372u, 14167u), u_input.b)), 27u)], vec2<bool>(arg_2.c.x, any(vec4<bool>(any(vec3<bool>(true, arg_2.c.x, false)), arg_2.e, false, arg_2.e))), 12095u, true);
    var_0 = arg_2;
    var var_1 = arg_0;
    global3 = array<i32, 29>();
    global3 = array<i32, 29>();
    return func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -504f)), !(!vec4<bool>(arg_2.e, true, false, false)), vec2<bool>(true, true), max(var_0.d, _wgslsmith_add_u32(u_input.a.x ^ 12834u, arg_2.d)), func_3(Struct_1(_wgslsmith_f_op_f32(sign(-1000f)), global0.b, vec2<bool>(var_0.e, true), var_0.d << (0u % 32u), false))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 70614u) << (vec3<u32>(u_input.b.x, 1u, arg_2.d) % vec3<u32>(32u)), ~vec3<u32>(38440u, global0.d, var_0.d)), select(select(vec3<u32>(4294967295u, arg_2.d, var_0.d) ^ vec3<u32>(global0.d, var_0.d, global2.d), abs(vec3<u32>(43846u, 0u, 1u)), !global0.b.xyy), vec3<u32>(_wgslsmith_div_u32(global0.d, 31558u), global0.d, ~37542u), select(select(arg_2.b.zww, vec3<bool>(global0.c.x, false, global2.c.x), true), global0.b.yww, select(global0.b.xzz, vec3<bool>(arg_2.e, global0.e, true), true)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = ~max(_wgslsmith_add_u32(countOneBits(37517u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(55021u, 1u), ~4294967295u, arg_0.d)), arg_0.d);
    return !vec4<bool>(all(!select(vec4<bool>(global2.b.x, arg_0.c.x, true, global2.c.x), vec4<bool>(global0.e, global0.c.x, false, false), arg_0.c.x)), global0.c.x, func_1(countOneBits(vec3<i32>(-15742i, global3[_wgslsmith_index_u32(1u, 29u)], -2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(-global0.a), 1000f), arg_0).c.x, true);
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec4<bool>, 27>();
    global2 = Struct_1(func_1(countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d, u_input.c.xzz, u_input.c.xxy), -vec3<i32>(4896i, global3[_wgslsmith_index_u32(25437u, 29u)], global3[_wgslsmith_index_u32(arg_1.x, 29u)]))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(519f, arg_2.a)), _wgslsmith_f_op_vec2_f32(-arg_0.zy))))), Struct_1(-1042f, vec4<bool>(func_3(Struct_1(arg_0.x, vec4<bool>(false, global2.b.x, global2.c.x, arg_2.b.x), global0.c, arg_2.d, arg_2.e)), global2.c.x, false, true), select(func_5(arg_2, vec2<f32>(global2.a, 1160f)).wz, select(vec2<bool>(false, arg_2.b.x), global0.b.zx, false), !global0.b.yz), global0.d, false)).a, func_1(vec3<i32>(_wgslsmith_mod_i32(~2508i, countOneBits(u_input.d.x)), ~global3[_wgslsmith_index_u32(arg_1.x, 29u)], 1i), arg_0.zz, func_1(firstTrailingBit(~u_input.c.zzz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.a))), func_4(Struct_1(global2.a, global2.b, vec2<bool>(false, global2.c.x), arg_1.x, false), 4294967295u))).b, global2.c, _wgslsmith_mod_u32(arg_1.x, 1u), func_1(u_input.c.wyw, arg_0.yz, Struct_1(-1000f, !(!vec4<bool>(global0.c.x, true, false, arg_2.e)), !(!vec2<bool>(true, global0.e)), ~u_input.a.x, any(func_4(arg_2, 5895u).c))).c.x);
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -min(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(18311i, global3[_wgslsmith_index_u32(arg_2.d, 29u)], -3406i), vec3<i32>(u_input.c.x, -2147483647i, 0i)))), vec2<i32>(min(-(~8448i), -countOneBits(-94059i)), -12188i));
    let var_1 = _wgslsmith_div_i32(1i, ~_wgslsmith_clamp_i32(var_0.x, ~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(57333u, 1u), 29u)], u_input.c.x));
    var var_2 = vec3<bool>(true, (global2.a <= -1827f) | !all(!global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), global0.c.x);
    return func_1(vec3<i32>(-52534i, reverseBits(_wgslsmith_clamp_i32(1i, -9882i, _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(global0.d, 29u)], -9139i, 1i))), -58443i), arg_0.wy, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -1000f, global0.a))))))), _wgslsmith_div_vec4_u32(select(abs(min(vec4<u32>(2349u, global2.d, u_input.a.x, global0.d), vec4<u32>(global2.d, 0u, global0.d, global2.d))), ~min(vec4<u32>(4294967295u, global2.d, 45149u, 46944u), vec4<u32>(global2.d, u_input.a.x, 0u, u_input.a.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, global0.e, global2.b.x, global2.b.x), vec4<bool>(false, false, true, false))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global0.d, 0u, 4294967295u), vec4<u32>(global0.d, global0.d, 1u, global0.d)) >> (vec4<u32>(u_input.a.x ^ u_input.a.x, 1u, firstTrailingBit(0u), select(u_input.a.x, 74099u, true)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(748f + _wgslsmith_f_op_f32(697f * -525f)), !func_5(func_1(u_input.c.yzw, vec2<f32>(global2.a, global0.a), Struct_1(1610f, global2.b, global2.b.yy, global0.d, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global2.a) * vec2<f32>(-1005f, global2.a))), !vec2<bool>(func_1(u_input.c.xyy, vec2<f32>(global2.a, 736f), Struct_1(global0.a, vec4<bool>(global0.c.x, global0.b.x, global2.e, false), vec2<bool>(global2.b.x, global2.c.x), global2.d, true)).b.x, all(global0.b.xwz)), global0.d, all(select(global1[_wgslsmith_index_u32(52469u, 27u)], !vec4<bool>(false, global2.b.x, false, global2.e), false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-640f, global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, -495f))), -916f));
    global0 = var_0;
    global2 = func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(862f, var_0.a, func_1(_wgslsmith_add_vec3_i32(u_input.d, u_input.d), var_1, func_1(vec3<i32>(0i, u_input.c.x, 1i), var_1, Struct_1(-653f, global1[_wgslsmith_index_u32(0u, 27u)], vec2<bool>(var_0.e, global0.e), u_input.b.x, global2.b.x))).a, _wgslsmith_f_op_f32(abs(226f)))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(var_0.d, ~global2.d, max(66529u, global2.d), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, global0.d, 0u, global2.d), vec4<u32>(23454u, 16610u, global0.d, u_input.b.x)))), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, global2.d, 17130u, var_0.d)), abs(vec4<u32>(global2.d, u_input.b.x, 22728u, 1u)), vec4<u32>(21719u, 22229u, var_0.d, global0.d))), var_0);
    var var_2 = u_input.d.x >> (33908u % 32u);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-499f, global2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f) + 1218f))));
    let x = u_input.a;
    s_output = StorageBuffer((~(-11160i) & firstTrailingBit(min(u_input.d.x, -1i))) | max(-14622i, 2147483647i), -firstTrailingBit(1i << (global0.d % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-345f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + global0.a), -2139f), global2.a))));
}

