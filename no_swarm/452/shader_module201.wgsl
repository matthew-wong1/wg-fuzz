struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 41198u;

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: array<u32, 12> = array<u32, 12>(4294967295u, 90038u, 23480u, 48490u, 0u, 46434u, 1u, 692u, 58037u, 46056u, 0u, 0u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    global0 = 11048u;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-590f, 748f)))), -473f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-167f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(753f * -1967f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1645f, -304f))))));
    global1 = array<vec2<i32>, 26>();
    global2 = array<u32, 12>();
    return _wgslsmith_f_op_f32(-1606f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), var_0.x)));
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1411f, 957f, 314f, -669f) + vec4<f32>(799f, 438f, -356f, 1290f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-448f, 634f)), _wgslsmith_f_op_f32(f32(-1f) * -1026f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2967f + -481f), _wgslsmith_f_op_f32(floor(-168f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1314f, -165f), _wgslsmith_f_op_f32(floor(-716f)))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-149f + -739f), 1f, -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-709f + -732f), _wgslsmith_f_op_f32(func_3(vec2<u32>(global2[_wgslsmith_index_u32(0u, 12u)], 0u), Struct_1(vec3<i32>(-17092i, -109i, 4752i), 20644u))), arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(63158u, 46466u)), Struct_1(vec3<i32>(-41275i, -2147483647i, -2147483647i), 60111u))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f + 112f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -324f), 250f, all(vec2<bool>(arg_0.x, true))))))));
    var var_1 = ~vec3<i32>(29579i, _wgslsmith_sub_i32(firstTrailingBit(-1i) << (~global2[_wgslsmith_index_u32(53825u, 12u)] % 32u), reverseBits(~(-39148i))), -abs(-1i));
    var_1 = ~vec3<i32>(-1i, ~(-6014i), -2147483647i);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0, var_0, true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-935f, var_0.x, var_0.x, 1077f))), vec4<f32>(_wgslsmith_f_op_f32(max(474f, 474f)), 173f, _wgslsmith_f_op_f32(f32(-1f) * -1038f), -1453f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(429f, var_0.x, var_0.x, -892f)))), _wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(var_0 * var_0)), arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0)) - var_0))) * var_0));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)));
    return select(arg_0, select(arg_0, vec4<bool>(arg_0.x, true, any(arg_0.ww), true), !(!arg_0)), firstTrailingBit(-1i) <= _wgslsmith_mod_i32(17862i, -var_1.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    return reverseBits(arg_2.b);
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    global0 = (global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~4294967295u), u_input.a, abs(u_input.b >> (0u % 32u))), 12u)] | (global2[_wgslsmith_index_u32(0u, 12u)] | abs(~u_input.b))) ^ ~(4294967295u & (_wgslsmith_add_u32(0u, 95411u) ^ u_input.b));
    global2 = array<u32, 12>();
    global1 = array<vec2<i32>, 26>();
    var var_0 = arg_0.a.xwx;
    global0 = _wgslsmith_clamp_u32(4294967295u, ~32117u & func_4(!func_2(vec4<bool>(true, true, false, false)), Struct_2(-831f), Struct_1(firstTrailingBit(vec3<i32>(-5432i, -2147483647i, 38603i)), 1u), -1020f), 9958u);
    return !vec4<bool>(true, ((i32(-1i) * -16302i) >> (global2[_wgslsmith_index_u32(4294967295u, 12u)] % 32u)) >= max(~(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-18551i, 0i, 18448i, -2147483647i), vec4<i32>(33581i, -83153i, 4752i, 2147483647i))), any(vec3<bool>(true, false, var_0.x != 1343f)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(func_1(Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1978f, 702f, -789f, 510f) * vec4<f32>(-1129f, 225f, 720f, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(368f, -317f, 1155f, 106f)))))));
    global2 = array<u32, 12>();
    let var_1 = _wgslsmith_clamp_i32(34637i, -(~34799i << ((u_input.b | 4294967295u) % 32u)), -32691i) & _wgslsmith_mult_i32(min(22460i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_sub_vec2_i32(vec2<i32>(11292i, 28567i), vec2<i32>(2147483647i, 8161i)))), 0i);
    var var_2 = _wgslsmith_mult_i32(-(~37514i), select(-(~_wgslsmith_clamp_i32(var_1, 1i, var_1)), ~(~var_1), any(!(!vec4<bool>(var_0, var_0, false, var_0)))));
    let var_3 = vec2<u32>(u_input.a, ~(~abs(0u ^ u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, var_1);
}

