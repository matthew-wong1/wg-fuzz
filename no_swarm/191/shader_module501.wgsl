struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(-13495i, 0i, -1i, 2147483647i), false));

var<private> global2: array<vec3<u32>, 11>;

var<private> global3: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(31160i, -62951i, 44349i, -20060i), vec4<i32>(-54838i, i32(-2147483648), 3491i, i32(-2147483648)), vec4<i32>(53919i, 13267i, 29793i, 0i), vec4<i32>(i32(-2147483648), -68021i, 2147483647i, 4967i), vec4<i32>(2147483647i, 1i, -8128i, 36163i), vec4<i32>(-2944i, 23101i, 10947i, i32(-2147483648)), vec4<i32>(12151i, -67187i, 55022i, 2147483647i), vec4<i32>(1i, 60880i, 4157i, -35578i), vec4<i32>(-25045i, -37202i, i32(-2147483648), 0i), vec4<i32>(-1i, 2147483647i, -1i, -1755i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 43169i), vec4<i32>(1i, 8571i, 1715i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -1i, -1i), vec4<i32>(2147483647i, -21491i, 24824i, -10802i), vec4<i32>(i32(-2147483648), -1i, 0i, -10020i), vec4<i32>(29060i, -91780i, 19909i, 1i), vec4<i32>(4428i, 1i, 7683i, -2130i), vec4<i32>(2147483647i, 0i, i32(-2147483648), 3568i), vec4<i32>(i32(-2147483648), 1992i, -9377i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), 1i, -25650i), vec4<i32>(1i, -1i, -55822i, 2147483647i), vec4<i32>(13802i, -1i, 46661i, 1i), vec4<i32>(-1960i, 10582i, 27280i, 53890i), vec4<i32>(-1i, -17433i, -15746i, i32(-2147483648)), vec4<i32>(41799i, 2147483647i, -1i, 13667i), vec4<i32>(45003i, -12333i, 56648i, 26029i), vec4<i32>(1i, 1i, -21470i, 0i), vec4<i32>(0i, 27206i, -9286i, 54414i), vec4<i32>(-6710i, -1i, i32(-2147483648), 19313i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: bool, arg_3: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) + arg_0.x), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1247f)))));
    let var_1 = Struct_3(Struct_2(Struct_1(abs(_wgslsmith_div_vec4_i32(global1.a.a, global1.a.a)), true & any(vec2<bool>(global1.a.b, arg_2)))));
    var var_2 = ~_wgslsmith_add_vec4_i32(-max(~vec4<i32>(63167i, 2147483647i, global1.a.a.x, -54207i), vec4<i32>(arg_1.x, -2147483647i, -10261i, arg_1.x)), -(vec4<i32>(-1i) * -vec4<i32>(-1i, var_1.a.a.a.x, global1.a.a.x, 2147483647i)));
    global1 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(-var_1.a.a.a.zyy, _wgslsmith_add_vec3_i32(var_2.xyz, var_2.yzw)), ~global1.a.a.x, abs(37001i), var_2.x), global1.a.b));
    global3 = array<vec4<i32>, 29>();
    return !select(select(vec4<bool>(all(vec3<bool>(true, arg_2, false)), false, false, global1.a.b), vec4<bool>(false, any(vec2<bool>(var_1.a.a.b, var_1.a.a.b)), false, !var_1.a.a.b), arg_2), vec4<bool>(select(global1.a.a.x != 2147483647i, global1.a.b, any(vec4<bool>(true, arg_2, var_1.a.a.b, true))), true, global1.a.b, true), select(!(!vec4<bool>(arg_2, true, var_1.a.a.b, false)), !(!vec4<bool>(true, true, var_1.a.a.b, global1.a.b)), var_1.a.a.b));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_4(!select(vec4<bool>(true, true && global1.a.b, global1.a.b, all(vec3<bool>(true, true, global1.a.b))), !func_3(vec4<f32>(976f, 1000f, 608f, 761f), vec3<i32>(2147483647i, u_input.a.x, -38056i), global1.a.b, 1u), false), global1.a);
    let var_1 = true;
    let var_2 = Struct_4(select(var_0.a, !(!(!var_0.a)), !(!vec4<bool>(var_0.b.b, true, global1.a.b, global1.a.b))), global1.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    var var_4 = ~(~vec4<u32>(abs(~0u), global0.x, _wgslsmith_div_u32(global0.x, 15324u) << (global0.x % 32u), _wgslsmith_div_u32(1u, _wgslsmith_add_u32(global0.x, global0.x))));
    return vec2<f32>(var_3, _wgslsmith_f_op_f32(-var_3));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> Struct_3 {
    let var_0 = Struct_1(vec4<i32>(u_input.a.x, -u_input.a.x, abs(61878i), u_input.a.x), ~0u < _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(arg_1, 11u)], vec3<u32>(min(53441u, 94469u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), global0.yx), firstLeadingBit(arg_1))));
    var var_1 = var_0.a.zww;
    global2 = array<vec3<u32>, 11>();
    var var_2 = -354f;
    var_2 = -1020f;
    return Struct_3(Struct_2(var_0));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, -1177f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1918f, 942f)))) - _wgslsmith_f_op_vec2_f32(func_2())), min(max(arg_0 >> (0u % 32u), 66238u), _wgslsmith_mult_u32(36371u, ~_wgslsmith_div_u32(4294967295u, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(min(-865f, -648f)))))));
    var var_1 = 1000f;
    global0 = firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec3_u32(~global2[_wgslsmith_index_u32(arg_0, 11u)], vec3<u32>(arg_0, 16615u, arg_0) | vec3<u32>(0u, 4294967295u, global0.x)) ^ max(global2[_wgslsmith_index_u32(countOneBits(arg_0), 11u)], global2[_wgslsmith_index_u32(48236u, 11u)])));
    global0 = vec3<u32>(firstLeadingBit(countOneBits(~(arg_0 << (global0.x % 32u)))), ~global0.x << (firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 62757u, arg_0, 24554u), vec4<u32>(arg_0, global0.x, 38876u, 10131u)), 0u, global0.x)) % 32u), 68496u);
    global1 = Struct_2(global1.a);
    return global2[_wgslsmith_index_u32(1u, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1371f;
    global0 = func_1(_wgslsmith_add_u32(~(~firstTrailingBit(1u)), select(1049u, 1u, false) >> (11845u % 32u)));
    var var_1 = global1.a;
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-768f + 1676f), _wgslsmith_f_op_f32(f32(-1f) * -714f)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-712f * 1015f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1826f, 1860f))))), reverseBits(global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2()).x + -466f)), -439f)));
    global3 = array<vec4<i32>, 29>();
    let var_3 = Struct_4(!(!(!func_3(vec4<f32>(1961f, 127f, 754f, -740f), global1.a.a.xwz, var_1.b, global0.x))), func_4(vec2<f32>(1f, 1f), ~max(9803u, 49893u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(188f * _wgslsmith_f_op_f32(trunc(-538f)))))).a.a);
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-627f, 1f)), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) * _wgslsmith_f_op_f32(-1f))));
    var var_5 = func_4(vec2<f32>(577f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-804f * 823f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-2866f, -1292f)))))), _wgslsmith_dot_vec3_u32((select(global2[_wgslsmith_index_u32(64394u, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], var_2.a.a.b) | _wgslsmith_add_vec3_u32(vec3<u32>(20951u, 51842u, global0.x), vec3<u32>(87335u, global0.x, 59072u))) | (~vec3<u32>(global0.x, global0.x, global0.x) << (firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 11u)]) % vec3<u32>(32u))), vec3<u32>((global0.x >> (45992u % 32u)) ^ global0.x, ~global0.x & _wgslsmith_div_u32(50300u, 1u), abs(global0.x & 52051u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1360f - -931f), -790f, var_1.b)));
    var_1 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-880f * -681f)) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-1000f - -930f)), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, 1238f))), 33728u ^ ~_wgslsmith_add_u32(4294967295u & global0.x, 4294967295u), _wgslsmith_f_op_f32(floor(-2261f))).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(-(~var_2.a.a.a))));
}

