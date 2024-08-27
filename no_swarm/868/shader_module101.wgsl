struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 30>;

var<private> global3: i32 = -7223i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    global3 = abs(1i);
    let var_0 = vec4<i32>(~(~_wgslsmith_mult_i32(u_input.a.x, -22900i) | -9695i), _wgslsmith_div_i32(u_input.a.x, ~reverseBits(~u_input.a.x)), min(-30937i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 17019i)) | select(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -82249i), vec4<i32>(u_input.a.x, -46010i, u_input.a.x, u_input.a.x), false), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -13392i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 34486i))))), _wgslsmith_sub_i32(u_input.a.x, min(~(~(-8535i)), ~(-10831i) ^ ~u_input.a.x)));
    let var_1 = u_input.a.x;
    var var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-786f, -1356f)))) - _wgslsmith_f_op_f32(-1000f - -410f))), 1000f, _wgslsmith_f_op_f32(788f + -125f));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(sign(790f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-266f, _wgslsmith_div_f32(-609f, var_2.x))), -286f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = ~(~u_input.a.x);
    let var_1 = vec3<i32>(u_input.a.x, var_0, -min(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(var_0, var_0, -2147483647i))));
    let var_2 = arg_1;
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(global1.b.x, 31u)], ~_wgslsmith_mod_vec4_u32(arg_1.b, ~arg_1.b >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, global1.b.x, 1u), arg_1.b) % vec4<u32>(32u))));
    global2 = array<Struct_1, 30>();
    return min(10005i, -(i32(-1i) * -471i)) ^ _wgslsmith_div_i32(reverseBits(18007i), ~(~_wgslsmith_div_i32(13820i, var_0)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global3 = 16121i;
    var var_0 = vec4<i32>(u_input.a.x, -5275i, func_4(vec4<f32>(-756f, _wgslsmith_div_f32(-787f, _wgslsmith_f_op_f32(1666f + 773f)), -538f, _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(~arg_0.b.x, 30u)], global1.b))), arg_1), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(select(~0i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), true), 1i)));
    var var_1 = vec2<f32>(-176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1520f, -118f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f))))));
    var_0 = -_wgslsmith_mod_vec4_i32(min(~(~vec4<i32>(26134i, u_input.a.x, 32181i, 31353i)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(29219i, u_input.a.x, var_0.x, 7404i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), vec4<i32>(39799i, u_input.a.x, -13279i, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 4372i, u_input.a.x, var_0.x), vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, 0i), vec4<i32>(56937i, -6552i, u_input.a.x, -2147483647i)))), vec4<i32>((var_0.x | var_0.x) >> (~0u % 32u), 1i, -2147483647i, _wgslsmith_mod_i32(abs(var_0.x), -u_input.a.x)));
    var var_2 = arg_0;
    return Struct_1(false, vec4<u32>(1u, 1u, ~4294967295u, 0u));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    global0 = array<bool, 31>();
    var var_0 = func_2(global2[_wgslsmith_index_u32(abs(~(~global1.b.x)), 30u)], global2[_wgslsmith_index_u32((_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global1.b.yw, global1.b.xz), _wgslsmith_clamp_u32(0u, global1.b.x, 1u)) & global1.b.x) << (abs(~(868u ^ global1.b.x)) % 32u), 30u)], !select(!select(vec2<bool>(global1.a, global1.a), vec2<bool>(global1.a, global1.a), false), !select(vec2<bool>(false, true), vec2<bool>(global1.a, true), vec2<bool>(global1.a, global0[_wgslsmith_index_u32(global1.b.x, 31u)])), true));
    var var_1 = global1.b.yw;
    global2 = array<Struct_1, 30>();
    var var_2 = arg_0;
    return var_2.x;
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, 313f)))) * vec2<f32>(arg_1, _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(1u, 30u)], vec4<u32>(arg_0, global1.b.x, arg_0, global1.b.x))))))), max(0i, -firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-25980i, -1i), vec2<i32>(u_input.a.x, 22094i))))));
    let var_1 = ~vec3<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x | _wgslsmith_mod_i32(1709i, -1i)), u_input.a.x, ~(~u_input.a.x));
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f));
    let var_4 = global1.b.wz;
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global1.b, ~firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 1u, 57798u))), reverseBits(global1.b)), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(global1.b.x, ~global1.b.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -492f)) - _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(func_1(vec2<f32>(603f, -2878f), u_input.a.x)), global1.a))));
    global2 = array<Struct_1, 30>();
    let var_1 = func_5(_wgslsmith_div_u32(countOneBits(abs(4294967295u) | var_0.b.x), max(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(floor(283f)));
    let var_2 = var_1;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.x, 3940u), 30u)];
    global1 = func_5(54567u, -105f);
    let x = u_input.a;
    s_output = StorageBuffer(select(min(abs(vec4<i32>(u_input.a.x, 12976i, 0i, 1i)), vec4<i32>(55689i, _wgslsmith_mult_i32(-9432i, -2200i), -u_input.a.x, 2147483647i)), -_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -41327i)), vec4<bool>(func_2(Struct_1(true, var_2.b), Struct_1(var_2.a, var_3.b), !vec2<bool>(var_3.a, true)).a, !any(vec3<bool>(true, global0[_wgslsmith_index_u32(var_3.b.x, 31u)], false)), !select(true, true, global0[_wgslsmith_index_u32(var_0.b.x, 31u)]), any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 31u)], false, var_3.a, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, var_3.a, false))))), -(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(84672i, u_input.a.x)) ^ abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-14958i, -1i)))), vec3<u32>(42023u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, var_2.b.x), var_3.b.x >> (10876u % 32u), func_2(Struct_1(var_2.a, global1.b), Struct_1(var_0.a, vec4<u32>(global1.b.x, var_2.b.x, var_3.b.x, var_0.b.x)), vec2<bool>(false, var_2.a)).b.x), var_2.b.x, func_2(func_2(Struct_1(global0[_wgslsmith_index_u32(var_3.b.x, 31u)], global1.b), Struct_1(true, global1.b), vec2<bool>(false, false)), Struct_1(false, var_0.b), !vec2<bool>(var_1.a, false)).b.x), _wgslsmith_mod_u32(1u, ~11601u | ~var_1.b.x)), max(vec3<u32>(var_1.b.x, 4294967295u, func_5(~4294967295u, 862f).b.x), vec3<u32>(firstTrailingBit(reverseBits(var_3.b.x)), abs(101033u), 0u)));
}

