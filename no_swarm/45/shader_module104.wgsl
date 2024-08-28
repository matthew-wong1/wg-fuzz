struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: Struct_2 = Struct_2(Struct_1(4294967295u, vec4<u32>(0u, 1u, 890u, 4294967295u), 11410u, 1886f), Struct_1(4294967295u, vec4<u32>(1u, 3233u, 0u, 24785u), 4294967295u, 542f), -32386i);

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(1u, vec4<u32>(11721u, 34231u, 51090u, 102672u), 59032u, 1562f), Struct_1(5470u, vec4<u32>(4294967295u, 4294967295u, 10819u, 25548u), 0u, 1288f), 1i), Struct_2(Struct_1(4294967295u, vec4<u32>(12455u, 0u, 1851u, 1u), 4294967295u, 727f), Struct_1(1u, vec4<u32>(0u, 35889u, 6832u, 0u), 39413u, -730f), -1i), Struct_2(Struct_1(1u, vec4<u32>(1u, 62505u, 99659u, 0u), 13821u, 1003f), Struct_1(4294967295u, vec4<u32>(4294967295u, 9748u, 1u, 4294967295u), 0u, -242f), 21373i), Struct_2(Struct_1(0u, vec4<u32>(17226u, 23273u, 26790u, 18857u), 1u, 336f), Struct_1(553u, vec4<u32>(43415u, 35351u, 4294967295u, 59089u), 0u, 724f), 11479i), Struct_2(Struct_1(1u, vec4<u32>(0u, 21128u, 22511u, 12795u), 62794u, -1012f), Struct_1(85011u, vec4<u32>(1u, 0u, 1u, 292u), 0u, -1086f), -24501i), Struct_2(Struct_1(4294967295u, vec4<u32>(17928u, 19818u, 4294967295u, 28893u), 0u, 1000f), Struct_1(0u, vec4<u32>(0u, 4294967295u, 4824u, 23115u), 44201u, -296f), 2147483647i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_2 {
    global1 = arg_0;
    let var_0 = arg_0.a;
    let var_1 = arg_0;
    var var_2 = true;
    var var_3 = abs(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 16076u), firstTrailingBit(~u_input.e.x)));
    return global2[_wgslsmith_index_u32(abs(abs(~(~select(global1.a.b.x, 35471u, true)))), 6u)];
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global1 = func_2(Struct_2(Struct_1(0u, select(func_2(global2[_wgslsmith_index_u32(51760u, 6u)], global1.a.b.zw, global1.b).a.b, vec4<u32>(arg_1.a.a, u_input.d, u_input.d, 201u), !vec4<bool>(false, true, arg_0, arg_0)), select(~global1.a.b.x, _wgslsmith_mult_u32(u_input.b, 1u), arg_0), global1.b.d), Struct_1(u_input.d, _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 1u, u_input.a, global1.a.b.x), func_2(Struct_2(Struct_1(arg_1.a.a, vec4<u32>(u_input.d, 9524u, 4294967295u, arg_1.b.b.x), u_input.e.x, global1.a.d), global1.b, 11240i), vec2<u32>(4294967295u, 0u), Struct_1(u_input.a, global1.a.b, 20910u, 245f)).a.b), ~4294967295u, _wgslsmith_f_op_f32(-global1.a.d)), reverseBits(-2147483647i << (_wgslsmith_div_u32(44188u, 4294967295u) % 32u))), vec2<u32>(1u, 4294967295u), global1.a);
    let var_0 = select(select(vec3<bool>(all(!vec4<bool>(false, false, true, arg_0)), arg_0, arg_0), !vec3<bool>(arg_0, arg_0, any(vec3<bool>(false, true, arg_0))), vec3<bool>(true, true, true)), !vec3<bool>(!(false & arg_0), true, arg_0), vec3<bool>(true, !(!any(vec3<bool>(true, arg_0, true))), select(global1.b.b.x == firstLeadingBit(arg_1.a.a), !(!arg_0), false & (global1.a.d > -1930f))));
    let var_1 = select(vec4<bool>(!(!var_0.x), true, var_0.x, true), vec4<bool>(true, true, !var_0.x, false), !(!vec4<bool>(arg_0 && arg_0, true, false, !var_0.x)));
    global2 = array<Struct_2, 6>();
    var var_2 = global1.b;
    return Struct_1(min(1u, u_input.a), arg_1.b.b, ~(~(3438u | arg_1.b.b.x)) | func_2(global2[_wgslsmith_index_u32(4294967295u, 6u)], countOneBits(~vec2<u32>(var_2.c, 0u)), global1.a).a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.d)) - _wgslsmith_f_op_f32(step(func_2(Struct_2(Struct_1(arg_1.a.a, vec4<u32>(arg_1.a.b.x, 1u, 7250u, var_2.a), global1.b.c, arg_1.a.d), Struct_1(var_2.b.x, var_2.b, 4294967295u, 651f), 28058i), ~arg_1.a.b.yw, arg_1.a).b.d, arg_1.b.d))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: u32) -> vec2<f32> {
    var var_0 = !(all(vec2<bool>(true, true)) && false);
    global1 = Struct_2(Struct_1(firstTrailingBit(1u), vec4<u32>(_wgslsmith_div_u32(global1.a.b.x, arg_3), 4370u, select(firstLeadingBit(4294967295u), 13861u, true), u_input.d), ~abs(_wgslsmith_add_u32(arg_0.a.c, 43381u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1269f * 1170f), _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f))))), Struct_1(4294967295u, _wgslsmith_mod_vec4_u32(vec4<u32>(~global1.a.c, arg_0.b.b.x, arg_3, _wgslsmith_mult_u32(global1.b.c, arg_0.a.b.x)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(30909u, 0u, global1.a.b.x, global1.b.a), arg_0.b.b))), ~arg_0.b.a | countOneBits(_wgslsmith_dot_vec4_u32(global1.b.b, vec4<u32>(arg_3, 1u, arg_0.a.c, u_input.a))), 191f), _wgslsmith_div_i32(global1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, -52342i, -3151i, 2147483647i), vec4<i32>(global1.c, 0i, -1123i, global1.c))) << (1u % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.d)));
    let var_2 = _wgslsmith_clamp_u32(32459u, arg_0.a.c, 70953u) & func_2(func_2(func_2(func_2(Struct_2(arg_0.a, Struct_1(arg_3, vec4<u32>(arg_3, arg_0.a.b.x, 4294967295u, 54849u), u_input.a, arg_0.b.d), 6407i), arg_0.b.b.zx, arg_0.a), ~global1.a.b.zx, global1.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(29180u, 27398u), global1.b.b.xw ^ vec2<u32>(arg_0.a.a, 1u), global1.a.b.zz), Struct_1(_wgslsmith_div_u32(75823u, global1.b.b.x), max(vec4<u32>(66559u, arg_0.b.b.x, 4294967295u, arg_3), vec4<u32>(u_input.b, 1u, arg_0.b.b.x, 29915u)), 49822u, _wgslsmith_f_op_f32(f32(-1f) * -1721f))), abs(firstTrailingBit(_wgslsmith_add_vec2_u32(arg_0.a.b.xy, vec2<u32>(arg_3, arg_0.b.b.x)))), func_2(func_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3, arg_0.b.c), 6u)], vec2<u32>(1u, 57899u), Struct_1(13874u, arg_0.b.b, arg_0.a.c, arg_0.a.d)), arg_0.b.b.yx, func_3(true, func_2(arg_0, vec2<u32>(arg_3, 61569u), Struct_1(4294967295u, vec4<u32>(0u, 7931u, arg_3, u_input.b), u_input.d, arg_2)))).a).a.c;
    var_1 = arg_0.b.d;
    return vec2<f32>(-381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(func_3(any(vec3<bool>(true, true, true)), Struct_2(global1.b, global1.a, global0[_wgslsmith_index_u32(u_input.a, 29u)])).d))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = abs(vec3<i32>(~u_input.c, -14654i ^ -_wgslsmith_sub_i32(0i, arg_0), global1.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(func_3(true, func_2(global2[_wgslsmith_index_u32(u_input.d, 6u)], vec2<u32>(5155u, 4294967295u), global1.b)), Struct_1(42385u, vec4<u32>(u_input.d, 1u, u_input.d, 0u), global1.a.b.x ^ 0u, _wgslsmith_f_op_f32(-global1.b.d)), 0i), arg_0 ^ _wgslsmith_mult_i32(global1.c, u_input.c), _wgslsmith_f_op_f32(global1.a.d - -551f), reverseBits(_wgslsmith_clamp_u32(~1u, global1.a.a, global1.a.b.x)))));
    var var_2 = func_2(func_2(func_2(global2[_wgslsmith_index_u32(23932u, 6u)], countOneBits(u_input.e.xx) & global1.b.b.zw, func_3(var_0.x < 374i, global2[_wgslsmith_index_u32(1u, 6u)])), countOneBits(~_wgslsmith_div_vec2_u32(global1.a.b.zy, vec2<u32>(15401u, global1.a.c))), Struct_1(~_wgslsmith_mult_u32(4294967295u, 0u), firstTrailingBit(countOneBits(vec4<u32>(u_input.d, 1u, 0u, 0u))), global1.b.c, var_1.x)), vec2<u32>(1u, 4294967295u) ^ ~u_input.e.xx, Struct_1(_wgslsmith_div_u32(4294967295u, ~83694u | ~global1.b.c), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(global1.a.b & vec4<u32>(0u, u_input.a, 18010u, 4294967295u), vec4<u32>(0u, 0u, 22390u, u_input.b)), ~vec4<u32>(u_input.e.x, 1u, u_input.d, 15673u)), _wgslsmith_sub_u32(10745u, abs(global1.a.b.x)), _wgslsmith_f_op_f32(446f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-258f, var_1.x)))))).a;
    var var_3 = func_2(global2[_wgslsmith_index_u32(var_2.b.x, 6u)], _wgslsmith_mod_vec2_u32(global1.a.b.yy & ~func_3(true, Struct_2(global1.a, global1.a, 0i)).b.xy, select(~(~u_input.e.yy), _wgslsmith_add_vec2_u32(vec2<u32>(global1.a.a, global1.a.b.x), vec2<u32>(34457u, global1.a.a)), 1u <= var_2.a)), global1.a).a;
    let var_4 = 0i;
    return 1u << (var_2.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.b, ~u_input.e.x, reverseBits(u_input.a));
    var var_1 = ~global1.a.a;
    global1 = Struct_2(Struct_1(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-36104i, global0[_wgslsmith_index_u32(11274u, 29u)], global0[_wgslsmith_index_u32(global1.a.b.x, 29u)], -2147483647i), vec4<i32>(-45027i, global1.c, global0[_wgslsmith_index_u32(global1.a.a, 29u)], u_input.c)) & ~global1.c), vec4<u32>(29229u, _wgslsmith_mult_u32(u_input.b, 4294967295u), 0u, 0u) | vec4<u32>(36023u, 36154u, 70681u ^ var_0.x, 1u), global1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.d, global1.b.d, true)) + global1.b.d)), func_2(Struct_2(global1.a, func_2(Struct_2(Struct_1(0u, vec4<u32>(61561u, 0u, var_0.x, u_input.a), u_input.b, 356f), global1.a, global1.c), ~vec2<u32>(var_0.x, var_0.x), func_2(global2[_wgslsmith_index_u32(27103u, 6u)], u_input.e.zx, Struct_1(10340u, global1.b.b, 18815u, global1.b.d)).a).b, -3854i), var_0.xx, Struct_1(_wgslsmith_add_u32(max(93225u, u_input.b), ~global1.a.b.x), vec4<u32>(0u, ~10388u, 24000u, 35667u), ~(~u_input.e.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.d))))).a, -(i32(-1i) * -global0[_wgslsmith_index_u32(87909u, 29u)]));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.d, 1000f)), vec2<f32>(global1.b.d, _wgslsmith_f_op_f32(f32(-1f) * -839f)))));
    var var_3 = vec4<bool>(-614f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-418f + global1.b.d)), select(select(all(vec2<bool>(false, false)), true, false), 1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) + -1900f), all(vec3<bool>(true, true, true))), false, true);
    global2 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(select(select(firstTrailingBit(~global1.b.b.zy), global1.b.b.zz, false), vec2<u32>(func_1(firstTrailingBit(global1.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12851u, global1.b.a), vec2<u32>(31398u, 0u)), countOneBits(692u), var_0.x)), !all(vec4<bool>(var_3.x, var_3.x, var_3.x, true))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 22869i, u_input.c, -2147483647i), vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c)) | max(vec4<i32>(global0[_wgslsmith_index_u32(global1.b.a, 29u)], u_input.c, 1i, -1i), vec4<i32>(global1.c, -2147483647i, u_input.c, u_input.c)), ~(vec4<i32>(1i, -1i, global0[_wgslsmith_index_u32(u_input.e.x, 29u)], global0[_wgslsmith_index_u32(24960u, 29u)]) & vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 29u)], u_input.c, -15605i, u_input.c))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(global1.c, global0[_wgslsmith_index_u32(var_0.x, 29u)]), _wgslsmith_add_i32(30387i, global1.c)), u_input.c, -func_2(Struct_2(global1.a, global1.b, global1.c), u_input.e.zx, Struct_1(4294967295u, vec4<u32>(var_0.x, u_input.d, 1u, u_input.e.x), 0u, -602f)).c, select(2147483647i, global1.c, false))), min(firstLeadingBit(vec4<i32>(global1.c, global1.c, ~global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(38017u, 29u)])), _wgslsmith_div_vec4_i32(select(~vec4<i32>(global1.c, global1.c, 2147483647i, 22367i), vec4<i32>(21513i, -10293i, -18606i, global1.c), vec4<bool>(true, true, false, true)), -(vec4<i32>(-6783i, global0[_wgslsmith_index_u32(var_0.x, 29u)], global0[_wgslsmith_index_u32(u_input.e.x, 29u)], 1i) << (vec4<u32>(var_0.x, global1.b.c, 28407u, 4294967295u) % vec4<u32>(32u))))), -_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(~u_input.d, 29u)], global0[_wgslsmith_index_u32(~1u, 29u)]), max(vec3<i32>(2147483647i, 1i, global1.c), -vec3<i32>(u_input.c, -1i, global0[_wgslsmith_index_u32(u_input.e.x, 29u)]))));
}

