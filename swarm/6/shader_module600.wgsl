struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
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

var<private> global0: array<bool, 22>;

var<private> global1: array<vec4<f32>, 31>;

var<private> global2: array<bool, 4>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    let var_0 = Struct_2(Struct_1(u_input.c.x, ~u_input.b, 0u, select(_wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, u_input.c.x), vec4<u32>(33082u, u_input.c.x, u_input.c.x, 78526u)), ~vec4<u32>(0u, 34307u, 385u, 1u)), abs(vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x) | vec4<u32>(10835u, 97935u, 1u, u_input.c.x)), max(4294967295u, u_input.a.x) != 0u)));
    global2 = array<bool, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(4294967295u, 31u)] - vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), -1035f, -1297f)))));
    return -136f;
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> f32 {
    global2 = array<bool, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-311f + 1103f))));
    global2 = array<bool, 4>();
    var var_1 = abs(~(~vec3<u32>(67467u, u_input.c.x, 90995u)) >> (abs(vec3<u32>(arg_0.x, 1u, u_input.c.x)) % vec3<u32>(32u))) | vec3<u32>(firstLeadingBit(~u_input.a.x), 4294967295u, ~u_input.a.x);
    var_1 = reverseBits(_wgslsmith_clamp_vec3_u32(~reverseBits(countOneBits(vec3<u32>(var_1.x, u_input.a.x, 0u))), ~abs(countOneBits(vec3<u32>(var_1.x, 1u, var_1.x))), vec3<u32>(50990u, _wgslsmith_div_u32(106708u, 17778u | u_input.a.x), var_1.x)));
    return 1399f;
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<bool, 22>();
    let var_0 = ~arg_0.b;
    global1 = array<vec4<f32>, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1861f)) * -1120f), 1104f), vec2<f32>(_wgslsmith_f_op_f32(func_3(~vec2<u32>(1u, arg_0.d.x), _wgslsmith_f_op_f32(func_2(1252f)), ~3909i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-693f, -1424f)), _wgslsmith_f_op_f32(-1000f + -893f))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-491f)), _wgslsmith_f_op_f32(-2304f * -824f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-211f, -1566f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(711f, -1000f) + vec2<f32>(-248f, -1394f)) - vec2<f32>(1f, 1f)), all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec2<bool>(true, false), global2[_wgslsmith_index_u32(27636u, 4u)]))))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.c, ~reverseBits(vec2<u32>(83544u, arg_0.a))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, var_0, u_input.b), var_0), ~(~(~30884u)), _wgslsmith_div_vec4_u32(arg_0.d, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.a, u_input.c.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, arg_0.a))) & ~arg_0.d));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 31>();
    let var_0 = u_input.b.x;
    global0 = array<bool, 22>();
    let var_1 = vec3<bool>(any(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], false, true, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4117u, 22u)], true, false, global0[_wgslsmith_index_u32(14547u, 22u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], false, global0[_wgslsmith_index_u32(1u, 22u)], false))) || !any(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], false)), func_1(Struct_1(u_input.c.x, vec2<i32>(u_input.d.x, 52473i), ~7612u, abs(vec4<u32>(13249u, 0u, u_input.c.x, u_input.c.x)))) != false, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, 60376u, 1u)), 4u)]);
    global1 = array<vec4<f32>, 31>();
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, ~reverseBits(u_input.a.x)), select(select(u_input.a, vec2<u32>(46491u, u_input.c.x), global0[_wgslsmith_index_u32(4294967295u, 22u)] || global0[_wgslsmith_index_u32(65053u, 22u)]), _wgslsmith_add_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 12884u), vec2<u32>(u_input.a.x, u_input.c.x))), var_1.xx));
    let var_3 = Struct_1(u_input.a.x, u_input.b, 29822u >> (u_input.a.x % 32u), countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.a.x), min(vec4<u32>(u_input.c.x, u_input.a.x, 7103u, u_input.c.x), vec4<u32>(1u, u_input.a.x, u_input.c.x, 42844u))) >> (vec4<u32>(~59279u, u_input.c.x, ~u_input.c.x, 40599u) % vec4<u32>(32u))));
    var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, u_input.d.x, 1858i, var_3.b.x), abs(vec4<i32>(60273i, -27442i, 1i, var_0))) | _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, var_3.b.x, var_3.b.x)), vec3<i32>(-315i, u_input.b.x, u_input.b.x) ^ vec3<i32>(var_0, 33998i, var_3.b.x)), 19678i, 1i, max(var_0 >> (abs(20017u) % 32u), ~1i)));
}

