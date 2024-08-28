struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32> = vec4<u32>(1u, 19576u, 4294967295u, 4294967295u);

var<private> global2: f32 = -743f;

var<private> global3: vec4<f32> = vec4<f32>(130f, 1998f, 2636f, 1000f);

var<private> global4: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec2<i32>(2147483647i, 35845i)), Struct_3(vec2<i32>(11494i, -1i)), Struct_3(vec2<i32>(67815i, 2147483647i)), Struct_3(vec2<i32>(0i, -1i)), Struct_3(vec2<i32>(1i, i32(-2147483648))), Struct_3(vec2<i32>(-22477i, 15328i)), Struct_3(vec2<i32>(67099i, i32(-2147483648))), Struct_3(vec2<i32>(0i, 1i)), Struct_3(vec2<i32>(-1i, 35223i)), Struct_3(vec2<i32>(i32(-2147483648), -51386i)), Struct_3(vec2<i32>(1i, -499i)), Struct_3(vec2<i32>(0i, -20303i)), Struct_3(vec2<i32>(-29809i, 49497i)), Struct_3(vec2<i32>(0i, -1i)), Struct_3(vec2<i32>(-22360i, 0i)), Struct_3(vec2<i32>(5317i, 0i)), Struct_3(vec2<i32>(55962i, -1i)));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    global4 = array<Struct_3, 17>();
    let var_0 = Struct_2(~u_input.b, Struct_1(-1029f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1488f, arg_2.a.x))), reverseBits(_wgslsmith_dot_vec2_u32(global1.yz, abs(global1.yx))), false));
    let var_1 = Struct_2(-var_0.a, Struct_1(-541f, var_0.b.b, arg_2.c, !any(vec3<bool>(false, var_0.b.d, arg_2.b.x))));
    global1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~27695u, 1863u >> (var_1.b.c % 32u), ~_wgslsmith_clamp_u32(global1.x, 1u, global1.x), abs(~60788u)), _wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(0u, 22030u, 1u, 1u)), vec4<u32>(_wgslsmith_mod_u32(var_0.b.c, 96021u), select(20969u, arg_2.c, false), firstLeadingBit(32395u), global1.x ^ var_0.b.c)), ~(~(vec4<u32>(var_1.b.c, 69602u, global1.x, 42021u) << (vec4<u32>(arg_2.c, 104051u, var_1.b.c, 5320u) % vec4<u32>(32u))))), firstTrailingBit(select(vec4<u32>(1u, global1.x << (var_0.b.c % 32u), select(var_0.b.c, arg_2.c, var_1.b.d), 0u), _wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.c, 1u, var_1.b.c, arg_2.c), vec4<u32>(var_0.b.c, 34225u, arg_2.c, var_1.b.c)), var_0.b.d)));
    var var_2 = _wgslsmith_dot_vec2_u32(abs(~global1.xw), select(global1.ww, firstTrailingBit(vec2<u32>(22382u, 41315u)), !vec2<bool>(true, arg_2.b.x)) & _wgslsmith_mod_vec2_u32((vec2<u32>(global1.x, 48995u) ^ vec2<u32>(4294967295u, global1.x)) >> (~vec2<u32>(global1.x, global1.x) % vec2<u32>(32u)), ~vec2<u32>(8977u, global1.x)));
    return abs(0i);
}

fn func_2(arg_0: vec2<u32>) -> vec4<u32> {
    global0 = _wgslsmith_mod_i32(func_3(Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1815f, 1407f, 1000f, global3.x) - vec4<f32>(1000f, global3.x, global3.x, global3.x))), Struct_3(vec2<i32>(u_input.b, -2147483647i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), u_input.a.zx)), Struct_3(~vec2<i32>(-2147483647i, u_input.b)), Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(-1210f, -882f, global3.x, 952f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 683f, -363f) + vec4<f32>(global3.x, global3.x, global3.x, global3.x))), vec3<bool>(true, true, true), 1u)), ~(-2147483647i));
    let var_0 = Struct_2(~(-26005i) & _wgslsmith_mult_i32(-20492i, u_input.b), Struct_1(-130f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-564f, global3.x) + global3.xz))), _wgslsmith_clamp_u32(max(countOneBits(arg_0.x), _wgslsmith_mod_u32(global1.x, global1.x)), ~_wgslsmith_div_u32(global1.x, 0u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, global1.x), 38139u)), true));
    var var_1 = firstLeadingBit(max(~(-u_input.b), 1i));
    var_1 = u_input.a.x;
    global0 = max(reverseBits(var_0.a), -40718i);
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(~34132u), 0u, 23416u, 4294967295u), _wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 0u, 98619u, arg_0.x), vec4<u32>(4294967295u, 1u, global1.x, 116666u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(32867u, var_0.b.c, 1u, var_0.b.c), vec4<u32>(arg_0.x, arg_0.x, 0u, global1.x), vec4<u32>(var_0.b.c, arg_0.x, 90256u, var_0.b.c))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    global1 = func_2(abs(global1.xw));
    var var_0 = false;
    var_0 = false;
    global1 = vec4<u32>(_wgslsmith_div_u32(0u, reverseBits(1935u)), ~reverseBits(arg_0), ~arg_0, ~(arg_0 & firstLeadingBit(global1.x))) | _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(6210u, 49082u, 1u, arg_0), vec4<u32>(arg_0, 37943u, arg_0, 47685u), vec4<u32>(global1.x, 0u, arg_0, 4294967295u)) << ((vec4<u32>(23848u, global1.x, 17226u, 0u) >> (vec4<u32>(arg_0, global1.x, 85976u, arg_0) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(global1.x, 73867u), ~countOneBits(5145u), 1u, arg_0));
    global3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(select(-374f, -305f, false)), _wgslsmith_div_f32(413f, 1043f), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1446f, -1069f, -409f, global3.x), vec4<f32>(global3.x, -209f, global3.x, global3.x))))))))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(371f * global3.x), -660f, _wgslsmith_f_op_f32(ceil(325f)), -102f), vec4<f32>(global3.x, 481f, _wgslsmith_f_op_f32(f32(-1f) * -415f), _wgslsmith_f_op_f32(f32(-1f) * -450f))))), select(vec3<bool>(true != (global1.x != 33598u), all(vec3<bool>(true, true, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), vec3<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, false, false)), true), false), all(vec2<bool>(true, true)) && true), arg_0);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_sub_vec2_i32(-max(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, u_input.a.x)), u_input.a.xz), max(u_input.a.zz, vec2<i32>(1i, -1i)) << (reverseBits(vec2<u32>(global1.x, 33134u)) % vec2<u32>(32u))), -_wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.a.zx) ^ (-_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-29874i, u_input.a.x)) & firstTrailingBit(reverseBits(u_input.a.yy))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(global3.xyz, _wgslsmith_f_op_vec3_f32(global3.yzz + arg_1.a.wxy), func_1(~0u & func_1(~1u).c).b));
    var var_3 = vec2<u32>(0u, func_2(~min(global1.zw, _wgslsmith_sub_vec2_u32(vec2<u32>(25074u, global1.x), vec2<u32>(67186u, arg_1.c)))).x);
    var_1 = u_input.a.xx >> (vec2<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, var_3.x, 3599u, arg_1.c), vec4<u32>(7341u, var_3.x, arg_1.c, 4294967295u))), global1.x) % vec2<u32>(32u));
    return arg_0.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!func_4(vec3<bool>(true, true, true), func_1(4294967295u))) | any(vec4<bool>(true | select(false, true, true), select(true, true, func_1(global1.x).b.x), global3.x > _wgslsmith_f_op_f32(-global3.x), true));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global3.x, global3.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))), true)) + -194f)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x));
    var_0 = any(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), !any(vec3<bool>(false, false, true))), select(vec2<bool>(true, all(vec4<bool>(false, false, false, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(33682u == global1.x, false), func_1(firstTrailingBit(19734u)).b.x)));
    global1 = vec4<u32>(global1.x, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global1.x, global1.x, global1.x) & ~global1.wwy), global1.wyz), ~global1.x, abs(4294967295u));
    let var_1 = ~((u_input.a.x | _wgslsmith_add_i32(min(-8047i, u_input.a.x), -30414i)) << (((global1.x | 4294967295u) & func_1(1u).c) % 32u));
    global2 = _wgslsmith_f_op_f32(-global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(4091u), -14708i, global1.x, _wgslsmith_f_op_vec3_f32(-global3.ywx));
}

