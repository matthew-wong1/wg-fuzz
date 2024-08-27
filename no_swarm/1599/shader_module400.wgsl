struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<vec4<f32>, 7> = array<vec4<f32>, 7>(vec4<f32>(-415f, 1068f, -810f, 974f), vec4<f32>(213f, -114f, 1131f, 813f), vec4<f32>(-444f, 413f, -631f, 509f), vec4<f32>(-1727f, 605f, -209f, -531f), vec4<f32>(1465f, -1236f, -1316f, 1000f), vec4<f32>(-393f, -138f, -207f, -1924f), vec4<f32>(563f, -2107f, -551f, -1951f));

var<private> global1: vec2<u32> = vec2<u32>(0u, 5385u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_4(arg_0, vec4<u32>(global1.x, global1.x, ~u_input.a ^ 64189u, ~0u), Struct_1(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.b, u_input.b, -1i)), min(vec3<i32>(u_input.b, 2865i, 1i) >> (vec3<u32>(23061u, global1.x, 1u) % vec3<u32>(32u)), ~vec3<i32>(u_input.b, u_input.b, u_input.b)))), Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.a) + vec3<f32>(435f, -201f, arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.a, arg_0.a))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1680f, -713f, arg_0.a), vec3<f32>(-509f, -854f, arg_0.a))))), vec3<bool>(all(vec4<bool>(false, true, false, false)), select(false, true, false), true))), true), !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true)));
    global0 = array<vec4<f32>, 7>();
    let var_1 = !var_0.e.yww;
    global0 = array<vec4<f32>, 7>();
    global1 = var_0.b.xx;
    return arg_0.a;
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4576u, 7u)])) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1689f, -420f))) * _wgslsmith_f_op_f32(f32(-1f) * -2191f)), _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -155f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) - -1310f))), _wgslsmith_f_op_f32(max(1330f, _wgslsmith_f_op_f32(round(-2105f))))));
    global0 = array<vec4<f32>, 7>();
    global1 = countOneBits(vec2<u32>(_wgslsmith_sub_u32(max(4294967295u, u_input.a) | _wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), _wgslsmith_dot_vec4_u32(max(~vec4<u32>(global1.x, u_input.a, 0u, 0u), vec4<u32>(18024u, global1.x, global1.x, global1.x)), vec4<u32>(9339u, u_input.a, 4294967295u, ~u_input.a))));
    var var_1 = select(5409u, ~global1.x, var_0.x <= 627f) >> ((u_input.a ^ 37557u) % 32u);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.xyx), var_0.www)), !(_wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, -442f)))));
    return Struct_4(Struct_3(-575f), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, u_input.a, u_input.a, global1.x), ~vec4<u32>(~5825u, abs(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 22852u), vec2<u32>(0u, 47134u)), _wgslsmith_sub_u32(u_input.a, global1.x))), Struct_1(vec3<i32>(abs(-u_input.b), ~(~u_input.b), 0i)), var_2, vec4<bool>(var_2.b | true, true, var_2.b, u_input.b == 0i));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -2036i), vec3<i32>(28411i, u_input.b, u_input.b)) << (u_input.a % 32u)));
    global0 = array<vec4<f32>, 7>();
    var var_1 = var_0.a;
    var_0 = Struct_4(Struct_3(var_0.a.a), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, u_input.a, var_0.b.x, var_0.b.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.x, 1u, var_0.b.x), vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), var_0.b)), var_0.b), var_0.c, func_1(_wgslsmith_mod_i32(0i ^ (var_0.c.a.x ^ 21673i), u_input.b)).d, var_0.e);
    var var_2 = _wgslsmith_div_i32(u_input.b & 1i, 1i);
    var_0 = func_2();
    var var_3 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.zx);
}

