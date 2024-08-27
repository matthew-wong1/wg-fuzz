struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-15962i, 0i, 2147483647i, 0i, -20920i, 1i, -1i, -15052i, -7827i, -1i, -4812i, -15995i, 1i, -37912i, 0i, 1i, 1i, 2147483647i, i32(-2147483648), 2147483647i, 33765i, i32(-2147483648), 1i, -1i, 3708i, 0i, 1i, -42016i);

var<private> global1: array<u32, 6>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, true), 0u, 1i, 0u, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(vec2<bool>(global3.a.x, false), ~(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global2.a, 6u)], u_input.d)) & 4294967295u, -u_input.a, 1448u, any(select(!select(vec3<bool>(true, false, false), vec3<bool>(arg_0.e, true, false), true), vec3<bool>(global3.e, false, global3.a.x), vec3<bool>(arg_0.e, 10280u == arg_0.d, arg_0.a.x))));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(arg_0.c), global2.b) << (u_input.c % vec2<u32>(32u)), select(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global3.c), vec2<i32>(arg_0.c, -48506i))), vec2<i32>(-6290i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-19604i, -15572i)), ~vec2<i32>(var_0.c, var_0.c))), arg_0.a.x));
    var var_2 = u_input.a;
    var_0 = arg_0;
    let var_3 = abs(reverseBits(vec2<i32>(var_1.x, -45743i)) << (u_input.c % vec2<u32>(32u))) ^ ~_wgslsmith_sub_vec2_i32(select(~vec2<i32>(-2147483647i, 2147483647i), -vec2<i32>(8701i, 1i), var_0.a.x), (vec2<i32>(42653i, global0[_wgslsmith_index_u32(global2.a, 28u)]) & vec2<i32>(-6210i, u_input.a)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(857i, global3.c), vec2<i32>(arg_0.c, 1i)));
    return ~(~max(select(abs(vec4<u32>(0u, 4294967295u, 32557u, u_input.d)), ~vec4<u32>(114131u, var_0.d, global3.b, global3.d), select(vec4<bool>(true, global3.e, arg_0.a.x, true), vec4<bool>(var_0.e, true, var_0.e, true), true)), min(_wgslsmith_div_vec4_u32(vec4<u32>(169716u, global3.d, 81965u, 64026u), vec4<u32>(0u, u_input.c.x, 1484u, 32961u)), vec4<u32>(arg_0.b, global1[_wgslsmith_index_u32(global3.b, 6u)], arg_0.d, global3.d))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(select(!vec2<bool>(global2.b <= 1i, true), vec2<bool>(false, false), false || (false | any(vec4<bool>(false, global3.e, global3.a.x, arg_1.a.x)))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(func_3(Struct_1(vec2<bool>(arg_1.a.x, arg_1.e), 34241u, global2.b, 1u, false)), select(vec4<u32>(arg_0.a, u_input.c.x, global3.b, 83968u), vec4<u32>(0u, global3.d, global2.a, 31750u), vec4<bool>(global3.a.x, arg_1.a.x, global3.e, false)) | vec4<u32>(4294967295u, 22892u, 4888u, global1[_wgslsmith_index_u32(u_input.b, 6u)])), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, arg_0.a, global3.b) >> (vec4<u32>(arg_0.a, 4468u, 1u, global2.a) % vec4<u32>(32u)), func_3(Struct_1(arg_1.a, global3.d, global2.b, global3.b, arg_1.a.x))), ~(~vec4<u32>(0u, u_input.d, arg_0.a, 2975u)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, arg_0.b, global3.c), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.b, global2.b, 48622i) >> (vec3<u32>(4294967295u, u_input.b, 4294967295u) % vec3<u32>(32u)), vec3<i32>(arg_0.b, global2.b, 0i))), ~(vec3<i32>(-1i) * -vec3<i32>(-12420i, 37219i, 0i))), _wgslsmith_dot_vec2_u32(u_input.c, ~(~vec2<u32>(4294967295u, arg_0.a))), true);
    var var_1 = arg_1;
    global3 = arg_1;
    global1 = array<u32, 6>();
    var var_2 = arg_0;
    return _wgslsmith_sub_u32(48248u, var_0.d) >> (19213u % 32u);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(global3.a))));
    let var_1 = arg_0;
    var var_2 = Struct_1(global3.a, 27708u, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0.b, global0[_wgslsmith_index_u32(arg_0.a, 28u)]) | abs(global2.b), ~min(34594i, global0[_wgslsmith_index_u32(1u, 28u)])), vec2<i32>(-firstTrailingBit(-2147483647i), -48387i)), global3.d, var_0.x);
    var var_3 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 59507u, firstTrailingBit(var_2.d), ~u_input.c.x), vec4<u32>(arg_0.a, ~4294967295u, 1u, 1u) | (~vec4<u32>(global2.a, global2.a, 32562u, 39763u) ^ firstTrailingBit(vec4<u32>(var_2.d, global1[_wgslsmith_index_u32(1u, 6u)], 1u, arg_0.a))));
    let var_4 = _wgslsmith_dot_vec2_u32(min(~u_input.c, vec2<u32>(~(u_input.d & arg_0.a), global2.a)), vec2<u32>(4294967295u, global2.a) & reverseBits(vec2<u32>(14795u, 4294967295u) ^ ~u_input.c));
    return Struct_1(vec2<bool>(true, all(!(!vec4<bool>(var_0.x, var_0.x, var_2.a.x, var_0.x)))), global1[_wgslsmith_index_u32(~(~min(var_2.b, 0u) >> (_wgslsmith_sub_u32(min(global2.a, 31523u), 57058u) % 32u)), 6u)], -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b, global0[_wgslsmith_index_u32(var_4, 28u)]), abs(-vec2<i32>(2147483647i, 1482i))), var_2.b, var_2.e);
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = array<u32, 6>();
    global3 = func_4(Struct_2(reverseBits(_wgslsmith_clamp_u32(func_2(Struct_2(global3.b, global0[_wgslsmith_index_u32(global3.d, 28u)], global2.c), Struct_1(vec2<bool>(global3.e, global3.a.x), global1[_wgslsmith_index_u32(4294967295u, 6u)], 2147483647i, u_input.c.x, false)), global2.a, 4294967295u)), ~global2.b, global2.c));
    return Struct_1(global3.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(56201u, 1u, u_input.c.x) & (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)] >> (global2.a % 32u)), 4294967295u), global2.a), firstTrailingBit(firstTrailingBit(0i)), 4294967295u, global3.b >= reverseBits(_wgslsmith_div_u32(_wgslsmith_sub_u32(76021u, global1[_wgslsmith_index_u32(u_input.d, 6u)]), 33297u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -firstTrailingBit(vec4<i32>(0i, ~(-u_input.a), ~1i, firstLeadingBit(0i)));
    let var_1 = !select(!select(vec4<bool>(global3.a.x, global3.a.x, true, true), !vec4<bool>(global3.e, global3.a.x, global3.a.x, false), true), vec4<bool>(~global3.b >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 37763u, global3.b, global1[_wgslsmith_index_u32(67382u, 6u)]), vec4<u32>(17701u, global1[_wgslsmith_index_u32(7201u, 6u)], 0u, global1[_wgslsmith_index_u32(4294967295u, 6u)])), true, false, any(vec3<bool>(false, global3.e, false))), !global3.e);
    global3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * global2.c.x)))));
    var var_2 = vec3<i32>(11624i, firstTrailingBit(u_input.a), ~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(~(-8741i), _wgslsmith_mult_i32(11401i, global3.c), -11969i), abs(global3.c)));
    var var_3 = Struct_2(9278u, -var_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-453f, global2.c.x, 127f)), vec3<f32>(global2.c.x, 510f, global2.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.c.x, global2.c.x, global2.c.x))))))));
    var var_4 = vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -1i, 2147483647i), _wgslsmith_mult_i32(u_input.a, max(_wgslsmith_add_i32(_wgslsmith_mult_i32(global2.b, -2147483647i), firstLeadingBit(-1471i)), -_wgslsmith_add_i32(global2.b, 34014i))), func_4(Struct_2(countOneBits(~u_input.b), var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1489f, 1006f, -1656f)) + _wgslsmith_f_op_vec3_f32(floor(global2.c))))).c, _wgslsmith_div_i32(-49913i << (_wgslsmith_clamp_u32(4294967295u, ~var_3.a, 1u) % 32u), max(i32(-1i) * -14720i, var_2.x)));
    global2 = Struct_2(u_input.d, global2.b, global2.c);
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.c.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, var_3.c.x, global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.c.x))))));
    var var_6 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.c.x, 500f, global2.c.x, var_5.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_5.x, -1462f, 201f, var_5.x), vec4<f32>(global2.c.x, global2.c.x, var_5.x, 828f))), var_1)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(global3.d, ~u_input.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3.c), var_3.c, all(vec2<bool>(true, true)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global2.c - global2.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, -2063f, -718f)), var_1.yzz))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(f32(-1f) * -1077f))))), var_6.x), max(abs(abs(var_4.x)) >> (~func_1(-210f).d % 32u), 1i));
}

