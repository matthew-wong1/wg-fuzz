struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 17>;

var<private> global1: array<f32, 2> = array<f32, 2>(1000f, 447f);

var<private> global2: Struct_3 = Struct_3(vec2<u32>(59533u, 0u), vec4<f32>(1000f, -804f, -1000f, -475f));

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec3<i32>(-41635i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -44036i, -1i, 37287i)), Struct_2(vec3<i32>(-85334i, 48690i, i32(-2147483648)), vec4<i32>(-21344i, 37291i, -23940i, 22449i)), Struct_2(vec3<i32>(-1i, 1i, 1i), vec4<i32>(0i, i32(-2147483648), 25674i, -2577i)), Struct_2(vec3<i32>(i32(-2147483648), 43845i, -1i), vec4<i32>(0i, 1i, -12801i, 6035i)), Struct_2(vec3<i32>(0i, 1i, 2147483647i), vec4<i32>(0i, 1i, i32(-2147483648), -20872i)), Struct_2(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(7495i, -1i, 3658i, 8704i)), Struct_2(vec3<i32>(29835i, -52439i, 12986i), vec4<i32>(2147483647i, i32(-2147483648), -6162i, -25121i)), Struct_2(vec3<i32>(17391i, 3187i, -46111i), vec4<i32>(-13774i, 52878i, 25108i, 1i)), Struct_2(vec3<i32>(-1i, 30394i, 34165i), vec4<i32>(1i, 34007i, i32(-2147483648), -64077i)), Struct_2(vec3<i32>(-19165i, 1i, 1i), vec4<i32>(42313i, 59600i, 6182i, 6356i)), Struct_2(vec3<i32>(-16260i, -61489i, 36219i), vec4<i32>(0i, 2147483647i, -1i, -14431i)), Struct_2(vec3<i32>(2147483647i, 2147483647i, -15533i), vec4<i32>(-98035i, 6223i, -1i, -26918i)), Struct_2(vec3<i32>(20662i, -5118i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -30849i, 58807i, 0i)), Struct_2(vec3<i32>(2572i, 0i, 9305i), vec4<i32>(i32(-2147483648), i32(-2147483648), -23506i, 20337i)), Struct_2(vec3<i32>(2147483647i, 1i, 6003i), vec4<i32>(7292i, 6817i, 2147483647i, 2147483647i)), Struct_2(vec3<i32>(0i, 66033i, 2147483647i), vec4<i32>(-38035i, 35476i, -8086i, 1i)), Struct_2(vec3<i32>(-43810i, i32(-2147483648), 27684i), vec4<i32>(-21701i, -1i, i32(-2147483648), 1i)), Struct_2(vec3<i32>(-18891i, 2147483647i, 0i), vec4<i32>(i32(-2147483648), -1i, 1i, i32(-2147483648))));

var<private> global4: vec2<bool>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = vec4<i32>(-u_input.a.x, ~abs(i32(-1i) * -48966i), reverseBits(arg_0), u_input.a.x);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(18311u ^ arg_2, global2.a.x, global2.a.x >> (global2.a.x % 32u), ~arg_2), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 58498u, 1u, 4294967295u) | vec4<u32>(arg_1.x, 4294967295u, 1u, 1u)), (vec4<u32>(68978u, 1u, 1u, arg_1.x) & vec4<u32>(global2.a.x, global2.a.x, 32354u, 1u)) | vec4<u32>(arg_1.x, global2.a.x, arg_1.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.x, arg_1.x, 57669u, 0u), vec4<u32>(arg_1.x, 0u, global2.a.x, 0u)) | vec4<u32>(global2.a.x, 4294967295u, 1280u, arg_2)) | countOneBits(vec4<u32>(global2.a.x, abs(global2.a.x), 27709u, global2.a.x))), 18u)];
    global0 = array<vec4<f32>, 17>();
    let var_2 = global2.a.x;
    let var_3 = global0[_wgslsmith_index_u32(~firstLeadingBit(global2.a.x), 17u)];
    return 1000f;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> vec2<f32> {
    global2 = Struct_3(max(arg_1.yy & global2.a, ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_1.x), vec2<u32>(arg_1.x, global2.a.x) ^ vec2<u32>(4294967295u, 0u))), vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global2.a.x, 2u)], arg_0)), global2.b.x, global2.b.x));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global2.b.x), 275f, _wgslsmith_f_op_f32(func_3(abs(arg_2.a.x), ~vec2<u32>(global2.a.x, ~arg_1.x), arg_3, -461f)));
    global1 = array<f32, 2>();
    var var_1 = Struct_3(max(global2.a, ~vec2<u32>(arg_1.x, global2.a.x) & (arg_1.yy | global2.a)) ^ (~global2.a | vec2<u32>(~75553u, arg_1.x)), _wgslsmith_f_op_vec4_f32(exp2(global2.b)));
    var var_2 = ~arg_1;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-110f, 2079f), global2.b.yw)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> vec4<f32> {
    global1 = array<f32, 2>();
    var var_0 = abs(vec3<u32>(firstLeadingBit(~64810u), global2.a.x, _wgslsmith_add_u32(global2.a.x, global2.a.x << (23270u % 32u))));
    var var_1 = var_0.yz;
    var var_2 = u_input.a.x;
    var var_3 = global3[_wgslsmith_index_u32(~(~var_1.x ^ ~min(var_0.x, _wgslsmith_mod_u32(53308u, var_0.x))), 18u)];
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-462f * arg_0.x), _wgslsmith_f_op_f32(sign(arg_1.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x, vec2<u32>(1u, 0u), 36768u, -1000f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.x, 2u)] - global1[_wgslsmith_index_u32(74787u, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_f_op_f32(sign(452f)))), 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global2.b.x, global2.b.x, global2.b.x))))));
}

fn func_2() -> u32 {
    global1 = array<f32, 2>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f) + -2852f)) > global1[_wgslsmith_index_u32(abs(global2.a.x), 2u)];
    global2 = Struct_3(~_wgslsmith_add_vec2_u32(abs(global2.a) ^ global2.a, global2.a), _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(u_input.a.x, global2.a, global2.a.x, 862f)))), vec4<u32>(max(1u, 1u), 1u, abs(12266u), global2.a.x), global3[_wgslsmith_index_u32(42126u >> (_wgslsmith_mod_u32(global2.a.x, 4294967295u) % 32u), 18u)], _wgslsmith_clamp_u32(22295u, ~global2.a.x, min(global2.a.x, global2.a.x)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-426f, global2.b.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.a.x, 2u)])), global2.b.x, _wgslsmith_f_op_f32(func_3(~u_input.a.x, global2.a, 14166u, -1447f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b.x - global2.b.x)))), select(vec3<bool>(true, var_0, global4.x), !vec3<bool>(true, global4.x, var_0), select(select(vec3<bool>(var_0, var_0, global4.x), vec3<bool>(global4.x, false, var_0), vec3<bool>(true, false, var_0)), !vec3<bool>(var_0, global4.x, var_0), vec3<bool>(var_0, global4.x, false))))));
    global1 = array<f32, 2>();
    global2 = Struct_3(vec2<u32>(~global2.a.x, reverseBits(~(~1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~53116u, 47886u), 17u)])));
    return global2.a.x;
}

fn func_1(arg_0: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(global2.a.x, firstTrailingBit(2247u), _wgslsmith_add_u32(global2.a.x | 4294967295u, ~(~1u))), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 0u, 0u, global2.a.x), vec4<u32>(global2.a.x, 40554u, global2.a.x, 0u)), ~global2.a.x, 0u)), vec3<u32>(_wgslsmith_clamp_u32(36456u, global2.a.x, global2.a.x) | (global2.a.x >> (1u % 32u)), ~global2.a.x | global2.a.x, func_2())));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(global2.a, vec2<u32>(~1u, _wgslsmith_clamp_u32(var_0.x, _wgslsmith_clamp_u32(global2.a.x, 0u, 0u), 0u >> (global2.a.x % 32u)))), var_0.zy), 18u)];
    var var_2 = -2147483647i;
    var var_3 = false;
    let var_4 = abs(abs(countOneBits(firstTrailingBit(vec3<u32>(25726u, 4294967295u, var_0.x)))));
    return vec2<u32>(~(~global2.a.x), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, select(0u, global2.a.x, global4.x) ^ abs(71441u)), firstLeadingBit(func_1(countOneBits(u_input.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-147f, 253f, _wgslsmith_f_op_f32(select(806f, global2.b.x, all(vec3<bool>(false, false, global4.x)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 10831u), 2u)])) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(103029u, 17u)]) + _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(global2.a.x, 17u)])) + vec4<f32>(_wgslsmith_f_op_f32(round(global2.b.x)), -309f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31142u, 2u)] + global2.b.x), _wgslsmith_f_op_f32(-108f + 2210f)))));
    let var_1 = Struct_3(vec2<u32>(~global2.a.x, var_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1438f)) + -594f) - var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-649f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 2u)], true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.a.x, 2u)]) + -432f)), var_0.b.x));
    global3 = array<Struct_2, 18>();
    var var_2 = -u_input.a;
    var var_3 = ~1i;
    global3 = array<Struct_2, 18>();
    let var_4 = Struct_3(vec2<u32>(24909u, abs(~(var_1.a.x << (global2.a.x % 32u)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x - var_1.b.x), var_0.b.x)), _wgslsmith_f_op_vec4_f32(-var_1.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~_wgslsmith_add_u32(global2.a.x, 20214u), abs(4294967295u), var_1.a.x, var_1.a.x), var_1.a.x | abs(var_4.a.x), abs(~(vec4<u32>(var_0.a.x, var_1.a.x, 4781u, 13996u) << (~vec4<u32>(global2.a.x, var_4.a.x, 27200u, var_1.a.x) % vec4<u32>(32u)))), var_2.wzx);
}

