struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool = true;

var<private> global2: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    var var_0 = vec4<i32>(1i, 2147483647i, 14644i, -1i | global2.b);
    var var_1 = var_0.zzy;
    var var_2 = arg_2.a.b;
    let var_3 = ~(~(~vec3<u32>(u_input.a, 1u, 3763u)));
    var var_4 = ~2147483647i;
    return arg_2.d;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(countOneBits(_wgslsmith_clamp_i32(global2.c << (u_input.a % 32u), max(firstTrailingBit(u_input.b.x), global2.d | global2.e), func_3(Struct_1(arg_1.b, global2.a.b.b, global2.a.b.c, arg_1.c.x, u_input.b.x), global2.a.b, Struct_3(global2.a, global2.a.a, arg_1.e, 28523i, 19449i)) << (~arg_0 % 32u))), global2.a.b, select(!select(!global2.a.c, select(global2.a.c, global2.a.c, global2.a.c.x), any(global2.a.c)), vec4<bool>(true, all(!vec3<bool>(true, arg_1.a, arg_1.a)), select(-1i, u_input.d, global2.a.c.x) == (u_input.d ^ global2.e), any(!global2.a.c.ywz)), select(!vec4<bool>(false, true, global2.a.c.x, arg_1.b), select(select(vec4<bool>(global2.a.c.x, false, false, false), global2.a.c, vec4<bool>(false, global2.a.c.x, global2.a.b.a, false)), vec4<bool>(arg_1.b, global2.a.b.b, false, arg_1.b), true), global2.a.c)));
    global1 = true;
    global1 = 44692u != _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(54917u, u_input.c.x, countOneBits(20087u)), min(~vec3<u32>(arg_0, u_input.a, u_input.c.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(arg_0, u_input.c.x, 85986u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_sub_u32(0u, u_input.a), ~arg_0), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(34261u, u_input.a, 2388u), vec3<u32>(3147u, u_input.c.x, u_input.c.x)))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(-1204f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(160f + _wgslsmith_f_op_f32(step(351f, -480f))))), _wgslsmith_f_op_f32(-var_0.b.d), 475f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1085f, arg_1.c.x)), arg_1.d));
    var var_2 = vec3<u32>(select(u_input.a, 75165u, select(all(vec4<bool>(global2.a.b.a, global2.a.b.a, false, arg_1.a)), global2.a.b.c.x <= 228f, false)), 1u, 32813u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 19433u, 22261u, 513u), vec4<u32>(79490u, 1u, 1u, 34236u)), u_input.c.x, u_input.c.x | 0u) >> (vec3<u32>(80349u, ~1u, ~arg_0) % vec3<u32>(32u)), ~(~max(vec3<u32>(4294967295u, arg_0, u_input.c.x), vec3<u32>(88310u, arg_0, u_input.c.x))));
    return global2.a;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: i32) -> Struct_3 {
    global1 = func_2(u_input.c.x | ~u_input.c.x, arg_0.a.b).b.b;
    global0 = func_2(~_wgslsmith_mod_u32(0u, firstTrailingBit(u_input.a)) ^ max(~u_input.a, ~(~u_input.a)), Struct_1(!(arg_0.a.b.d != _wgslsmith_f_op_f32(-255f + global2.a.b.c.x)), false, arg_0.a.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.b.d, arg_0.a.b.c.x))), func_2(4294967295u, Struct_1(select(false, false, false), arg_0.a.b.b, arg_0.a.b.c, -929f, arg_2)).b.e)).c.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.c.x, arg_0.a.b.d))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - arg_0.a.b.c.x), arg_0.a.b.d) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.a.b.c.x, 601f)), _wgslsmith_f_op_f32(-arg_0.a.b.c.x)), -485f) + var_0.x);
    var var_1 = arg_0.a.b.d;
    return arg_0;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> bool {
    let var_0 = !(!arg_3.a.c);
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(min(reverseBits(0u), 4294967295u), abs(_wgslsmith_mult_u32(u_input.a, arg_0.x)), ~select(_wgslsmith_div_u32(u_input.a, 35990u), ~36336u, any(vec2<bool>(true, arg_1.a.c.x))), 4294967295u), ~min(~(~vec4<u32>(1u, 1u, arg_0.x, arg_0.x)), min(abs(vec4<u32>(56853u, arg_0.x, 1u, 0u)), select(vec4<u32>(arg_0.x, 55547u, u_input.a, 16767u), vec4<u32>(u_input.a, 1u, 20315u, 37529u), arg_3.a.c))));
    global0 = arg_3.a.c.x;
    global2 = arg_3;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 2566f)) * _wgslsmith_f_op_f32(select(-558f, -2380f, global2.a.c.x || var_0.x))), arg_3.a.b.d);
    return !arg_1.a.c.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    let var_0 = vec2<u32>(4294967295u, u_input.c.x);
    global0 = arg_0.c.x && func_5(vec3<u32>(abs(1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 1u), vec4<u32>(4294967295u, u_input.a, var_0.x, 17829u)), ~(~var_0.x)), func_4(Struct_3(func_2(81643u, Struct_1(true, arg_0.c.x, vec2<f32>(-356f, arg_1.x), arg_0.b.d, u_input.d)), i32(-1i) * -1i, _wgslsmith_mod_i32(global2.a.a, global2.c), _wgslsmith_sub_i32(-24973i, 1i), global2.d), _wgslsmith_mult_i32(84557i, u_input.d) << (_wgslsmith_mod_u32(var_0.x, u_input.a) % 32u), func_3(func_2(4294967295u, arg_0.b).b, arg_0.b, Struct_3(global2.a, -2147483647i, -1i, -1i, global2.a.a))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.b.d, -912f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.c.x))), func_4(Struct_3(global2.a, -2147483647i, 1i, -arg_0.a, i32(-1i) * -1i), 1i, 1i));
    let var_1 = func_2(~(~(~u_input.c.x)) & 46466u, Struct_1(false, all(vec4<bool>(true, false, !global2.a.c.x, any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1289f, arg_1.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.d, 1013f)))), ~(~arg_0.a) << (abs(u_input.a) % 32u))).b;
    let var_2 = var_1;
    var var_3 = reverseBits(vec4<i32>(func_3(func_2(~u_input.a, Struct_1(var_2.a, true, var_2.c, -632f, arg_0.b.e)).b, global2.a.b, Struct_3(func_4(Struct_3(Struct_2(global2.a.b.e, arg_0.b, global2.a.c), 2147483647i, 12123i, global2.e, arg_0.a), -12779i, -33895i).a, -2147483647i, 2147483647i >> (var_0.x % 32u), global2.c ^ var_2.e, -arg_0.b.e)), ~var_1.e, -global2.c, global2.e));
    return global2.a.b.b || !(global2.a.b.c.x != global2.a.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(~2745i, Struct_1(global2.a.b.a && true, func_1(Struct_2(9462i, Struct_1(false, true, vec2<f32>(-587f, -775f), global2.a.b.d, 0i), vec4<bool>(global2.a.b.b, global2.a.b.a, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(603f, global2.a.b.c.x, global2.a.b.c.x, 610f))), _wgslsmith_f_op_vec2_f32(global2.a.b.c * vec2<f32>(-2017f, global2.a.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f * global2.a.b.c.x)), u_input.d), global2.a.c), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(~75557i), 17079i, _wgslsmith_div_i32(2147483647i, u_input.d) >> (1u % 32u)), -u_input.b.wyz), 0i, select(-66294i, -75536i, all(vec2<bool>(false, false))) ^ 29838i, 1i);
    var var_1 = select(~vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.c.x))), ~u_input.a >> (1u % 32u), ~0u), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(0u, 70352u, 1978u), vec3<u32>(19698u, u_input.a, 1917u)), ~vec3<u32>(0u, 21588u, u_input.c.x)), ~(~vec3<u32>(1u, u_input.c.x, 1u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 38019u, 0u), vec3<u32>(61086u, 4294967295u, 88110u), vec3<u32>(u_input.a, u_input.c.x, u_input.c.x))), vec3<u32>(abs(1u), 0u, abs(u_input.c.x)) ^ countOneBits(vec3<u32>(u_input.c.x, 4294967295u, 4294967295u) >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.a) % vec3<u32>(32u)))), global2.a.c.x);
    let var_2 = u_input.b;
    global2 = func_4(func_4(Struct_3(var_0.a, 2147483647i, -func_3(var_0.a.b, Struct_1(false, var_0.a.b.b, global2.a.b.c, global2.a.b.c.x, 1i), Struct_3(global2.a, var_0.c, u_input.b.x, 1i, var_0.c)), _wgslsmith_mult_i32(-17397i, -72649i) ^ var_0.e, -1i), i32(-1i) * -(i32(-1i) * -19985i), _wgslsmith_div_i32(firstLeadingBit(global2.c), -20956i >> (var_1.x % 32u)) ^ _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_2.x, 0i), _wgslsmith_mult_i32(var_2.x, 1i))), ~_wgslsmith_clamp_i32(var_2.x, global2.c, var_2.x), var_2.x);
    global2 = Struct_3(func_2(min(1u, ~1u), var_0.a.b), var_2.x, -_wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.e, 1i), func_2(var_1.x, global2.a.b).b.e), -33769i), abs(1i), -var_0.e);
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~firstLeadingBit(var_2), 2365f, 1u);
}

