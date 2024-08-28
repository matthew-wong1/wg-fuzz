struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -4640i;

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<u32, 14>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec2<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(sign(arg_0.x))), -1360f) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(-1410f * arg_0.x)), arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x)));
    let var_1 = global1[_wgslsmith_index_u32(abs(countOneBits(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(15768u, 14u)])), 14u)])) << (54725u % 32u), 22u)];
    global2 = array<u32, 14>();
    global2 = array<u32, 14>();
    var var_2 = Struct_2(vec4<i32>(~(-1i), -var_1.b, ~u_input.c, _wgslsmith_div_i32(arg_1, firstTrailingBit(1i))), global1[_wgslsmith_index_u32(u_input.b, 22u)]);
    return ~(~vec2<u32>(1u, 10814u));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, arg_2.c, 1000f)))) * vec3<f32>(_wgslsmith_f_op_f32(step(-215f, _wgslsmith_f_op_f32(trunc(arg_3.c.b.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1418f, arg_3.a.b.c))), 978f))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-420f, _wgslsmith_f_op_f32(min(-385f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), arg_0.b.c));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_2(select(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, u_input.a, -10235i, -51751i), countOneBits(vec4<i32>(15046i, 2147483647i, u_input.d.x, -22359i))), ~vec4<i32>(u_input.d.x, 50520i, u_input.a, u_input.d.x), any(vec2<bool>(true, arg_0))) >> (~vec4<u32>(~u_input.b, 34999u | u_input.b, 1u, 15683u) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(1u, 22u)]);
    var var_1 = Struct_3(Struct_2(vec4<i32>(var_0.a.x, abs(firstLeadingBit(u_input.d.x)), ~u_input.c, var_0.a.x), Struct_1(vec2<bool>(arg_3.x, !var_0.b.a.x), ~u_input.c, _wgslsmith_f_op_f32(1381f - _wgslsmith_f_op_f32(select(1018f, 1063f, arg_2))))), Struct_2(abs(select(var_0.a, vec4<i32>(25295i, var_0.b.b, u_input.d.x, var_0.b.b), vec4<bool>(false, false, true, arg_0)) ^ select(vec4<i32>(u_input.c, var_0.b.b, 15940i, 0i), vec4<i32>(-66098i, 0i, -2147483647i, -26267i), vec4<bool>(arg_2, true, arg_2, var_0.b.a.x))), var_0.b), var_0);
    var var_2 = Struct_3(var_0, var_0, var_0);
    global2 = array<u32, 14>();
    var var_3 = _wgslsmith_dot_vec4_i32(-var_1.c.a, var_0.a);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.b.c * _wgslsmith_f_op_f32(func_4(Struct_2(var_0.a, var_0.b), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-320f, 946f), vec2<f32>(-715f, -1000f)), var_0.a.x), Struct_1(var_2.b.b.a, reverseBits(-44466i), _wgslsmith_f_op_f32(f32(-1f) * -580f)), Struct_3(var_2.a, Struct_2(vec4<i32>(20412i, var_0.b.b, 26059i, 39962i), Struct_1(var_2.a.b.a, var_2.b.b.b, -161f)), Struct_2(vec4<i32>(var_0.b.b, -2147483647i, var_2.a.b.b, -15033i), var_2.c.b)))))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<i32> {
    global0 = countOneBits(~arg_3.a.x);
    global2 = array<u32, 14>();
    global0 = max((-(~arg_3.a.x) >> (~arg_2.x % 32u)) << ((_wgslsmith_mult_u32(u_input.b ^ u_input.b, global2[_wgslsmith_index_u32(~0u, 14u)]) | 4294967295u) % 32u), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-u_input.c, select(u_input.a, arg_3.a.x, true)), u_input.a)));
    global1 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3.b.c, arg_3.b.c, -2883f, arg_3.b.c), vec4<f32>(arg_3.b.c, arg_3.b.c, 1000f, arg_3.b.c))))) + vec4<f32>(1658f, -1273f, _wgslsmith_f_op_f32(-103f + arg_3.b.c), 702f)), vec4<f32>(-927f, -597f, _wgslsmith_f_op_f32(arg_3.b.c * arg_3.b.c), _wgslsmith_f_op_f32(func_2(true, arg_0, any(vec3<bool>(true, true, arg_0)), select(vec4<bool>(arg_3.b.a.x, arg_3.b.a.x, false, false), vec4<bool>(arg_3.b.a.x, arg_3.b.a.x, arg_0, true), true))))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2349f)), arg_3.b.c, -1000f, arg_3.b.c))));
    return arg_3.a;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: vec3<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(1112f, arg_0.b.c, arg_2.a.b.a.x)), arg_2.a.b.c))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-225f, arg_3.x) * vec2<f32>(arg_2.b.b.c, -435f)) * _wgslsmith_f_op_vec2_f32(arg_3.yy * arg_3.xx)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, arg_2.a.b.c)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, -156f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_3.yy), _wgslsmith_f_op_vec2_f32(arg_3.xy + vec2<f32>(922f, 952f)))), vec2<f32>(-206f, _wgslsmith_f_op_f32(arg_2.a.b.c - -780f)))))));
    global0 = ~(-u_input.d.x);
    let var_1 = arg_2.a;
    let var_2 = var_0;
    let var_3 = vec2<bool>(false, all(vec3<bool>(any(vec4<bool>(arg_2.a.b.a.x, false, true, arg_0.b.a.x)), true, true)));
    return StorageBuffer(vec2<i32>(arg_2.c.a.x, _wgslsmith_mod_i32(2147483647i, ~abs(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(func_4(Struct_2(arg_0.a, Struct_1(vec2<bool>(false, var_3.x), arg_2.c.b.b, arg_0.b.c)), vec2<u32>(arg_1, arg_1), Struct_1(var_1.b.a, arg_2.a.a.x, arg_3.x), arg_2)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - 629f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-544f * 442f);
    let var_1 = _wgslsmith_mod_u32(~max(51928u, ~global2[_wgslsmith_index_u32(0u, 14u)]), _wgslsmith_dot_vec2_u32(~vec2<u32>(~global2[_wgslsmith_index_u32(0u, 14u)], u_input.b), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 25118u, 0u, u_input.b), vec4<u32>(u_input.b, 42244u, global2[_wgslsmith_index_u32(13744u, 14u)], u_input.b)), 1u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * -560f), -479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f) * _wgslsmith_f_op_f32(-552f + -1635f)), _wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -584f))))) - vec4<f32>(-420f, 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -147f))), 1f, false)), _wgslsmith_f_op_f32(min(-298f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(180f, 1444f, false)), _wgslsmith_f_op_f32(round(628f)))))));
    global2 = array<u32, 14>();
    var var_3 = (!((1000f <= var_2.x) && true) | select(true, any(vec2<bool>(true, true)), false)) & !all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true));
    let x = u_input.a;
    s_output = func_5(Struct_2(select(~_wgslsmith_mod_vec4_i32(vec4<i32>(13935i, u_input.c, 0i, 0i), vec4<i32>(u_input.a, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<i32>(u_input.a, u_input.c, u_input.d.x, u_input.d.x) & func_1(false, 4294967295u, vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], 49071u, 895u), Struct_2(vec4<i32>(-41704i, -2147483647i, -14746i, 31093i), global1[_wgslsmith_index_u32(18463u, 22u)])), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), select(false, true, true))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b, 14u)]), 14u)]), 22u)]), min(~u_input.b, _wgslsmith_sub_u32(_wgslsmith_mult_u32(40692u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53376u, 14u)], 14u)], global2[_wgslsmith_index_u32(34519u, 14u)])), firstLeadingBit(~22584u))), Struct_3(Struct_2(vec4<i32>(u_input.a << (8165u % 32u), u_input.c, _wgslsmith_div_i32(u_input.c, 28716i), 1i), global1[_wgslsmith_index_u32(min(u_input.b ^ global2[_wgslsmith_index_u32(7185u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17287u, 14u)], 14u)] & 28534u), 22u)]), Struct_2(vec4<i32>(2147483647i, 26750i, -2147483647i, 33370i) & _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 0i, u_input.c, u_input.c), vec4<i32>(u_input.d.x, u_input.c, u_input.a, u_input.c)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~var_1), 22u)]), Struct_2(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 40029i, -2147483647i), vec4<i32>(2147483647i, u_input.c, -1i, u_input.d.x)), global1[_wgslsmith_index_u32(u_input.b, 22u)])), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x)), var_2.x, _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(step(var_2.x, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1507f, var_2.x, -1512f) + vec3<f32>(var_2.x, 1130f, -607f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(732f, var_2.x, var_2.x) - vec3<f32>(385f, -1882f, var_2.x))))));
}

