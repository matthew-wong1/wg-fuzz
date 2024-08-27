struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(0u, vec3<u32>(28510u, 1u, 4294967295u), 1u, 92968u, -673f), Struct_1(10512u, vec3<u32>(70757u, 0u, 5426u), 12674u, 1u, 1680f), Struct_1(4294967295u, vec3<u32>(0u, 0u, 30496u), 4294967295u, 0u, -2860f), Struct_1(6733u, vec3<u32>(4294967295u, 1u, 20367u), 1u, 14528u, 814f), Struct_1(58239u, vec3<u32>(26524u, 15525u, 1u), 1u, 31569u, 377f));

var<private> global2: Struct_2 = Struct_2(vec4<u32>(44953u, 133676u, 20384u, 8165u), vec2<f32>(2985f, -1121f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    global1 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_mult_u32(~abs(~_wgslsmith_mult_u32(arg_0.a.a.x, u_input.b)), ~4294967295u);
    return global2.b.x;
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_4(Struct_2(vec4<u32>(global2.a.x, u_input.c, u_input.b >> (~4294967295u % 32u), reverseBits(u_input.b)), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(311f))))));
    var var_1 = Struct_4(Struct_2(min(vec4<u32>(u_input.b, u_input.c, 1u, 1u), select(min(global2.a, vec4<u32>(var_0.a.a.x, global2.a.x, 13256u, 83542u)), vec4<u32>(2633u, global2.a.x, global2.a.x, 22815u), true)), vec2<f32>(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1604f)))))));
    let var_2 = _wgslsmith_mult_i32(abs(314i << (1u % 32u)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(min(6483i, -20846i), u_input.a.x, i32(-1i) * -75696i), -(arg_1.x & arg_1.x)) | -(~arg_1.x));
    global2 = Struct_2(reverseBits(var_0.a.a), _wgslsmith_f_op_vec2_f32(step(var_1.a.b, var_0.a.b)));
    let var_3 = ~select(countOneBits(vec2<u32>(u_input.c, var_1.a.a.x)) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.a.x, var_1.a.a.x), global2.a.xw), global2.a.xw), _wgslsmith_mult_vec2_u32(firstTrailingBit(var_0.a.a.zx), var_0.a.a.wx), (arg_1.x < arg_1.x) | true);
    return -1i;
}

fn func_1(arg_0: f32, arg_1: f32) -> StorageBuffer {
    global1 = array<Struct_1, 5>();
    let var_0 = ~(-abs(-u_input.d.x));
    global1 = array<Struct_1, 5>();
    var var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b.x, arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2992f), _wgslsmith_f_op_f32(func_2(Struct_4(Struct_2(global2.a, global2.b)), u_input.e.wzx, vec3<f32>(-250f, arg_1, arg_0), global1[_wgslsmith_index_u32(global2.a.x, 5u)]))))), select(u_input.a, u_input.a, vec3<bool>(false, false, true)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, -2147483647i, abs(var_0)), u_input.a >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(1u, 3718u, 3872u)) % vec3<u32>(32u)), u_input.e.wwy));
    let var_2 = reverseBits(firstTrailingBit(reverseBits(-(~u_input.e.x))));
    return StorageBuffer(u_input.e.wz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, arg_1, -754f)))))), countOneBits(firstTrailingBit(var_0 & ~(-38021i))), ~reverseBits(_wgslsmith_mult_u32(global2.a.x, abs(1u))), reverseBits(vec2<u32>(_wgslsmith_mult_u32(1u | global2.a.x, global2.a.x), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.b, _wgslsmith_f_op_vec2_f32(global2.b * global2.b)))));
    let var_0 = vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1807f, 256f) - -2040f) != _wgslsmith_f_op_f32(global2.b.x - global2.b.x), ~u_input.b >= global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-233f - _wgslsmith_f_op_f32(-1034f - 1692f)) + global2.b.x) >= _wgslsmith_f_op_f32(sign(901f)));
    let var_1 = var_0.x;
    let var_2 = !(!(~(~u_input.b) >= _wgslsmith_sub_u32(abs(u_input.b), 42869u)));
    var var_3 = ~(max(~vec2<u32>(66557u, global2.a.x), _wgslsmith_mod_vec2_u32(global2.a.zx, global2.a.xx)) << (firstTrailingBit(global2.a.wy) % vec2<u32>(32u))) >> (~(~(_wgslsmith_clamp_vec2_u32(global2.a.yz, vec2<u32>(50643u, 1u), global2.a.zy) ^ ~global2.a.zx)) % vec2<u32>(32u));
    let var_4 = true;
    var var_5 = abs(~firstTrailingBit(0u));
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(214f, -1611f)))), 122f);
}

