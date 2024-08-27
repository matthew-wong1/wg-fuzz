struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<u32, 9> = array<u32, 9>(4294967295u, 24006u, 4294967295u, 0u, 1u, 0u, 4294967295u, 27237u, 0u);

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<i32>(2147483647i, -1i, -60443i, 1i), vec2<i32>(0i, -21464i), Struct_1(false, 5492u), Struct_1(false, 124543u)));

var<private> global3: Struct_2 = Struct_2(vec4<i32>(0i, 0i, 2147483647i, 2147483647i), vec2<i32>(-50801i, 1i), Struct_1(true, 18901u), Struct_1(true, 20742u));

var<private> global4: array<vec2<i32>, 18>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~(~(~(global3.d.b ^ 12296u))), 3u)], global3.d.b);
    var_0 = Struct_1(select(false, arg_1, select(any(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)])) || false, !var_0.a, arg_0.d.a)), ~firstLeadingBit(4294967295u));
    let var_1 = arg_0.d;
    global0 = array<bool, 3>();
    global1 = array<u32, 9>();
    return u_input.b.yy;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_add_vec2_u32(~vec2<u32>(1u, ~_wgslsmith_mod_u32(44423u, u_input.b.x)), ~func_3(global2[_wgslsmith_index_u32(~abs(1u), 1u)], any(vec3<bool>(true, global0[_wgslsmith_index_u32(45869u, 3u)], false)), global3.a.yw));
    var var_1 = _wgslsmith_dot_vec4_i32(-(reverseBits(vec4<i32>(1i, 1i, 2147483647i, 1i)) & global3.a), global3.a) < (-reverseBits(u_input.a.x >> (40720u % 32u)) ^ ~74262i);
    global2 = array<Struct_2, 1>();
    var var_2 = global3.c;
    global3 = global2[_wgslsmith_index_u32(var_2.b, 1u)];
    return _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(1738f - _wgslsmith_f_op_f32(-167f * 968f))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    let var_0 = min(30583u, global3.c.b) ^ arg_2.d.b;
    var var_1 = 71081u;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_1.x, vec2<f32>(arg_1.x, arg_1.x), vec4<f32>(-493f, -427f, 670f, arg_1.x))), 436f, 1035f, arg_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, _wgslsmith_f_op_f32(arg_1.x * 196f), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x)))));
    global4 = array<vec2<i32>, 18>();
    global3 = Struct_2(select(_wgslsmith_mod_vec4_i32(max(vec4<i32>(38351i, global3.b.x, u_input.a.x, -47283i), select(arg_2.a, global3.a, vec4<bool>(false, global3.d.a, global3.c.a, arg_3.a))), firstLeadingBit(arg_2.a) >> (abs(vec4<u32>(arg_2.d.b, global3.c.b, global1[_wgslsmith_index_u32(0u, 9u)], arg_0)) % vec4<u32>(32u))), global3.a, vec4<bool>(true, (true && arg_2.d.a) & !arg_2.d.a, any(vec2<bool>(false, false)), any(select(vec4<bool>(false, arg_3.a, false, true), vec4<bool>(false, global3.c.a, global3.d.a, global0[_wgslsmith_index_u32(4294967295u, 3u)]), false)))), -(~(~global3.b)), arg_3, Struct_1(true, ~arg_0));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, 0i, 31765i), global3.a)), select(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(_wgslsmith_clamp_i32(global3.a.x, 12657i, -36756i), u_input.a.x)), vec2<i32>(func_1(reverseBits(u_input.b.x), vec3<f32>(-1275f, -778f, 1773f), Struct_2(global3.a, vec2<i32>(-2147483647i, 23733i), global3.c, global3.d), global3.c), abs(3359i)), all(select(vec2<bool>(false, global3.c.a), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 3u)]), true)) || true), global3.c, Struct_1(true, 1u));
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 1u)];
    global0 = array<bool, 3>();
    let var_1 = global3.c.a;
    let var_2 = reverseBits(~_wgslsmith_div_vec4_i32(var_0.a, firstTrailingBit(-var_0.a)));
    let var_3 = Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(-19382i, -global3.b.x, _wgslsmith_mult_i32(~global3.b.x, ~var_2.x), func_1(~0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, 1609f, 623f)), Struct_2(vec4<i32>(var_2.x, global3.a.x, global3.a.x, u_input.a.x), vec2<i32>(global3.a.x, global3.a.x), var_0.d, var_0.c), global3.c)), firstLeadingBit(vec4<i32>(var_0.a.x, global3.b.x, var_0.a.x, var_0.a.x)) >> (vec4<u32>(global3.d.b, u_input.b.x, ~50523u, 53715u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.d.b, 9u)], 9u)] % 32u)) % vec4<u32>(32u))), vec2<i32>(-global3.b.x, _wgslsmith_sub_i32(u_input.a.x, -var_2.x)), var_0.d, var_0.c);
    let var_4 = var_3.d;
    global0 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, 9231u, u_input.b.yzx, abs(u_input.b.x));
}

