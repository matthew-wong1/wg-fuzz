struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 25> = array<f32, 25>(-1155f, 605f, -248f, -795f, 289f, 514f, 1717f, 1634f, 235f, -1116f, -575f, -358f, -1243f, -1000f, 222f, -646f, -1401f, -1937f, 1735f, -1026f, -114f, -1366f, -768f, 156f, 971f);

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global4: array<u32, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec3<u32> {
    return u_input.a;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(abs(~_wgslsmith_mod_u32(45607u, 1u)) << (~_wgslsmith_sub_u32(u_input.a.x, abs(arg_1.x)) % 32u), 19u)], _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-774f * -1313f), _wgslsmith_f_op_f32(min(arg_0, global2.b.x)))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(max(global2.c.x, arg_1.x), 25u)], -550f)), 134f))), vec3<u32>(1u << (~global4[_wgslsmith_index_u32(u_input.b.x, 9u)] % 32u), ~(~u_input.b.x | abs(33153u)), 20626u));
    let var_1 = max(_wgslsmith_add_u32(func_2(vec3<bool>(!var_0.a.x, global2.a.x, any(vec4<bool>(var_0.a.x, var_0.a.x, global2.a.x, true))), 1u, Struct_2(u_input.a, Struct_1(global2.a, global2.b, vec3<u32>(4294967295u, 0u, global2.c.x))), Struct_1(global2.a, vec4<f32>(-607f, arg_0, global1[_wgslsmith_index_u32(global2.c.x, 25u)], 643f), vec3<u32>(arg_1.x, global2.c.x, arg_1.x))).x, ~_wgslsmith_dot_vec2_u32(countOneBits(var_0.c.zy), u_input.a.xy & vec2<u32>(4294967295u, 63111u))), select(abs(_wgslsmith_sub_u32(78112u, 0u)), _wgslsmith_add_u32(min(1u, global2.c.x), 42379u >> (u_input.b.x % 32u)), false) ^ (4294967295u | _wgslsmith_sub_u32(firstLeadingBit(var_0.c.x), 0u)));
    let var_2 = Struct_1(!select(global2.a, var_0.a, global3[_wgslsmith_index_u32(~(~var_0.c.x), 19u)]), vec4<f32>(1444f, arg_0, _wgslsmith_f_op_f32(-560f - _wgslsmith_f_op_f32(abs(-270f))), 1047f), ~min(firstTrailingBit(vec3<u32>(1u, global2.c.x, global4[_wgslsmith_index_u32(var_0.c.x, 9u)]) << (vec3<u32>(6529u, global2.c.x, var_0.c.x) % vec3<u32>(32u))), firstLeadingBit(var_0.c)));
    let var_3 = select(!vec3<bool>(_wgslsmith_f_op_f32(-343f * var_2.b.x) < global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.c.x, arg_1.x), 25u)], _wgslsmith_f_op_f32(sign(global2.b.x)) == 799f, var_0.a.x), !select(select(select(vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(true, global2.a.x, false), var_2.a.x), vec3<bool>(global2.a.x, var_2.a.x, var_0.a.x), vec3<bool>(global2.a.x, var_0.a.x, var_2.a.x)), select(vec3<bool>(global2.a.x, global2.a.x, false), vec3<bool>(var_0.a.x, true, var_2.a.x), var_2.a.x | true), true || any(vec4<bool>(var_2.a.x, global2.a.x, var_2.a.x, var_0.a.x))), !select(select(select(vec3<bool>(var_0.a.x, global2.a.x, false), vec3<bool>(false, var_0.a.x, false), vec3<bool>(var_0.a.x, global2.a.x, var_0.a.x)), !vec3<bool>(false, global2.a.x, true), vec3<bool>(false, var_0.a.x, var_2.a.x)), !select(vec3<bool>(global2.a.x, false, global2.a.x), vec3<bool>(var_2.a.x, true, global2.a.x), false), vec3<bool>(all(global2.a), any(vec4<bool>(global2.a.x, var_0.a.x, false, global2.a.x)), global2.a.x)));
    var var_4 = global2.b.x;
    return Struct_1(vec2<bool>(true, all(select(select(vec2<bool>(global2.a.x, global2.a.x), global2.a, false), select(vec2<bool>(var_3.x, true), vec2<bool>(global2.a.x, false), true), global2.a.x))), _wgslsmith_f_op_vec4_f32(exp2(var_0.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~arg_1.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(56144u, var_1, var_1, var_1), _wgslsmith_div_vec4_u32(vec4<u32>(50412u, 0u, 0u, 4294967295u), vec4<u32>(var_2.c.x, 46087u, 4294967295u, 0u))), select(var_1, 25327u, true)), var_0.c, ~(~var_0.c)));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global2.b))), firstTrailingBit(select(~(~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2725u, 9u)], 9u)], global2.c.x, 4294967295u)), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.c.x, 9u)], 9u)], 9u)], global4[_wgslsmith_index_u32(77683u, 9u)], global4[_wgslsmith_index_u32(1u, 9u)]), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x))), false)));
    global3 = array<vec2<bool>, 19>();
    global2 = func_3(-102f, vec3<u32>(min(_wgslsmith_dot_vec3_u32(func_2(vec3<bool>(var_0.a.x, global2.a.x, var_0.a.x), 64022u, Struct_2(vec3<u32>(4294967295u, 41125u, global2.c.x), Struct_1(vec2<bool>(false, true), vec4<f32>(var_0.b.x, var_0.b.x, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(45556u, 25u)]), vec3<u32>(global2.c.x, 51734u, 19520u))), Struct_1(vec2<bool>(true, var_0.a.x), vec4<f32>(651f, var_0.b.x, global2.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), var_0.c)), abs(vec3<u32>(global4[_wgslsmith_index_u32(var_0.c.x, 9u)], var_0.c.x, 71469u))), var_0.c.x), var_0.c.x, global4[_wgslsmith_index_u32(abs(1u) & _wgslsmith_dot_vec4_u32(vec4<u32>(54196u, global4[_wgslsmith_index_u32(1520u, 9u)], var_0.c.x, global4[_wgslsmith_index_u32(0u, 9u)]), ~vec4<u32>(27532u, 76564u, 1u, 4294967295u)), 9u)]));
    var var_1 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~global2.c.x | 4294967295u, 25u)] * 1043f);
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-12112i, 1i), ~vec2<i32>(19940i, -3845i)), -abs(vec2<i32>(-1i, 12764i))), -((10168i >> (global4[_wgslsmith_index_u32(var_0.c.x, 9u)] % 32u)) >> (~0u % 32u)), -6842i, -40575i >> (var_0.c.x % 32u)), vec4<i32>(2147483647i, ~(~0i), reverseBits(-(~1i)), -2147483647i));
    return 34490u ^ ~reverseBits(global2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<u32>(~global2.c.x, _wgslsmith_dot_vec2_u32(u_input.a.yz, ~u_input.a.zy), 13524u), Struct_1(global2.a, vec4<f32>(-1390f, 639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1078f) + _wgslsmith_f_op_f32(f32(-1f) * -538f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.b.x, 25u)])))), firstTrailingBit(~vec3<u32>(global4[_wgslsmith_index_u32(global2.c.x, 9u)], 4294967295u, global4[_wgslsmith_index_u32(21895u, 9u)]))));
    let var_1 = _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, var_0.b.c.x, 1u)), global2.c.x | _wgslsmith_dot_vec4_u32(vec4<u32>(24509u, global2.c.x, global4[_wgslsmith_index_u32(0u, 9u)], var_0.b.c.x), vec4<u32>(81128u, u_input.b.x, 0u, u_input.a.x))), abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 40460u, 16082u, 4294967295u)), select(vec4<u32>(global4[_wgslsmith_index_u32(var_0.a.x, 9u)], 85274u, u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.c.x, 9u)], 9u)]), ~vec4<u32>(81366u, global4[_wgslsmith_index_u32(13221u, 9u)], global2.c.x, var_0.a.x), !global2.a.x))));
    let var_2 = vec2<f32>(global1[_wgslsmith_index_u32(~func_1() >> (abs(37965u) % 32u), 25u)], -1313f);
    var var_3 = true;
    global1 = array<f32, 25>();
    global0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(abs(-1i >> (global4[_wgslsmith_index_u32(12150u, 9u)] % 32u)), -78002i), vec3<i32>(5966i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, ~(-29994i)), 1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 2147483647i), firstLeadingBit(vec2<i32>(0i, -1i)))), reverseBits(1584i)), var_0.b.b.x);
}

