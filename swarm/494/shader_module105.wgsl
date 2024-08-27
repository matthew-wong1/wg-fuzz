struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(49287u, 1u);

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = Struct_4(~vec3<u32>(1u, 74551u, 4294967295u), arg_1, (~global1.c << (30459u % 32u)) << (1u % 32u));
    let var_2 = global2.a;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.b - -110f) + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x))), global1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2046f) - global1.b.b));
    var var_4 = global2.b;
    return Struct_3(_wgslsmith_sub_vec3_u32(var_4.a, vec3<u32>(3769u, u_input.c.x, 629u)), 25540u, global1.b);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec4<u32> {
    global1 = Struct_2(countOneBits(~_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, global2.a, global1.a, 1i), vec4<i32>(-42609i, global1.a, global1.a, -6686i) << (vec4<u32>(14357u, 1u, global1.b.a.x, 0u) % vec4<u32>(32u)))), Struct_1(firstLeadingBit(~(~vec3<u32>(73286u, global1.c, 19762u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1263f))), arg_1), _wgslsmith_clamp_u32(15429u, ~(~1u), 28175u), select(select(global2.d, vec4<bool>(true, global1.d.x || arg_1, false & global1.d.x, global2.b.c), select(global1.b.c & true, arg_1, global2.d.x)), global1.d, arg_0.c.c));
    global0 = vec2<u32>(global0.x, ~4294967295u);
    global1 = Struct_2(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, global2.a, global1.a, global2.a)) ^ ~firstLeadingBit(vec4<i32>(global1.a, u_input.a.x, -1i, 16657i)), vec4<i32>(i32(-1i) * -15906i, global1.a, global2.a, 0i)), arg_0.c, global1.b.a.x, vec4<bool>(all(vec3<bool>(any(global2.d.wxz), any(vec2<bool>(true, true)), true)), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.b.b, arg_0.c.b, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) <= -860f, any(select(vec3<bool>(arg_1, true, false), global2.d.yyw, global1.d.xyx))));
    global2 = Struct_2(0i ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.a, global1.a, u_input.a.x), vec4<i32>(global2.a, 2147483647i, 2147483647i, -1i) >> (u_input.e % vec4<u32>(32u))), arg_0.c, abs(max(~arg_0.c.a.x, 115877u)), select(!select(vec4<bool>(true, false, true, global2.d.x), select(vec4<bool>(global1.b.c, arg_1, arg_1, false), global1.d, vec4<bool>(true, true, false, true)), !global2.d), select(!(!vec4<bool>(true, global1.b.c, false, true)), !global1.d, global1.b.c), !(!select(global2.d, global1.d, global1.b.c))));
    global2 = Struct_2(-(~global1.a), global1.b, countOneBits(~(~_wgslsmith_div_u32(1u, global2.c))), select(vec4<bool>(false, any(vec4<bool>(global1.d.x, global2.b.c, arg_0.c.c, global1.d.x)), !arg_0.c.c, all(vec2<bool>(false, arg_1))), vec4<bool>((u_input.a.x > global1.a) & !arg_0.c.c, any(vec3<bool>(true, false, arg_0.c.c)), all(select(global1.d.wxw, global1.d.zwz, vec3<bool>(arg_1, false, false))), all(vec3<bool>(arg_0.c.c, arg_0.c.c, true))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1596f, global2.b.b, -103f, global2.b.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1378f, arg_0.c.b, global1.b.b, global2.b.b))), false).c.c));
    return (select((u_input.c | u_input.c) >> (u_input.c % vec4<u32>(32u)), select(u_input.c << (vec4<u32>(u_input.c.x, 4294967295u, global2.c, 4039u) % vec4<u32>(32u)), vec4<u32>(global0.x, global0.x, global2.b.a.x, global2.c) | u_input.c, !global2.d.x), true) >> (~(firstTrailingBit(u_input.c) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 56903u, 111069u, 30297u), vec4<u32>(9332u, 0u, 5135u, 25806u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (reverseBits(~(~_wgslsmith_mod_vec4_u32(u_input.e, vec4<u32>(60509u, 18365u, 0u, 3077u)))) % vec4<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = (func_3(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-364f, global2.b.b, -170f, global1.b.b))), any(vec2<bool>(false, false))), global2.b.c | (true && global2.d.x)) << (~u_input.c % vec4<u32>(32u))) >> ((firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(13579u, global1.b.a.x, 1u, 53260u) ^ vec4<u32>(u_input.d, 57714u, u_input.b, 78376u), vec4<u32>(u_input.e.x, u_input.e.x, global0.x, global2.b.a.x))) | ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global1.b.a.x), vec2<u32>(4294967295u, global2.b.a.x)), ~0u, reverseBits(1u), global0.x | 1u)) % vec4<u32>(32u));
    global2 = Struct_2(1i, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-617f, 1357f, global2.b.b, global1.b.b)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.b, 1081f, 850f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b, 991f, 109f, global2.b.b)), !vec4<bool>(false, false, arg_0, global1.d.x)))), all(select(vec3<bool>(global1.b.c, global1.b.c, arg_0), select(global2.d.yxz, vec3<bool>(global1.b.c, true, false), false), !vec3<bool>(true, arg_0, global1.d.x)))).c, 81546u, !select(vec4<bool>(global2.d.x, global2.b.c, true, global1.b.b <= 1000f), global1.d, !global1.d));
    var_0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(38783u, ~arg_1.x, global1.b.a.x, countOneBits(4294967295u)), max(vec4<u32>(global0.x, u_input.e.x, 35105u, 31870u) & vec4<u32>(arg_1.x, global2.c, global1.b.a.x, arg_1.x), ~u_input.e)), ~(~firstLeadingBit(u_input.e)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(global1.b.a.x, var_0.x, global2.c, 4294967295u)), vec4<u32>(~u_input.e.x, ~18192u, 45842u, ~77153u)));
    let var_1 = global1.a;
    let var_2 = ~global1.a;
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b, 1630f, global2.b.b, 141f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.b, 757f, 978f, -203f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, global1.b.b, global2.b.b, 1406f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-558f, -1246f, -163f, global2.b.b) * vec4<f32>(global2.b.b, 1347f, -1000f, global1.b.b)) * vec4<f32>(-975f, 1471f, global2.b.b, global1.b.b)))), !(arg_0 && (global2.a < global1.a)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> Struct_4 {
    global2 = Struct_2(2147483647i, arg_0.c, u_input.c.x, !vec4<bool>(_wgslsmith_f_op_f32(arg_1.c.b + 1000f) > _wgslsmith_div_f32(global2.b.b, global2.b.b), any(global2.d) || (global1.b.c & arg_2.b.c), arg_2.d.x, true));
    global0 = arg_2.b.a.zz;
    global2 = arg_2;
    var var_0 = vec4<i32>(global1.a, ~22553i, _wgslsmith_sub_i32(-arg_2.a, u_input.a.x), 0i);
    var var_1 = Struct_4(select(~global2.b.a, vec3<u32>(arg_1.c.a.x ^ _wgslsmith_add_u32(3787u, 2195u), global2.c, _wgslsmith_mod_u32(firstLeadingBit(0u), _wgslsmith_mod_u32(arg_0.c.a.x, global2.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b * arg_1.c.b)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.b), _wgslsmith_f_op_f32(-2713f + 192f))), false, countOneBits(u_input.e.x << (arg_0.b % 32u)));
    return Struct_4(reverseBits(arg_1.a), !((arg_0.a.x | 43128u) >= (arg_1.c.a.x << (var_1.c % 32u))), 22486u);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.b.b, -606f, 1162f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(109f, -246f)), _wgslsmith_f_op_f32(min(global2.b.b, global1.b.b)), global1.b.b)))));
    global1 = Struct_2(_wgslsmith_sub_i32(~5016i, u_input.a.x), global2.b, 0u, !vec4<bool>(true, false, all(global1.d) || global1.b.c, _wgslsmith_f_op_f32(ceil(global1.b.b)) < global2.b.b));
    let var_1 = Struct_2(global1.a, global1.b, _wgslsmith_add_u32(abs(~77910u), 0u), global1.d);
    global0 = arg_0.a.xz;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global1.b.b - global2.b.b), _wgslsmith_f_op_f32(sign(736f)), _wgslsmith_f_op_f32(min(-191f, -685f))))))));
    return _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(~u_input.c.wy & vec2<u32>(4294967295u, arg_1.a.x), ~abs(vec2<u32>(arg_1.c, 36391u))), vec2<u32>(~arg_1.a.x, func_4(Struct_3(~global2.b.a, firstTrailingBit(arg_0.c), func_2(vec4<f32>(var_2.x, 517f, 136f, var_0.x), true).c), Struct_3(~global1.b.a, 0u, Struct_1(var_1.b.a, var_1.b.b, true)), Struct_2(_wgslsmith_sub_i32(arg_2.x, -2147483647i), func_1(true, u_input.c.yw).c, ~4304u, !global1.d)).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-global2.a, 1i, _wgslsmith_add_i32(-7102i, global2.a));
    global0 = firstLeadingBit(vec2<u32>(min(1u << (global2.c % 32u), global1.b.a.x), 3345u) >> (u_input.c.yy % vec2<u32>(32u)));
    global0 = vec2<u32>(min(22293u, ~select(1u, global1.b.a.x, false || global2.d.x)), ~4294967295u);
    let var_1 = -130f;
    global0 = select(_wgslsmith_sub_vec2_u32(u_input.c.xy, ~vec2<u32>(global1.c, firstLeadingBit(global0.x))), func_5(func_4(func_1(global2.d.x, vec2<u32>(global0.x, global2.c)), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1906f, -660f, var_1, -916f), vec4<f32>(2950f, -1178f, var_1, global1.b.b), global2.d.x)), global1.d.x), Struct_2(1i, func_2(vec4<f32>(674f, 1485f, 1863f, -132f), global1.d.x).c, select(global1.b.a.x, global1.c, global2.b.c), global1.d)), Struct_4(~(global2.b.a >> (vec3<u32>(u_input.c.x, 21569u, 4294967295u) % vec3<u32>(32u))), false, 61920u), _wgslsmith_add_vec2_i32(-(~var_0.yx), vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, var_0.x)))), global1.b.c);
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(global1.b.a.x, global2.b.a.x), ~4294967295u);
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1 - 323f), global2.b.b, func_2(vec4<f32>(1328f, var_1, 2557f, 2807f), global1.d.x).c.b, -430f) - vec4<f32>(-716f, _wgslsmith_f_op_f32(min(global1.b.b, 1254f)), 1f, _wgslsmith_f_op_f32(360f * 352f))), vec4<f32>(-1031f, -102f, global2.b.b, 271f), vec4<bool>(all(!vec2<bool>(global1.b.c, global2.b.c)), func_1(global1.b.c, ~vec2<u32>(global1.b.a.x, 20051u)).c.c, global2.b.a.x > ~73491u, any(vec2<bool>(true, global1.d.x)) && all(vec3<bool>(global1.d.x, global1.d.x, false))))), global2.b.c | true).c;
    global2 = Struct_2(_wgslsmith_dot_vec3_i32(var_0, ~(var_0 ^ vec3<i32>(0i, -13619i, 7347i))), func_1(false, u_input.c.zw >> ((~vec2<u32>(38258u, 71292u) << ((vec2<u32>(1u, 4294967295u) | vec2<u32>(20798u, var_3.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u))).c, _wgslsmith_sub_u32(66362u, _wgslsmith_mod_u32(abs(4294967295u), 8371u)), global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(1813f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b.b, var_1)) + 447f)))));
}

