struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 25702i), vec2<u32>(1u, 37492u), 1287f, vec3<i32>(-21675i, 2147483647i, 2147483647i));

var<private> global1: array<Struct_1, 30>;

var<private> global2: vec2<u32> = vec2<u32>(1u, 28990u);

var<private> global3: vec3<i32> = vec3<i32>(0i, 1i, -1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = select(vec4<bool>(all(vec4<bool>(true, arg_0, true, true)) || any(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true)), arg_0 | !(!arg_0), all(vec2<bool>(true, true)), !arg_0), select(select(!(!vec4<bool>(true, arg_0, false, false)), !(!vec4<bool>(arg_0, arg_0, false, false)), select(!vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, arg_0))), vec4<bool>(any(select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0))), true, false, (global2.x <= 1u) && true), !any(!vec3<bool>(arg_0, arg_0, arg_0))), any(vec2<bool>(true, true)));
    let var_1 = Struct_2(global3.x, abs(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, global3.x, global0.d.x), vec3<i32>(-2147483647i, -2147483647i, 0i))) | vec3<i32>(i32(-1i) * -2147483647i, 0i, 100786i)), global1[_wgslsmith_index_u32(global0.b.x, 30u)], Struct_1(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(0i, global3.x)), ~global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f * global0.c))), select(vec3<i32>(_wgslsmith_dot_vec3_i32(global0.d, global0.d), global0.a.x, 1i), _wgslsmith_div_vec3_i32(global0.d, -vec3<i32>(1i, -1i, -2147483647i)), var_0.x)));
    global1 = array<Struct_1, 30>();
    global0 = Struct_1(vec2<i32>(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.d.a.x, -1i, 0i, 44000i), vec4<i32>(var_1.a, -2147483647i, var_1.c.a.x, var_1.a)), select(vec4<i32>(global0.a.x, 16570i, 53509i, 2147483647i), vec4<i32>(global3.x, 2147483647i, global3.x, 15034i), true))), -2147483647i), ~(~vec2<u32>(min(34490u, global0.b.x), ~var_1.d.b.x)), 302f, vec3<i32>(u_input.a, ~_wgslsmith_mod_i32(var_1.d.a.x, global0.d.x) | _wgslsmith_sub_i32(~2147483647i, var_1.a), var_1.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1547f + global0.c), _wgslsmith_f_op_f32(abs(1672f)), _wgslsmith_f_op_f32(var_1.d.c - global0.c), var_1.c.c) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1518f), _wgslsmith_f_op_f32(sign(-481f)), _wgslsmith_f_op_f32(-var_1.c.c), _wgslsmith_f_op_f32(round(423f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d.c, -1000f, 468f, var_1.d.c)))))));
    return reverseBits(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.b.x, var_1.d.b.x), select(4294967295u, global2.x, var_0.x)), abs(0u)));
}

fn func_2() -> u32 {
    let var_0 = func_3(false);
    global2 = ~vec2<u32>(_wgslsmith_mult_u32(var_0, 26890u), 6413u);
    var var_1 = Struct_3(-1i, vec3<bool>(true, !(~var_0 >= (23151u >> (global0.b.x % 32u))), true & all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), global1[_wgslsmith_index_u32(~global0.b.x, 30u)], Struct_1(vec2<i32>(~global0.d.x ^ -27843i, i32(-1i) * -1i), countOneBits(vec2<u32>(4294967295u, 84758u)), _wgslsmith_f_op_f32(ceil(global0.c)), vec3<i32>(-1i) * -global0.d));
    var var_2 = !vec3<bool>(var_1.b.x, var_1.b.x, any(vec3<bool>(var_1.b.x & true, -16849i <= global3.x, all(vec2<bool>(true, true)))));
    let var_3 = ~var_1.d.d;
    return _wgslsmith_mult_u32(_wgslsmith_div_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.b.x, 15825u, 4294967295u), vec4<u32>(global0.b.x, 4294967295u, 0u, global2.x)), ~4294967295u, var_1.b.x), ~0u), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.b.x, global0.b.x, 4294967295u), vec3<u32>(var_1.d.b.x, 1u, 55194u)))) >> (1u % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = func_2();
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, abs(~abs(arg_0.b.x & 8710u))), 30u)];
    global1 = array<Struct_1, 30>();
    var_0 = abs(_wgslsmith_clamp_u32(23448u, 0u, arg_0.b.x));
    global0 = arg_0;
    return Struct_3(countOneBits(i32(-1i) * -2147483647i), !arg_2, arg_0, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.b.x, global2.x), 30u)]);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-125f + 1f), 1117f));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-461f - arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1794f, global0.c))))))));
    global0 = Struct_1(vec2<i32>(~max(global3.x, 37135i | global0.a.x), 4098i), arg_0.b, _wgslsmith_div_f32(global0.c, arg_1.c.c), vec3<i32>(min(global3.x, -1i), arg_2.b.x, global3.x));
    let var_1 = _wgslsmith_dot_vec3_i32(~(func_1(arg_1.d, 1u, arg_1.b, vec4<i32>(-15216i, arg_2.b.x, -2147483647i, -18642i)).c.d & vec3<i32>(u_input.a, u_input.a, -14579i)), -max(arg_0.d | vec3<i32>(-2147483647i, arg_2.d.a.x, -36114i), -vec3<i32>(8039i, u_input.a, global0.d.x))) | ~((67027i | (u_input.a & global0.a.x)) << (~1u % 32u));
    global2 = arg_0.b;
    return ~(~select(-arg_2.d.d, vec3<i32>(-2147483647i, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, 0i), vec4<i32>(u_input.a, arg_2.c.d.x, 5764i, var_1))), all(select(vec4<bool>(false, true, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x), vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(global0.b.x >> (countOneBits(select(max(global2.x, ~global0.b.x), global2.x, true)) % 32u), 30u)];
    let var_1 = Struct_1(~global0.d.xx, vec2<u32>(global0.b.x, ~abs(global2.x >> (global0.b.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), max(max(func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.b.x, 0u), 30u)], func_1(Struct_1(global0.a, var_0.b, -1301f, global0.d), var_0.b.x, vec3<bool>(false, true, true), vec4<i32>(-37641i, var_0.a.x, global3.x, 0i)), Struct_2(global3.x, vec3<i32>(u_input.a, 43256i, global0.a.x), Struct_1(var_0.d.xz, global0.b, global0.c, vec3<i32>(global0.d.x, -17938i, 1i)), Struct_1(global3.xx, global0.b, global0.c, vec3<i32>(-5911i, 0i, 1i))), firstLeadingBit(vec2<u32>(global2.x, 71397u))), vec3<i32>(-15438i, -37322i, -29416i) | vec3<i32>(global0.a.x, var_0.a.x, 19445i)), min(var_0.d, global0.d >> (vec3<u32>(var_0.b.x, global0.b.x, 22292u) % vec3<u32>(32u)))));
    var var_2 = Struct_3(~u_input.a, select(vec3<bool>(true, any(func_1(Struct_1(global0.d.yy, var_1.b, var_0.c, vec3<i32>(-2147483647i, -2147483647i, global3.x)), 1u, vec3<bool>(false, false, false), vec4<i32>(var_0.d.x, 55280i, u_input.a, -40967i)).b), true), !vec3<bool>(true, any(vec4<bool>(false, false, true, false)), false), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), Struct_1(-_wgslsmith_div_vec2_i32(var_0.d.zz, -vec2<i32>(-13975i, u_input.a)), var_1.b & (vec2<u32>(global0.b.x, 0u) | ~vec2<u32>(var_0.b.x, 52942u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, 466f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1027f + 867f), _wgslsmith_f_op_f32(-var_0.c), true))), firstLeadingBit(firstTrailingBit(vec3<i32>(global3.x, -2147483647i, 1i)))), global1[_wgslsmith_index_u32(global0.b.x, 30u)]);
    global3 = vec3<i32>(var_1.a.x, -2147483647i, global0.d.x);
    let var_3 = func_1(var_1, _wgslsmith_clamp_u32(32135u, global0.b.x, ~func_1(func_1(Struct_1(var_2.c.a, var_1.b, -963f, vec3<i32>(-35894i, var_1.a.x, -1i)), 51331u, var_2.b, vec4<i32>(-48536i, global3.x, 0i, global0.a.x)).d, func_1(global1[_wgslsmith_index_u32(var_0.b.x, 30u)], 0u, var_2.b, vec4<i32>(-28842i, u_input.a, var_2.a, 11758i)).d.b.x, var_2.b, vec4<i32>(var_0.a.x, var_2.a, var_0.a.x, -17321i) << (vec4<u32>(var_0.b.x, var_1.b.x, 4294967295u, 32813u) % vec4<u32>(32u))).c.b.x), vec3<bool>(var_2.b.x, var_2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b.x, 14717u), ~vec3<u32>(121980u, 4294967295u, 46638u)) > ~global0.b.x), vec4<i32>(global3.x, ~_wgslsmith_div_i32(61506i, global0.a.x), 1i, ~(~(-74505i)))).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(39134u, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b.x, 33512u), 1u), var_2.c.b.x), 52831u), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, global0.a.x), -vec3<i32>(firstLeadingBit(var_0.d.x), 2147483647i, -2147483647i)), var_0.d.x, 0u, firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, 9169u, 1u), min(vec3<u32>(2622u, 28425u, 0u), vec3<u32>(global0.b.x, 24365u, 0u))))));
}

