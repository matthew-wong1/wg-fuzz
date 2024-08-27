struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1079f;

var<private> global1: Struct_1;

var<private> global2: array<u32, 14> = array<u32, 14>(1u, 1u, 24230u, 0u, 24389u, 43297u, 57194u, 1u, 27734u, 1u, 1u, 13286u, 0u, 6279u);

var<private> global3: vec4<i32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> i32 {
    let var_0 = select(select(!(!(!vec3<bool>(arg_2.b.x, false, true))), select(select(select(vec3<bool>(arg_2.b.x, true, true), vec3<bool>(arg_2.b.x, true, true), vec3<bool>(arg_0.b.x, arg_0.b.x, false)), vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b.x), vec3<bool>(all(vec3<bool>(arg_2.b.x, arg_0.b.x, arg_2.b.x)), any(vec2<bool>(arg_2.b.x, arg_2.b.x)), arg_2.b.x), false), arg_0.b.x), vec3<bool>(380f < _wgslsmith_f_op_f32(-global1.a), arg_0.b.x, arg_2.b.x), vec3<bool>(arg_2.b.x & any(select(vec4<bool>(true, arg_2.b.x, true, arg_2.b.x), vec4<bool>(true, arg_0.b.x, arg_0.b.x, true), arg_0.b.x)), arg_0.b.x, -2147483647i > (select(2147483647i, -9687i, true) | min(1i, -2147483647i))));
    global0 = _wgslsmith_f_op_f32(arg_2.c.a + arg_2.c.a);
    global2 = array<u32, 14>();
    let var_1 = arg_0.c;
    global0 = var_1.a;
    return arg_1;
}

fn func_2() -> vec2<f32> {
    global3 = vec4<i32>(func_3(Struct_2(Struct_1(global1.a), vec2<bool>(true, true), Struct_1(768f)), firstLeadingBit(1i), Struct_2(Struct_1(-1000f), vec2<bool>(true, true), Struct_1(global1.a))) ^ global3.x, i32(-1i) * -39207i, max(_wgslsmith_add_i32(_wgslsmith_add_i32(~global3.x, func_3(Struct_2(Struct_1(global1.a), vec2<bool>(true, false), Struct_1(global1.a)), 53877i, Struct_2(Struct_1(937f), vec2<bool>(false, false), Struct_1(global1.a)))), abs(-2147483647i)), global3.x), global3.x);
    global3 = vec4<i32>(-1i, 52321i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 1i, -16686i), -global3.zwz), global3.x);
    global2 = array<u32, 14>();
    var var_0 = -1415f;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1233f))))), !vec2<bool>(_wgslsmith_f_op_f32(-global1.a) != _wgslsmith_f_op_f32(-808f - global1.a), true), Struct_1(676f));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a, var_1.c.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, -967f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a, 809f))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    var var_1 = _wgslsmith_div_vec3_u32(~u_input.b.yxw, ~vec3<u32>(abs(1u | u_input.a.x), countOneBits(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)], 7183u)), u_input.a.x));
    let var_2 = select(!arg_0, !arg_0, arg_0);
    global2 = array<u32, 14>();
    return _wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, -abs(global3.x), 0i, _wgslsmith_sub_i32(-arg_1.x, -5883i)), -vec4<i32>(global3.x, arg_1.x, 1i, arg_1.x), !select(vec4<bool>(false, true, arg_0, false), !vec4<bool>(var_2, true, var_2, true), select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(false, false, false, var_2), false))), _wgslsmith_add_vec4_i32(vec4<i32>(-(~arg_1.x), arg_1.x, ~func_3(Struct_2(Struct_1(global1.a), vec2<bool>(false, true), Struct_1(global1.a)), 58935i, Struct_2(Struct_1(753f), vec2<bool>(true, false), Struct_1(global1.a))), ~(~global3.x)), max(-(vec4<i32>(arg_1.x, arg_1.x, global3.x, 0i) | vec4<i32>(-63019i, arg_1.x, global3.x, arg_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(67961i, global3.x, global3.x, global3.x), ~vec4<i32>(-24345i, -36912i, -9812i, global3.x)))), vec4<i32>(arg_1.x, max(_wgslsmith_add_i32(~arg_1.x, _wgslsmith_sub_i32(arg_1.x, -2147483647i)), min(-2147483647i, firstTrailingBit(-45626i))), -(_wgslsmith_dot_vec3_i32(global3.zzx, vec3<i32>(arg_1.x, arg_1.x, arg_1.x)) << (~4294967295u % 32u)), firstTrailingBit(global3.x >> ((global2[_wgslsmith_index_u32(4294967295u, 14u)] | 4294967295u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) - _wgslsmith_div_f32(-1683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -336f)))));
    let var_1 = _wgslsmith_clamp_u32(~73774u, u_input.b.x, 97990u);
    global2 = array<u32, 14>();
    global3 = _wgslsmith_div_vec4_i32(func_1(_wgslsmith_f_op_f32(-global1.a) == global1.a, vec2<i32>(2147483647i, abs(_wgslsmith_mult_i32(global3.x, 2147483647i)))), ~(~abs(~vec4<i32>(global3.x, 2147483647i, global3.x, 16911i))));
    let var_2 = -44370i;
    var var_3 = all(vec2<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, global1.a) * vec2<f32>(_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -1165f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))));
}

