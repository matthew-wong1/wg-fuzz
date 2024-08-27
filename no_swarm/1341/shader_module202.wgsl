struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: Struct_1 = Struct_1(0u);

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(31677i, 21771i), vec2<i32>(0i, -50281i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-3262i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, -38518i), vec2<i32>(28811i, 35784i), vec2<i32>(-48692i, 1i), vec2<i32>(-27710i, 1i), vec2<i32>(12189i, -1i), vec2<i32>(0i, 4384i), vec2<i32>(-29460i, i32(-2147483648)), vec2<i32>(-35759i, -4477i), vec2<i32>(i32(-2147483648), -47535i), vec2<i32>(1672i, 22747i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-35882i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(42093i, 10464i), vec2<i32>(-2906i, 1i), vec2<i32>(-60253i, 2147483647i), vec2<i32>(-1i, 0i));

var<private> global3: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(913f), Struct_2(160f), Struct_2(1224f), Struct_2(-1729f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = select(any(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), true))), true, any(vec3<bool>(u_input.e.x < abs(u_input.c.x), true, true)));
    let var_1 = Struct_1(arg_1.x);
    var var_2 = vec3<bool>(all(vec3<bool>(true, -36391i < u_input.e.x, all(select(vec3<bool>(false, true, true), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, true))))), true, true);
    let var_3 = -1i;
    global1 = var_1;
    return max(u_input.b.yyy, vec3<u32>(5558u, global1.a, global1.a)) & _wgslsmith_mult_vec3_u32(firstLeadingBit(~u_input.b.xxw), _wgslsmith_div_vec3_u32(u_input.b.zzz, select(~arg_1, abs(arg_1), vec3<bool>(var_2.x, true, var_2.x))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = func_3(u_input.e.x, ~u_input.b.www);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(40254u, u_input.d)) & ~vec2<u32>(69730u, global1.a), select(~select(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, 81094u), true), firstLeadingBit(~vec2<u32>(u_input.a, 1u)), vec2<bool>(true, true))), func_3(1i, select(~(~var_0), u_input.b.zzz, -u_input.e.x <= abs(-5414i))).x, u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~u_input.d, select(var_0.x, 20241u, true), 4294967295u), vec4<u32>(19388u, ~var_0.x, var_0.x, firstTrailingBit(1u))));
    var var_2 = 113527u;
    global0 = -1044f;
    global2 = array<vec2<i32>, 23>();
    return Struct_1(~var_0.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(u_input.e.x != -4593i, !any(vec4<bool>(true, true, true, true)) | true, !((-28698i == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 0i, u_input.c.x), vec4<i32>(-1i, -2147483647i, 2147483647i, u_input.e.x))) == any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)))), !(all(vec3<bool>(true, true, true)) && any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_1 = arg_1;
    let var_2 = Struct_3(select(false, (all(vec4<bool>(false, true, var_0.x, var_0.x)) & true) || all(select(var_0.zwy, var_0.xzx, vec3<bool>(false, true, var_0.x))), _wgslsmith_f_op_f32(-442f * _wgslsmith_div_f32(arg_2.x, arg_2.x)) <= _wgslsmith_f_op_f32(abs(1f))), global1.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-513f, arg_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-2136f)))), 623f), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(87944u, 55736u, arg_1.a, 83904u), abs(u_input.b)) ^ arg_1.a, 4u)]);
    global3 = array<Struct_2, 4>();
    global3 = array<Struct_2, 4>();
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.d.a)), _wgslsmith_f_op_f32(-var_2.c.x), 343f, _wgslsmith_f_op_f32(f32(-1f) * -123f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.a, -519f, arg_2.x, var_2.d.a) + vec4<f32>(153f, -1162f, -255f, -1000f))))), ~firstTrailingBit(reverseBits(global2[_wgslsmith_index_u32(1u, 23u)])), arg_2);
}

fn func_1(arg_0: f32) -> f32 {
    global2 = array<vec2<i32>, 23>();
    global3 = array<Struct_2, 4>();
    var var_0 = ~u_input.b.wzy;
    global1 = func_4(var_0.zx ^ ~_wgslsmith_mod_vec2_u32(u_input.b.xy ^ u_input.b.zx, vec2<u32>(42606u, 1u)), func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(-305f, -679f, true)), -1000f, _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(step(arg_0, arg_0))))), vec2<i32>(-5374i, 2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-158f))), arg_0));
    var var_1 = u_input.a != u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(arg_0 * -815f)) - 523f), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.e, vec3<i32>(-max(_wgslsmith_clamp_i32(-52896i, 66662i, u_input.c.x), u_input.c.x), u_input.e.x, u_input.c.x));
    let var_1 = -209f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 682f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(func_1(538f)), 416f)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(func_1(var_1))) <= var_1)));
    var var_3 = (_wgslsmith_clamp_u32(u_input.b.x, global1.a, _wgslsmith_add_u32(u_input.d, 86520u)) >> (~1u % 32u)) > global1.a;
    let var_4 = !all(vec3<bool>(_wgslsmith_div_i32(1i, var_0.x) < abs(var_0.x), true, all(vec2<bool>(true, true))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * -727f)))));
    var var_5 = any(!(!(!(!vec3<bool>(var_4, false, true)))));
    var var_6 = ~firstLeadingBit(firstLeadingBit(u_input.b.wxw ^ u_input.b.yzx) >> (u_input.b.xyx % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, var_1, -296f, var_1) - vec4<f32>(var_2.x, -1321f, -2162f, var_1)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-422f, var_1, -458f, 262f)))))));
}

