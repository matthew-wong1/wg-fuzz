struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

var<private> global1: array<i32, 18>;

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    let var_0 = Struct_1(arg_1.a, max(arg_1.b, -vec2<i32>(abs(0i), global1[_wgslsmith_index_u32(arg_2.x, 18u)] | arg_1.b.x)), !arg_1.c);
    var var_1 = Struct_1(true, abs(vec2<i32>(_wgslsmith_sub_i32(reverseBits(0i), 33864i), _wgslsmith_dot_vec2_i32(arg_0.b, _wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 18u)], 40164i), arg_0.b)))), vec4<bool>(true, true, select(var_0.c.x, false, true), !arg_0.c.x));
    let var_2 = _wgslsmith_f_op_f32(1834f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(748f)))));
    global0 = array<vec2<u32>, 20>();
    var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(~1u), 4294967295u, abs(~106663u)), firstLeadingBit(vec3<u32>(arg_3, 0u << (arg_3 % 32u), reverseBits(arg_2.x)))), 21u)];
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global2 = array<Struct_1, 21>();
    var var_0 = -1406f;
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-292f + -1000f), _wgslsmith_f_op_f32(515f - _wgslsmith_f_op_f32(f32(-1f) * -751f)))), -1176f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f + -1007f) - _wgslsmith_f_op_f32(abs(-590f))) * _wgslsmith_f_op_f32(func_3(arg_0, Struct_1(arg_0.a, u_input.a.yz, arg_0.c), ~vec4<u32>(4294967295u, u_input.b, 1u, 37990u), u_input.b)))));
    global2 = array<Struct_1, 21>();
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, 0u, 28865u), vec3<u32>(79681u, u_input.b, 11146u))), vec3<u32>(abs(u_input.b), ~(~u_input.b), ~_wgslsmith_mod_u32(u_input.b, u_input.b))), u_input.b);
    return max(abs(_wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), u_input.a >> (vec3<u32>(~var_2.x, var_2.x, 0u | (u_input.b & 4294967295u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    var var_0 = 251f;
    global1 = array<i32, 18>();
    let var_1 = min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b) >> (u_input.b % 32u), 18u)], _wgslsmith_sub_i32(u_input.a.x, 1i)), func_2(Struct_1(true, u_input.a.yz, vec4<bool>(true, false, true, false)))), global1[_wgslsmith_index_u32(18957u, 18u)]);
    global2 = array<Struct_1, 21>();
    let var_2 = firstTrailingBit(vec4<u32>(0u, reverseBits(~u_input.b), u_input.b, u_input.b));
    return var_2.ywz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(reverseBits((firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)) & firstLeadingBit(vec3<u32>(u_input.b, 0u, 52019u))) & func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(965f, -968f)))), _wgslsmith_mod_vec3_u32(vec3<u32>(22262u, ~97882u, reverseBits(2495u)) >> (~(~vec3<u32>(0u, u_input.b, 1u)) % vec3<u32>(32u)), select(vec3<u32>(~1u, u_input.b, _wgslsmith_add_u32(46407u, u_input.b)), vec3<u32>(4294967295u, 64998u, 34027u) | ~vec3<u32>(1u, u_input.b, u_input.b), vec3<bool>(true, false, true))));
    global1 = array<i32, 18>();
    let var_1 = true;
    global2 = array<Struct_1, 21>();
    var var_2 = _wgslsmith_add_vec4_i32((-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, global1[_wgslsmith_index_u32(var_0, 18u)], u_input.a.x), vec4<i32>(u_input.a.x, 11527i, global1[_wgslsmith_index_u32(var_0, 18u)], u_input.a.x)) & firstLeadingBit(~vec4<i32>(28772i, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]))) | vec4<i32>(max(~23830i, reverseBits(u_input.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 0u), 18u)], firstLeadingBit(u_input.a.x) | _wgslsmith_clamp_i32(u_input.a.x, -48765i, global1[_wgslsmith_index_u32(0u, 18u)]), u_input.a.x), min(~vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(16470u, 18u)], 71429i), _wgslsmith_div_i32(-1i, 23063i), func_2(global2[_wgslsmith_index_u32(var_0, 21u)]).x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, 1u, var_0)), 18u)]), -(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 35447i), vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.b, 18u)], u_input.a.x, -1270i)) >> (select(vec4<u32>(4294967295u, 31554u, 0u, u_input.b), vec4<u32>(var_0, 1u, var_0, 43773u), vec4<bool>(var_1, false, var_1, false)) % vec4<u32>(32u)))));
    global2 = array<Struct_1, 21>();
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_sub_u32(~_wgslsmith_add_u32(var_0, 9993u), _wgslsmith_mod_u32(u_input.b, var_0))), ~var_0), 21u)];
    var var_4 = Struct_1(false, var_2.wy, !vec4<bool>(~28957i != -var_3.b.x, select(false, var_3.c.x, false), true | any(var_3.c.ywy), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(trunc(2072f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(377f + 1000f), 844f)))));
}

