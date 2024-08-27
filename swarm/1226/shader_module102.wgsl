struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), 1000f, 1u, 507f, 0i);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(2147483647i, -341f, 4294967295u, -855f, -38562i), Struct_1(-13011i, -866f, 2653u, 453f, 2147483647i), Struct_1(1i, 1181f, 34057u, 1475f, -16342i), Struct_1(37280i, 512f, 25993u, 868f, 7776i), Struct_1(2147483647i, -1000f, 0u, -927f, 2147483647i), Struct_1(2147483647i, 478f, 1u, -760f, 2147483647i), Struct_1(-1i, 1000f, 0u, -176f, 17451i), Struct_1(2147483647i, -174f, 1u, 841f, -1i), Struct_1(-51002i, -1266f, 45658u, -725f, 29662i), Struct_1(2147483647i, 2103f, 1u, -1472f, 0i), Struct_1(38435i, -1069f, 20802u, 1043f, i32(-2147483648)));

var<private> global2: Struct_1 = Struct_1(0i, 1325f, 1u, 1074f, 0i);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = true;
    global2 = arg_0;
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(35986i, global2.e) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) << ((u_input.a.zw ^ u_input.a.zz) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.e, 2147483647i), vec2<i32>(global2.e, global0.e)) & abs(vec2<i32>(-30507i, arg_0.a))) >> (4294967295u % 32u), 16878i);
    var var_2 = Struct_1(-_wgslsmith_clamp_i32(2147483647i, select(var_1.x, _wgslsmith_sub_i32(-2126i, arg_0.e), true), 1i), arg_0.d, 4641u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b), -560f))))), -2147483647i);
    let var_3 = arg_0;
    return min(var_1.x, 2147483647i);
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = func_3(Struct_1(-1i, _wgslsmith_f_op_f32(select(global2.d, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), false)), 85549u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global2.d, _wgslsmith_f_op_f32(-global0.b))))), ~(min(global0.e, 6613i) | 25982i)));
    let var_1 = select(vec2<i32>(abs(_wgslsmith_clamp_i32(-1i, 2147483647i, -2147483647i)), -select(global0.e, var_0, all(vec2<bool>(false, false)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~var_0, firstLeadingBit(19081i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.e, global0.e), ~vec2<i32>(global0.e, -2147483647i))), vec2<i32>(global0.e, countOneBits(global2.e)) ^ (firstTrailingBit(vec2<i32>(global2.a, -1i)) >> (~u_input.a.zw % vec2<u32>(32u))), -(vec2<i32>(global2.e, 0i) | -vec2<i32>(47048i, global0.e))), true);
    let var_2 = select(reverseBits(_wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(global2.e, var_1.x, 1i)), -(vec3<i32>(var_1.x, var_0, var_0) | vec3<i32>(global0.e, global0.e, global0.a)))), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_0, ~4691i), _wgslsmith_dot_vec2_i32(max(vec2<i32>(var_0, -90544i), var_1), -var_1)), -global0.e, var_1.x), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_3 = global1[_wgslsmith_index_u32(~(~(u_input.a.x << (global0.c % 32u))), 11u)];
    let var_4 = true;
    return arg_0;
}

fn func_1() -> i32 {
    global0 = Struct_1(firstTrailingBit(firstLeadingBit(global2.a)), 355f, 1u, 421f, global0.e);
    var var_0 = ~(~global0.c);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1064f), -495f));
    var var_2 = Struct_1(abs(global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.b))))) - global0.d), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(16062u, global0.c, u_input.a.x), vec3<u32>(0u, 1u, 0u))), min(u_input.a.xxx, u_input.a.zxw)), global2.b, global0.e & -2147483647i);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(338f, global2.b), -362f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(969f, global0.d) + vec2<f32>(-935f, -1216f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1353f, 554f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, -1000f))), vec2<bool>(all(vec3<bool>(true, true, false)), all(vec3<bool>(true, true, false))))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2122f, -250f) * vec2<f32>(_wgslsmith_f_op_f32(-1889f + -408f), -1492f)));
    return 4250i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    let var_1 = 1587f;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2.d, global0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1023f, 2156f) + vec3<f32>(-1000f, var_1, global0.d)))))));
    let var_3 = Struct_1(~0i, -155f, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1))))), func_1());
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(firstLeadingBit(reverseBits(u_input.a << (u_input.a % vec4<u32>(32u))))), _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(27721u, u_input.a.x, 13928u, global0.c))), 11u)];
    var var_4 = min(22224i, _wgslsmith_mult_i32(abs(14173i) >> (select(u_input.a.x, select(0u, var_3.c, false), true) % 32u), global2.a));
    let var_5 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global0.e, global2.a), -2147483647i, global0.a << (global2.c % 32u), ~26626i), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global2.a, -2147483647i, 0i, 18005i), vec4<i32>(global2.a, var_3.e, global0.e, 29152i)), -vec4<i32>(1i, global2.e, 33415i, -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, global0.a, -1i, var_3.a), vec4<i32>(-2147483647i, global0.e, 36717i, -88088i)))), vec4<i32>(1i & global2.e, abs(34546i), _wgslsmith_mult_i32(i32(-1i) * -10029i, -1657i), global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(180f))), ~u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1367f - _wgslsmith_f_op_f32(min(1475f, -709f))), _wgslsmith_f_op_f32(trunc(-1777f))), -3170i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_5.e, global2.e), 37838i & (~min(var_5.e, 2147483647i) ^ global0.e));
}

