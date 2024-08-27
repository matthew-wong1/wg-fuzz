struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 0i, -1i), vec3<i32>(i32(-2147483648), -1i, 12141i), vec3<i32>(0i, 25899i, 1i), vec3<i32>(-916i, 1i, 2147483647i), vec3<i32>(-1395i, -39330i, -45282i), vec3<i32>(i32(-2147483648), -30959i, 43229i), vec3<i32>(i32(-2147483648), 2147483647i, 26074i), vec3<i32>(22067i, -30809i, i32(-2147483648)), vec3<i32>(38780i, 22828i, -1i), vec3<i32>(1i, 2147483647i, -29982i), vec3<i32>(i32(-2147483648), 15498i, i32(-2147483648)), vec3<i32>(-35780i, 0i, -47339i), vec3<i32>(1i, i32(-2147483648), -1i), vec3<i32>(30289i, 1i, i32(-2147483648)), vec3<i32>(0i, -1i, 0i), vec3<i32>(23305i, 0i, -74636i), vec3<i32>(-22592i, -79980i, i32(-2147483648)), vec3<i32>(-1i, 0i, -1i), vec3<i32>(-35363i, 2147483647i, 29261i), vec3<i32>(0i, -3325i, 36295i), vec3<i32>(60886i, 61520i, -25829i), vec3<i32>(i32(-2147483648), 1i, -26861i), vec3<i32>(1715i, 0i, 1i), vec3<i32>(-249i, -1i, i32(-2147483648)), vec3<i32>(28014i, i32(-2147483648), 33201i), vec3<i32>(-1i, 2147483647i, -32811i));

var<private> global1: array<bool, 16>;

var<private> global2: array<vec3<f32>, 2>;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<u32>(7998u, 4294967295u, 21971u), -400f), Struct_1(vec2<i32>(21119i, i32(-2147483648)), vec3<u32>(8276u, 0u, 4294967295u), -385f), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<u32>(20309u, 23421u, 0u), -336f), Struct_1(vec2<i32>(34102i, -74289i), vec3<u32>(67444u, 43097u, 4294967295u), -1227f), Struct_1(vec2<i32>(1i, -3525i), vec3<u32>(4294967295u, 13985u, 0u), -269f), Struct_1(vec2<i32>(-19716i, -27376i), vec3<u32>(23008u, 13412u, 37635u), 1540f), Struct_1(vec2<i32>(1i, -16156i), vec3<u32>(4294967295u, 85918u, 13669u), -1141f), Struct_1(vec2<i32>(28592i, 0i), vec3<u32>(73423u, 0u, 4294967295u), 169f), Struct_1(vec2<i32>(i32(-2147483648), 23821i), vec3<u32>(18434u, 1u, 89958u), -1000f), Struct_1(vec2<i32>(-5512i, 52487i), vec3<u32>(10838u, 1295u, 1u), 113f), Struct_1(vec2<i32>(-20632i, -1i), vec3<u32>(71554u, 22033u, 4294967295u), -764f), Struct_1(vec2<i32>(73596i, -22460i), vec3<u32>(13140u, 8951u, 4294967295u), 333f), Struct_1(vec2<i32>(-29646i, i32(-2147483648)), vec3<u32>(0u, 6150u, 4294967295u), 1000f), Struct_1(vec2<i32>(-82713i, 36305i), vec3<u32>(45286u, 1u, 14380u), -773f), Struct_1(vec2<i32>(17060i, 2147483647i), vec3<u32>(17008u, 1u, 0u), 777f), Struct_1(vec2<i32>(61275i, -26431i), vec3<u32>(4294967295u, 52439u, 17473u), -727f), Struct_1(vec2<i32>(i32(-2147483648), -73322i), vec3<u32>(37720u, 4294967295u, 46600u), 434f), Struct_1(vec2<i32>(2147483647i, -10581i), vec3<u32>(4294967295u, 0u, 4294967295u), 226f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global3 = array<Struct_1, 18>();
    global1 = array<bool, 16>();
    var var_0 = 54128u;
    let var_1 = !vec2<bool>(any(vec4<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(7223u, 16u)], true)), true, true, !global1[_wgslsmith_index_u32(4294967295u, 16u)])), false);
    let var_2 = ~vec4<u32>((1u | firstTrailingBit(0u)) | _wgslsmith_clamp_u32(~1u, min(4294967295u, 1u), ~1u), 1u, ~1u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(9018u, 1u, 100988u), 4294967295u) ^ ~_wgslsmith_sub_u32(0u, 0u));
    return _wgslsmith_dot_vec4_u32(var_2, abs(~vec4<u32>(0u, 1u, 1u, var_2.x) >> (var_2 % vec4<u32>(32u))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, func_3()), 18u)];
    global2 = array<vec3<f32>, 2>();
    let var_1 = Struct_2(vec2<u32>(1u, ~(~31278u)), ~abs(~vec4<u32>(59562u, var_0.b.x, 27551u, 4446u)));
    var var_2 = Struct_2(vec2<u32>(select(var_0.b.x, abs(24000u), true), 1u) & var_1.b.xy, var_1.b);
    var var_3 = abs(-vec3<i32>(firstTrailingBit(~u_input.a.x), _wgslsmith_div_i32(-2147483647i, -68606i) << ((var_0.b.x >> (4294967295u % 32u)) % 32u), abs(var_0.a.x)));
    return Struct_2(var_0.b.yx, ~(~(firstLeadingBit(var_2.b) | var_1.b)));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = func_2(global0[_wgslsmith_index_u32(11145u, 27u)]);
    global3 = array<Struct_1, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1195f, 654f))), 480f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1918f)))), _wgslsmith_f_op_f32(floor(-1143f))));
    global1 = array<bool, 16>();
    global0 = array<vec3<i32>, 27>();
    return reverseBits(~vec2<u32>(61988u, 29850u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 2>();
    let var_0 = u_input.a.x >> (0u % 32u);
    var var_1 = Struct_2(max(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u) | reverseBits(func_1(4294967295u, Struct_3(61454u), Struct_2(vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 0u, 60108u, 4294967295u))))), select(~vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 4294967295u, 1u, 51329u), true), true) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, ~14812u, ~16754u), vec4<u32>(1u, 1u, 1u, 1u)));
    global3 = array<Struct_1, 18>();
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-2196f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(590f + -1119f), _wgslsmith_f_op_f32(select(-1021f, -1147f, true))), (global1[_wgslsmith_index_u32(4294967295u, 16u)] == global1[_wgslsmith_index_u32(0u, 16u)]) || true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2378f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-877f - -1000f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(478f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-279f, -2003f))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-747f * 1708f), 155f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(883f + -140f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.zwx), vec2<i32>(var_0, u_input.a.x ^ 878i), ~var_1.a, ~(_wgslsmith_dot_vec2_i32(-u_input.a.yw, countOneBits(vec2<i32>(u_input.a.x, u_input.a.x))) << (5411u % 32u)), global2[_wgslsmith_index_u32(reverseBits(~(~1u)), 2u)]);
}

