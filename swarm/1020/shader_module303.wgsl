struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(28513u, 4294967295u, 28001u, 0u, 1u, 4294967295u, 44414u, 55508u, 39055u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-556f, -1204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-934f))), _wgslsmith_f_op_f32(-1120f - 131f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1195f, 1017f, -176f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-871f, 338f, -1000f, -2075f) * vec4<f32>(-1592f, 1000f, -446f, -1843f)))))));
    var_0 = Struct_4(var_0.a);
    let var_1 = Struct_1(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_0.a.x)))) + var_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x))))))), 4294967295u >> (reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 9u)]), 9u)] >> (~4294967295u % 32u)) % 32u), (i32(-1i) * -u_input.c.x) << (select(_wgslsmith_mod_u32(47749u, global0[_wgslsmith_index_u32(1u, 9u)]), 4294967295u, false) % 32u), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-645f, 452f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x + -242f), var_0.a.x))))));
    var var_2 = Struct_4(var_0.a);
    global0 = array<u32, 9>();
    return var_0.a.x;
}

fn func_3() -> f32 {
    var var_0 = abs(vec3<u32>(global0[_wgslsmith_index_u32(countOneBits(1u), 9u)], 11481u, abs(83788u) ^ (global0[_wgslsmith_index_u32(~57485u, 9u)] << (_wgslsmith_add_u32(24650u, 1u) % 32u))));
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    let var_1 = true;
    let var_2 = _wgslsmith_clamp_i32(-2147483647i, 6245i, _wgslsmith_mult_i32(abs(reverseBits(-u_input.d.x)), u_input.d.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f))) * _wgslsmith_f_op_f32(-643f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(566f))) - -1258f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(func_2()), -197f, arg_1, _wgslsmith_f_op_f32(select(arg_1, -240f, true))))));
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_2.x, 4294967295u, 16547u) & vec4<u32>(reverseBits(arg_2.x), 1u, 1u, 0u), vec4<u32>(_wgslsmith_sub_u32(78928u, arg_2.x), _wgslsmith_clamp_u32(arg_2.x, arg_2.x >> (25076u % 32u), ~global0[_wgslsmith_index_u32(52196u, 9u)]), global0[_wgslsmith_index_u32(54709u, 9u)], countOneBits(~global0[_wgslsmith_index_u32(4294967295u, 9u)]))) | ~(~(~(~arg_2.x)));
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(399f, arg_1, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1399f, -506f, var_0.a.x, arg_1))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(313f * arg_1), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(505f))))));
    global0 = array<u32, 9>();
    let var_2 = Struct_1(!(arg_0.x <= -13038i), arg_1, ~(~var_1), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-36638i, -2147483647i, -29816i, 7417i), countOneBits(-vec4<i32>(arg_0.x, arg_3, arg_0.x, -6420i))), firstTrailingBit(vec4<i32>(1i, -arg_3, abs(54978i), u_input.c.x))), var_0.a.xwx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 9>();
    let var_0 = Struct_1(true, 317f, max(1u, _wgslsmith_sub_u32(4294967295u, firstLeadingBit(global0[_wgslsmith_index_u32(abs(1u), 9u)]))), -47145i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_f_op_f32(func_1(-vec3<i32>(u_input.a, u_input.b, -29986i), _wgslsmith_div_f32(-787f, -1357f), vec2<u32>(22347u, 72300u) & vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 18965u), 0i << (0u % 32u))), _wgslsmith_f_op_f32(-1298f - -992f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1165f)), -1181f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_0.c, min(_wgslsmith_dot_vec3_u32(vec3<u32>(46405u, var_0.c, 4294967295u) ^ vec3<u32>(37356u, 0u, global0[_wgslsmith_index_u32(6273u, 9u)]), vec3<u32>(13378u, 33083u, global0[_wgslsmith_index_u32(49638u, 9u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global0[_wgslsmith_index_u32(16359u, 9u)], 38440u) % vec3<u32>(32u))), ~var_0.c & ~0u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, var_0.c), 13583u, 15629u, ~0u), _wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(77273u, 9u)], 51218u, 35638u, global0[_wgslsmith_index_u32(23921u, 9u)]), vec4<u32>(4294967295u, 7831u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.c, 9u)], 9u)], var_0.c))), abs(~abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(30577u, 9u)], var_0.c, var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.e.x))));
}

