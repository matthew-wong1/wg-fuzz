struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global2.b.x, ~(~arg_0.b.x), ~firstTrailingBit(4294967295u), global2.b.x)), ~_wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, u_input.b, arg_0.b.x, 1u) << (vec4<u32>(4294967295u, global2.b.x, 33793u, arg_0.b.x) % vec4<u32>(32u))), ~(~vec4<u32>(1u, 4294967295u, 3569u, arg_0.b.x))));
    var var_1 = var_0;
    global1 = array<vec4<bool>, 12>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-672f, -437f));
    let var_3 = false;
    return arg_0.b.x;
}

fn func_3() -> vec4<bool> {
    global0 = global2.a.x;
    var var_0 = Struct_1(global2.a, global2.b, select(global2.c, u_input.d, false) ^ min(-2147483647i, _wgslsmith_add_i32(-global2.c, u_input.a.x << (4294967295u % 32u))));
    global1 = array<vec4<bool>, 12>();
    let var_1 = _wgslsmith_mult_vec4_i32(abs(countOneBits(_wgslsmith_div_vec4_i32(u_input.e, ~vec4<i32>(0i, 1i, global2.c, 1i)))), u_input.a);
    let var_2 = ~min(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i) | vec2<i32>(global2.c, 2147483647i), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(var_1.xz, vec2<i32>(var_0.c, var_1.x)), u_input.a.wz)));
    return vec4<bool>(true, any(select(!vec2<bool>(var_0.a.x, var_0.a.x), select(!var_0.a.xw, select(vec2<bool>(false, true), vec2<bool>(true, var_0.a.x), var_0.a.x), select(var_0.a.yy, vec2<bool>(var_0.a.x, false), var_0.a.xy)), vec2<bool>(false, var_0.a.x | true))), var_0.a.x, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1434f)), _wgslsmith_f_op_f32(523f + 430f)) >= _wgslsmith_div_f32(-470f, _wgslsmith_div_f32(-270f, -1206f))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(func_3(), ~(~(_wgslsmith_sub_vec3_u32(global2.b, vec3<u32>(global2.b.x, u_input.b, global2.b.x)) ^ (global2.b ^ global2.b))), global2.c);
    let var_1 = global2.a.ww;
    let var_2 = _wgslsmith_add_i32(-u_input.e.x, countOneBits(global2.c));
    global1 = array<vec4<bool>, 12>();
    let var_3 = ~u_input.a;
    return Struct_1(global2.a, vec3<u32>(~(~4294967295u ^ _wgslsmith_mod_u32(1u, u_input.b)), _wgslsmith_dot_vec3_u32(var_0.b, firstTrailingBit(select(vec3<u32>(0u, 17481u, 4294967295u), vec3<u32>(1u, 0u, global2.b.x), vec3<bool>(var_0.a.x, true, var_0.a.x)))), ~(~_wgslsmith_dot_vec2_u32(global2.b.xx, vec2<u32>(global2.b.x, 1u)))), ~var_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = func_2().a;
    let var_1 = _wgslsmith_f_op_f32(-157f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1646f)));
    let var_2 = arg_0;
    let var_3 = func_3();
    let var_4 = func_2().b;
    return ~70795u;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(global2.a, global2.b, abs(min(-30850i, -1i)));
    let var_1 = Struct_1(select(global2.a, select(global1[_wgslsmith_index_u32(func_4(Struct_1(vec4<bool>(global2.a.x, false, global2.a.x, global2.a.x), var_0.b, -9285i), -arg_2.x), 12u)], func_3(), !vec4<bool>(false, arg_1.x, false, false)), vec4<bool>(true, any(!vec2<bool>(arg_1.x, var_0.a.x)), any(!vec3<bool>(arg_1.x, var_0.a.x, var_0.a.x)), true || arg_1.x)), _wgslsmith_mult_vec3_u32(global2.b, vec3<u32>(global2.b.x, ~75110u, 1u)) | vec3<u32>(~1u, var_0.b.x, _wgslsmith_sub_u32(56739u, 1u)), (65470i << (var_0.b.x % 32u)) << (arg_0 % 32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(147f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(950f, 953f, var_0.a.x))))))));
    var var_3 = var_1;
    global0 = true;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -_wgslsmith_mult_i32(global2.c, ~u_input.a.x);
    var var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, 66002u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, global2.b.x)) ^ ~vec4<u32>(42739u, global2.b.x, global2.b.x, 1u), ~vec4<u32>(global2.b.x, u_input.b, 0u >> (u_input.b % 32u), max(4294967295u, 61826u))), ~(~(~vec4<u32>(u_input.b, 73705u, 26223u, u_input.b))) | _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, global2.b.x)) & vec4<u32>(u_input.b, global2.b.x, 0u, global2.b.x), vec4<u32>(u_input.b | u_input.b, max(14394u, 12721u), u_input.b, 57555u)));
    global0 = any(select(!select(!vec3<bool>(false, global2.a.x, true), !vec3<bool>(true, true, global2.a.x), global2.a.wzz), global2.a.www, select(vec3<bool>(true, true, true), !global2.a.wwx, global2.a.yxz)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1776f, 1311f)));
    var var_3 = func_5(_wgslsmith_mult_u32(firstLeadingBit(func_1(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 12u)], vec3<u32>(86030u, var_1.x, 4294967295u), -12156i)) >> (global2.b.x % 32u)), func_4(func_2(), firstLeadingBit(_wgslsmith_mod_i32(var_0, global2.c)))), global2.a.wx, ~firstLeadingBit(vec2<i32>(26620i, u_input.c)));
    let var_4 = Struct_1(vec4<bool>(global2.a.x, false, true, true), vec3<u32>(var_3.b.x << (96925u % 32u), countOneBits(33945u) >> (var_3.b.x % 32u), func_1(func_5(~4294967295u, func_2().a.xz, u_input.a.wz))), ~0i);
    global1 = array<vec4<bool>, 12>();
    let var_5 = ~(-48163i);
    var var_6 = func_5(8795u, select(var_3.a.yy, !select(func_3().yw, var_4.a.yx, any(global2.a.xyw)), var_4.a.xw), vec2<i32>(_wgslsmith_add_i32(max(u_input.a.x, _wgslsmith_mod_i32(var_0, -36081i)), _wgslsmith_mult_i32(var_3.c, ~u_input.e.x)), min(_wgslsmith_mod_i32(_wgslsmith_div_i32(17285i, var_4.c), -14544i), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.xy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2))), -918f));
}

