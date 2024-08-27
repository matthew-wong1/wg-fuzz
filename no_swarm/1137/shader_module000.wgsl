struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19>;

var<private> global1: array<u32, 24>;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec3<f32>(-804f, -1421f, 1216f), i32(-2147483648)), Struct_2(vec3<f32>(-216f, -804f, 743f), -4372i), Struct_2(vec3<f32>(1142f, -908f, -1386f), i32(-2147483648)), Struct_2(vec3<f32>(-286f, -306f, 1568f), 0i), Struct_2(vec3<f32>(-404f, 693f, -724f), -1i), Struct_2(vec3<f32>(-1130f, -1440f, -1412f), 0i), Struct_2(vec3<f32>(979f, -989f, -1429f), 40936i), Struct_2(vec3<f32>(-1000f, -249f, 177f), 35068i), Struct_2(vec3<f32>(735f, 521f, -210f), 2147483647i), Struct_2(vec3<f32>(-565f, 611f, -1244f), 0i), Struct_2(vec3<f32>(-919f, 259f, 274f), 1i), Struct_2(vec3<f32>(1023f, 1207f, -799f), i32(-2147483648)));

var<private> global3: Struct_3;

var<private> global4: array<bool, 9> = array<bool, 9>(false, true, false, false, true, true, true, false, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> vec4<f32> {
    let var_0 = Struct_1(26222u, vec4<i32>(-1i, reverseBits(arg_0.b.x), -2147483647i, arg_0.b.x));
    var var_1 = -1i << (select(~select(10362u, 0u, arg_2) ^ max(_wgslsmith_sub_u32(global3.c.x, global3.d), global1[_wgslsmith_index_u32(global3.d, 24u)] >> (u_input.a % 32u)), ~global3.d, true) % 32u);
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-412f, global3.b.a.x, 138f, 344f), vec4<f32>(-2493f, global3.b.a.x, 705f, 1444f)))))), select(vec4<bool>(arg_2, !arg_2, true, !global3.a.x), select(select(vec4<bool>(false, false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 9u)], true), vec4<bool>(global3.a.x, false, false, false), vec4<bool>(arg_2, true, true, arg_2)), !vec4<bool>(false, global3.a.x, true, global4[_wgslsmith_index_u32(arg_0.a, 9u)]), vec4<bool>(global3.a.x, false, global4[_wgslsmith_index_u32(u_input.a, 9u)], false)), global3.a.x)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> u32 {
    let var_0 = Struct_3(!vec2<bool>(any(!vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x)), true), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.x, -622f)), _wgslsmith_f_op_f32(254f * 559f))), 299f, _wgslsmith_f_op_f32(-global3.b.a.x)), global3.e.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global3.b.b, 1i, -17015i) >> (global3.c % vec4<u32>(32u)), vec4<i32>(global3.e.x, -2147483647i, 5836i, global3.e.x) & vec4<i32>(-29981i, 1i, global3.e.x, global3.e.x))), reverseBits(global3.c), ~(~4294967295u | _wgslsmith_sub_u32(~2276u, ~u_input.a)), -_wgslsmith_div_vec2_i32(abs(firstLeadingBit(vec2<i32>(global3.e.x, 29475i))), ~vec2<i32>(-1i, -25356i)));
    let var_1 = countOneBits(-global3.b.b);
    var var_2 = !any(select(select(select(vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 9u)], global3.a.x), vec3<bool>(var_0.a.x, global3.a.x, true), true), !vec3<bool>(false, global4[_wgslsmith_index_u32(5848u, 9u)], global3.a.x), false), select(select(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(global3.a.x, var_0.a.x, var_0.a.x), vec3<bool>(false, var_0.a.x, var_0.a.x)), !vec3<bool>(false, global3.a.x, var_0.a.x), var_0.a.x), global3.a.x));
    global1 = array<u32, 24>();
    global2 = array<Struct_2, 12>();
    return arg_1;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_4(Struct_1(firstTrailingBit(func_4(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(4294967295u, vec4<i32>(global3.b.b, arg_0, arg_0, global3.e.x)), 112f, arg_3.x)), max(0u, global1[_wgslsmith_index_u32(0u, 24u)]))), arg_1), max(global3.c << (vec4<u32>(0u, abs(global3.d), global1[_wgslsmith_index_u32(1u, 24u)], ~81255u) % vec4<u32>(32u)), vec4<u32>(~global3.d, max(global1[_wgslsmith_index_u32(~4294967295u, 24u)], 0u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(73639u >> (global3.d % 32u), _wgslsmith_sub_u32(global3.c.x, u_input.a)), 24u)], ~79877u)), global3.c.yzx);
    global2 = array<Struct_2, 12>();
    var_0 = global0[_wgslsmith_index_u32(u_input.a, 19u)];
    var var_1 = reverseBits(u_input.a) ^ global1[_wgslsmith_index_u32(u_input.a << (global3.d % 32u), 24u)];
    var var_2 = Struct_3(global3.a, Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.b.a.x), _wgslsmith_f_op_f32(-global3.b.a.x), global3.b.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.b.a) + _wgslsmith_f_op_vec3_f32(-global3.b.a))), max(_wgslsmith_dot_vec2_i32(~var_0.a.b.yz, firstTrailingBit(vec2<i32>(-43174i, 14022i))), -2147483647i ^ select(arg_1.x, -1i, false))), vec4<u32>(~global3.d, func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1469f, 1000f, global3.b.a.x, global3.b.a.x), vec4<f32>(global3.b.a.x, 575f, global3.b.a.x, 1001f))), ~1u) & var_0.b.x, ~global1[_wgslsmith_index_u32(1u, 24u)] >> (global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, u_input.a, 1u, 5258u), var_0.b), 24u)] % 32u), ~var_0.b.x & (_wgslsmith_mult_u32(39575u, global3.c.x) ^ u_input.a)), ~(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(68516u, global3.c.x, 88934u, 9653u), firstTrailingBit(global3.c)), 24u)] | (global3.c.x << (~47434u % 32u))), ~global3.e);
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.b.a.x))))), -838f), global3.b.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(arg_2, _wgslsmith_div_vec4_u32(~(~(~global3.c)), ~(~(~global3.c))), firstLeadingBit(~vec3<u32>(25355u, 4294967295u, 4294967295u) << (_wgslsmith_clamp_vec3_u32(global3.c.ywx, global3.c.yyw, _wgslsmith_mod_vec3_u32(global3.c.zzz, vec3<u32>(u_input.a, 1u, u_input.a))) % vec3<u32>(32u))));
    var var_1 = global3.a.x;
    global2 = array<Struct_2, 12>();
    var_1 = any(vec4<bool>(all(vec2<bool>(true, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.c.x, 24u)] & 84780u, 9u)])), any(select(select(vec4<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.x, 24u)], 9u)], global3.a.x, false, true), vec4<bool>(global3.a.x, global4[_wgslsmith_index_u32(2850u, 9u)], false, false), vec4<bool>(true, global4[_wgslsmith_index_u32(var_0.b.x, 9u)], true, global4[_wgslsmith_index_u32(4294967295u, 9u)])), !vec4<bool>(true, true, global3.a.x, global3.a.x), !vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 9u)], true, false))), false, !(_wgslsmith_f_op_f32(select(708f, arg_1.x, true)) >= _wgslsmith_f_op_f32(-global3.b.a.x))));
    global3 = Struct_3(global3.a, func_2(2147483647i, min(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_0.b, arg_0.b, var_0.a.b.x, 44987i), var_0.a.b, global4[_wgslsmith_index_u32(9127u, 9u)]), arg_2.b, arg_2.b), countOneBits(var_0.a.b) << (global3.c % vec4<u32>(32u))), select(global3.a, vec2<bool>(any(vec4<bool>(global3.a.x, true, false, false)), global3.a.x), vec2<bool>(global4[_wgslsmith_index_u32(1u, 9u)], false)), global3.a), _wgslsmith_mod_vec4_u32(var_0.b, vec4<u32>(select(4294967295u, 4294967295u, false), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 24u)], 24u)], 4294967295u), global3.d, global3.d) >> (~vec4<u32>(7609u, var_0.c.x, 1u, global1[_wgslsmith_index_u32(global3.c.x, 24u)]) % vec4<u32>(32u))), countOneBits(~(~u_input.a)), arg_2.b.wy);
    return var_0.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<bool>) -> bool {
    let var_0 = Struct_4(func_5(func_2(_wgslsmith_dot_vec4_i32(arg_1.b, arg_1.b), _wgslsmith_mult_vec4_i32(arg_1.b, vec4<i32>(arg_2.x, 1i, -13298i, -716i) | arg_1.b), arg_3.xx, !arg_3.xx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.b.a.x, -1071f, 1246f)))) * vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(arg_1, 986f, false)).x, -189f, func_2(3292i, arg_1.b, vec2<bool>(false, false), global3.a).a.x)), arg_1), global3.c, ~(firstLeadingBit(vec3<u32>(4294967295u, global3.c.x, 0u)) ^ global3.c.xxw));
    var var_1 = select(vec3<bool>(!(all(arg_3.yy) || true), 1289f <= arg_0.x, !arg_3.x), !arg_3, !select(select(vec3<bool>(true, true, true), arg_3, true), !select(vec3<bool>(false, global4[_wgslsmith_index_u32(17267u, 9u)], false), arg_3, vec3<bool>(true, false, false)), true & global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 45180u), 9u)]));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-412f, _wgslsmith_div_f32(arg_0.x, arg_0.x), 1339f) * vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global3.b.a.x - 927f), 375f)))), ~0i);
    let var_3 = vec4<i32>(global3.b.b << ((countOneBits(16107u) | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.c, global3.c.xyw), var_0.b.wyz)) % 32u), arg_2.x, firstTrailingBit(i32(-1i) * -26566i), abs(arg_1.b.x));
    global2 = array<Struct_2, 12>();
    return global4[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(var_0.c.x), func_4(vec4<f32>(global3.b.a.x, -1000f, 1000f, var_2.a.x), min(~max(61016u, 5544u), var_0.c.x | countOneBits(global3.d)))), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 24>();
    var var_0 = all(!vec4<bool>(any(global3.a), global3.a.x & func_1(vec2<f32>(-618f, 1353f), Struct_1(u_input.a, vec4<i32>(-10083i, global3.b.b, 1i, global3.b.b)), vec3<i32>(global3.e.x, global3.e.x, global3.e.x), vec3<bool>(global3.a.x, global3.a.x, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 24u)], 9u)])), !(global3.d > global3.c.x), !(!global3.a.x)));
    global1 = array<u32, 24>();
    let var_1 = func_2(~func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.a.x, global3.b.a.x, 602f)), _wgslsmith_clamp_i32(-17860i, 2147483647i, -30569i)), vec3<f32>(_wgslsmith_f_op_f32(round(220f)), _wgslsmith_f_op_f32(step(-1041f, global3.b.a.x)), global3.b.a.x), Struct_1(u_input.a, ~vec4<i32>(global3.e.x, global3.e.x, -18423i, global3.e.x))).b.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(2744i, -50333i, 58345i, global3.e.x), firstTrailingBit(vec4<i32>(global3.e.x, 3244i, global3.e.x, global3.b.b) | firstLeadingBit(vec4<i32>(2147483647i, global3.b.b, global3.b.b, -76970i))), ~(-vec4<i32>(1i, 0i, -1i, 54323i)) | -firstTrailingBit(vec4<i32>(-1i, 2147483647i, global3.b.b, -2147483647i))), select(global3.a, select(vec2<bool>(true, true), vec2<bool>(global3.e.x <= -25279i, true), global4[_wgslsmith_index_u32(u_input.a << (~global1[_wgslsmith_index_u32(39979u, 24u)] % 32u), 9u)]), true), vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a, 9u)]));
    let var_2 = Struct_3(!vec2<bool>(!(global3.a.x | global3.a.x), all(global3.a)), func_2(abs(var_1.b), select(reverseBits(vec4<i32>(var_1.b, var_1.b, global3.e.x, 0i)), vec4<i32>(-1i, 1i, 27835i, -8577i), vec4<bool>(false, false, false, true)) ^ vec4<i32>(abs(2147483647i), firstLeadingBit(33623i), var_1.b << (global3.c.x % 32u), ~global3.e.x), vec2<bool>(true && global4[_wgslsmith_index_u32(~global3.d, 9u)], global4[_wgslsmith_index_u32(72997u, 9u)]), select(vec2<bool>(global4[_wgslsmith_index_u32(37500u >> (1u % 32u), 9u)], !global3.a.x), global3.a, min(global1[_wgslsmith_index_u32(u_input.a, 24u)], 0u) >= 106737u)), global3.c, global1[_wgslsmith_index_u32(1u, 24u)], ~(vec2<i32>(-1i) * -vec2<i32>(var_1.b, global3.e.x)));
    global4 = array<bool, 9>();
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(func_5(func_2(_wgslsmith_clamp_i32(-var_1.b, var_1.b, ~14847i), ~(vec4<i32>(var_2.e.x, global3.b.b, var_2.b.b, 2147483647i) | vec4<i32>(2147483647i, var_1.b, 44896i, -32462i)), var_2.a, !vec2<bool>(global3.a.x, true)), func_2(global3.b.b, ~vec4<i32>(global3.e.x, global3.e.x, var_2.b.b, 21261i), select(!global3.a, vec2<bool>(var_2.a.x, global4[_wgslsmith_index_u32(33274u, 9u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38328u, 24u)], 24u)] == var_2.c.x), !(!var_2.a)).a, Struct_1(~44356u, _wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, global3.e.x, global3.e.x, 34091i), ~vec4<i32>(global3.e.x, 35070i, 20483i, 56366i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, global3.b.a.x)))), all(!vec4<bool>(all(vec3<bool>(global4[_wgslsmith_index_u32(global3.d, 9u)], true, global3.a.x)), true, any(var_2.a), global3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, -887f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(0u, 24u)], vec4<i32>(26926i, var_1.b, var_2.b.b, var_1.b)), -1346f, global3.a.x)).x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_3.zzw + var_3.wwz))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.a.zy, _wgslsmith_f_op_vec2_f32(-var_1.a.yy)))));
}

