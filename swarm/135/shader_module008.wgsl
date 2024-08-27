struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<u32, 2>;

var<private> global2: vec3<f32> = vec3<f32>(-544f, 552f, -1382f);

var<private> global3: array<vec4<i32>, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_1(abs(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c, arg_0.c, 47968u), vec3<u32>(arg_0.c, arg_0.c, arg_0.a.a.x)) >> (~vec3<u32>(arg_0.a.a.x, arg_0.a.a.x, 69092u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(21720u, 2u)], 13881u, arg_0.c) & vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 4294967295u, global1[_wgslsmith_index_u32(arg_0.c, 2u)]), vec3<u32>(arg_0.c, 0u, 0u) ^ vec3<u32>(arg_0.c, 4294967295u, 1u)))), 1i);
    var var_1 = countOneBits(_wgslsmith_mod_u32(var_0.a.x, _wgslsmith_dot_vec3_u32(~var_0.a, vec3<u32>(_wgslsmith_mod_u32(var_0.a.x, arg_0.a.a.x), ~1u, 0u))));
    global0 = array<f32, 3>();
    var var_2 = global2.yy;
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 2u)], 3u)])))), _wgslsmith_f_op_vec2_f32(-global2.yy), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))))));
    return abs(~(~reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(44036u, 2u)], 4294967295u, var_0.a.x, global1[_wgslsmith_index_u32(12288u, 2u)]))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(func_3(Struct_2(Struct_1(arg_2.wwy, u_input.a), 307i, global1[_wgslsmith_index_u32(2250u, 2u)]), _wgslsmith_f_op_f32(f32(-1f) * -340f)).www, arg_2.yyw), -2147483647i), ~(~u_input.a), _wgslsmith_sub_u32(~(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21468u, 2u)], 2u)], 2u)], 2u)] << (~arg_0 % 32u)), 0u));
    global0 = array<f32, 3>();
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -618f, global2.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) * _wgslsmith_f_op_f32(f32(-1f) * -410f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(arg_2.x, 3u)], global0[_wgslsmith_index_u32(arg_0, 3u)], 656f))))))));
    let var_1 = 98166u;
    let var_2 = _wgslsmith_f_op_f32(round(962f));
    return u_input.a;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(1566f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1039f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(65224u, 3u)] * global2.x)))) + -540f));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-545f, global0[_wgslsmith_index_u32(75606u, 3u)], 523f) - vec3<f32>(global0[_wgslsmith_index_u32(9652u, 3u)], global2.x, 1832f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, var_0, -1167f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global2.x, -845f)) * vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -2342f), _wgslsmith_f_op_f32(-global2.x)))));
    let var_1 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, select(-42198i, u_input.a, true)), vec4<i32>(func_4(min(global1[_wgslsmith_index_u32(87860u, 2u)], 4400u) ^ ~54267u, abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), func_3(Struct_2(Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52328u, 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)]), 2147483647i), 26884i, 1u), global0[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(4294967295u, 2u)]), 3u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(4635i, u_input.a), ~(-16096i)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, 0i) >> (vec2<u32>(1u, 21816u) % vec2<u32>(32u)))), u_input.a, ~(~_wgslsmith_clamp_i32(0i, u_input.a, -28256i))), _wgslsmith_add_vec4_i32(vec4<i32>(abs(u_input.a) >> ((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 2u)] & 0u) % 32u), -firstLeadingBit(u_input.a), 2147483647i, _wgslsmith_clamp_i32(max(u_input.a, 29144i), ~u_input.a, min(-1i, u_input.a))), vec4<i32>(11196i, -(~15459i), ~(0i & u_input.a), -_wgslsmith_sub_i32(-56135i, u_input.a))));
    var var_2 = Struct_1(~vec3<u32>(global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(global1[_wgslsmith_index_u32(0u, 2u)])), 2u)], _wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(13285u, 2u)]) ^ global1[_wgslsmith_index_u32(~65917u, 2u)], func_3(Struct_2(Struct_1(vec3<u32>(30693u, global1[_wgslsmith_index_u32(30221u, 2u)], 4294967295u), var_1.x), u_input.a, global1[_wgslsmith_index_u32(0u, 2u)]), -1010f).x), -1i);
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * global2.x), 633f, 1477f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, -2080f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18291u, 2u)], 3u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1765f, global0[_wgslsmith_index_u32(var_2.a.x, 3u)], global0[_wgslsmith_index_u32(46569u, 3u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], -1000f, global2.x), true)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 876f, 2866f), vec3<f32>(1306f, var_0, var_0)))))))));
    return var_2.a.x;
}

fn func_1() -> u32 {
    let var_0 = func_2();
    global0 = array<f32, 3>();
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(686f)), -152f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x * -188f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global0[_wgslsmith_index_u32(var_0, 3u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 3u)]))), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 2u)], 3u)], 293f, -103f), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0, 3u)], global2.x, -457f), vec3<f32>(-746f, 1186f, global0[_wgslsmith_index_u32(4294967295u, 3u)])))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -649f), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0, 3u)], _wgslsmith_f_op_f32(f32(-1f) * -757f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 3u)]))))));
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) - 970f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global0[_wgslsmith_index_u32(var_0, 3u)], 670f) + vec3<f32>(global0[_wgslsmith_index_u32(var_0, 3u)], -1063f, -1232f)))))), vec3<f32>(2240f, 893f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f * -1000f)), 1247f))));
    var var_1 = ~((-(~vec2<i32>(2222i, u_input.a)) ^ _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), max(vec2<i32>(2147483647i, -22947i), vec2<i32>(u_input.a, u_input.a)))) & ~vec2<i32>(i32(-1i) * -6809i, u_input.a & -75840i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(-2147483647i ^ (1i >> (func_1() % 32u)), ~_wgslsmith_sub_i32(max(u_input.a, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(28119i, u_input.a))) << (0u % 32u), -45037i);
    global3 = array<vec4<i32>, 25>();
    global1 = array<u32, 2>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(func_3(Struct_2(Struct_1(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26122u, 2u)], 2u)], 2u)], 1u), var_0), 2147483647i, 16162u), _wgslsmith_f_op_f32(round(-106f))).xyz, ~_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], 0u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], 55349u, 1u)), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19510u, 2u)], 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)])), u_input.a), var_0, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(26556u), 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 9332u) & ~_wgslsmith_mod_u32(1u, 111759u));
    var var_2 = Struct_2(var_1.a, ~(-6081i), _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(var_1.a.a.yz ^ vec2<u32>(88u, 4502u), var_1.a.a.xy), 8054u));
    let var_3 = any(vec4<bool>(true, true, (i32(-1i) * -10322i) <= ((u_input.a ^ var_1.a.b) ^ 1i), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u ^ reverseBits(var_2.a.a.x), global1[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(~30173i, ~(i32(-1i) * -1i), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a, 0i), -1i), -1i), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(func_2(), ~global1[_wgslsmith_index_u32(var_1.a.a.x, 2u)]), 25u)]), vec2<u32>(1u | func_1(), ~(~(41793u & var_2.c))));
}

