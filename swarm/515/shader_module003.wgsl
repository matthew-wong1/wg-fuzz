struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<bool>(true, true, false, true), 783f, 1i, vec4<bool>(true, false, true, true), vec2<i32>(-1i, 1i)), false);

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, false, true, false), -749f, 0i, vec4<bool>(false, false, true, true), vec2<i32>(-4377i, -28287i));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, true, true), -678f, -7941i, vec4<bool>(false, false, false, true), vec2<i32>(0i, i32(-2147483648))), vec4<f32>(1341f, 1811f, -874f, 635f), vec2<i32>(i32(-2147483648), 12479i), 1i, Struct_1(vec4<bool>(true, false, false, false), -1156f, 24554i, vec4<bool>(true, false, true, true), vec2<i32>(6856i, i32(-2147483648))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.yw), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1261f, -1363f), vec2<f32>(global0.a.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -224f)))), !global2.a.d.x)));
    var var_1 = Struct_2(Struct_1(global0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(global2.e.b * 1107f))), countOneBits(-u_input.d.x), vec4<bool>(all(!vec2<bool>(global1.a.x, global2.e.d.x)), var_0.x != global1.b, any(select(global0.a.a.xx, global1.a.zx, false)), all(global2.e.a.zx)), _wgslsmith_mod_vec2_i32(global0.a.e, global2.a.e)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1063f + -993f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.e.b)) * _wgslsmith_f_op_f32(max(1016f, global2.b.x)))), global2.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.b)), global1.b) - -340f)), abs(_wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.b.x, u_input.b.x)), reverseBits(vec2<i32>(arg_0.x, arg_0.x)))), ~(-global2.d), global0.a);
    global1 = global2.e;
    var var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    return global2.a.a.x;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> i32 {
    global1 = global0.a;
    let var_0 = Struct_2(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-613f, _wgslsmith_f_op_f32(f32(-1f) * -351f), global1.b, global0.a.b)))), (vec2<i32>(-24830i, ~global0.a.c) << (~countOneBits(arg_1) % vec2<u32>(32u))) | (u_input.d ^ abs(global0.a.e)), arg_0, Struct_1(!(!vec4<bool>(global0.a.a.x, global0.b, true, global0.a.a.x)), global1.b, ~min(-16450i, 1i), vec4<bool>(global2.e.a.x, true, true, global0.b), vec2<i32>(global0.a.c, 2147483647i) >> (abs(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, 45496u), arg_1)) % vec2<u32>(32u))));
    global2 = Struct_2(Struct_1(vec4<bool>(true, global1.a.x, !global0.a.a.x, !(!global0.b)), global2.b.x, -14027i, vec4<bool>(all(vec3<bool>(false, false, global1.d.x)), !(!global1.a.x), ~u_input.a.x >= 23144u, true), vec2<i32>(global2.e.c, ~(global2.a.c << (u_input.c % 32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-269f * -873f) + global2.a.b), var_0.a.b, _wgslsmith_f_op_f32(-global0.a.b), _wgslsmith_f_op_f32(trunc(-479f))), vec2<i32>(-_wgslsmith_mult_i32(-1i, -1i), _wgslsmith_dot_vec2_i32(global0.a.e, ~countOneBits(vec2<i32>(-28190i, 2147483647i)))), abs(global2.a.c), global0.a);
    let var_1 = ~abs(_wgslsmith_div_vec4_u32(select(u_input.a, abs(u_input.a), func_3(u_input.d)), ~(~vec4<u32>(u_input.a.x, 4294967295u, arg_1.x, u_input.a.x))));
    global2 = Struct_2(Struct_1(!select(global2.a.d, global2.e.a, global0.a.d), _wgslsmith_f_op_f32(-global0.a.b), min(12993i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_0, 2147483647i, u_input.b.x)), abs(vec3<i32>(9005i, -1i, 0i)))), vec4<bool>(global2.e.d.x, global1.d.x, true, var_0.a.d.x), global1.e), _wgslsmith_f_op_vec4_f32(global2.b - vec4<f32>(-892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.b + global2.a.b)), -1203f, _wgslsmith_div_f32(-1029f, global0.a.b))), -(~_wgslsmith_div_vec2_i32(vec2<i32>(7188i, 1i), vec2<i32>(global1.e.x, var_0.e.e.x))), u_input.e.x, var_0.a);
    return ~_wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(1i, 1i)), global0.a.e);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> Struct_4 {
    global1 = Struct_1(!(!global0.a.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(670f)), arg_0.b)), global1.c, arg_0.d, ~(_wgslsmith_div_vec2_i32(global1.e, select(vec2<i32>(30880i, arg_0.e.x), global0.a.e, vec2<bool>(true, arg_0.a.x))) >> (vec2<u32>(0u, ~1624u) % vec2<u32>(32u))));
    global0 = Struct_4(Struct_1(vec4<bool>(global1.d.x, true, true, false), _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.b, 510f))))), u_input.d.x, global1.d, _wgslsmith_mult_vec2_i32(vec2<i32>(-9497i, min(-1i, global2.c.x)), vec2<i32>(-1i, _wgslsmith_mod_i32(global0.a.c, global2.a.c)))), true);
    let var_0 = abs(u_input.a.zz & ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.a.x) | u_input.a.zz, vec2<u32>(u_input.a.x, u_input.c) << (vec2<u32>(1u, 28558u) % vec2<u32>(32u))));
    global0 = Struct_4(Struct_1(global2.a.d, 1548f, -64194i, arg_0.d, _wgslsmith_mod_vec2_i32(min(_wgslsmith_sub_vec2_i32(u_input.e, vec2<i32>(-4803i, global1.c)), _wgslsmith_div_vec2_i32(global1.e, vec2<i32>(-1i, global0.a.e.x))), ~_wgslsmith_add_vec2_i32(global0.a.e, global0.a.e))), (global2.a.b < arg_2.x) || true);
    global2 = Struct_2(Struct_1(!global0.a.a, _wgslsmith_f_op_f32(-2014f + _wgslsmith_f_op_f32(-298f - _wgslsmith_f_op_f32(963f * -1158f))), global2.a.c, arg_0.a, _wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -4231i), vec2<i32>(-1i, -1i))), _wgslsmith_mod_vec2_i32(abs(arg_0.e), _wgslsmith_sub_vec2_i32(global1.e, vec2<i32>(1i, u_input.d.x))))), vec4<f32>(-1175f, arg_2.x, global1.b, _wgslsmith_f_op_f32(abs(782f))), -vec2<i32>(_wgslsmith_mult_i32(arg_0.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 60137i), arg_0.e)), 2147483647i), ~((2147483647i << (u_input.c % 32u)) >> (u_input.c % 32u)), arg_0);
    return Struct_4(arg_0, any(global2.e.d.wz));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    global0 = func_4(Struct_1(vec4<bool>(global0.b, false, _wgslsmith_clamp_i32(global2.d, global1.e.x, u_input.e.x) >= func_2(global0.a.e.x, vec2<u32>(u_input.c, 47087u)), !all(global0.a.d.xz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-682f)) + _wgslsmith_f_op_f32(350f * global0.a.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1187f, global1.b, global1.d.x)))), global1.e.x, global1.a, _wgslsmith_mod_vec2_i32(select(firstTrailingBit(global1.e), select(global2.c, vec2<i32>(-2147483647i, u_input.d.x), true), global1.a.zw), vec2<i32>(0i, _wgslsmith_mult_i32(-2147483647i, global2.c.x)))), arg_0.x, global2.b.xwz);
    let var_0 = 1i;
    global0 = func_4(global0.a, global1.a.x, _wgslsmith_div_vec3_f32(global2.b.zzy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(941f, global0.a.b, -150f), global2.b.zwx, arg_0.wwy)) * _wgslsmith_f_op_vec3_f32(-global2.b.xzy)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.b.xxx, global2.b.www, true))))));
    let var_1 = Struct_4(global0.a, true);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1406f, 1563f))))), _wgslsmith_f_op_f32(f32(-1f) * -829f));
    return reverseBits(abs(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(global0.a.b, -230f, false));
    var var_1 = vec4<i32>(-13638i, ~global0.a.e.x, _wgslsmith_div_i32(-_wgslsmith_mult_i32(~(-58636i), _wgslsmith_sub_i32(1i, global1.c)), global0.a.c), func_1(select(!global1.d, !global1.d, all(!vec2<bool>(global2.e.d.x, global1.d.x)))));
    var var_2 = vec4<bool>(!(global0.b | (!global0.b && global0.a.d.x)), func_4(global0.a, !(all(vec3<bool>(global2.a.d.x, false, true)) | false), global2.b.zxw).b, true, any(select(!vec3<bool>(true, false, global2.e.d.x), vec3<bool>(true, global1.d.x, false), func_4(func_4(Struct_1(global2.e.a, 1111f, 6501i, global2.a.d, vec2<i32>(2147483647i, global0.a.c)), global0.b, vec3<f32>(163f, 757f, global1.b)).a, any(global1.a), vec3<f32>(global0.a.b, var_0, global0.a.b)).a.a.zzz)));
    let var_3 = Struct_4(Struct_1(!(!(!global0.a.a)), -282f, _wgslsmith_dot_vec2_i32(global0.a.e, -select(vec2<i32>(2147483647i, -7774i), global1.e, vec2<bool>(false, global1.d.x))), !(!(!vec4<bool>(true, true, global0.a.d.x, global2.e.a.x))), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, u_input.d.x), var_1.zz), reverseBits(global2.a.c))), global1.a.x);
    var_1 = ~max(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, global1.c, var_1.x), vec4<i32>(-1i, -1i, 50562i, 2147483647i))) & vec4<i32>(-var_1.x, -21002i, func_4(Struct_1(global0.a.d, 1000f, -2147483647i, vec4<bool>(true, global0.a.a.x, var_2.x, true), vec2<i32>(2147483647i, -1i)), true, vec3<f32>(-425f, var_3.a.b, global1.b)).a.e.x, -1i), -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, var_1.x, global1.c, var_3.a.e.x)), firstTrailingBit(vec4<i32>(42028i, 831i, global1.c, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u), u_input.a.wyz, _wgslsmith_sub_i32(abs(~_wgslsmith_clamp_i32(-23409i, global2.e.e.x, -38814i)), var_3.a.c), vec3<u32>(u_input.a.x, 21560u & (~u_input.c & ~u_input.a.x), abs(_wgslsmith_mod_u32(~4294967295u, 1u))), vec4<u32>(41848u, u_input.c, 20436u, ~(u_input.c >> (firstTrailingBit(u_input.c) % 32u))));
}

