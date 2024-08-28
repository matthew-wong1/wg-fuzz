struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec2<u32>(48883u, 56709u)), Struct_2(vec2<u32>(37855u, 0u)));

var<private> global2: vec2<f32> = vec2<f32>(814f, 927f);

var<private> global3: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: Struct_4) -> vec3<f32> {
    global1 = array<Struct_2, 2>();
    global0 = global2.x;
    global3 = arg_0.a;
    let var_0 = !arg_0.e;
    let var_1 = !vec2<bool>(u_input.c > ~countOneBits(arg_2.a.x), true);
    return arg_0.a;
}

fn func_3() -> vec2<u32> {
    let var_0 = firstLeadingBit(_wgslsmith_add_u32(10338u, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(0u, 0u), vec2<u32>(u_input.c, u_input.c), vec2<bool>(true, false)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 3458u), vec2<u32>(1u, 1u)))));
    var var_1 = ~u_input.c;
    let var_2 = 0i;
    let var_3 = Struct_3(96891u, Struct_1(~(~(~vec2<u32>(u_input.c, var_0))), global3.x), _wgslsmith_mod_u32(select((39557u << (var_0 % 32u)) & (var_0 >> (var_0 % 32u)), ~u_input.c, all(vec4<bool>(true, true, true, true))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(48342u, var_0, 16963u), vec3<u32>(u_input.c, 1u, var_0)), ~vec3<u32>(0u, u_input.c, u_input.c)), var_0)));
    var var_4 = var_3;
    return vec2<u32>(u_input.c, 89828u);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1126f, global2.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_4(vec3<f32>(1000f, global2.x, 1299f), vec2<u32>(3294u, 1u), vec3<u32>(u_input.c, 34910u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c), true), u_input.c, Struct_1(vec2<u32>(11418u, u_input.c), global3.x), Struct_4(vec3<f32>(764f, global3.x, 1000f), vec2<u32>(u_input.c, 81728u), vec3<u32>(4294967295u, 24790u, u_input.c), vec3<u32>(4294967295u, 32722u, 4294967295u), true))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, global3.x, global3.x))))))), _wgslsmith_sub_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(21255u, 1u), vec2<u32>(u_input.c, u_input.c)) ^ ~vec2<u32>(2013u, u_input.c)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.c, 5622u)), _wgslsmith_sub_vec2_u32(func_3(), reverseBits(vec2<u32>(1u, u_input.c))))), vec3<u32>(abs(abs(~u_input.c)), u_input.c >> (min(60140u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))) % 32u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(15503u, u_input.c)), 4294967295u, ~u_input.c), 101338u)), firstLeadingBit(_wgslsmith_mod_vec3_u32((vec3<u32>(u_input.c, 7273u, u_input.c) >> (vec3<u32>(u_input.c, u_input.c, 1u) % vec3<u32>(32u))) >> (vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.c, u_input.c))), true);
    var var_1 = ~vec2<i32>(~(-u_input.a.x), -u_input.b.x) & _wgslsmith_mod_vec2_i32(select(~u_input.b.xz, ~u_input.a.yw, select(vec2<bool>(false, var_0.e), !vec2<bool>(var_0.e, var_0.e), true)), u_input.a.wx);
    let var_2 = Struct_1(abs(var_0.b & var_0.d.yy), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-202f, _wgslsmith_f_op_f32(trunc(-514f))))));
    var var_3 = Struct_4(vec3<f32>(1294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1270f * _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)))), ~vec2<u32>(var_2.a.x, _wgslsmith_clamp_u32(u_input.c, 1u, 84937u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(0u, ~4294967295u, var_2.a.x | var_0.c.x), 0u), ~min(var_0.d, vec3<u32>(var_2.a.x, u_input.c, 4294967295u) << (var_0.d % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, 37750u, 23007u, 0u), vec4<u32>(u_input.c, var_2.a.x, var_0.c.x, 32556u)), select(vec4<u32>(u_input.c, 42092u, 12759u, u_input.c), vec4<u32>(var_0.c.x, var_0.d.x, 54857u, 37429u), vec4<bool>(true, var_0.e, var_0.e, var_0.e))), ~_wgslsmith_sub_u32(var_2.a.x, 11071u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, var_0.d.x, var_2.a.x, u_input.c), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(var_0.d.x, var_0.c.x, var_2.a.x, 0u)))) >> (~vec3<u32>(func_3().x, 1u, 1u) % vec3<u32>(32u)), var_0.e);
    var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_3.a))))), var_0.b, ~var_3.d, _wgslsmith_mult_vec3_u32(vec3<u32>(73059u, var_3.c.x, min(~var_2.a.x, _wgslsmith_add_u32(24102u, var_0.c.x))), ~select(firstTrailingBit(vec3<u32>(15873u, 0u, 4294967295u)), ~vec3<u32>(var_3.b.x, 15111u, 60031u), select(vec3<bool>(var_0.e, true, var_0.e), vec3<bool>(var_0.e, true, false), vec3<bool>(var_3.e, false, var_0.e)))), var_0.e);
    return Struct_1(vec2<u32>(var_2.a.x, firstLeadingBit(69523u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(990f, -2354f)) - 1397f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(0u, func_1(), ~u_input.c);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, var_0.b.b, 375f))))), var_0.b.a, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 22894u, var_0.a), vec3<u32>(u_input.c, var_0.a, 0u)), vec3<u32>(u_input.c, var_0.c, var_0.a)), vec3<u32>(u_input.c, firstLeadingBit(0u), var_0.b.a.x), ~vec3<u32>(var_0.a, var_0.c, var_0.a)), firstTrailingBit(vec3<u32>(1u, ~35573u, 4294967295u))), vec3<u32>(firstLeadingBit(8090u), ~(4294967295u & (u_input.c << (1u % 32u))), ~u_input.c), all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), any(vec2<bool>(true, true)))));
    global2 = var_1.a.zx;
    let var_2 = Struct_2(abs(var_1.b));
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-var_1.a.x)));
    let var_3 = Struct_3(_wgslsmith_sub_u32(~var_1.b.x, 71466u), Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b.a, vec2<u32>(11509u, 6784u)), var_1.c.xx), -1680f), firstLeadingBit(firstTrailingBit(~countOneBits(u_input.c))));
    let var_4 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.c, var_0.a), _wgslsmith_mult_u32(_wgslsmith_div_u32(~30262u, min(59950u, var_0.a)), 2209u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(round(-2256f)), 447f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, -877f), var_1.a))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1402f, var_1.a.x, var_3.b.b))))), -(-22910i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.b)) ^ 25878i, _wgslsmith_f_op_f32(ceil(var_0.b.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(507f, -1654f, 534f, -876f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1043f, global3.x, 1000f, 1141f) + vec4<f32>(-1654f, -2389f, var_3.b.b, -397f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b.b, var_0.b.b, -1000f, -1173f)), !vec4<bool>(var_1.e, true, false, var_1.e))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-999f, -1000f, 665f, -1733f) * vec4<f32>(2308f, global3.x, global2.x, 939f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 798f, 354f, global3.x) * vec4<f32>(253f, 773f, -2051f, var_0.b.b))))), 1392u);
}

