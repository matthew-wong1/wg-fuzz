struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, true, true, false, false, true, true, true, false, false, true, false, true, true, true, false, true, false, false, false, true, false, true, true, true, false, false, false, true, false, true, false);

var<private> global1: vec4<f32> = vec4<f32>(-472f, -176f, 398f, 242f);

var<private> global2: array<f32, 24> = array<f32, 24>(-1000f, 1000f, -2443f, -2317f, 910f, 488f, -711f, -139f, 295f, -1512f, -2044f, -1413f, -152f, 1087f, 1277f, 1534f, -547f, -308f, -1299f, 277f, 306f, 664f, -859f, 1000f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(vec4<u32>(22636u ^ u_input.a, max(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 17801u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), 4294967295u), 4294967295u, 58271u), _wgslsmith_f_op_vec2_f32(-global1.wz), all(vec2<bool>(false, (u_input.b <= u_input.b) || (true != global0[_wgslsmith_index_u32(u_input.a, 32u)]))), _wgslsmith_add_u32(4294967295u, ~u_input.a ^ ~(~u_input.a)));
    let var_1 = var_0;
    let var_2 = Struct_2(Struct_1(var_1.a, global1.zx, false, abs(90825u)), vec3<bool>(!var_0.c, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1.d, var_0.a.x), 32u)], var_0.c), vec4<i32>(select(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -21060i, u_input.b), vec3<i32>(-39782i, u_input.b, u_input.b)), vec3<i32>(u_input.b, u_input.b, 1i)), u_input.b, any(vec2<bool>(false, var_0.c))), 1i, u_input.b, -3256i >> (var_1.d % 32u)), Struct_1(abs(~var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yy) + var_0.b) + vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(7989u, 24u)] * global1.x), -2094f)), all(select(vec4<bool>(var_0.c, global0[_wgslsmith_index_u32(4294967295u, 32u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(9403u, 32u)], var_1.c, var_1.c, var_1.c), false)), firstTrailingBit(max(abs(var_0.a.x), u_input.a))), -_wgslsmith_mult_vec2_i32(min(vec2<i32>(u_input.b, u_input.b) << (var_0.a.zw % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-1i, u_input.b))), vec2<i32>(u_input.b, _wgslsmith_div_i32(-1i, u_input.b))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -551f))), -924f));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1655f)) - _wgslsmith_f_op_f32(var_1.b.x - -497f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2337f - -109f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2163f + -1707f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.b.x, global2[_wgslsmith_index_u32(66616u, 24u)])), 690f, global1.x, var_1.b.x)) * vec4<f32>(-814f, global1.x, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(abs(var_1.d), 24u)])), _wgslsmith_div_f32(1147f, var_1.b.x))));
    return 126f;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = arg_0.d;
    let var_1 = arg_2;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-757f, var_0.b.x), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-global1.x), var_0.b.x) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1325f, 545f, -1270f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.b.x, global2[_wgslsmith_index_u32(1u, 24u)], 1000f, var_0.b.x) * vec4<f32>(1204f, 124f, var_0.b.x, global1.x)), arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(reverseBits(4294967295u), 24u)], -2119f, 1079f, var_1.b.x) * vec4<f32>(var_0.b.x, 1f, arg_2.b.x, _wgslsmith_f_op_f32(-var_1.b.x)))));
    var var_2 = var_1.a.yw;
    global0 = array<bool, 32>();
    return _wgslsmith_mult_vec2_u32(var_1.a.yz, abs(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(23657u, arg_0.a.d, 0u, var_2.x), vec4<u32>(99020u, var_0.d, arg_2.a.x, var_1.d)), _wgslsmith_div_u32(var_1.a.x, abs(arg_2.a.x)))));
}

fn func_1() -> u32 {
    return ~(~(~_wgslsmith_dot_vec2_u32(func_2(Struct_2(Struct_1(vec4<u32>(47257u, u_input.a, u_input.a, 16199u), global1.yx, global0[_wgslsmith_index_u32(u_input.a, 32u)], 24616u), vec3<bool>(false, global0[_wgslsmith_index_u32(48280u, 32u)], true), vec4<i32>(-2147483647i, u_input.b, 1i, -2147483647i), Struct_1(vec4<u32>(21527u, u_input.a, u_input.a, 29509u), vec2<f32>(global1.x, global1.x), false, u_input.a), vec2<i32>(u_input.b, u_input.b)), vec4<bool>(false, false, true, true), Struct_1(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], 282f), false, u_input.a)), func_2(Struct_2(Struct_1(vec4<u32>(0u, 1u, 55747u, u_input.a), vec2<f32>(255f, 1968f), true, u_input.a), vec3<bool>(true, false, false), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b), Struct_1(vec4<u32>(u_input.a, 22384u, 0u, u_input.a), vec2<f32>(global2[_wgslsmith_index_u32(22228u, 24u)], -142f), false, u_input.a), vec2<i32>(57139i, u_input.b)), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 32u)], true, global0[_wgslsmith_index_u32(1u, 32u)]), Struct_1(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec2<f32>(global1.x, 1255f), global0[_wgslsmith_index_u32(0u, 32u)], 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    global2 = array<f32, 24>();
    let var_0 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -64858i), vec2<i32>(u_input.b, u_input.b), vec2<i32>(810i, u_input.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))) * global2[_wgslsmith_index_u32(func_1(), 24u)]), _wgslsmith_mod_u32(~1u, firstLeadingBit(u_input.a)));
}

