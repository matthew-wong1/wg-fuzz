struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(0u, 23705u), 1i, vec2<u32>(4294967295u, 50334u), Struct_1(vec4<i32>(15303i, 0i, 0i, 0i), vec3<u32>(116192u, 0u, 37110u), 14184i, vec3<f32>(-681f, 643f, -121f), 4294967295u));

var<private> global1: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-509f, 1000f, 1159f), vec3<f32>(735f, 1419f, -1140f), vec3<f32>(2186f, 216f, -691f), vec3<f32>(585f, 1263f, 562f), vec3<f32>(227f, 794f, -984f), vec3<f32>(-1192f, -191f, 729f), vec3<f32>(829f, -108f, 531f), vec3<f32>(1221f, -300f, 963f), vec3<f32>(-1086f, 1000f, -1055f), vec3<f32>(-1000f, 108f, 657f), vec3<f32>(-253f, -1000f, -1051f), vec3<f32>(-453f, 1000f, 1033f), vec3<f32>(1355f, -1000f, -1662f), vec3<f32>(-1830f, -770f, 122f), vec3<f32>(198f, 633f, -1097f), vec3<f32>(-226f, -533f, 1192f), vec3<f32>(1000f, -860f, 133f), vec3<f32>(-1300f, -1212f, 894f), vec3<f32>(215f, 1307f, -1461f), vec3<f32>(-1711f, 263f, -804f), vec3<f32>(591f, 1059f, 1235f), vec3<f32>(-1655f, 814f, -456f), vec3<f32>(327f, 271f, 143f), vec3<f32>(1221f, -746f, 727f), vec3<f32>(780f, -1000f, 1000f), vec3<f32>(834f, -493f, 560f));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(5341i, -1i, 1i, 2147483647i), vec3<u32>(4294967295u, 20703u, 1u), 6969i, vec3<f32>(-517f, 156f, -948f), 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global2.d.zx)) * vec2<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(min(global0.d.d.x, -655f))));
    var var_1 = !(!select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    let var_2 = global2.a.wyw;
    let var_3 = any(!vec2<bool>(!var_1.x, all(vec3<bool>(false, true, true)))) && !any(!(!vec3<bool>(var_1.x, false, var_1.x)));
    var var_4 = ~4294967295u;
    return global0.d;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    let var_0 = global0.d.d.x;
    global1 = array<vec3<f32>, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(global2.d.xy));
    let var_2 = -global0.d.a;
    let var_3 = 55626u;
    return select(true, !(!select(true, true, select(true, true, true))), false);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    let var_0 = -373f;
    global1 = array<vec3<f32>, 26>();
    global1 = array<vec3<f32>, 26>();
    let var_1 = _wgslsmith_add_u32(global2.b.x, select(abs(1u), global2.b.x, true) >> (1u % 32u));
    global1 = array<vec3<f32>, 26>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.c, 4128i, global0.a, Struct_1(_wgslsmith_sub_vec4_i32(global2.a, global0.d.a), _wgslsmith_div_vec3_u32(min(vec3<u32>(10306u, 0u, 1991u), u_input.b) >> ((global2.b ^ vec3<u32>(global2.e, u_input.b.x, global2.e)) % vec3<u32>(32u)), ~(global2.b | vec3<u32>(global0.a.x, 814u, 14375u))), ~_wgslsmith_mult_i32(-11512i, u_input.a.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(401f, -1087f, global0.d.d.x)))), global1[_wgslsmith_index_u32(~4294967295u, 26u)])), 11296u));
    var_0 = Struct_2(~firstLeadingBit(vec2<u32>(~1u, 34383u)), _wgslsmith_div_i32(var_0.d.c, _wgslsmith_dot_vec2_i32(~vec2<i32>(12342i, u_input.a.x), global2.a.wx) >> (~global0.d.e % 32u)), global0.c, func_1(abs(~(-1i))));
    let var_1 = global2.d.x;
    var var_2 = !select(vec4<bool>(select(false, all(vec2<bool>(true, false)), true), true, func_2(_wgslsmith_clamp_vec3_u32(var_0.d.b, vec3<u32>(var_0.d.e, global0.a.x, 53027u), global0.d.b)), !func_3(Struct_2(u_input.b.yz, 0i, var_0.c, Struct_1(vec4<i32>(-2147483647i, -1i, -2147483647i, 16198i), var_0.d.b, u_input.a.x, var_0.d.d, u_input.b.x)), 33336i)), !vec4<bool>(true, all(vec3<bool>(true, false, true)), false, func_3(Struct_2(vec2<u32>(global0.a.x, global0.a.x), global2.c, vec2<u32>(var_0.a.x, global2.b.x), Struct_1(global0.d.a, u_input.b, global0.d.a.x, var_0.d.d, global2.e)), 2147483647i)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false)));
    global1 = array<vec3<f32>, 26>();
    let var_3 = _wgslsmith_f_op_vec3_f32(global0.d.d - _wgslsmith_f_op_vec3_f32(-vec3<f32>(451f, -975f, _wgslsmith_f_op_f32(round(-670f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~1i), u_input.b, min(~var_0.b, var_0.d.a.x));
}

