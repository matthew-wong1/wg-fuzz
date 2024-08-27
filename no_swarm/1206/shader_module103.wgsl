struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(317f, 135f);

var<private> global3: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(-45608i, 1i), vec2<i32>(-47662i, 8528i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 75907i), vec2<i32>(0i, 2147483647i), vec2<i32>(-26421i, 31717i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-6587i, -54533i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-20478i, i32(-2147483648)), vec2<i32>(-36588i, -17560i), vec2<i32>(1i, -18783i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -6682i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-86694i, 20317i), vec2<i32>(1i, 6337i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 2147483647i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = ~arg_2.x | _wgslsmith_mod_u32(~(~countOneBits(39790u)), ~22992u);
    global3 = array<vec2<i32>, 22>();
    global3 = array<vec2<i32>, 22>();
    let var_1 = true;
    var var_2 = Struct_2(global1.c, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-234f, global1.a.x))), _wgslsmith_f_op_vec2_f32(-arg_0.xy))), true, vec4<u32>(_wgslsmith_mult_u32(min(4682u, 4294967295u), var_0), reverseBits(var_0 >> (45874u % 32u)), (arg_2.x ^ var_0) | 99193u, arg_2.x | 34312u)));
    return _wgslsmith_f_op_f32(f32(-1f) * -964f);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global0 = array<vec2<bool>, 24>();
    var var_0 = Struct_2(~vec4<u32>(u_input.d, _wgslsmith_sub_u32(global1.c.x, u_input.d), firstTrailingBit(global1.c.x), ~15455u), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, global2.x) * arg_0.yx))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.yy, vec2<f32>(global1.a.x, global2.x)))), u_input.c >= max(i32(-1i) * -2147483647i, u_input.c), vec4<u32>(u_input.d, 19395u, _wgslsmith_mult_u32(u_input.b, 75416u), u_input.a.x) | _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global1.c, vec4<u32>(u_input.b, u_input.d, 0u, 4294967295u)), _wgslsmith_mult_vec4_u32(global1.c, vec4<u32>(64310u, global1.c.x, 21410u, 9119u)), vec4<u32>(u_input.d, u_input.b, global1.c.x, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.x, arg_0.x, var_0.b.a.x, 685f), vec4<f32>(-301f, -191f, -344f, global2.x))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(333f, -223f, var_0.b.a.x, var_0.b.a.x), vec4<f32>(603f, var_0.b.a.x, -1615f, -2352f), var_0.b.b)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-881f, global1.a.x, 624f, var_0.b.a.x), vec4<f32>(-1094f, 284f, 1442f, -273f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1078f, 662f, global1.a.x, 102f) * vec4<f32>(arg_0.x, -552f, var_0.b.a.x, global1.a.x)) - vec4<f32>(global2.x, 667f, -138f, 667f)))))));
    var var_2 = Struct_2(var_0.b.c, Struct_1(vec2<f32>(_wgslsmith_div_f32(-1089f, var_1.x), var_1.x), false, vec4<u32>(global1.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 6925u), reverseBits(vec2<u32>(4294967295u, 0u))), global1.c.x, var_0.a.x)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(var_0.b.a.x, var_2.b.a.x, var_0.b.a.x), vec4<f32>(481f, var_1.x, -1067f, var_1.x), global1.c.wzz)), var_1.x) - -209f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-472f)), 442f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_0.xz, var_0.b.a), var_2.b.a)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(496f, _wgslsmith_f_op_f32(abs(global1.a.x)))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x + -1000f) + -2984f), -977f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_2.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -555f), _wgslsmith_f_op_f32(-var_2.b.a.x)))))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c, 20780i, -1i, -7573i), vec4<i32>(-2147483647i, -26093i, u_input.c, -2147483647i)), vec4<i32>(u_input.c, countOneBits(u_input.c), u_input.c, u_input.c), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), vec4<i32>(u_input.c, -2147483647i, -13523i, -20339i)))), -(countOneBits(vec4<i32>(u_input.c, 18402i, u_input.c, -2147483647i)) >> (global1.c % vec4<u32>(32u)))));
    return reverseBits(_wgslsmith_div_i32(min(_wgslsmith_div_i32(u_input.c, -2147483647i), 24322i), 2147483647i));
}

fn func_1() -> vec2<u32> {
    global3 = array<vec2<i32>, 22>();
    global3 = array<vec2<i32>, 22>();
    global0 = array<vec2<bool>, 24>();
    let var_0 = ~(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, global1.a.x, global1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, global2.x, -446f)), !global1.b))) ^ 0i);
    global3 = array<vec2<i32>, 22>();
    return _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.a.x, 20966u)) >> (select(vec2<u32>(71912u, 0u), vec2<u32>(global1.c.x, 22673u) << (u_input.a.zx % vec2<u32>(32u)), select(vec2<bool>(false, true), global0[_wgslsmith_index_u32(global1.c.x, 24u)], global1.b)) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(~u_input.b, ~global1.c.x))) >> (max(global1.c.xw, ~_wgslsmith_div_vec2_u32(vec2<u32>(global1.c.x, 55324u), vec2<u32>(u_input.d, 33615u))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 22>();
    let var_0 = u_input.c;
    global0 = array<vec2<bool>, 24>();
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(25270u, u_input.b) | vec2<u32>(global1.c.x, global1.c.x), max(vec2<u32>(u_input.d, u_input.b), vec2<u32>(global1.c.x, 4294967295u)), !vec2<bool>(global1.b, global1.b)) << (vec2<u32>(~u_input.b, ~4294967295u) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), global1.c.xw)), min(~func_1(), vec2<u32>(global1.c.x, ~(~64980u))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(min(-1000f, global1.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -192f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(440f, 747f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1260f)), -609f, -20858i != var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-392f + 385f), -381f)) - 1360f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(354f, _wgslsmith_f_op_f32(529f + _wgslsmith_f_op_f32(min(-491f, 605f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(-167f, global1.a.x, global1.a.x), vec4<f32>(-1496f, global2.x, global1.a.x, 549f), u_input.a)), global1.a.x, _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(-global2.x))), vec4<f32>(_wgslsmith_f_op_f32(max(1216f, -638f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), global1.a.x)), _wgslsmith_add_vec4_i32(max(abs(vec4<i32>(16729i, u_input.c, u_input.c, 0i)), vec4<i32>(5970i, 44872i, ~1i, _wgslsmith_sub_i32(-4200i, var_0))), _wgslsmith_mult_vec4_i32(-(vec4<i32>(-1i, -4331i, -2247i, 2147483647i) >> (global1.c % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -1i, countOneBits(-3508i), -1i, var_0))));
    var_1 = u_input.d;
    var var_3 = _wgslsmith_mult_u32(33251u, global1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.x), -1276f, global1.b)))), global1.a.x, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 613i | var_0, ~(-1i), firstTrailingBit(var_0)), vec4<i32>(var_0, var_0, min(var_0, var_0), 4283i)) << ((vec4<u32>(reverseBits(u_input.a.x), _wgslsmith_mult_u32(1u, 4294967295u), u_input.d, ~u_input.b) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(9414u, u_input.b, global1.c.x, u_input.d), vec4<u32>(0u, 4294967295u, 14978u, global1.c.x)), ~u_input.a.x, u_input.d, ~u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_2.c * _wgslsmith_f_op_vec2_f32(round(global1.a))), var_2.d.yy))), min(var_2.e.xyy, var_2.e.yyx));
}

