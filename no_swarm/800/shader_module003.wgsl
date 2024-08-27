struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-27243i, 6174i, -57727i, 7677i), vec4<i32>(-9752i, -1i, i32(-2147483648), 0i), vec4<i32>(-4248i, -24297i, 225i, -5171i), vec4<i32>(1804i, -4262i, -1i, -15037i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = Struct_1(482f);
    global1 = array<vec4<i32>, 4>();
    global0 = array<Struct_2, 27>();
    var var_1 = u_input.c.x;
    let var_2 = vec2<i32>(~(~(~(u_input.d & u_input.c.x))), reverseBits(u_input.d));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a)))))) * _wgslsmith_f_op_f32(step(204f, var_0.a)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_2, 27>();
    var var_0 = global0[_wgslsmith_index_u32(~(~(~(~abs(27668u)))), 27u)];
    let var_1 = _wgslsmith_sub_i32(54354i & _wgslsmith_mult_i32(firstTrailingBit(~u_input.c.x), u_input.d), -732i);
    let var_2 = (i32(-1i) * -(~(i32(-1i) * -8716i))) | u_input.d;
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(func_2(vec3<u32>(61799u, 1u, abs(firstTrailingBit(~1u))), 90670u, ~(max(1u, abs(1u)) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 31170u, 37297u), vec3<u32>(0u, 1u, 39889u)))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(-1055f);
    global0 = array<Struct_2, 27>();
    global1 = array<vec4<i32>, 4>();
    global0 = array<Struct_2, 27>();
    var var_1 = max(vec4<i32>(30708i, countOneBits(countOneBits(arg_0.x)), reverseBits(firstTrailingBit(arg_0.x)), 1i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -1i, 1i, min(arg_0.x, arg_0.x)), ~(u_input.c | vec4<i32>(arg_0.x, arg_0.x, u_input.d, 2147483647i))) | arg_0);
    return vec4<u32>(~15951u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(5593u, 0u)), vec2<u32>(abs(25857u), ~0u)) ^ _wgslsmith_mod_u32(abs(_wgslsmith_clamp_u32(18437u, 0u, 1u)), 6185u), ~0u, _wgslsmith_sub_u32(max(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 7799u), vec2<u32>(44195u, 42822u)), ~(~39145u)), 28671u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    global1 = array<vec4<i32>, 4>();
    global0 = array<Struct_2, 27>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(false, false, Struct_2(Struct_1(1890f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(215f * 635f) + 848f))));
    var var_1 = (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(30542u, 24722u, 70468u, 41826u), vec4<u32>(12713u, 1086u, 29510u, 19727u), vec4<bool>(false, true, false, true)), firstLeadingBit(vec4<u32>(4294967295u, 18620u, 58758u, 0u))), firstLeadingBit(~vec4<u32>(20973u, 1u, 1u, 1u))) | (~vec4<u32>(64508u, 1u, 26734u, 28513u) & _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_3(global1[_wgslsmith_index_u32(1u, 4u)])))) << (~(~vec4<u32>(1u, 1u, 1u, 1u) >> (~select(vec4<u32>(24153u, 57096u, 71330u, 1u), vec4<u32>(0u, 37255u, 0u, 31719u), true) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_2 = var_0.a;
    var var_3 = var_0.a;
    global0 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_1.x);
}

