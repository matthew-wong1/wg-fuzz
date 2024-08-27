struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 1u), vec2<bool>(false, false), 2147483647i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_1(reverseBits(vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.e.x, 28u)], 4294967295u), 28u)], ~global1.a.x))), vec2<bool>(!all(!global1.b), arg_0), 2147483647i);
    let var_1 = _wgslsmith_mult_i32(global1.c, global1.c);
    global0 = array<u32, 28>();
    global1 = Struct_1(~u_input.e.xy, !select(var_0.b, !vec2<bool>(false, arg_0), !(!vec2<bool>(false, arg_0))), -28780i);
    var var_2 = Struct_2(-266f, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -367f, -918f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.x), -211f))), _wgslsmith_mod_vec2_u32(var_0.a, select(countOneBits(~vec2<u32>(0u, 45617u)), vec2<u32>(63282u ^ var_0.a.x, global1.a.x), !select(var_0.b, vec2<bool>(var_0.b.x, false), false))), u_input.e, var_0);
    return _wgslsmith_div_f32(-838f, var_2.a);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = any(select(!(!vec2<bool>(arg_0, global1.b.x)), vec2<bool>(!global1.b.x, !global1.b.x), false));
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(u_input.e.yx, abs(global1.a), vec2<u32>(_wgslsmith_sub_u32(~global1.a.x, global0[_wgslsmith_index_u32(u_input.c, 28u)]), min(4294967295u, 28171u))), global1.b, global1.c);
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-411f, 475f)) * _wgslsmith_f_op_f32(1142f * -1065f)))), _wgslsmith_f_op_f32(230f * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(-495f)))), _wgslsmith_f_op_f32(func_3(true, vec2<f32>(-1364f, _wgslsmith_f_op_f32(abs(-400f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(371f, -288f))))), all(select(select(!vec4<bool>(arg_0, global1.b.x, global1.b.x, var_1), vec4<bool>(arg_0, true, arg_0, false), var_2.b.x), vec4<bool>(global1.b.x, global1.b.x, arg_0, var_1), global1.b.x)), firstTrailingBit(~abs(u_input.b.x)) >> (68540u % 32u), arg_2, arg_2.wy);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = func_2(global1.b.x, 1u, vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, _wgslsmith_add_i32(-1i, ~firstTrailingBit(1669i))));
    global1 = Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41413u, 28u)], 28u)], 18246u)), 28u)], ~min(global1.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)])) ^ u_input.e.zy, global1.b, _wgslsmith_mod_i32(0i, select(func_2(!global1.b.x, _wgslsmith_add_u32(global1.a.x, u_input.d), vec4<i32>(var_0.d.x, 0i, var_0.d.x, global1.c)).c, ~(global1.c >> (global1.a.x % 32u)), arg_1.x)));
    let var_1 = Struct_2(var_0.a.x, _wgslsmith_f_op_vec3_f32(round(var_0.a.yxz)), select(vec2<u32>(global0[_wgslsmith_index_u32(global1.a.x, 28u)], firstTrailingBit(abs(u_input.d))), ~select(u_input.e.xx, ~global1.a, arg_1.yy), true), u_input.e, Struct_1(abs(abs(_wgslsmith_sub_vec2_u32(global1.a, global1.a))), vec2<bool>(true, arg_1.x), 0i));
    global1 = Struct_1(u_input.e.yy, !arg_1.yx, ~(-2147483647i));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_0.a.x, var_1.a, var_0.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a, var_0.a.x, var_0.a.x, var_0.a.x)))))), any(arg_1))), ~(u_input.e.x ^ abs(global0[_wgslsmith_index_u32(var_1.d.x, 28u)])) < max(1u, 16555u), -47287i, -(~var_0.d), abs(vec2<i32>(2147483647i, -8104i)));
    return func_2(any(select(arg_1, vec3<bool>(var_1.e.b.x, 49804u < global1.a.x, var_1.e.b.x), !arg_1.x)), max(u_input.d, ~(~12381u) | global0[_wgslsmith_index_u32(~0u, 28u)]), vec4<i32>(0i, _wgslsmith_mult_i32(firstLeadingBit(var_1.e.c), -var_0.e.x), reverseBits(var_0.c), -(~u_input.b.x)) | max(_wgslsmith_mult_vec4_i32(vec4<i32>(-13583i, -1i, global1.c, 1i) >> (vec4<u32>(38641u, var_1.c.x, var_1.c.x, global0[_wgslsmith_index_u32(u_input.d, 28u)]) % vec4<u32>(32u)), vec4<i32>(45603i, -2147483647i, -21829i, 28041i) | vec4<i32>(-1i, 1i, 2147483647i, var_1.e.c)), vec4<i32>(u_input.b.x, -var_0.d.x, i32(-1i) * -1i, -6894i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = abs(1i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-arg_1.a.x))) - -473f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, 466f, -350f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-513f, arg_1.a.x, 1065f) - arg_1.a.wzx))))), ~u_input.e.xy, ~countOneBits(u_input.e), Struct_1(select(~u_input.e.zz, ~u_input.e.xx, !(false || arg_2.x)), select(!select(arg_2.wz, vec2<bool>(true, false), vec2<bool>(arg_1.b, true)), arg_2.zw, !arg_1.b), ~(~(~61575i))));
    var var_2 = var_1;
    let var_3 = ~(-_wgslsmith_div_i32(abs(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), max(-2147483647i, countOneBits(arg_0.e.x))));
    let var_4 = _wgslsmith_f_op_vec2_f32(var_2.b.yz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.a)));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: u32) -> vec3<u32> {
    let var_0 = Struct_1(u_input.e.yz, vec2<bool>(arg_0.b, arg_0.b), u_input.a.x);
    global1 = Struct_1(abs(var_0.a), select(select(vec2<bool>(var_0.b.x, any(vec2<bool>(true, global1.b.x))), vec2<bool>(arg_0.b, func_1(true, vec3<bool>(var_0.b.x, false, var_0.b.x)).b), select(!vec2<bool>(global1.b.x, true), select(var_0.b, var_0.b, true), false)), global1.b, !all(vec2<bool>(arg_0.b, false)) | false), _wgslsmith_mod_i32(-29344i << (u_input.d % 32u), ~(i32(-1i) * -2147483647i)) & (2587i >> (select(_wgslsmith_clamp_u32(1u, var_0.a.x, 57662u), arg_2 ^ arg_2, var_0.b.x) % 32u)));
    let var_1 = var_0;
    global1 = Struct_1(vec2<u32>(~0u, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, var_0.a.x), global0[_wgslsmith_index_u32(~4294967295u, 28u)]))), select(select(select(vec2<bool>(var_0.b.x, var_0.b.x), var_1.b, true), vec2<bool>(!var_1.b.x, global1.b.x), select(global1.b, var_1.b, !vec2<bool>(global1.b.x, arg_0.b))), select(select(select(vec2<bool>(var_0.b.x, false), vec2<bool>(true, var_1.b.x), true), !global1.b, !var_1.b.x), select(var_1.b, var_0.b, true), var_1.b.x), var_1.b), abs(_wgslsmith_dot_vec2_i32(arg_0.d.wy ^ -u_input.a.zy, u_input.a.zx)));
    global1 = Struct_1(countOneBits(reverseBits(firstLeadingBit(~vec2<u32>(24023u, u_input.d)))), vec2<bool>(!arg_0.b, arg_0.b), _wgslsmith_dot_vec2_i32(~firstTrailingBit(~vec2<i32>(-25482i, arg_0.c)), -arg_0.d.ww));
    return _wgslsmith_mod_vec3_u32(~(~(~u_input.e)), vec3<u32>(~1u, ~_wgslsmith_mod_u32(~4294967295u, ~58323u), abs(max(var_0.a.x, ~43313u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(1i, reverseBits(u_input.a.x) ^ ~u_input.b.x, ~firstTrailingBit(63888i)) << (~func_5(func_4(func_1(true, vec3<bool>(global1.b.x, false, global1.b.x)), func_1(false, vec3<bool>(global1.b.x, global1.b.x, global1.b.x)), select(vec4<bool>(global1.b.x, global1.b.x, true, global1.b.x), vec4<bool>(true, global1.b.x, global1.b.x, true), global1.b.x)), vec4<f32>(_wgslsmith_f_op_f32(func_3(true, vec2<f32>(-1481f, -936f))), -162f, 1000f, _wgslsmith_f_op_f32(floor(-1130f))), reverseBits(_wgslsmith_mult_u32(0u, global1.a.x))) % vec3<u32>(32u));
    var var_1 = Struct_1(~(vec2<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, global0[_wgslsmith_index_u32(global1.a.x, 28u)]), u_input.e.xx)) | ~max(vec2<u32>(1553u, u_input.d), vec2<u32>(u_input.d, global1.a.x))), global1.b, global1.c);
    var_1 = Struct_1(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 18239u), global1.a | vec2<u32>(global1.a.x, 1u)) << (reverseBits(_wgslsmith_clamp_vec2_u32(var_1.a, vec2<u32>(global1.a.x, 15224u), global1.a)) % vec2<u32>(32u))), select(!var_1.b, global1.b, !func_4(Struct_3(vec4<f32>(1000f, -779f, -280f, -574f), false, 2147483647i, vec4<i32>(u_input.b.x, 1i, 1i, u_input.b.x), vec2<i32>(-1i, global1.c)), Struct_3(vec4<f32>(-674f, -278f, -1321f, 283f), true, var_1.c, vec4<i32>(1i, global1.c, var_0.x, 1778i), var_0.xz), !vec4<bool>(global1.b.x, global1.b.x, var_1.b.x, global1.b.x)).b), global1.c);
    var var_2 = u_input.a.x ^ _wgslsmith_div_i32(~(~_wgslsmith_sub_i32(var_1.c, var_1.c)), 1i);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1242f) + 2073f), _wgslsmith_f_op_f32(566f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -308f)))), -2331f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1289f + 893f))), _wgslsmith_f_op_f32(max(-316f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-695f + -1055f))))), 390f));
    let var_4 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.a.x << (_wgslsmith_add_u32(~u_input.e.x, firstTrailingBit(49781u)) % 32u)), max(vec3<i32>(var_0.x, -2147483647i, 11929i), firstTrailingBit(u_input.b)), ~vec3<i32>(~_wgslsmith_mult_i32(25836i, 31867i), global1.c, -firstTrailingBit(57056i)), 189f, abs(vec4<i32>(~(~var_0.x), firstTrailingBit(-1i), global1.c, var_1.c)));
}

