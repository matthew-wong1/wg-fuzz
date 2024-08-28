struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-39541i, 12307i, 0i, 3350i, -18136i, -8816i, -18375i, 2147483647i, 23769i);

var<private> global1: vec3<u32> = vec3<u32>(4566u, 0u, 62875u);

var<private> global2: array<i32, 32> = array<i32, 32>(14173i, -1i, i32(-2147483648), -27882i, 1i, -19977i, 48308i, 0i, -23690i, 0i, -23409i, 8777i, 6926i, -7350i, -14882i, 2529i, -6596i, -1021i, -27914i, -1i, 3355i, -1i, -8771i, 2147483647i, 0i, 41083i, -100738i, 1i, 33227i, 5496i, 2147483647i, 0i);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = all(select(vec3<bool>(true, false, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), !any(vec4<bool>(false, true, false, true))));
    let var_1 = Struct_4(select(vec3<bool>(select(var_0, !var_0, any(vec4<bool>(var_0, true, true, var_0))), all(vec2<bool>(true, true)), !var_0), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0))), var_0, !any(vec3<bool>(var_0, var_0, false))), true));
    var var_2 = global1.x;
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, _wgslsmith_div_u32(global1.x, 1u), u_input.b.x, select(global1.x, u_input.b.x, var_1.a.x)), countOneBits(select(vec4<u32>(global1.x, u_input.a.x, u_input.b.x, 64271u) << (vec4<u32>(global1.x, u_input.a.x, u_input.b.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 1u, global1.x, global1.x), var_0 || var_0))), min(_wgslsmith_div_vec4_u32(~(~vec4<u32>(global1.x, global1.x, global1.x, global1.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 106806u, global1.x, global1.x), vec4<u32>(global1.x, 5734u, 53711u, 28993u))), abs(~vec4<u32>(global1.x, u_input.b.x, global1.x, global1.x))));
    global2 = array<i32, 32>();
    return ~(~(-17225i));
}

fn func_2() -> bool {
    global2 = array<i32, 32>();
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -global2[_wgslsmith_index_u32(0u, 32u)], max(global2[_wgslsmith_index_u32(global1.x, 32u)], global2[_wgslsmith_index_u32(28992u, 32u)]), ~1682i), -firstLeadingBit(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(3102u, 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 32u)], 20960i))), abs(~vec4<i32>(-70287i, -15751i, 4982i, 0i) << ((vec4<u32>(64355u, global1.x, u_input.a.x, u_input.b.x) ^ vec4<u32>(36136u, u_input.b.x, 8624u, 63849u)) % vec4<u32>(32u)))), ~(vec4<i32>(global0[_wgslsmith_index_u32(abs(global1.x), 9u)], ~0i, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4716u, 9u)], 57815i)) | vec4<i32>(-43334i ^ global2[_wgslsmith_index_u32(1u, 32u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global1.x, 32u)], global2[_wgslsmith_index_u32(global1.x, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -11265i), vec4<i32>(11445i, -1i, global2[_wgslsmith_index_u32(global1.x, 32u)], global0[_wgslsmith_index_u32(78044u, 9u)])), 2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, u_input.a), 32u)])));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-796f - global3.x), global3.x), 239f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, 148f)) - global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - -1699f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))))));
    let var_2 = _wgslsmith_mult_i32(-23022i, _wgslsmith_div_i32(max(1i, _wgslsmith_add_i32(firstLeadingBit(2147483647i), -1i)), _wgslsmith_dot_vec3_i32(var_0.zzw, countOneBits(firstLeadingBit(var_0.zzy)))));
    var var_3 = func_3();
    return select(any(vec4<bool>(true, select(false, true, true) == true, true, false)), true, true);
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.a;
    let var_1 = !select(arg_0.a.a.x, func_2(), all(select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a.e.x, arg_0.a.e.x, true), vec3<bool>(false, true, var_0.e.x))) & false);
    return arg_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x)))));
    let var_1 = Struct_1(!vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<f32>(_wgslsmith_f_op_f32(sign(-391f)), _wgslsmith_f_op_f32(func_1(Struct_2(global4[_wgslsmith_index_u32(u_input.a.x, 22u)])))), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 9u)], 1695f, !select(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1463f, global3.x, false)), 1128f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1303f, var_1.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1038f)), -603f) * vec3<f32>(global3.x, -1263f, _wgslsmith_f_op_f32(max(793f, _wgslsmith_f_op_f32(abs(global3.x)))))));
    var var_3 = true;
    let var_4 = select(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(~43693u, 9u)], -(1i >> (global1.x % 32u))), ~reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(63862u, 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 32u)], 9386i))), false);
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(645f, 692f, var_2.x, var_1.d) - vec4<f32>(var_1.d, -617f, -239f, var_1.b.x))))))));
    var var_5 = _wgslsmith_add_vec2_i32(vec2<i32>(var_1.c >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 9096u, 1u), vec4<u32>(global1.x, 0u, 7671u, 1u)) % 32u), i32(-1i) * -1i) << (_wgslsmith_mod_vec2_u32(select(u_input.b.xz, global1.yy, var_1.a.x) & countOneBits(vec2<u32>(55647u, u_input.a.x)), countOneBits(~vec2<u32>(global1.x, u_input.b.x))) % vec2<u32>(32u)), -vec2<i32>(var_4, _wgslsmith_add_i32(var_1.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4, var_1.c, global0[_wgslsmith_index_u32(33821u, 9u)]), vec3<i32>(var_4, var_1.c, global2[_wgslsmith_index_u32(global1.x, 32u)])))));
    var var_6 = global4[_wgslsmith_index_u32(min(7631u, ~(~4294967295u) ^ _wgslsmith_div_u32(max(firstTrailingBit(1u), 45486u), global1.x)), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2150f, var_1.d, global3.x, 1558f)))), vec4<f32>(_wgslsmith_f_op_f32(round(-1476f)), var_1.d, _wgslsmith_f_op_f32(min(var_1.d, -410f)), -1490f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_2.x, _wgslsmith_f_op_f32(max(var_1.d, -325f)), _wgslsmith_f_op_f32(trunc(1510f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -121f))) + var_6.d), global1.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(var_1.b.x * 1935f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(865f, global3.x), _wgslsmith_f_op_vec2_f32(round(var_2.yz)))))));
}

