struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1257f;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-1281f, 578f, -1669f, -1000f), vec3<u32>(4294967295u, 0u, 4294967295u), 0u, vec4<i32>(9455i, -34772i, i32(-2147483648), -1i), vec2<f32>(-1200f, 141f));

var<private> global3: vec3<u32> = vec3<u32>(73029u, 18511u, 61266u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = all(vec3<bool>(false, _wgslsmith_f_op_f32(-global2.e.x) == arg_0.e.x, all(!global1[_wgslsmith_index_u32(global2.c, 12u)]))) & true;
    let var_1 = ~countOneBits(arg_0.b);
    var var_2 = Struct_1(global2.a, arg_0.b, ~arg_0.b.x, vec4<i32>(max(-2147483647i ^ u_input.c, global2.d.x), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(global2.d.x, 16430i)), _wgslsmith_div_vec2_i32(arg_0.d.yz, _wgslsmith_div_vec2_i32(vec2<i32>(global2.d.x, 0i), global2.d.wz))), abs(1i) ^ arg_0.d.x, firstTrailingBit(~reverseBits(arg_0.d.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.ww * vec2<f32>(-274f, -1000f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1168f, -120f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global2.e)) + global2.a.wy), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), !global1[_wgslsmith_index_u32(global2.c, 12u)])))));
    var var_3 = arg_0.b;
    let var_4 = arg_0;
    return global2.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = arg_1;
    let var_1 = vec3<bool>(any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), true, false);
    global2 = var_0;
    global3 = ~(~vec3<u32>(arg_3.x, func_3(var_0), global2.b.x));
    var var_2 = global2.e.x;
    return true;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<f32> {
    global0 = global2.e.x;
    var var_0 = Struct_1(global2.a, abs(global2.b), 0u, min(global2.d, vec4<i32>(_wgslsmith_dot_vec4_i32(abs(global2.d), vec4<i32>(-23443i, -1i, u_input.c, 0i)), reverseBits(_wgslsmith_add_i32(u_input.d.x, 5795i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.d.x), vec2<i32>(u_input.c, -11286i)), ~u_input.d.x)), vec2<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), global2.a.x));
    var var_1 = global2.d.x;
    var_1 = 0i;
    var var_2 = !vec3<bool>(arg_1.x, any(select(select(global1[_wgslsmith_index_u32(arg_2.x, 12u)], vec2<bool>(arg_3.x, true), arg_1.x), arg_3.xx, arg_3.x)), false);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-341f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1277f, _wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x)));
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<bool>, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_4(!(26757u < _wgslsmith_clamp_u32(23827u, 0u, global3.x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~(~firstTrailingBit(vec2<u32>(u_input.a, 1u))), !vec3<bool>(all(vec4<bool>(false, false, false, false)), true, func_2(Struct_1(vec4<f32>(-1152f, 436f, -1370f, global2.e.x), vec3<u32>(global3.x, 5012u, 33202u), global2.c, global2.d, global2.a.xx), Struct_1(global2.a, global2.b, global3.x, global2.d, vec2<f32>(-774f, 892f)), Struct_1(global2.a, global2.b, 10584u, global2.d, global2.a.ww), vec2<u32>(u_input.a, global3.x)))))));
    var var_1 = 12659i;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.e.x, global2.e.x, -1143f), global2.a.zxy) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, global2.a.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.e.x, 702f))))))));
    var_1 = -19455i;
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, -975f)), _wgslsmith_f_op_f32(var_0.x + 1281f), _wgslsmith_f_op_f32(var_0.x * var_0.x), -1520f)))), abs(global2.b) << (abs(vec3<u32>(7030u, global3.x, _wgslsmith_clamp_u32(4294967295u, 25565u, u_input.b.x))) % vec3<u32>(32u)), _wgslsmith_mult_u32(~countOneBits(44756u), func_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, global2.a.x, -866f, var_2.x), global2.a), _wgslsmith_mult_vec3_u32(vec3<u32>(50648u, global2.b.x, 99162u), global2.b), 1023u, _wgslsmith_add_vec4_i32(vec4<i32>(10829i, -10767i, 2147483647i, 1i), global2.d), _wgslsmith_div_vec2_f32(var_2.yz, vec2<f32>(var_0.x, 1408f))))), reverseBits(_wgslsmith_div_vec4_i32(global2.d, vec4<i32>(u_input.d.x, global2.d.x, -23225i, u_input.c) << (vec4<u32>(0u, 4294967295u, u_input.b.x, global3.x) % vec4<u32>(32u)))) | firstTrailingBit(_wgslsmith_mult_vec4_i32(-global2.d, max(global2.d, global2.d))), vec2<f32>(global2.e.x, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(57773u, _wgslsmith_sub_u32(u_input.b.x, 9403u))), global2.b.x) | u_input.b;
    global3 = ~(~global2.b);
    let var_1 = func_1();
    global0 = 536f;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -func_1().d.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(-1644f)), -1223f, global2.a.x, var_1.a.x), _wgslsmith_f_op_vec4_f32(trunc(func_1().a)))), var_1.a.x, _wgslsmith_add_vec4_i32(firstTrailingBit(~(-vec4<i32>(u_input.c, -1i, var_1.d.x, u_input.d.x))), vec4<i32>(global2.d.x, reverseBits(10440i), abs(var_1.d.x), var_1.d.x)), (global2.b | global2.b) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, global3.x, u_input.a), max(vec3<u32>(u_input.a, 1u, 91750u), var_1.b)) & ~(~vec3<u32>(global2.b.x, var_1.b.x, global2.c))) % vec3<u32>(32u)));
}

