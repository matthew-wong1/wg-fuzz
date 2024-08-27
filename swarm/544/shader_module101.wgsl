struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(28734i, 1i, 1i, 31710i);

var<private> global1: vec2<u32> = vec2<u32>(54363u, 0u);

var<private> global2: f32;

var<private> global3: vec3<i32>;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(671f + 335f) + arg_0), vec4<bool>(select(false, false, arg_2.c.x), false, 535f <= arg_0, true), select(vec3<bool>(true, arg_2.d, arg_2.b.x), select(arg_2.c, vec3<bool>(false, arg_2.c.x, arg_3.c.x), true), select(arg_1, vec3<bool>(arg_2.c.x, arg_1.x, arg_3.b.x), vec3<bool>(arg_1.x, true, global4.x))), false), _wgslsmith_add_u32(global1.x, 1u), u_input.b.x));
    global0 = vec4<i32>(global3.x, -62887i, (_wgslsmith_clamp_i32(-1i, global3.x, global3.x) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(58889u, 1u), vec2<u32>(1u, 0u)) % 32u)) | 0i, _wgslsmith_mod_i32(7685i, _wgslsmith_sub_i32(u_input.c, global3.x) | global0.x));
    global0 = _wgslsmith_div_vec4_i32(u_input.a, countOneBits(vec4<i32>(global0.x, -2147483647i | ~global3.x, firstTrailingBit(_wgslsmith_mod_i32(2533i, global3.x)), -1i)));
    return var_0.a.a.b.x || (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0) - arg_3.a))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - _wgslsmith_f_op_f32(exp2(arg_0))), 691f));
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    global3 = _wgslsmith_sub_vec3_i32(-firstTrailingBit(select(vec3<i32>(global3.x, -15767i, -2321i) << (u_input.b % vec3<u32>(32u)), select(global0.zxw, global0.wzw, global4.x), !vec3<bool>(global4.x, false, false))), u_input.a.wwy);
    let var_0 = Struct_3(true, all(vec3<bool>(global4.x, !(global4.x != false), !(!global4.x))), ~select(vec4<i32>(u_input.a.x, global0.x, -u_input.a.x, 1i), u_input.a, vec4<bool>(global1.x < 29107u, global4.x, func_3(1000f, vec3<bool>(global4.x, true, true), Struct_1(-784f, vec4<bool>(global4.x, true, true, global4.x), vec3<bool>(global4.x, false, global4.x), true), Struct_1(-1410f, vec4<bool>(true, global4.x, global4.x, true), vec3<bool>(global4.x, global4.x, true), true)), !global4.x)), vec4<i32>(1i, ~(-8608i), _wgslsmith_dot_vec2_i32((global0.xz | vec2<i32>(global0.x, 0i)) >> (arg_0.zw % vec2<u32>(32u)), ~_wgslsmith_add_vec2_i32(global0.xx, vec2<i32>(global0.x, -16566i))), u_input.a.x));
    var var_1 = global4.x;
    var var_2 = Struct_3(global4.x && (global4.x & global4.x), all(!vec4<bool>(true, global4.x, false, global4.x)) && any(select(vec4<bool>(true, var_0.a, false, var_0.b), vec4<bool>(global4.x, true, global4.x, global4.x), select(vec4<bool>(var_0.a, true, var_0.b, var_0.a), vec4<bool>(global4.x, true, var_0.a, var_0.a), var_0.a))), reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(global0.zx, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 0i), var_0.d.zz)), ~_wgslsmith_div_i32(1i, global3.x), ~1i, -2147483647i)), -vec4<i32>(var_0.d.x ^ ~(-25954i), global3.x, _wgslsmith_div_i32(-1i, -18403i), max(-2147483647i, -16018i)));
    var_1 = global4.x;
    return vec3<bool>(var_2.b, !any(vec3<bool>(var_0.a && var_2.a, select(global4.x, var_2.a, true), all(vec4<bool>(false, global4.x, global4.x, var_0.a)))), var_2.d.x > 1i);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global4 = vec2<bool>(!all(select(!vec3<bool>(true, global4.x, false), select(vec3<bool>(false, true, global4.x), vec3<bool>(true, global4.x, false), vec3<bool>(global4.x, global4.x, global4.x)), !vec3<bool>(false, global4.x, true))), (global3.x > abs(_wgslsmith_sub_i32(global3.x, 2147483647i))) & true);
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -774f), select(select(select(vec4<bool>(false, true, global4.x, true), vec4<bool>(true, global4.x, global4.x, false), vec4<bool>(true, global4.x, global4.x, global4.x)), !vec4<bool>(global4.x, false, global4.x, global4.x), !vec4<bool>(global4.x, false, global4.x, global4.x)), select(vec4<bool>(false, global4.x, global4.x, global4.x), !vec4<bool>(true, false, global4.x, global4.x), !vec4<bool>(global4.x, global4.x, true, false)), !vec4<bool>(global4.x, global4.x, true, false)), select(vec3<bool>(true, any(vec4<bool>(global4.x, global4.x, false, global4.x)), global4.x), func_2(vec4<u32>(70718u, 0u, 90889u, 1u)), global4.x), global4.x), min(39851u, reverseBits(_wgslsmith_sub_u32(22643u, arg_0))), reverseBits(arg_0));
    var var_1 = countOneBits(0u);
    let var_2 = Struct_5(var_0);
    let var_3 = firstLeadingBit(vec2<i32>(50987i, max(global0.x, _wgslsmith_sub_i32(29604i, global3.x)))) >> ((max(u_input.e, ~(~vec2<u32>(u_input.b.x, 105124u))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(~var_0.c, ~arg_0), u_input.b.xx) % vec2<u32>(32u))) % vec2<u32>(32u));
    return Struct_1(-1713f, select(!var_0.a.b, vec4<bool>(false, -37993i <= global0.x, false, false), !global4.x), select(vec3<bool>(var_0.a.d, var_2.a.a.b.x, any(func_2(vec4<u32>(45290u, 0u, arg_0, 18880u)).yz)), var_2.a.a.c, true), global4.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global3 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(-2147483647i, 0i, global3.x, global0.x)), u_input.a), _wgslsmith_mod_i32(global0.x, 1i & global0.x)), 62607i, ~countOneBits(global0.x));
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(arg_0.a, 517f), _wgslsmith_div_f32(-1000f, -1402f), _wgslsmith_f_op_f32(ceil(arg_0.a))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(332f, 1449f), _wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(1006f + arg_0.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a, -453f, arg_0.a), vec3<f32>(arg_0.a, arg_0.a, -161f)))))), all(vec2<bool>(global4.x, ~29232u >= ~global1.x)), func_1(u_input.e.x), func_1(u_input.d), true);
    global4 = func_2(select(abs(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(11367u, 17308u, global1.x, global1.x), vec4<u32>(u_input.d, global1.x, global1.x, 1u)))), _wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.e.x, 1u, 63666u, global1.x) << (vec4<u32>(global1.x, 241u, 8349u, 106724u) % vec4<u32>(32u))), ~abs(vec4<u32>(u_input.e.x, 30361u, u_input.d, u_input.b.x))), true)).yy;
    global4 = var_0.c.c.xx;
    global2 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.a)) * var_0.c.a) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, -807f)))));
    return func_1(63231u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_4(func_4(func_1(~u_input.b.x)), select(0u, ~_wgslsmith_clamp_u32(global1.x, global1.x, 34757u), global4.x || true), ~(abs(u_input.d) >> (_wgslsmith_add_u32(1u, 47182u) % 32u))));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_div_f32(func_4(func_4(var_0.a.a)).a, _wgslsmith_f_op_f32(sign(func_4(Struct_1(-444f, var_0.a.a.b, var_0.a.a.c, false)).a))), var_0.a.a.a, 700f), var_0.a.a.c.x, Struct_1(func_4(var_0.a.a).a, vec4<bool>(global4.x, false, var_0.a.a.d, true), vec3<bool>(global4.x, any(vec2<bool>(true, var_0.a.a.c.x)), false), true), func_1(var_0.a.b), global4.x);
    global3 = global0.yzx;
    global4 = var_1.c.b.wy;
    let var_2 = var_1.a.yz;
    let var_3 = ~max(u_input.b.xz, select(u_input.b.yx, _wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(global1.x, 0u)) & vec2<u32>(4294967295u, var_0.a.b), !func_2(vec4<u32>(var_0.a.b, u_input.e.x, var_0.a.b, 15549u)).zx));
    global4 = var_1.c.c.zy;
    var var_4 = ~101201u;
    let var_5 = countOneBits(_wgslsmith_clamp_i32(8738i, ~(countOneBits(55761i) ^ _wgslsmith_mod_i32(global0.x, u_input.c)), countOneBits(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.c, var_0.a.b, global1.x, global1.x) >> (vec4<u32>(var_0.a.c, global1.x, 21965u, var_0.a.b) % vec4<u32>(32u)), vec4<u32>(var_0.a.b, 73745u, u_input.e.x, global1.x)), ~firstTrailingBit(vec4<u32>(var_0.a.b, var_3.x, var_0.a.c, 4294967295u)), vec4<bool>(func_2(vec4<u32>(45407u, u_input.d, 4294967295u, u_input.e.x) ^ vec4<u32>(14322u, var_3.x, var_0.a.c, u_input.d)).x, global4.x, select(false, !var_1.b, any(vec2<bool>(false, false))), global4.x)), 18771u);
}

