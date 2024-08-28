struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(23976u, 1u, 31630u, 12816u, 42092u, 38940u, 64425u, 73759u, 27641u, 45654u, 4294967295u, 4294967295u, 6972u, 4294967295u, 12716u, 4472u, 1u, 4294967295u, 9828u, 0u, 0u, 40130u, 9166u, 4294967295u, 1u, 26072u, 15310u, 31160u, 0u, 20389u, 0u, 53031u);

var<private> global1: f32 = 243f;

var<private> global2: array<Struct_1, 17>;

var<private> global3: array<i32, 31> = array<i32, 31>(11484i, -37817i, 21338i, -43668i, i32(-2147483648), 7038i, 0i, 0i, -26994i, 59128i, 1i, 2147483647i, -1i, 0i, 41104i, -9670i, 0i, -1i, i32(-2147483648), -1i, -1i, -11490i, -58031i, 0i, 0i, 11163i, 2147483647i, -36394i, 2147483647i, 2182i, 0i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    return 298f;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> f32 {
    global2 = array<Struct_1, 17>();
    var var_0 = Struct_3(u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -2305f)), arg_0)), Struct_1(~firstTrailingBit(vec4<i32>(-13568i, 0i, -1i, -34599i))), Struct_1(vec4<i32>(global3[_wgslsmith_index_u32(reverseBits(0u), 31u)], -2147483647i, 55586i, ~(i32(-1i) * -37646i))));
    let var_1 = var_0.c;
    var var_2 = Struct_2(abs(~1u));
    var var_3 = Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(540f, -1077f), var_0.b)) - var_0.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(var_0.b)))))), var_0.c, Struct_1(-(~vec4<i32>(29690i, 7228i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(86668u, 32u)], 32u)], 31u)], -2147483647i))));
    return _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(ceil(-1122f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - _wgslsmith_f_op_f32(-arg_0))))), true));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(u_input.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-164f)), 1f)), vec2<f32>(-590f, -1296f), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), vec2<bool>(true, true), true && all(vec2<bool>(false, true))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(9550u, 4294967295u), arg_1.ww), vec2<u32>(firstTrailingBit(34510u), arg_3.a)), 17u)], Struct_1(abs(vec4<i32>(1i, 2147483647i, -24035i, u_input.b.x)) | _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 0i, global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(82790u, 31u)]), vec4<i32>(0i, u_input.b.x, global3[_wgslsmith_index_u32(66856u, 31u)], u_input.b.x)), ~vec4<i32>(global3[_wgslsmith_index_u32(1u, 31u)], -1i, -12127i, global3[_wgslsmith_index_u32(arg_1.x, 31u)]))));
    var_0 = Struct_3(abs(~max(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), var_0.a, var_0.d.a.yw), u_input.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(131f, _wgslsmith_f_op_f32(step(var_0.b.x, 1617f))), _wgslsmith_f_op_vec2_f32(round(var_0.b))), var_0.b)), global2[_wgslsmith_index_u32(74666u, 17u)], global2[_wgslsmith_index_u32(19043u, 17u)]);
    var var_1 = Struct_3(firstLeadingBit(vec2<i32>(-1i, _wgslsmith_mult_i32(var_0.c.a.x, 1i))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c.a.x, var_0.a.x), vec2<i32>(1i, u_input.b.x)))), -201f))), var_0.d, Struct_1(vec4<i32>(-global3[_wgslsmith_index_u32(arg_1.x >> (7199u % 32u), 31u)], -u_input.b.x, global3[_wgslsmith_index_u32(arg_3.a, 31u)], ~_wgslsmith_mod_i32(u_input.c.x, u_input.b.x))));
    var var_2 = ~abs(~abs(_wgslsmith_clamp_u32(31642u, arg_3.a, u_input.d)));
    let var_3 = _wgslsmith_f_op_f32(-var_0.b.x);
    return Struct_2(max(firstTrailingBit(~(~arg_3.a)), 4294967295u));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_mult_i32(u_input.b.x, -2147483647i);
    global1 = 1f;
    var var_1 = !vec3<bool>(any(!select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, false), vec4<bool>(false, arg_0.x, arg_0.x, true))), true, select(abs(2147483647i), _wgslsmith_clamp_i32(-4169i, global3[_wgslsmith_index_u32(26u, 31u)], u_input.b.x), !arg_0.x) < ~min(1i, -38002i));
    let var_2 = ~u_input.b;
    global3 = array<i32, 31>();
    return _wgslsmith_dot_vec3_i32(-(~abs(~vec3<i32>(global3[_wgslsmith_index_u32(arg_2.x, 31u)], 39634i, -2147483647i))), min(abs(vec3<i32>(-1i) * -vec3<i32>(25082i, u_input.c.x, u_input.c.x)), vec3<i32>(-12630i, (-1i | var_2.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, global3[_wgslsmith_index_u32(arg_2.x, 31u)], var_2.x), vec3<i32>(1186i, -2147483647i, -15462i)), global3[_wgslsmith_index_u32(~4294967295u, 31u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(102f)))))), _wgslsmith_f_op_f32(-335f - _wgslsmith_f_op_f32(func_1()))));
    var var_0 = Struct_2(u_input.a);
    global2 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_4(vec3<bool>(1i > u_input.b.x, true, true), func_2(~vec3<u32>(var_0.a, 60243u, 62498u), countOneBits(vec4<u32>(17018u, var_0.a, var_0.a, var_0.a)), vec4<u32>(31953u, 46037u, var_0.a, 3476u) << (vec4<u32>(var_0.a, var_0.a, u_input.d, 51018u) % vec4<u32>(32u)), Struct_2(0u)), vec3<u32>(~0u, global0[_wgslsmith_index_u32(16965u, 32u)], _wgslsmith_mult_u32(u_input.a, 26414u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(0u, 4294967295u)), vec2<u32>(28197u, 4294967295u) << (vec2<u32>(u_input.d, global0[_wgslsmith_index_u32(var_0.a, 32u)]) % vec2<u32>(32u))))), vec2<u32>(global0[_wgslsmith_index_u32(var_0.a, 32u)], _wgslsmith_sub_u32(68980u, var_0.a)), max(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(24397u, 1u, u_input.a), vec3<u32>(4294967295u, 30706u, 4279u)), abs(vec3<u32>(39605u, u_input.a, var_0.a)), vec3<bool>(true, true, true)), vec3<u32>(select(var_0.a, firstTrailingBit(var_0.a), false), var_0.a, var_0.a)), firstLeadingBit(u_input.c));
}

