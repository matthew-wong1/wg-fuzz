struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: array<u32, 17> = array<u32, 17>(1u, 1u, 71357u, 102785u, 1u, 64284u, 0u, 38419u, 57501u, 0u, 1u, 0u, 8525u, 86572u, 47171u, 1u, 67123u);

var<private> global3: vec4<bool>;

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(max(min(~global4.yy, vec2<u32>(1u, 1u)) ^ global4.zx, min(global4.zy ^ ~vec2<u32>(global4.x, global2[_wgslsmith_index_u32(u_input.c, 17u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global4.x) ^ u_input.a, select(vec2<u32>(global4.x, u_input.a.x), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37923u, 17u)], 17u)], 7051u), false)))), all(global3.yyw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1386f - -217f))))));
    global1 = false;
    let var_1 = false;
    let var_2 = false;
    let var_3 = var_0;
    return ~52193u;
}

fn func_2() -> bool {
    global2 = array<u32, 17>();
    global4 = vec3<u32>(countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(global4.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 17u)], 17u)]), _wgslsmith_clamp_u32(global4.x, u_input.c, u_input.a.x)) ^ global2[_wgslsmith_index_u32(func_3(), 17u)]), ~0u, _wgslsmith_sub_u32(~0u, global2[_wgslsmith_index_u32(0u, 17u)]));
    let var_0 = select(max(vec3<u32>(min(firstTrailingBit(u_input.c), 1u << (u_input.c % 32u)), global4.x, _wgslsmith_div_u32(u_input.c, 4294967295u >> (global2[_wgslsmith_index_u32(0u, 17u)] % 32u))), ~countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(global4.x, 17u)], global4.x, 0u) | vec3<u32>(u_input.c, global4.x, 4294967295u))), ~countOneBits(firstTrailingBit(~vec3<u32>(u_input.c, 26689u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 17u)], 17u)]))), false);
    global3 = vec4<bool>(true, false, select(!(!global3.x), !(any(global3.wy) & true), any(select(vec4<bool>(true, false, global3.x, global3.x), !vec4<bool>(false, global3.x, global3.x, true), all(vec4<bool>(global3.x, true, global3.x, true))))), true);
    global0 = _wgslsmith_f_op_f32(-1f);
    return any(!select(select(vec4<bool>(true, true, false, global3.x), select(vec4<bool>(true, true, false, global3.x), vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(false, global3.x, global3.x, global3.x)), any(vec2<bool>(false, true))), vec4<bool>(all(vec4<bool>(true, global3.x, true, global3.x)), !global3.x, true == global3.x, true), select(!vec4<bool>(true, true, global3.x, false), vec4<bool>(global3.x, global3.x, global3.x, global3.x), false)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = any(vec4<bool>(true, all(!(!vec4<bool>(true, global3.x, global3.x, global3.x))), all(vec3<bool>(all(vec3<bool>(false, global3.x, global3.x)), all(global3.wxx), global3.x)), select((u_input.b < 6900i) && func_2(), any(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, global3.x, false))), any(select(global3.yw, vec2<bool>(true, false), global3.zy)))));
    global2 = array<u32, 17>();
    global1 = true;
    var var_1 = global3.x;
    var var_2 = Struct_1(~vec2<u32>(20715u, global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), 17u)]) | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 0u, global4.x, 4294967295u), ~vec4<u32>(36425u, arg_0, u_input.a.x, 1u)), _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(23260u, 17u)], abs(global4.x))), global3.x, -1137f);
    return Struct_1(countOneBits(abs(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(62612u, u_input.a.x), vec2<u32>(13693u, 4294967295u)), u_input.a, _wgslsmith_mult_vec2_u32(u_input.a, u_input.a)))), var_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - 483f)), 349f)));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    global4 = vec3<u32>(arg_1.a.x, ~arg_1.a.x, _wgslsmith_div_u32(~select(countOneBits(4294967295u), ~u_input.a.x, all(vec2<bool>(true, arg_1.b))), abs(97156u)));
    var var_0 = vec3<bool>(false, 1u == u_input.a.x, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, arg_1.c, -905f, -1401f) * vec4<f32>(-781f, arg_1.c, arg_1.c, arg_1.c)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c + -475f)), _wgslsmith_f_op_f32(1196f - _wgslsmith_f_op_f32(1000f + arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1005f + arg_1.c)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(373f, 1323f, arg_1.c, arg_1.c), vec4<f32>(-448f, -928f, 780f, -2553f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(770f, arg_1.c, 529f, arg_1.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(421f, arg_1.c, arg_1.c, -1368f) - vec4<f32>(361f, arg_1.c, -1160f, arg_1.c)))))), select(vec4<bool>(true, false, global3.x, !(809f == arg_1.c)), vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -1155f) > _wgslsmith_f_op_f32(ceil(-1673f)), var_0.x, false), select(!(!vec4<bool>(arg_1.b, var_0.x, global3.x, global3.x)), !(!vec4<bool>(var_0.x, true, global3.x, var_0.x)), select(!vec4<bool>(arg_1.b, true, arg_1.b, arg_1.b), !vec4<bool>(var_0.x, arg_1.b, false, true), all(global3.zy))))));
    var var_2 = ~abs(0i);
    var var_3 = func_1(max(_wgslsmith_mod_u32(_wgslsmith_div_u32(~u_input.a.x, ~0u), ~(30104u >> (0u % 32u))), 21380u));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2048f, _wgslsmith_f_op_f32(floor(607f))) * -379f), var_1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(31325u, u_input.c);
    var var_1 = -(~u_input.e.x);
    var var_2 = select(!(!select(!vec3<bool>(global3.x, global3.x, global3.x), select(global3.zww, vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, global3.x)), global3.x & global3.x)), global3.yyx, select(!global3.xxz, global3.xwy, global3.zzy));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f), _wgslsmith_f_op_f32(382f - 1836f)))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(~u_input.b, func_1(1u)))))) - _wgslsmith_f_op_f32(-217f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1304f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !var_2.x)))));
    var_0 = ~u_input.c;
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, _wgslsmith_div_i32(u_input.e.x, u_input.d)) << (countOneBits(u_input.c) % 32u), select(countOneBits(u_input.b), min(reverseBits(u_input.b), 1471i), global3.x | all(var_2.xy))), 1f, _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, u_input.d), _wgslsmith_sub_i32(-2147483647i >> (_wgslsmith_mod_u32(global4.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 17u)], 17u)]) % 32u), 14387i)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u ^ global4.x, ~global2[_wgslsmith_index_u32(global4.x, 17u)], ~1u, global2[_wgslsmith_index_u32(global4.x, 17u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global4.x, 38684u, 45664u, u_input.a.x) >> (vec4<u32>(1u, global4.x, 1u, global2[_wgslsmith_index_u32(38822u, 17u)]) % vec4<u32>(32u)), vec4<u32>(17953u, 69793u, u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 17u)], 17u)]))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 57722u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 17u)], 17u)]), min(vec4<u32>(1u, global4.x, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], 32463u), vec4<u32>(global2[_wgslsmith_index_u32(u_input.c, 17u)], 92565u, 22631u, 119141u))), ~min(vec4<u32>(global2[_wgslsmith_index_u32(4782u, 17u)], global2[_wgslsmith_index_u32(global4.x, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], 1u), vec4<u32>(u_input.c, global4.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 17u)], 17u)], 17u)], global4.x)))));
}

