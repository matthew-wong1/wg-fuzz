struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

var<private> global1: array<f32, 10> = array<f32, 10>(1188f, -1200f, 305f, 369f, 718f, 214f, -1592f, -384f, 1243f, -191f);

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(966f, -567f), vec2<f32>(-997f, -194f), vec2<f32>(457f, 1301f), vec2<f32>(-674f, 703f), vec2<f32>(-1090f, 726f), vec2<f32>(1000f, -1265f), vec2<f32>(158f, 2491f), vec2<f32>(-147f, 742f), vec2<f32>(-606f, -964f), vec2<f32>(-2219f, 1000f), vec2<f32>(-1243f, 978f), vec2<f32>(-402f, -424f), vec2<f32>(-921f, -1227f));

var<private> global3: Struct_3 = Struct_3(Struct_1(-6515i, -1782f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = select(vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), true)), true && (max(global3.a.a, 1i) < _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.a, global3.a.a), vec2<i32>(42758i, u_input.a.x)))), !select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(false, !(3147i < min(global3.a.a, global3.a.a)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), all(vec2<bool>(true, true))))));
    global1 = array<f32, 10>();
    global0 = array<vec3<i32>, 4>();
    var var_1 = 37815i;
    let var_2 = ~_wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(4683u, 1u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u));
    return vec4<bool>(false, true, var_0.x, ~abs(48820u) <= var_2);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = func_3();
    global0 = array<vec3<i32>, 4>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-global3.a.b)));
    global3 = Struct_3(Struct_1(_wgslsmith_sub_i32(-(~u_input.b), 1i), global1[_wgslsmith_index_u32(~(~4294967295u), 10u)]));
    var_0 = vec4<bool>(any(vec3<bool>(!var_0.x, all(var_0.xw), false)), true, (1u | select(~30954u, ~131809u, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))) <= ~(~1u), !(all(func_3().ww) && true));
    return ~vec3<i32>(0i, global3.a.a & global3.a.a, -30403i);
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.yx, u_input.a.zz, arg_1.yy), vec2<i32>(u_input.b, u_input.a.x), ~u_input.a.yx), reverseBits(-vec2<i32>(1i, 2147483647i))), arg_2.a.b));
    global0 = array<vec3<i32>, 4>();
    return Struct_1(-2147483647i ^ var_0.a.a, -322f);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = arg_0.x;
    var var_1 = (!all(vec2<bool>(var_0, false)) & var_0) && (arg_0.x == true);
    var var_2 = Struct_1(-51135i | min(~_wgslsmith_add_i32(-1i, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.yx)), 1216f);
    let var_3 = Struct_2(func_4(abs(1u), func_2(global2[_wgslsmith_index_u32(42703u, 13u)], global2[_wgslsmith_index_u32(~1u, 13u)]), Struct_2(global3.a, _wgslsmith_f_op_f32(-global3.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f)))));
    let var_4 = arg_0.xz;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(45u, _wgslsmith_mult_u32(select(10645u, 47626u, false), ~19044u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 27748u), select(vec2<u32>(0u, 37207u), vec2<u32>(4294967295u, 1u), true))), vec2<u32>(1u, 1u) & (firstTrailingBit(~vec2<u32>(33834u, 0u)) << (select(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 65790u), vec2<u32>(0u, 23448u)), ~vec2<u32>(0u, 14074u), var_4) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(min(vec2<u32>(~(~37628u), ~0u & func_1(vec4<bool>(true, false, false, false))), ~vec2<u32>(1u, ~0u)));
    let var_1 = Struct_2(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1063f - -469f)))));
    var var_2 = select((_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, var_1.a.a, global3.a.a, var_1.a.a)), -vec4<i32>(u_input.a.x, global3.a.a, -2443i, -1i), abs(vec4<i32>(1i, -48933i, global3.a.a, -21636i))) >> (select(countOneBits(vec4<u32>(1u, var_0.x, var_0.x, 25856u)), vec4<u32>(66760u, 1u, var_0.x, var_0.x) | vec4<u32>(var_0.x, 10390u, 4294967295u, var_0.x), vec4<bool>(false, true, false, true)) % vec4<u32>(32u))) & countOneBits(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(global3.a.a, -1i, global3.a.a, var_1.a.a), vec4<i32>(-27299i, u_input.a.x, u_input.b, 22230i)))), ~reverseBits(countOneBits(~vec4<i32>(-1i, 2147483647i, u_input.a.x, global3.a.a))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    let var_3 = firstTrailingBit(-reverseBits(reverseBits(_wgslsmith_dot_vec2_i32(var_2.zw, var_2.zx))));
    var_2 = abs(min(-vec4<i32>(_wgslsmith_dot_vec3_i32(var_2.wxy, u_input.a), _wgslsmith_div_i32(-47023i, u_input.a.x), -2147483647i, 1i), _wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, var_1.a.a, -22742i, u_input.b), vec4<i32>(var_3, var_1.a.a, var_3, 2147483647i), vec4<bool>(true, true, false, true)) >> (~vec4<u32>(26061u, var_0.x, var_0.x, 1u) % vec4<u32>(32u)), -firstLeadingBit(vec4<i32>(-8663i, 1i, var_3, var_3)))));
    let var_4 = Struct_3(Struct_1(_wgslsmith_clamp_i32(~(-2147483647i), -2147483647i, _wgslsmith_mod_i32(5246i, 12998i)), -384f));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3.a.b, 1000f)), _wgslsmith_f_op_f32(round(-427f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f * -988f) - global3.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, vec4<i32>(~global3.a.a, abs(func_2(global2[_wgslsmith_index_u32(~27531u, 13u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(var_0.x, var_0.x)), 13u)]).x), 2147483647i, func_2(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(abs(40670u), 13u)]), vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 10u)]), _wgslsmith_f_op_f32(-var_1.a.b))).x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(279f, _wgslsmith_f_op_f32(-309f + -914f))), 1610f)), var_4.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(ceil(-213f)), _wgslsmith_f_op_f32(-var_4.a.b), _wgslsmith_f_op_f32(var_1.a.b - var_4.a.b), _wgslsmith_f_op_f32(-var_1.b)), vec4<f32>(func_4(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 4u)], var_1).b, _wgslsmith_f_op_f32(-var_5), var_5, global1[_wgslsmith_index_u32(25662u, 10u)])))));
}

