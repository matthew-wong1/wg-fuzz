struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 0u);

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(false, 6978u), Struct_1(true, 4294967295u), Struct_1(false, 4294967295u), Struct_1(false, 41219u), Struct_1(true, 88417u), Struct_1(true, 87528u), Struct_1(false, 1u), Struct_1(false, 2996u), Struct_1(false, 1u), Struct_1(true, 4294967295u));

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, 33265u), Struct_1(true, 0u), Struct_1(false, 1u), Struct_1(false, 73035u), Struct_1(true, 44712u), Struct_1(true, 1u), Struct_1(false, 1u), Struct_1(false, 18850u), Struct_1(true, 9877u), Struct_1(false, 37754u), Struct_1(false, 4294967295u));

var<private> global3: vec4<u32> = vec4<u32>(39914u, 22131u, 36972u, 0u);

var<private> global4: vec3<u32> = vec3<u32>(66455u, 40829u, 75235u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: bool) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~35952u, ~global0.b, u_input.a.x), 1u)), 10u)];
    var_0 = global2[_wgslsmith_index_u32(4294967295u, 11u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-452f))))) * _wgslsmith_f_op_f32(-492f + 1f)) == -543f;
}

fn func_3(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.e.zy, vec2<u32>(~98783u, ~global3.x) << (~(~global3.yz) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(global3.yxx, vec3<u32>(global4.x, 0u, 9451u) ^ vec3<u32>(1u, 59366u, 4294967295u)), global4.x)), _wgslsmith_mult_vec2_u32(arg_0.e.xz, ~(~global3.ww)));
    let var_1 = arg_0;
    global0 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.b, u_input.a.x), ~global3.yy), 13466u & var_1.e.x), 11u)];
    global2 = array<Struct_1, 11>();
    global0 = arg_0.c;
    return Struct_2(var_1.a, vec4<bool>(any(arg_0.b.zz), true, all(select(var_1.b.xyz, select(vec3<bool>(false, arg_0.b.x, false), arg_0.b.wyz, var_1.b.xxx), global0.a & arg_0.c.a)), true), Struct_1((false || !arg_0.a) & !any(arg_0.b.yy), abs(arg_0.c.b)), _wgslsmith_f_op_vec2_f32(exp2(var_1.d)), vec3<u32>(_wgslsmith_add_u32(31629u, 4294967295u | global0.b), _wgslsmith_clamp_u32(87834u, global0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, 0u, 4294967295u), vec3<u32>(global0.b, 65966u, 22933u)) >> (0u % 32u)), 28422u));
}

fn func_1() -> Struct_3 {
    var var_0 = func_3(Struct_2(true, vec4<bool>((4294967295u << (u_input.a.x % 32u)) >= ~global0.b, func_2(1i, select(vec4<bool>(global0.a, global0.a, true, false), vec4<bool>(global0.a, true, global0.a, global0.a), vec4<bool>(global0.a, true, true, false)), true), true, true), global2[_wgslsmith_index_u32(26232u, 11u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(423f, 1251f)), vec2<f32>(-2038f, -376f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -330f), _wgslsmith_f_op_f32(-260f * -1000f)))), vec3<u32>(_wgslsmith_sub_u32(global0.b, u_input.a.x) & (global0.b & u_input.a.x), ~global3.x, ~global4.x ^ 1u)));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(-14892i, -1i, 45484i) & select(vec3<i32>(19794i, 1281i, 0i), vec3<i32>(2147483647i, 21922i, 1i), var_0.a), -abs(vec3<i32>(2147483647i, -22345i, 0i))) <= 7154i, 23749u);
    var var_2 = Struct_2(!global0.a, select(var_0.b, !(!var_0.b), !var_0.b), func_3(func_3(func_3(func_3(Struct_2(var_1.a, var_0.b, Struct_1(var_1.a, 121933u), var_0.d, vec3<u32>(1u, 18834u, 32u)))))).c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d))), _wgslsmith_f_op_vec2_f32(-var_0.d))), ~(min(firstLeadingBit(var_0.e), ~vec3<u32>(var_1.b, 0u, 4294967295u)) | ~var_0.e));
    global3 = u_input.a;
    var var_3 = var_0.c;
    return Struct_3(vec4<u32>(~1u, _wgslsmith_clamp_u32(global0.b, global4.x, ~countOneBits(global0.b)), ~max(var_3.b, 4294967295u) ^ 1u, var_1.b | _wgslsmith_mod_u32(3564u, u_input.a.x)), Struct_1(var_0.c.a, (~var_2.c.b >> (~var_0.c.b % 32u)) | _wgslsmith_mod_u32(var_1.b & global3.x, 1u)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = arg_3.b;
    global3 = max(~arg_3.a, vec4<u32>(~4294967295u, func_1().a.x, ~1u, func_3(Struct_2(arg_1.b.a, vec4<bool>(false, false, arg_3.b.a, true), Struct_1(true, arg_3.a.x), vec2<f32>(-885f, 224f), u_input.a.yyw)).e.x) & ~firstTrailingBit(func_1().a));
    var var_1 = !(!select(vec4<bool>(!arg_3.b.a, true, true, arg_1.b.a), vec4<bool>(var_0.a & var_0.a, true, !var_0.a, arg_1.b.a), select(!vec4<bool>(true, true, false, arg_3.b.a), !vec4<bool>(true, false, true, global0.a), select(vec4<bool>(true, true, var_0.a, true), vec4<bool>(arg_3.b.a, arg_2.a, true, arg_2.a), vec4<bool>(arg_3.b.a, false, arg_3.b.a, global0.a)))));
    let var_2 = ~_wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(37766i, 17155i, 8964i, 2147483647i)), firstTrailingBit(vec4<i32>(-1i, -30258i, _wgslsmith_mult_i32(0i, arg_0.x), firstLeadingBit(arg_0.x))));
    global0 = Struct_1(arg_3.b.a, 4754u);
    return ~(~_wgslsmith_mult_vec4_u32(arg_1.a, vec4<u32>(4294967295u, 4294967295u, arg_1.b.b, 0u))) >> (max(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.b.b, global0.b, arg_3.b.b), u_input.a.wwx), arg_3.b.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.x, 23134u), ~vec2<u32>(arg_2.b, global0.b)), ~_wgslsmith_div_u32(4294967295u, 1u)), ~_wgslsmith_mult_vec4_u32(min(arg_1.a, arg_3.a), reverseBits(u_input.a))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(~global4.x, u_input.a.x, global4.x, 68199u)), min(func_4(abs(~vec3<i32>(1i, -2147483647i, -41996i)), func_1(), func_3(func_3(Struct_2(global0.a, vec4<bool>(global0.a, global0.a, global0.a, true), Struct_1(global0.a, global4.x), vec2<f32>(-355f, 1077f), u_input.a.yzy))).c, func_1()), u_input.a), vec4<u32>(global4.x | u_input.a.x, ~abs(u_input.a.x), ~(abs(global4.x) << (4294967295u % 32u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~1u, func_4(vec3<i32>(50913i, -7279i, 2147483647i), Struct_3(u_input.a, Struct_1(false, global0.b)), global1[_wgslsmith_index_u32(55579u, 10u)], Struct_3(u_input.a, global1[_wgslsmith_index_u32(global0.b, 10u)])).x), _wgslsmith_mult_u32(_wgslsmith_div_u32(global0.b, u_input.a.x), 13961u))));
    var var_0 = Struct_3(vec4<u32>(~(~(~u_input.a.x)), _wgslsmith_add_u32(1594u, u_input.a.x), 1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, global3.x, u_input.a.x) ^ (0u | u_input.a.x), 7943u)), global2[_wgslsmith_index_u32(1u, 11u)]);
    global4 = firstTrailingBit(func_1().a.yzz);
    var var_1 = u_input.a.x;
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    var var_2 = func_3(Struct_2(global0.a, vec4<bool>(global0.a, true, true, global0.a), func_1().b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(115f, -1716f), vec2<f32>(114f, 1733f))) * vec2<f32>(200f, -593f)) + vec2<f32>(784f, _wgslsmith_f_op_f32(min(697f, 1743f)))), vec3<u32>(_wgslsmith_dot_vec3_u32(func_4(vec3<i32>(1i, 24299i, 2147483647i), Struct_3(vec4<u32>(var_0.b.b, 4294967295u, global0.b, 7201u), Struct_1(var_0.b.a, 25376u)), Struct_1(false, 1u), Struct_3(vec4<u32>(4294967295u, global0.b, u_input.a.x, 9502u), global1[_wgslsmith_index_u32(global0.b, 10u)])).xxz, var_0.a.wyw), ~42386u ^ max(global4.x, global0.b), global0.b))).c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -997f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-335f, func_3(Struct_2(false, vec4<bool>(false, var_0.b.a, var_0.b.a, false), Struct_1(var_0.b.a, u_input.a.x), vec2<f32>(-490f, -1469f), vec3<u32>(4294967295u, global3.x, 0u))).d.x)), 1000f), -2199f, -1178f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-430f, _wgslsmith_div_f32(-2119f, 850f)), _wgslsmith_f_op_f32(-1f), -186f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec4<i32>(1i, 1i, 1i, 1i));
}

