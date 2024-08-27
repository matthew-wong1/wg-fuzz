struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4;

var<private> global2: f32;

var<private> global3: i32 = 1i;

var<private> global4: array<bool, 20>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global4 = array<bool, 20>();
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, 27217u, ~(~0u), reverseBits(38834u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(~20192u, _wgslsmith_div_u32(21023u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 41404u, 23728u), vec3<u32>(4294967295u, 0u, 62082u)), abs(4294967295u)), firstLeadingBit(reverseBits(vec4<u32>(83064u, 22702u, 33969u, 0u)))));
    global4 = array<bool, 20>();
    let var_1 = any(!select(vec2<bool>(false, true), select(!vec2<bool>(false, global0.c.c), vec2<bool>(global4[_wgslsmith_index_u32(0u, 20u)], true), !vec2<bool>(global1.a, false)), select(!vec2<bool>(global0.c.c, global1.a), !vec2<bool>(true, global1.a), vec2<bool>(global1.a, global1.a))));
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(~34887u, _wgslsmith_mult_u32(29980u, ~var_0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(~(~48129u), ~(~0u), 4294967295u), vec3<u32>(abs(var_0.x), var_0.x, ~var_0.x) >> (select(~var_0.yww, select(var_0.wxw, vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<bool>(false, global0.c.c, global1.a)), any(vec4<bool>(global4[_wgslsmith_index_u32(var_0.x, 20u)], var_1, true, var_1))) % vec3<u32>(32u))));
    return false;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> i32 {
    var var_0 = -1171f;
    global1 = Struct_4(!func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + _wgslsmith_f_op_vec2_f32(floor(global0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + global1.b)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(f32(-1f) * -831f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x * -1000f), _wgslsmith_f_op_f32(select(global0.c.e, global1.b, global1.a))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c + global0.b) - global0.b), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(203f, global1.b)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.e, global1.e.x), _wgslsmith_f_op_f32(-802f + -1000f))))), global1.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.e, _wgslsmith_f_op_vec3_f32(select(global1.e, global1.e, global1.a)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-global0.c.e)))));
    var var_1 = Struct_3(global0.c, global0.d.x, Struct_1(global0.c.d, min(-vec4<i32>(-7245i, u_input.b.x, u_input.b.x, 1i), global0.c.b) & _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, arg_2, -2147483647i), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(arg_0, global0.a, 1i, arg_0))), true, _wgslsmith_mod_vec3_i32(firstTrailingBit(global0.c.a), ~vec3<i32>(-2147483647i, 0i, global0.a)) & ~vec3<i32>(arg_2, arg_2, -1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(118f)) + _wgslsmith_f_op_f32(round(117f)))))));
    var var_2 = Struct_2(var_1.c.d.x, global1.c, global0.c, ((vec2<i32>(var_1.c.d.x, global0.c.d.x) >> (vec2<u32>(0u, 38679u) % vec2<u32>(32u))) | (-vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))) >> (select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), any(!vec4<bool>(arg_1.x, global0.c.c, global4[_wgslsmith_index_u32(0u, 20u)], true))) % vec2<u32>(32u)));
    let var_3 = Struct_1(u_input.b.yyw, global0.c.b, all(vec3<bool>(!var_1.a.c, true, !global1.a)) || (var_1.a.e < _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.e.x, var_2.b.x) - 841f)), reverseBits(firstLeadingBit(vec3<i32>(1i, var_2.d.x, 29117i))) | _wgslsmith_add_vec3_i32(u_input.b.zzw, -u_input.b.yxw & ~global0.c.b.wzz), _wgslsmith_f_op_f32(504f - _wgslsmith_f_op_f32(859f - var_2.c.e)));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    let var_0 = global0.c;
    let var_1 = vec2<bool>(!var_0.c, true);
    return Struct_2(_wgslsmith_div_i32(_wgslsmith_sub_i32(0i ^ _wgslsmith_sub_i32(global0.c.b.x, 0i), _wgslsmith_add_i32(_wgslsmith_sub_i32(-23216i, u_input.a), -global0.c.d.x)), func_2(min(_wgslsmith_div_i32(-11681i, var_0.a.x), -3520i & global0.a), vec3<bool>(any(vec4<bool>(global1.a, global0.c.c, false, global1.a)), -459f >= var_0.e, any(vec4<bool>(global4[_wgslsmith_index_u32(24771u, 20u)], global4[_wgslsmith_index_u32(arg_0, 20u)], var_0.c, false))), 1i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.b)))), global1.e.zy, var_1)), Struct_1(global0.c.b.zyz, var_0.b, !(-var_0.a.x < _wgslsmith_div_i32(0i, 2147483647i)), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(2147483647i, 22983i, 27194i)), vec3<i32>(var_0.d.x, global0.a, i32(-1i) * -69476i), firstTrailingBit(select(u_input.b.zzz, u_input.b.zwy, vec3<bool>(true, global1.a, global1.a)))), _wgslsmith_div_f32(-2027f, -1200f)), vec2<i32>(1i, max(var_0.b.x, _wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_mod_i32(global0.a, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -1000f;
    global4 = array<bool, 20>();
    var var_0 = func_1(_wgslsmith_div_u32(4294967295u, countOneBits(489u)), vec2<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1495f)))), true);
    var var_1 = 2147483647i;
    var var_2 = vec4<bool>(all(vec2<bool>(global0.c.c, false | var_0.c.c)), _wgslsmith_clamp_u32(698u, 1u, 28411u) >= 4294967295u, true, !(!(var_0.c.e <= global1.c.x)) | (func_1(1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.e, -152f)), select(true, true, false)).c.c && any(select(vec2<bool>(false, global4[_wgslsmith_index_u32(46665u, 20u)]), vec2<bool>(global4[_wgslsmith_index_u32(0u, 20u)], true), true))));
    let var_3 = Struct_4(all(select(var_2.wxx, var_2.www, select(select(var_2.xwy, var_2.wwx, var_2.zyy), vec3<bool>(true, var_2.x, var_0.c.c), true))), 1950f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-217f, -355f) - vec2<f32>(_wgslsmith_f_op_f32(-340f - -167f), _wgslsmith_f_op_f32(610f * -175f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(63987u, 16556u)), global0.b, true).b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.e)), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x - -162f) - global1.e.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.x))))));
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_3.e.x))));
    var var_4 = var_3.a | true;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-36313i)), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(39803u, 1u), vec2<u32>(1u, 4294967295u), global0.c.c), vec2<u32>(1u, 1u)) & 1u, _wgslsmith_sub_i32(~2147483647i, 0i));
}

