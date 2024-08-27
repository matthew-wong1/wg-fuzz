struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-13291i, 35086i, 0i));

var<private> global1: array<i32, 29> = array<i32, 29>(0i, 0i, 2147483647i, i32(-2147483648), 5674i, 32578i, 6318i, 17919i, 0i, -10233i, 1i, -52240i, i32(-2147483648), -1i, 1i, -9680i, 2147483647i, i32(-2147483648), 1i, -1i, 23239i, 2147483647i, i32(-2147483648), -1i, -22327i, 2147483647i, -1i, -31532i, 0i);

var<private> global2: array<bool, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = ~_wgslsmith_mult_u32(select(abs(_wgslsmith_mult_u32(arg_0.d.x, 4294967295u)), 16339u, !global2[_wgslsmith_index_u32(u_input.b, 18u)]), select(5823u, ~_wgslsmith_dot_vec3_u32(arg_0.d.wxx, vec3<u32>(u_input.b, 4294967295u, arg_0.d.x)), any(vec3<bool>(false, arg_0.b, true))));
    let var_1 = arg_0.d.wwx & select(firstLeadingBit(vec3<u32>(0u, u_input.b, arg_0.d.x) ^ arg_0.d.yxz), vec3<u32>(u_input.b, firstTrailingBit(countOneBits(8745u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.b, arg_0.d.x, u_input.b)), countOneBits(arg_0.d))), !select(vec3<bool>(arg_0.a.a.a.x, arg_0.e.a.a.x, true), arg_0.e.a.a.wzz, arg_0.e.a.a.wyy));
    global0 = array<vec3<i32>, 1>();
    let var_2 = arg_0.a.a.b;
    var var_3 = vec4<bool>(!select(true, true, false), global2[_wgslsmith_index_u32(arg_0.d.x, 18u)], true, all(vec2<bool>(global2[_wgslsmith_index_u32(countOneBits(49445u), 18u)], global2[_wgslsmith_index_u32(~19399u, 18u)])));
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~u_input.b, func_3(Struct_3(Struct_2(Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0, 18u)], false, false), 802f)), global2[_wgslsmith_index_u32(4294967295u, 18u)], 6000i, vec4<u32>(1u, 15214u, u_input.b, u_input.b), Struct_2(Struct_1(vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 18u)], false), -1180f)))) << (~arg_1.x % 32u), ~(~13240u)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_1, arg_1, _wgslsmith_mod_vec3_u32(arg_1, vec3<u32>(1u, u_input.b, 57095u))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0, 56362u), max(vec3<u32>(64511u, u_input.b, arg_1.x), vec3<u32>(4294967295u, arg_1.x, arg_0)))));
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(4294967295u, 4294967295u)) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0), arg_1.yz), vec2<u32>(u_input.b, var_0)) % vec2<u32>(32u)), ~arg_1.xx)), 29u)];
    let var_2 = vec3<bool>(false, true, !(min(4294967295u, arg_1.x & 1u) < arg_0));
    let var_3 = Struct_2(Struct_1(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 18u)], global2[_wgslsmith_index_u32(abs(var_0), 18u)], !var_2.x, !var_2.x), select(vec4<bool>(false, false, var_2.x, global2[_wgslsmith_index_u32(var_0, 18u)]), select(vec4<bool>(var_2.x, global2[_wgslsmith_index_u32(var_0, 18u)], false, true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_0, 18u)], var_2.x), global2[_wgslsmith_index_u32(u_input.b, 18u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 18u)], false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)], false, global2[_wgslsmith_index_u32(arg_1.x, 18u)]), true)), !(!vec4<bool>(global2[_wgslsmith_index_u32(var_0, 18u)], global2[_wgslsmith_index_u32(arg_1.x, 18u)], global2[_wgslsmith_index_u32(arg_0, 18u)], false))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-246f, 547f)))))));
    var var_4 = 2147483647i;
    return _wgslsmith_dot_vec2_i32(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(12373i, global1[_wgslsmith_index_u32(var_0, 29u)]))), _wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a.x ^ -25431i), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0, 29u)], -30942i), u_input.a)))));
}

fn func_1() -> Struct_4 {
    global0 = array<vec3<i32>, 1>();
    var var_0 = i32(-1i) * -11540i;
    var_0 = -_wgslsmith_clamp_i32(~(-1i), _wgslsmith_add_i32(_wgslsmith_add_i32(func_2(u_input.b, vec3<u32>(u_input.b, u_input.b, 15032u)), global1[_wgslsmith_index_u32(u_input.b, 29u)]), ~(-4835i)), -24477i >> (~(~0u) % 32u));
    return Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(113f, 589f, -1345f, -628f) - vec4<f32>(2061f, 185f, 857f, 865f)))))))), ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), firstLeadingBit(vec2<u32>(1u, 110543u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 18>();
    let var_0 = func_1();
    var var_1 = vec3<f32>(-555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(-264f * var_0.a.x))));
    global2 = array<bool, 18>();
    var var_2 = ~global0[_wgslsmith_index_u32(~4294967295u, 1u)];
    var var_3 = global2[_wgslsmith_index_u32(~(55471u | (~u_input.b << ((select(u_input.b, 14359u, global2[_wgslsmith_index_u32(37695u, 18u)]) & _wgslsmith_clamp_u32(12397u, var_0.b.x, 4294967295u)) % 32u))), 18u)];
    let var_4 = Struct_1(select(!vec4<bool>(global2[_wgslsmith_index_u32(abs(var_0.b.x), 18u)], !global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(firstTrailingBit(55300u), 18u)], false), !select(!vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 18u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(44567u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(56901u, 18u)]), false), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(19727u, u_input.b), 49122u), 18u)], false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 21337u, var_0.b.x), vec4<u32>(var_0.b.x, 1u, var_0.b.x, var_0.b.x)) & _wgslsmith_mod_u32(75960u, var_0.b.x), 18u)], true)), 930f);
    var var_5 = vec3<i32>(_wgslsmith_dot_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(79066u, 29u)], global1[_wgslsmith_index_u32(var_0.b.x, 29u)]), vec2<i32>(-2147483647i, var_2.x)) & vec2<i32>(_wgslsmith_add_i32(-12492i, var_2.x), _wgslsmith_clamp_i32(-1i, 0i, -20533i)), vec2<i32>(abs(39185i) >> (var_0.b.x % 32u), u_input.a.x)), i32(-1i) * -37997i, ~(-(~u_input.a.x ^ (1i >> (var_0.b.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(max(~u_input.a.x, -16985i), _wgslsmith_mod_i32(1i, var_5.x)), u_input.a.x));
}

