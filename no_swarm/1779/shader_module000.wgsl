struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, true, false, true, true, false, false, true, false, false, true, false, false, true, true, true, false, true, false, true, false, false, false, false, true, false, false, true, true, true, false);

var<private> global1: array<u32, 29> = array<u32, 29>(4294967295u, 34585u, 29882u, 1u, 0u, 19551u, 2771u, 1u, 69166u, 0u, 4294967295u, 31759u, 17746u, 0u, 39971u, 57599u, 55846u, 0u, 1u, 0u, 0u, 4294967295u, 1u, 18040u, 0u, 39662u, 1u, 13237u, 44020u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-374f)))), 1810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f)))));
    var var_2 = !any(arg_2.zz);
    var var_3 = 2147483647i;
    let var_4 = var_1.x;
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global1[_wgslsmith_index_u32(~0u, 29u)], u_input.b.x, ~4294967295u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), ~u_input.b.wzy, u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(select(1u, 22286u, global0[_wgslsmith_index_u32(0u, 32u)]), ~4294967295u, 82439u), ~(~vec3<u32>(12640u, global1[_wgslsmith_index_u32(123610u, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> Struct_3 {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_0 = ~(~vec3<i32>(u_input.a.x, ~(-53799i), -1436i));
    global0 = array<bool, 32>();
    let var_1 = Struct_5(Struct_4(Struct_1(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_3(true, vec2<i32>(u_input.e, 0i), vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 32u)], false)), 29u)], 29u)]), _wgslsmith_div_vec3_u32(~u_input.b.ywx, ~vec3<u32>(u_input.c.x, 0u, u_input.c.x)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(14377u, 82551u, u_input.c.x), vec3<u32>(19460u, global1[_wgslsmith_index_u32(1u, 29u)], 26842u)), 29u)], _wgslsmith_div_f32(arg_1.x, arg_1.x)), arg_1.ywz), Struct_4(Struct_1(arg_0, reverseBits(vec3<u32>(0u, global1[_wgslsmith_index_u32(arg_0, 29u)], 58938u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(8512u, global1[_wgslsmith_index_u32(14111u, 29u)], arg_0), u_input.c, u_input.c), ~min(global1[_wgslsmith_index_u32(34132u, 29u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)]), -122f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), arg_1.x, -1000f) + arg_1.zzw)));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(1551f, var_1.a.a.d), _wgslsmith_f_op_f32(-var_1.b.a.d), _wgslsmith_div_f32(-742f, var_1.a.b.x), _wgslsmith_f_op_f32(-671f + arg_1.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.b.x), -2110f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.b.zy), arg_1.yw)), vec2<u32>(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 13487u, 1u, 1u), vec4<u32>(u_input.c.x, arg_0, 0u, 0u))), 29u)], _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0, 1u, 0u), ~1u)), select(vec2<bool>(global0[_wgslsmith_index_u32(reverseBits(4294967295u), 32u)], any(vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 32u)], false, true, true))), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(47562u, 32u)]), vec2<bool>(true, true)), select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.b.a.a, 32u)], global0[_wgslsmith_index_u32(var_1.b.a.b.x, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 32u)], true), any(vec3<bool>(true, global0[_wgslsmith_index_u32(29062u, 32u)], global0[_wgslsmith_index_u32(var_1.b.a.a, 32u)]))))), _wgslsmith_clamp_vec2_i32((countOneBits(vec2<i32>(var_0.x, var_0.x)) << (var_1.a.a.b.yx % vec2<u32>(32u))) | firstTrailingBit(-vec2<i32>(0i, u_input.e)), ~_wgslsmith_clamp_vec2_i32(~u_input.a, vec2<i32>(var_0.x, u_input.a.x), reverseBits(u_input.a)), select((var_0.yx >> (var_1.a.a.b.xz % vec2<u32>(32u))) ^ -var_0.xz, min(vec2<i32>(1i, var_0.x), firstTrailingBit(u_input.a)), var_0.x <= _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), u_input.a))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.a.d, -874f, arg_1.x, var_1.b.a.d), arg_1)), _wgslsmith_f_op_vec4_f32(-arg_1)))))));
}

fn func_1() -> Struct_3 {
    let var_0 = false;
    var var_1 = func_2(countOneBits(0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(638f, -1296f, 898f, 158f), vec4<f32>(1011f, -1380f, -1000f, -1000f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1689f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -857f), 399f) * vec4<f32>(_wgslsmith_f_op_f32(max(-476f, -1569f)), 1141f, _wgslsmith_div_f32(671f, -1000f), -185f))));
    var var_2 = vec4<f32>(var_1.a.a.x, -845f, _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(2299f, -1299f)), _wgslsmith_f_op_f32(sign(var_1.c.x)))), 436f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c.x, 1000f, var_0)) - _wgslsmith_f_op_f32(-var_1.a.b.x)) * var_1.c.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(var_1.a.a.wyw, vec3<f32>(_wgslsmith_f_op_f32(round(468f)), _wgslsmith_f_op_f32(-var_1.a.a.x), _wgslsmith_f_op_f32(exp2(var_2.x))), vec3<bool>(!(1u != _wgslsmith_dot_vec3_u32(u_input.b.zxw, vec3<u32>(20678u, u_input.b.x, var_1.a.c.x))), false, false == func_2(4294967295u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.c.x, var_2.x, var_2.x, -1409f)))).a.d.x)));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(step(var_1.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(262f, var_2.x, -1883f, var_3.x)))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_1.a.a), vec4<f32>(_wgslsmith_f_op_f32(-1050f - 1000f), _wgslsmith_f_op_f32(var_3.x + var_3.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(ceil(var_2.x)))))));
    return Struct_3(var_1.a, -min(var_1.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b.x, u_input.a.x), ~vec2<i32>(-1i, 2147483647i), var_1.b)), var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_4(Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 115975u, u_input.b.x, global1[_wgslsmith_index_u32(72346u, 29u)]), u_input.b, true), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b), u_input.b), u_input.b), vec3<u32>(firstLeadingBit(abs(4294967295u)), func_1().a.c.x, ~33729u), global1[_wgslsmith_index_u32(var_0.a.c.x, 29u)], _wgslsmith_f_op_f32(f32(-1f) * -1095f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), -1969f), -1058f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-205f)) + _wgslsmith_f_op_f32(-var_0.a.b.x)))));
    global1 = array<u32, 29>();
    var var_2 = vec3<f32>(194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.b.x)))))), 458f);
    let var_3 = Struct_4(Struct_1(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~var_0.a.c.x, 29u)], global1[_wgslsmith_index_u32(8926u, 29u)]) >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~1u) % 32u), ~vec3<u32>(u_input.c.x, ~var_0.a.c.x, countOneBits(var_0.a.c.x)), u_input.b.x, -401f), func_2(var_0.a.c.x, var_0.a.a).c.wxy);
    var var_4 = _wgslsmith_f_op_f32(-137f * func_2(global1[_wgslsmith_index_u32(var_1.a.b.x, 29u)], _wgslsmith_f_op_vec4_f32(step(var_0.a.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_0.c, var_0.c)))))).a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-941f);
}

