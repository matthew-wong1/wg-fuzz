struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<bool>(false, false, false), vec4<u32>(77709u, 0u, 1u, 46572u), true, vec3<u32>(4294967295u, 1u, 46981u)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(24190u, 0u, 78067u, 77004u), false, vec3<u32>(4294967295u, 3957u, 12097u)), Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 1u, 1u, 1u), false, vec3<u32>(17384u, 0u, 8418u)));

var<private> global1: f32 = -1426f;

var<private> global2: u32 = 43791u;

var<private> global3: array<vec3<u32>, 28>;

var<private> global4: Struct_1 = Struct_1(vec3<bool>(false, true, false), vec4<u32>(6952u, 73804u, 45882u, 1u), false, vec3<u32>(15759u, 94343u, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    global1 = _wgslsmith_f_op_f32(arg_0 + arg_0);
    global0 = array<Struct_1, 3>();
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1268f, _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(2204f + arg_0)))) * vec2<f32>(arg_0, arg_0)));
    let var_2 = var_0;
    return select(~(~vec4<u32>(select(u_input.c, var_2.b.x, arg_1.a.x), ~var_2.d.x, 1u, firstTrailingBit(global4.d.x))), arg_1.b, vec4<bool>(all(var_2.a.xx), true, 16230u <= arg_1.d.x, false));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    global4 = Struct_1(!global4.a, global4.b ^ func_3(1124f, Struct_1(!vec3<bool>(global4.c, arg_1, arg_1), vec4<u32>(9521u, u_input.b.x, 4294967295u, 1u), true, u_input.b)), !(!((i32(-1i) * -2147483647i) < u_input.a)), vec3<u32>(14930u, 1u, countOneBits(~firstTrailingBit(u_input.c))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(160f, -1025f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1228f, -993f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(sign(-652f))))))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(815f, 548f, -709f), vec3<f32>(-934f, 179f, -101f))))))));
    let var_1 = -638f;
    var var_2 = -1i;
    global3 = array<vec3<u32>, 28>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(617f)), _wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_f_op_f32(func_2(vec2<bool>(arg_1, global4.a.x), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 332f, var_1)))))));
    return Struct_1(select(vec3<bool>(false & (true != arg_1), true, true), vec3<bool>(arg_0, !(u_input.a <= u_input.a), !arg_0), arg_1), min(~(global4.b >> (global4.b % vec4<u32>(32u))), vec4<u32>(u_input.b.x, select(global4.b.x, 0u, false) | func_3(-1214f, global0[_wgslsmith_index_u32(arg_2.b.x, 3u)]).x, ~arg_2.b.x, ~arg_2.b.x)), _wgslsmith_mult_u32(global4.b.x, u_input.b.x) < abs(global4.b.x), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(global4.d.x, ~4294967295u, _wgslsmith_clamp_u32(1u, 0u, 0u)), ~_wgslsmith_sub_u32(arg_2.d.x, 0u)) >> (_wgslsmith_mult_vec3_u32(reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.c, 1u)), 28u)]), arg_2.d) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global4.a.x, false, Struct_1(vec3<bool>(true, all(!vec4<bool>(global4.c, true, global4.a.x, global4.a.x)), global4.c), ~vec4<u32>(~u_input.c, select(global4.b.x, 59289u, global4.a.x), ~u_input.c, u_input.b.x), !(!global4.c), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, u_input.c, global4.d.x), global4.b.ywx)));
    global3 = array<vec3<u32>, 28>();
    global2 = global4.d.x >> (~1u % 32u);
    let var_1 = 21146i;
    global1 = 901f;
    var var_2 = Struct_1(var_0.a, ~global4.b, any(!vec2<bool>(true, any(vec4<bool>(global4.c, true, global4.c, var_0.a.x)))), vec3<u32>(88313u, u_input.b.x, 44950u));
    var var_3 = func_1(select(true, ~var_1 <= u_input.a, global4.a.x) && false, all(!(!vec3<bool>(global4.c, global4.c, true))), global0[_wgslsmith_index_u32(global4.d.x, 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(var_3.b.zzz << (_wgslsmith_add_vec3_u32(reverseBits(global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<u32>(19745u, var_3.b.x, u_input.b.x)) % vec3<u32>(32u)), var_3.d, vec3<u32>(1u, _wgslsmith_clamp_u32(var_2.b.x, var_2.d.x | 14265u, 1u), ~(~0u))));
}

