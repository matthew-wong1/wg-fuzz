struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-477i, 2147483647i, 1082i), vec3<i32>(-1i, i32(-2147483648), 11429i), vec3<i32>(-1i, -62091i, -6836i), vec3<i32>(2147483647i, -11612i, -1i), vec3<i32>(0i, 1i, 7030i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), -10636i), vec3<i32>(58812i, -1i, 0i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(0i, -40321i, -34579i), vec3<i32>(-38164i, -21722i, -11354i), vec3<i32>(29717i, 19800i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -39716i, 0i), vec3<i32>(-75403i, 1i, 2147483647i), vec3<i32>(-17262i, -35342i, 1i), vec3<i32>(26379i, -1i, -91896i), vec3<i32>(2147483647i, 1i, -6703i), vec3<i32>(-27662i, -11522i, -40228i), vec3<i32>(-36523i, -1i, 1i), vec3<i32>(0i, 0i, -1i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(2147483647i, -9428i, 38535i), vec3<i32>(1i, i32(-2147483648), 22876i), vec3<i32>(-1i, -10594i, -37863i), vec3<i32>(12712i, 79116i, -45883i), vec3<i32>(-43246i, 2147483647i, 0i), vec3<i32>(14103i, 0i, 23506i), vec3<i32>(52070i, 2147483647i, 16409i), vec3<i32>(1i, -439i, -4968i), vec3<i32>(-1i, -1i, i32(-2147483648)), vec3<i32>(19534i, 6063i, 82508i), vec3<i32>(2147483647i, 1i, 1i));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<bool>(false, false), vec3<u32>(1u, 22873u, 1u), true), Struct_1(vec2<i32>(-57837i, 16435i), vec2<bool>(false, false), vec3<u32>(1u, 0u, 53689u), false), Struct_1(vec2<i32>(0i, -28058i), vec2<bool>(true, true), vec3<u32>(1610u, 19959u, 4294967295u), true), 1093f, vec3<f32>(-330f, 981f, 986f));

var<private> global3: vec4<i32>;

var<private> global4: bool = false;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global2 = Struct_2(global2.c, Struct_1(-vec2<i32>(_wgslsmith_mod_i32(-70310i, 188i), 0i), !global2.c.b, firstLeadingBit(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, global0.b.c.x, 11356u), vec3<u32>(arg_2.c.c.x, arg_3.b.c.x, global2.b.c.x)))), global0.c.d || !all(vec3<bool>(true, arg_2.b.d, false))), Struct_1(global0.a.a, !select(!vec2<bool>(global0.b.d, true), !arg_3.b.b, select(vec2<bool>(global0.c.b.x, arg_3.c.d), global0.b.b, arg_3.a.b.x)), _wgslsmith_mult_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c.c.x, u_input.c.x, global0.b.c.x), arg_3.c.c, vec3<u32>(36650u, global0.b.c.x, arg_3.c.c.x)), ~arg_2.c.c, vec3<bool>(true, true, true)), min(select(global2.a.c, vec3<u32>(global0.b.c.x, 0u, 0u), arg_3.c.d), arg_3.c.c)), any(vec3<bool>(true, -206f <= arg_3.e.x, false))), _wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.e.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(arg_3.e.x - 1715f)))), vec3<f32>(-1002f, global0.e.x, 338f));
    let var_0 = arg_2.b;
    var var_1 = 0u;
    global4 = !(!all(select(vec4<bool>(global0.a.b.x, true, false, true), !vec4<bool>(global0.b.b.x, false, var_0.b.x, true), true)));
    var_1 = ~arg_3.c.c.x;
    return _wgslsmith_dot_vec4_u32(select(~reverseBits(vec4<u32>(0u, arg_2.a.c.x, global0.a.c.x, global2.c.c.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 19621u, arg_3.c.c.x, 1u), vec4<u32>(80608u, arg_2.b.c.x, var_0.c.x, arg_2.c.c.x), vec4<u32>(global0.b.c.x, u_input.c.x, global2.a.c.x, 4294967295u)) | _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_3.c.c.x, arg_2.c.c.x, global0.c.c.x), vec4<u32>(global2.a.c.x, global0.b.c.x, var_0.c.x, 122799u), vec4<u32>(4294967295u, 4294967295u, 9428u, global2.c.c.x)), max(vec4<u32>(33231u, 57965u, var_0.c.x, arg_3.b.c.x), vec4<u32>(39272u, 4294967295u, 1u, u_input.c.x))), false), countOneBits(~vec4<u32>(u_input.c.x, 0u, 1u, 38739u) & firstLeadingBit(~vec4<u32>(arg_2.c.c.x, arg_2.a.c.x, 1u, 0u))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(13263u, 32u)], -273f, Struct_1(firstTrailingBit(global2.c.a), vec2<bool>(any(select(vec4<bool>(false, false, global2.b.b.x, true), vec4<bool>(false, true, global2.c.d, global0.a.d), false)), (global0.c.a.x != global2.b.a.x) || global2.c.d), firstTrailingBit(vec3<u32>(~global2.b.c.x, func_3(vec3<f32>(global2.e.x, global2.e.x, 1000f), global1[_wgslsmith_index_u32(global2.b.c.x, 32u)], Struct_2(global0.b, Struct_1(global2.a.a, global2.c.b, vec3<u32>(global0.a.c.x, u_input.c.x, 34876u), global2.a.d), global2.c, arg_0.x, vec3<f32>(global2.d, arg_0.x, -670f)), Struct_2(global0.b, Struct_1(vec2<i32>(global2.b.a.x, 2114i), vec2<bool>(true, global0.c.d), vec3<u32>(70787u, 13218u, 4294967295u), global0.a.d), global2.c, arg_0.x, arg_0)), 24386u | global0.b.c.x)), !(!global2.a.d)), !(!select(select(vec3<bool>(global2.b.b.x, global0.a.b.x, false), vec3<bool>(global2.c.b.x, true, global2.c.b.x), vec3<bool>(global2.b.d, false, false)), !vec3<bool>(false, false, global0.b.d), vec3<bool>(global0.c.b.x, false, global0.c.b.x))), Struct_1(abs(_wgslsmith_add_vec2_i32(vec2<i32>(global3.x, u_input.b), u_input.d) << (~global0.c.c.zx % vec2<u32>(32u))), vec2<bool>(global0.a.b.x, !(!global2.a.b.x)), vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(global0.b.c, global0.c.c)), ~(~55501u), u_input.c.x), 1f >= _wgslsmith_f_op_f32(step(1656f, arg_0.x))));
    var var_1 = Struct_3(-_wgslsmith_mult_vec3_i32(-firstLeadingBit(var_0.a), global3.xxx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -1794f), global0.c, !vec3<bool>(!(!global2.b.d), all(select(vec4<bool>(global2.b.d, global2.c.b.x, true, true), vec4<bool>(var_0.e.d, global2.a.b.x, var_0.c.d, global0.b.b.x), vec4<bool>(var_0.d.x, true, true, global0.c.d))), all(vec3<bool>(global2.b.d, true, false))), Struct_1(global3.zz, var_0.e.b, global2.c.c, any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-global2.e.x);
    let var_3 = true;
    global1 = array<vec3<i32>, 32>();
    return global2.a;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<u32> {
    let var_0 = vec2<bool>(true, global2.a.b.x && true);
    var var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(774f, _wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(exp2(global0.d))) - _wgslsmith_f_op_vec3_f32(global0.e * vec3<f32>(global0.d, global2.e.x, global0.d)))), global2.a, global0.c, global2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.e - global2.e))))));
    let var_2 = var_1.b.c.x;
    var var_3 = Struct_3(-(_wgslsmith_mod_vec3_i32(u_input.e.xxy, global3.xwy) << (abs(vec3<u32>(var_1.c.c.x, 1u, 112931u)) % vec3<u32>(32u))) & global3.zxy, _wgslsmith_f_op_f32(f32(-1f) * -631f), func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d, -1031f)), var_1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2371f, 1470f)) + _wgslsmith_f_op_f32(abs(global2.e.x))))), vec3<bool>((71322u >= (u_input.c.x | 1u)) || var_0.x, true, func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(928f, global2.e.x, global0.d), var_1.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-848f, global2.e.x, var_1.e.x))))).d), global2.a);
    let var_4 = Struct_2(func_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.e.x)))), global0.d, var_3.b)), var_1.c, func_2(_wgslsmith_f_op_vec3_f32(global2.e - vec3<f32>(_wgslsmith_div_f32(var_3.b, global0.e.x), var_1.e.x, _wgslsmith_f_op_f32(global0.e.x - global2.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) * _wgslsmith_f_op_f32(var_1.e.x * 1518f))), _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(ceil(-133f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_3.b)), -147f)), var_3.b, var_1.e.x)));
    return _wgslsmith_mod_vec2_u32(var_3.e.c.zy, reverseBits(min(~firstLeadingBit(var_1.c.c.zz), vec2<u32>(88930u, ~8740u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = 0u;
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~9637u), ~(_wgslsmith_add_u32(1u, global0.a.c.x) << (u_input.c.x % 32u))), _wgslsmith_sub_vec2_u32(~func_1(-global2.a.a.x, true), func_2(vec3<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-1103f * global0.d))).c.yz));
    var_2 = ~(~(~(~(~global2.c.c.x))));
    let var_3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.c.x, reverseBits(_wgslsmith_add_u32(1u, 1u)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 953f)));
}

