struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32 = -201f;

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(2147483647i, Struct_1(vec3<u32>(38579u, 10015u, 6690u), 83313u, 39483i, 1u, 4294967295u), Struct_1(vec3<u32>(0u, 16125u, 0u), 14357u, -12560i, 1822u, 0u)), Struct_3(33289i, Struct_1(vec3<u32>(71895u, 25400u, 133575u), 4294967295u, 23106i, 53292u, 50803u), Struct_1(vec3<u32>(1u, 0u, 33875u), 1u, -8862i, 0u, 2879u)), Struct_3(2147483647i, Struct_1(vec3<u32>(30774u, 42922u, 4294967295u), 18507u, -1i, 29658u, 8431u), Struct_1(vec3<u32>(14867u, 1u, 78959u), 13405u, -22350i, 41882u, 4294967295u)), Struct_3(-1i, Struct_1(vec3<u32>(1u, 82066u, 1u), 32497u, i32(-2147483648), 32066u, 1u), Struct_1(vec3<u32>(0u, 30267u, 55128u), 4294967295u, 45891i, 51701u, 71026u)), Struct_3(57239i, Struct_1(vec3<u32>(4294967295u, 4834u, 30552u), 21565u, -11385i, 43712u, 0u), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), 26538u, -2690i, 14652u, 50166u)), Struct_3(32035i, Struct_1(vec3<u32>(17901u, 4294967295u, 11386u), 1u, 21921i, 52925u, 22u), Struct_1(vec3<u32>(25154u, 21955u, 0u), 68539u, 1i, 0u, 8236u)), Struct_3(-1i, Struct_1(vec3<u32>(4294967295u, 4294967295u, 28828u), 8493u, -4427i, 0u, 20304u), Struct_1(vec3<u32>(0u, 1u, 4294967295u), 47779u, 0i, 65001u, 1007u)), Struct_3(-20546i, Struct_1(vec3<u32>(0u, 1u, 4294967295u), 38160u, 1i, 1u, 0u), Struct_1(vec3<u32>(4294967295u, 21251u, 0u), 67230u, -1i, 15489u, 78224u)), Struct_3(0i, Struct_1(vec3<u32>(1u, 88264u, 0u), 4294967295u, -14851i, 40280u, 19995u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 24802u), 13621u, 2058i, 0u, 0u)), Struct_3(2147483647i, Struct_1(vec3<u32>(4294967295u, 1u, 1u), 0u, 1668i, 4294967295u, 4894u), Struct_1(vec3<u32>(28092u, 29077u, 54386u), 22483u, 2147483647i, 15909u, 50263u)));

var<private> global3: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(4444i, i32(-2147483648), 0i, -19726i), vec4<i32>(10984i, 0i, -10279i, -39702i), vec4<i32>(2147483647i, -38271i, 1i, 13894i), vec4<i32>(2147483647i, -45037i, 20553i, 1i), vec4<i32>(i32(-2147483648), 0i, 1i, i32(-2147483648)), vec4<i32>(1i, -17272i, -4389i, -49833i), vec4<i32>(2147483647i, 20190i, -1i, 0i), vec4<i32>(-23176i, -9254i, 1i, 37509i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(-1i, -34712i, -1i, 0i), vec4<i32>(0i, -36747i, 24871i, 28599i), vec4<i32>(i32(-2147483648), 2147483647i, -48006i, 0i), vec4<i32>(i32(-2147483648), 41924i, 36308i, 2147483647i), vec4<i32>(1i, 2147483647i, i32(-2147483648), -11855i), vec4<i32>(-1i, i32(-2147483648), -13603i, 13491i), vec4<i32>(-47323i, 1i, 21983i, -29721i), vec4<i32>(-1i, -2403i, 29442i, -19940i), vec4<i32>(17011i, i32(-2147483648), -28127i, 45087i), vec4<i32>(-18556i, i32(-2147483648), -1i, -9081i), vec4<i32>(39078i, -50104i, -19147i, 17580i), vec4<i32>(5576i, 0i, -55925i, 20839i), vec4<i32>(-21709i, i32(-2147483648), 0i, 0i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<f32> {
    let var_0 = vec4<u32>(4294967295u, 0u, arg_0.a.e, 4294967295u);
    let var_1 = arg_0.d.c;
    global1 = _wgslsmith_f_op_f32(-arg_0.b.x);
    let var_2 = _wgslsmith_f_op_f32(208f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b.x, -410f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1073f, arg_0.b.x))))) + _wgslsmith_f_op_f32(-arg_0.b.x)));
    var var_3 = vec4<f32>(172f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(step(550f, var_2))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))))), 146f, _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-444f, 2093f))), _wgslsmith_f_op_f32(247f - arg_0.b.x), true)))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, arg_0.b.x, 114f, var_2), vec4<f32>(-1000f, var_3.x, arg_0.b.x, arg_0.b.x)))) + arg_0.b) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-506f, var_3.x, var_2, -336f), arg_0.b, true)) + _wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(-748f, 655f, 1884f, 1057f))) + arg_0.b))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = -vec3<i32>(~countOneBits(_wgslsmith_add_i32(-13357i, 77234i)), u_input.b, u_input.b);
    var var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(~(~u_input.c), ~vec3<u32>(1u, u_input.e, 52925u)), ~u_input.d, var_0.x, (1u ^ u_input.d) << (u_input.a.x % 32u), (abs(0u) | ~u_input.e) & _wgslsmith_div_u32(firstLeadingBit(arg_0.b), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.d, 9959u, 1u)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(arg_0.a, 85956u, 1i, arg_0.e, arg_0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(229f, 1598f, 322f, 596f) * vec4<f32>(-920f, -1617f, 1000f, -504f)), u_input.c.x, arg_0), (var_0 >> (u_input.c % vec3<u32>(32u))) ^ (vec3<i32>(var_0.x, 1i, u_input.b) >> (vec3<u32>(4294967295u, arg_0.d, 4294967295u) % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-2200f, -2550f, -340f, -682f), vec4<f32>(2107f, 721f, 1000f, 1000f)))))), u_input.c.x, arg_0);
    var var_2 = global3[_wgslsmith_index_u32(u_input.e, 22u)];
    var_1 = Struct_2(var_1.a, var_1.b, arg_0.e, Struct_1(vec3<u32>(_wgslsmith_add_u32(var_1.c, var_1.c >> (0u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 25507u, arg_0.e, var_1.c), ~vec4<u32>(0u, arg_0.a.x, 4294967295u, var_1.d.e)), arg_0.d ^ firstTrailingBit(var_1.c)), 1u, ~arg_0.c, ~arg_0.b, _wgslsmith_mod_u32(arg_0.e, var_1.c)));
    let var_3 = 1i;
    return var_1.b.zx;
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    global3 = array<vec4<i32>, 22>();
    let var_0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.c, arg_1.c.d, 4294967295u, arg_2.c), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_2.d.b, arg_0, 22334u), vec4<u32>(arg_2.d.e, arg_2.d.e, 1u, 1u))), vec4<u32>(u_input.d, max(_wgslsmith_sub_u32(arg_1.b.b, 33033u), arg_2.a.b | arg_1.c.b), 8578u, ~u_input.c.x), vec4<u32>(max(~20878u, ~arg_0), _wgslsmith_add_u32(firstLeadingBit(25868u), 96848u), ~(arg_0 ^ u_input.e), countOneBits(arg_0))) << ((firstTrailingBit(vec4<u32>(arg_2.a.b >> (4294967295u % 32u), 4294967295u, ~38612u, firstLeadingBit(arg_2.c))) | vec4<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(u_input.c.x, u_input.a.x)), ~u_input.e, ~abs(62937u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1.b.a.x, arg_0, arg_1.c.b), _wgslsmith_mod_vec4_u32(vec4<u32>(36646u, 14351u, 4294967295u, arg_0), vec4<u32>(4294967295u, arg_0, 0u, 0u))))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_2.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<u32>(arg_2.d.a.x, 32509u, 2010u), 41521u, -44393i, u_input.a.x, var_0.x), true, vec4<bool>(arg_3, true, false, false))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(736f, var_1.x), var_1.zx, false))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yw + _wgslsmith_f_op_vec2_f32(vec2<f32>(847f, arg_2.b.x) - vec2<f32>(-2720f, -315f))))));
    let var_3 = arg_1.b;
    return vec3<i32>(var_3.c, var_3.c, 1i);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> StorageBuffer {
    global3 = array<vec4<i32>, 22>();
    let var_0 = true;
    global1 = _wgslsmith_f_op_f32(-456f + arg_0.x);
    let var_1 = Struct_3(arg_2.a | min(_wgslsmith_clamp_i32(5865i, ~arg_1.x, -2147483647i), select(_wgslsmith_sub_i32(-814i, arg_2.c.c), arg_1.x >> (arg_3.e % 32u), !var_0)), Struct_1(arg_2.c.a, 4294967295u ^ max(u_input.c.x << (4294967295u % 32u), arg_3.b), u_input.b, ~(~select(60499u, 121000u, true)), ~(~_wgslsmith_div_u32(4294967295u, 4294967295u))), arg_3);
    let var_2 = var_1;
    return StorageBuffer(_wgslsmith_add_u32(16076u, _wgslsmith_div_u32(max(_wgslsmith_add_u32(var_2.c.e, arg_2.b.e), 1u), ~(~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, 572f, -1115f) - vec3<f32>(166f, -1101f, 641f)))))), -_wgslsmith_div_vec3_i32(-(~vec3<i32>(u_input.b, u_input.b, u_input.b)), func_1(3170u, global2[_wgslsmith_index_u32(24150u, 10u)], Struct_2(Struct_1(vec3<u32>(u_input.e, u_input.e, 3174u), 1u, u_input.b, u_input.a.x, u_input.e), vec4<f32>(114f, 1643f, 127f, -945f), 18357u, Struct_1(u_input.c, u_input.e, 10300i, u_input.a.x, u_input.d)), true) << (vec3<u32>(u_input.c.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(~50498u, 10u)], Struct_1(reverseBits(countOneBits(~vec3<u32>(u_input.c.x, u_input.a.x, u_input.e))), u_input.e, -12836i, u_input.c.x, u_input.e));
}

