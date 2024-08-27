struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool;

var<private> global2: i32 = -10415i;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> i32 {
    global3 = Struct_2(u_input.b.x, _wgslsmith_f_op_f32(step(1221f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1691f), -1317f)))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, 72492u, 1u, 14019u), abs(vec4<u32>(13435u, arg_2.x, 50219u, global3.c.x))), _wgslsmith_sub_u32(~46954u, global3.c.x), 21043u));
    global0 = select(u_input.a, select(countOneBits(abs(~u_input.a)), ~(~vec3<i32>(1i, u_input.b.x, arg_0.x)), !vec3<bool>(false, all(vec2<bool>(false, true)), true)), !(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false))));
    global3 = Struct_2(1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(707f + _wgslsmith_f_op_f32(f32(-1f) * -379f)), _wgslsmith_div_f32(global3.b, -1562f))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(global3.c.x, global3.c.x, u_input.c.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(47072u, 1u, global3.c.x), vec3<u32>(arg_2.x, 50649u, arg_2.x), global3.c) << (min(vec3<u32>(u_input.c.x, 4294967295u, global3.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, u_input.c.x, 1u), u_input.c)) % vec3<u32>(32u))));
    global0 = vec3<i32>(0i, max(u_input.a.x, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-13250i, 1i, -33820i, 2147483647i), vec4<i32>(-2147483647i, global0.x, arg_0.x, 5879i)))), -26235i) << ((vec3<u32>(u_input.c.x, max(4294967295u << (u_input.c.x % 32u), _wgslsmith_clamp_u32(0u, 49433u, 0u)), u_input.c.x) << (u_input.c % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_0 = arg_2.x;
    return countOneBits(-13446i);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global0 = vec3<i32>(-15951i, 1i, reverseBits((firstLeadingBit(-26944i) ^ func_3(vec2<i32>(2147483647i, -10531i), vec2<i32>(0i, 22323i), vec3<u32>(0u, global3.c.x, 29296u))) | global0.x));
    let var_0 = !(!select(vec3<bool>(false, all(vec2<bool>(false, true)), true), vec3<bool>(true, true, true), true));
    global3 = arg_0;
    var var_1 = ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c.x, 4294967295u, global3.c.x, 29665u), vec4<u32>(4294967295u, 17805u, u_input.c.x, u_input.c.x)), reverseBits(48041u)), u_input.c.zz, arg_0.c.yz));
    let var_2 = Struct_4(-vec2<i32>(-30717i, _wgslsmith_add_i32(-2147483647i, firstTrailingBit(-3256i))), (max(reverseBits(vec4<u32>(37274u, arg_0.c.x, 0u, 35441u)), reverseBits(vec4<u32>(59737u, 8517u, arg_0.c.x, 60287u))) << (vec4<u32>(55527u, global3.c.x, ~1u, u_input.c.x | 43432u) % vec4<u32>(32u))) << (abs(vec4<u32>(countOneBits(global3.c.x), select(arg_0.c.x, var_1.x, var_0.x), 15741u ^ global3.c.x, u_input.c.x)) % vec4<u32>(32u)), vec4<i32>(-firstTrailingBit(u_input.d.x) & ~abs(global3.a), min(_wgslsmith_div_i32(global0.x, -13098i), 0i), global3.a, ~firstTrailingBit(global0.x)), Struct_3(arg_0, arg_0, select(var_0, vec3<bool>(!var_0.x, all(vec4<bool>(true, false, true, true)), select(true, false, false)), vec3<bool>(all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !var_0.x, 136f < global3.b)), global3.c.x), Struct_2(~(~(~(-43793i))), global3.b, select(vec3<u32>(firstTrailingBit(var_1.x), min(arg_0.c.x, var_1.x), ~0u), u_input.c, !vec3<bool>(true, var_0.x, false))));
    return var_2.d.b;
}

fn func_1(arg_0: bool) -> f32 {
    global0 = _wgslsmith_sub_vec3_i32(~(~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.a, 7486i, -1i), vec3<i32>(global0.x, global3.a, 44759i)), _wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(-20167i, -28287i, 39889i)))), ~firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b.x, 2147483647i), vec3<i32>(0i, -27331i, -1i))));
    global3 = func_2(Struct_2(u_input.e, 1000f, ~(~(~vec3<u32>(u_input.c.x, 1u, global3.c.x)))));
    let var_0 = Struct_1(select(vec2<bool>(any(vec3<bool>(arg_0, arg_0, false)), true), !(!select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), false)), all(!vec2<bool>(false, arg_0))));
    global2 = -6930i & (_wgslsmith_dot_vec2_i32(~(~vec2<i32>(-2147483647i, -4892i)), ~u_input.b) << (~(~4294967295u) % 32u));
    global1 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1112f) * _wgslsmith_f_op_f32(abs(global3.b))) + global3.b);
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = !(_wgslsmith_f_op_f32(trunc(arg_0)) != _wgslsmith_f_op_f32(-arg_0)) || !(!select(global0.x == u_input.b.x, true, any(vec3<bool>(true, true, false))));
    let var_1 = Struct_2(countOneBits(~(i32(-1i) * -global3.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0, func_2(func_2(Struct_2(global0.x, 294f, vec3<u32>(global3.c.x, 7093u, 3549u)))).b, arg_1 >= func_2(Struct_2(global3.a, -1583f, vec3<u32>(arg_1, global3.c.x, 1u))).c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), abs(vec3<u32>(~max(global3.c.x, u_input.c.x), u_input.c.x, _wgslsmith_sub_u32(86907u << (0u % 32u), arg_1))));
    let var_2 = -(~vec4<i32>(global0.x, -2147483647i, global0.x, _wgslsmith_mod_i32(~(-5556i), global3.a)));
    let var_3 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(min(1353f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)))))));
    global3 = func_2(func_2(var_1));
    return var_1;
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = arg_2.b;
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(max(arg_2.c.x, arg_0.x), ~47266u), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(29740u, 1u, 4294967295u), vec3<u32>(global3.c.x, arg_0.x, u_input.c.x)) | u_input.c.x, ~(~arg_2.c.x)), vec4<u32>(0u, 1u, ~4294967295u, ~44022u) | max(countOneBits(vec4<u32>(arg_2.c.x, 41729u, 1u, arg_2.c.x)), select(vec4<u32>(0u, 16901u, 0u, global3.c.x), vec4<u32>(arg_0.x, 4294967295u, u_input.c.x, global3.c.x), false))) ^ _wgslsmith_add_vec4_u32(max(countOneBits(vec4<u32>(arg_0.x, 4294967295u, 61628u, global3.c.x) ^ vec4<u32>(arg_2.c.x, arg_2.c.x, arg_0.x, 4294967295u)), select(countOneBits(vec4<u32>(u_input.c.x, 32988u, arg_0.x, 50831u)), ~vec4<u32>(global3.c.x, u_input.c.x, 0u, 0u), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)))), abs(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_2.c.x, u_input.c.x), vec4<u32>(arg_2.c.x, u_input.c.x, arg_0.x, 0u))));
    var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.x, arg_2.c.x, global3.c.x), vec4<u32>(global3.c.x, 0u, global3.c.x, arg_0.x)) & ~vec4<u32>(1u, 44766u, 4294967295u, global3.c.x)), vec4<u32>(abs(4294967295u), u_input.c.x, global3.c.x, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, global3.c.x, global3.c.x, 6865u), vec4<u32>(43276u, arg_0.x, 4294967295u, arg_2.c.x)), ~38346u))), ~(~(~vec4<u32>(1u, 42770u, 1u, 0u))));
    let var_2 = global3.b;
    global1 = all(select(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(u_input.c.x >= 1u, all(vec4<bool>(false, false, false, false)), 41586u == global3.c.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))), select(vec3<bool>(true, true, true), vec3<bool>(u_input.a.x <= global0.x, any(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), true))));
    return abs(arg_0.x & _wgslsmith_dot_vec2_u32(var_1.yw, vec2<u32>(4294967295u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(1u, func_5(_wgslsmith_div_vec3_u32(select(u_input.c, u_input.c, false), u_input.c) | global3.c, global3.b, func_4(_wgslsmith_f_op_f32(func_1(true)), 4061u)), all(vec3<bool>(false, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))))));
    global2 = u_input.e;
    let var_1 = Struct_3(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b), -372f, true)), ~var_0), Struct_2(min(u_input.a.x, u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b)))), global3.c >> (vec3<u32>(~4294967295u, 0u >> (global3.c.x % 32u), u_input.c.x >> (var_0 % 32u)) % vec3<u32>(32u))), vec3<bool>(any(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), true)), true, true), max(global3.c.x, reverseBits(~u_input.c.x) >> ((0u >> (_wgslsmith_mult_u32(var_0, var_0) % 32u)) % 32u)));
    global0 = _wgslsmith_sub_vec3_i32(u_input.d, _wgslsmith_mult_vec3_i32(-(vec3<i32>(-1i) * -u_input.d), u_input.d));
    global2 = global3.a;
    global1 = false;
    let var_2 = vec3<i32>(2147483647i, global0.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(31539u ^ select(_wgslsmith_dot_vec3_u32(u_input.c, global3.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, global3.c.x, var_1.b.c.x), func_4(1808f, 1u).c), any(select(vec4<bool>(var_1.c.x, false, var_1.c.x, false), vec4<bool>(true, var_1.c.x, var_1.c.x, true), false))), firstTrailingBit(0u), firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, 0u)), 8332u, vec4<u32>(reverseBits(abs(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, var_1.b.c.x))), var_1.b.c.x, global3.c.x, ~1u));
}

