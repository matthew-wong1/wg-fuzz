struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<u32>(43510u, 1u), 34696u, -18549i, 479f));

var<private> global1: array<i32, 6> = array<i32, 6>(1i, -32151i, 1i, 0i, -24193i, -1i);

var<private> global2: vec4<i32> = vec4<i32>(25318i, 56655i, -42685i, 65608i);

var<private> global3: i32 = -45749i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = arg_1.a.a.x;
    global0 = Struct_3(global0.a);
    global1 = array<i32, 6>();
    let var_1 = 1u;
    global0 = Struct_3(global0.a);
    return vec2<bool>(true, true);
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(select(vec2<bool>(true, any(vec4<bool>(false, true, true, true))), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(818f, -738f, 1038f, -1243f), vec4<f32>(global0.a.d, -150f, global0.a.d, -858f), vec4<bool>(false, true, true, false))), Struct_3(global0.a)), select(true, false, false)), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), !func_3(vec4<f32>(-250f, 472f, global0.a.d, global0.a.d), Struct_3(global0.a))), !func_3(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.d), global0.a.d, _wgslsmith_div_f32(global0.a.d, global0.a.d), _wgslsmith_f_op_f32(ceil(1000f))), Struct_3(global0.a)), vec2<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2214f - global0.a.d), -1798f, true)) < 446f));
    let var_1 = !var_0.x;
    let var_2 = Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global0.a.a, vec2<u32>(global0.a.b, global0.a.a.x)) | firstTrailingBit(vec2<u32>(global0.a.b, 0u)), select(max(global0.a.a, vec2<u32>(global0.a.b, 4294967295u)), global0.a.a, vec2<bool>(true, var_1))), firstLeadingBit(global0.a.a.x), 1995i ^ global2.x, global0.a.d));
    global0 = Struct_3(global0.a);
    global3 = 2147483647i;
    return var_2.a;
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_3(func_2());
    let var_1 = true;
    let var_2 = !vec3<bool>(var_1, false, var_1);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.d)) - arg_0) + -1202f), _wgslsmith_f_op_f32(ceil(arg_0))));
    global2 = countOneBits(vec4<i32>(abs(~(global0.a.c ^ u_input.a.x)), max(i32(-1i) * -16120i, 4357i) << (~_wgslsmith_dot_vec2_u32(var_0.a.a, vec2<u32>(var_0.a.a.x, 27108u)) % 32u), -2147483647i >> (var_0.a.b % 32u), 1i));
    return var_2.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -global2.x, _wgslsmith_clamp_i32(global0.a.c, 32534i, global0.a.c), 34908i), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, -30023i, 2147483647i, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, global1[_wgslsmith_index_u32(global0.a.a.x, 6u)], global2.x, 48061i), vec4<i32>(1i, -7605i, -55335i, global0.a.c), vec4<i32>(10979i, global1[_wgslsmith_index_u32(global0.a.b, 6u)], global2.x, global2.x)))), -2147483647i);
    let var_1 = select(!vec4<bool>(true, false, !all(vec2<bool>(false, false)), all(func_1(global0.a.d))), vec4<bool>(!all(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(~global0.a.a.x, ~global0.a.a.x) >= 353u, any(vec3<bool>(any(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(false, true)))), true), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), !select(false, true, true)), vec4<bool>(func_2().c <= _wgslsmith_add_i32(-21296i, 2147483647i), _wgslsmith_f_op_f32(-750f + global0.a.d) != _wgslsmith_f_op_f32(ceil(global0.a.d)), true | func_3(vec4<f32>(global0.a.d, 458f, global0.a.d, 1079f), Struct_3(Struct_1(vec2<u32>(97429u, 4294967295u), global0.a.b, -2147483647i, -1000f))).x, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true))));
    var var_2 = Struct_2(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-111f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.a.d)))), global0.a.d)), global2.xxw, global0.a.b);
}

