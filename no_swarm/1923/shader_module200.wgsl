struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 9> = array<f32, 9>(1778f, 322f, -1290f, -168f, 959f, 551f, 602f, -829f, 554f);

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec3<bool> {
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_3(false, -u_input.a, countOneBits(1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(38323u, 9u)], global1[_wgslsmith_index_u32(75700u, 9u)])) * vec2<f32>(-906f, global1[_wgslsmith_index_u32(8085u, 9u)])) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-233f, global1[_wgslsmith_index_u32(18404u, 9u)])) + vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(9316u, 9u)])))), max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d));
    global2 = array<Struct_1, 28>();
    var var_2 = Struct_3(all(select(func_3(_wgslsmith_f_op_vec2_f32(var_0.d - vec2<f32>(-1394f, global1[_wgslsmith_index_u32(var_0.c, 9u)])), Struct_2(-1813f)), !vec3<bool>(var_0.a, var_0.a, false), var_0.a)), min(-u_input.a, _wgslsmith_clamp_vec2_i32(~min(vec2<i32>(0i, u_input.c), vec2<i32>(25521i, 2147483647i)), -u_input.a, var_0.b)), var_0.c, var_0.d, min(vec3<u32>(_wgslsmith_mult_u32(var_0.e.x, var_0.c), var_0.e.x | 0u, 91012u), _wgslsmith_add_vec3_u32(~var_0.e, vec3<u32>(4294967295u, var_0.e.x, 4294967295u))) & ~(~vec3<u32>(4294967295u, 29139u, 73528u)));
    global0 = reverseBits(7830u);
    return firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_0, u_input.c), 18866i, i32(-1i) * -16999i, arg_0), vec4<i32>(-3536i, i32(-1i) * -2147483647i, abs(1i), _wgslsmith_mod_i32(44521i, -1i))), vec4<i32>(var_2.b.x, var_0.b.x, ~49512i, ~abs(u_input.c))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: f32) -> u32 {
    var var_0 = func_2(u_input.a.x);
    let var_1 = vec4<u32>(~1u, reverseBits(arg_0.x), ~arg_0.x, _wgslsmith_clamp_u32(47978u, 1u, firstTrailingBit(1u)));
    let var_2 = Struct_5(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, arg_2)) - 1333f), arg_1.a.x, global1[_wgslsmith_index_u32(64464u & ~arg_0.x, 9u)]), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(81209u, 9u)], 528f))))));
    let var_3 = var_1.x;
    let var_4 = firstTrailingBit(31840u);
    return ~(var_4 << (4294967295u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_div_vec4_i32(abs(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 43411i), vec4<i32>(13324i, 1i, u_input.c, u_input.a.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, ~u_input.a), u_input.c, -2147483647i, u_input.a.x)), vec4<i32>(-_wgslsmith_div_i32(2147483647i, ~(-29477i)), u_input.a.x, 2147483647i, _wgslsmith_mod_i32(reverseBits(_wgslsmith_add_i32(u_input.c, -12307i)), max(u_input.b ^ u_input.c, _wgslsmith_add_i32(u_input.b, 2147483647i)))));
    global0 = 0u;
    var var_1 = true;
    var var_2 = ~abs(-var_0.x);
    var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-108f, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]) * _wgslsmith_div_vec3_f32(vec3<f32>(-1336f, 850f, global1[_wgslsmith_index_u32(26510u, 9u)]), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]))))), global1[_wgslsmith_index_u32(select(~(~37122u << (_wgslsmith_mod_u32(55444u, 1u) % 32u)), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 86195u), vec2<u32>(14785u, 73112u), false), vec2<u32>(54775u, 4294967295u)), !(max(0i, var_0.x) < var_0.x)), 9u)], ~(-select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -11838i, -40516i, u_input.b), var_0, var_0), ~vec4<i32>(-2147483647i, u_input.b, u_input.b, 3351i), true)), ~vec3<u32>(0u, min(~30669u, 4294967295u), ~func_1(vec2<u32>(0u, 4294967295u), Struct_4(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], -1434f)), global1[_wgslsmith_index_u32(70824u, 9u)])));
}

