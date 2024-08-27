struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(8878u, 4294967295u, 0u), vec3<u32>(106049u, 98871u, 26310u), vec3<u32>(23431u, 0u, 1u), vec3<u32>(41952u, 14657u, 4294967295u), vec3<u32>(45330u, 97220u, 4294967295u), vec3<u32>(0u, 1u, 20000u), vec3<u32>(26241u, 28030u, 20429u), vec3<u32>(3659u, 1u, 0u));

var<private> global1: array<u32, 30> = array<u32, 30>(4294967295u, 39357u, 4294967295u, 6804u, 1u, 32208u, 4294967295u, 69989u, 4294967295u, 4294967295u, 4294967295u, 0u, 0u, 1u, 1u, 0u, 18444u, 13820u, 26381u, 4294967295u, 17879u, 5912u, 4294967295u, 4294967295u, 4294967295u, 15374u, 4294967295u, 48406u, 71631u, 32765u);

var<private> global2: vec4<i32> = vec4<i32>(0i, -48597i, 24490i, i32(-2147483648));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32((global2.zyw >> (vec3<u32>(36820u, u_input.b.x, 10510u) % vec3<u32>(32u))) ^ vec3<i32>(firstLeadingBit(u_input.a.x), _wgslsmith_div_i32(u_input.a.x, 2147483647i), -2147483647i), -vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-38355i, 393i, -47280i, -49123i)), ~(-1i), 1i << (0u % 32u))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1127f - -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(884f)) - -520f))));
    let var_1 = ~(-global2.x);
    let var_2 = ~(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(4294967295u, 7828u)) & (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35885u, 30u)], 30u)] << (u_input.b.x % 32u)));
    let var_3 = !vec4<bool>(arg_0, arg_0, arg_0, arg_0);
    var var_4 = Struct_1(global2.yzw, -910f);
    return vec3<bool>(false, var_4.b == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-377f)) * _wgslsmith_f_op_f32(var_0.b - var_0.b)), ~(countOneBits(14110u) ^ ~global1[_wgslsmith_index_u32(var_2, 30u)]) < var_2);
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1339f, arg_3, _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(step(336f, arg_3)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_3, arg_3)))), _wgslsmith_f_op_f32(f32(-1f) * -370f), arg_3))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) * _wgslsmith_f_op_f32(sign(-532f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), arg_3, arg_0 < 1u))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(947f, arg_3, arg_3), vec3<f32>(arg_3, arg_3, -565f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1035f, arg_3, arg_3))))))));
    global0 = array<vec3<u32>, 9>();
    var var_1 = 18056u ^ _wgslsmith_dot_vec2_u32(u_input.b.xz, abs(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)]))));
    var var_2 = Struct_1(global2.yyw, arg_3);
    global0 = array<vec3<u32>, 9>();
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = -u_input.a;
    var var_0 = _wgslsmith_add_vec2_u32(u_input.b.zy, vec2<u32>(0u, ~u_input.b.x ^ global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)]) | u_input.b.zz);
    var var_1 = !all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), arg_0.a.x == -6828i)) && true;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_u32(var_0.x, global1[_wgslsmith_index_u32(14971u, 30u)]), func_2(false), vec4<bool>(true, true, false, false), _wgslsmith_f_op_f32(trunc(arg_1.b)))), _wgslsmith_f_op_f32(sign(arg_1.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    global1 = array<u32, 30>();
    return Struct_1(arg_1.a, 642f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 30>();
    let var_0 = func_1(Struct_1(~(~abs(u_input.a.wzx)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(507f)) - _wgslsmith_f_op_f32(f32(-1f) * -1951f)))), Struct_1(global2.xxw, -1480f));
    global0 = array<vec3<u32>, 9>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -403f)), vec2<f32>(792f, 403f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1594f, 879f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, 553f)), _wgslsmith_f_op_f32(f32(-1f) * -1187f))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b))), var_0.b)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) - vec2<f32>(var_1.x, var_0.b))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-785f, -1403f)), vec2<f32>(-582f, 419f))))));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -1245f), _wgslsmith_dot_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, 4294967295u), vec4<u32>(23474u, 1u, global1[_wgslsmith_index_u32(28441u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)])) & (vec4<u32>(29533u, 0u, 39332u, global1[_wgslsmith_index_u32(0u, 30u)]) ^ vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 26062u, 52642u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)]))), ~select(abs(vec4<u32>(u_input.b.x, 14044u, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)])), firstLeadingBit(vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 4294967295u, 28551u)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), vec4<i32>(2147483647i, func_1(func_1(func_1(var_0, Struct_1(vec3<i32>(40277i, var_3.a.x, -28912i), -1216f)), func_1(Struct_1(global2.zzw, var_1.x), Struct_1(vec3<i32>(global2.x, -13115i, u_input.a.x), var_3.b))), var_0).a.x, -2147483647i, (abs(u_input.a.x) << (~global1[_wgslsmith_index_u32(35786u, 30u)] % 32u)) & _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, var_0.a.x), vec2<i32>(u_input.a.x, 2147483647i)), vec2<i32>(var_3.a.x, var_3.a.x) ^ var_3.a.zy)), _wgslsmith_sub_vec3_i32(var_3.a, var_0.a), 4294967295u);
}

