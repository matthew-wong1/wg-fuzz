struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, true);

var<private> global1: f32 = 774f;

var<private> global2: vec3<f32>;

var<private> global3: u32 = 0u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(countOneBits(select(-vec2<i32>(0i, 10975i), vec2<i32>(firstTrailingBit(2147483647i), 1i), true)), select(_wgslsmith_div_vec4_u32(max(~vec4<u32>(var_0, u_input.a, var_0, var_0), abs(vec4<u32>(0u, 4294967295u, u_input.a, 91391u))), abs(firstTrailingBit(vec4<u32>(0u, u_input.a, 1u, 27998u)))), vec4<u32>(u_input.a, 1u, ~var_0, u_input.a) | vec4<u32>(max(u_input.a, 4294967295u), 1u, ~38901u, 1u), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 2u)]), global2.zy);
    var var_2 = !select(select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], false), vec4<bool>(true, true, false, false), true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], true, false, false), all(vec3<bool>(true, false, true))), select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(65527u, 2u)], global0[_wgslsmith_index_u32(var_1.b.x, 2u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(var_0, 2u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(var_1.b.x, 2u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(var_1.b.x, 2u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 2u)], true, false, false)), 26709u != var_1.b.x), !(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.b.x, 2u)], false, false))), select(vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 2u)], true, global0[_wgslsmith_index_u32(abs(13628u), 2u)], u_input.a <= var_0), vec4<bool>(all(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 2u)], true)), true, global0[_wgslsmith_index_u32(var_1.b.x, 2u)] == true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]))), select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(28752u, 2u)], false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0, 2u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0, 2u)], false, global0[_wgslsmith_index_u32(var_1.b.x, 2u)], global0[_wgslsmith_index_u32(68037u, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.x, 2u)], true, global0[_wgslsmith_index_u32(1u, 2u)], false)), true)), !global0[_wgslsmith_index_u32(~44318u ^ _wgslsmith_div_u32(var_1.b.x, var_0), 2u)]);
    var var_3 = min(var_1.a.x, var_1.a.x);
    let var_4 = Struct_2(var_1.c.x, ~(u_input.a >> (~var_0 % 32u)), true, ~select(vec3<u32>(var_0, var_0, 102106u) << (~vec3<u32>(var_1.b.x, 19573u, var_1.b.x) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 15427u, 0u, 0u), vec4<u32>(26050u, var_1.b.x, 7078u, var_0)), ~47019u, 41874u << (0u % 32u)), true));
    return _wgslsmith_f_op_f32(step(-1889f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-106f, global2.x) * _wgslsmith_f_op_f32(max(-1354f, _wgslsmith_f_op_f32(-var_4.a))))));
}

fn func_2() -> vec3<f32> {
    global3 = u_input.a;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), -1000f, 1163f);
    global0 = array<bool, 2>();
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(global2.x)), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -551f)), vec3<f32>(-1709f, _wgslsmith_div_f32(global2.x, -1219f), _wgslsmith_f_op_f32(round(607f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, global2.x, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 2445f, global2.x) + vec3<f32>(352f, global2.x, global2.x))), vec3<f32>(_wgslsmith_f_op_f32(1208f * 1167f), _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(global2.x + global2.x))))));
    let var_0 = Struct_1(vec2<i32>(-18915i, _wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(-6666i, -12254i)), vec2<i32>(~19256i, firstTrailingBit(-2147483647i)))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 30858u) | vec4<u32>(4294967295u, 28146u, 4294967295u, u_input.a), select(vec4<u32>(4294967295u, 4294967295u, 22043u, u_input.a), vec4<u32>(0u, u_input.a, 20914u, 12217u), global0[_wgslsmith_index_u32(4294967295u, 2u)]))), global2.zx);
    return vec3<f32>(-1079f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-global2.x)) - _wgslsmith_f_op_f32(111f + _wgslsmith_f_op_f32(global2.x - global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-142f))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    var var_0 = vec3<i32>(-2147483647i, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(1i, -51618i), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, -7148i), vec2<i32>(3442i, 8281i))), -(~(-2147483647i)) << (u_input.a % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1287f, global2.x, -843f) - vec3<f32>(-2160f, global2.x, 279f))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, arg_0.a) * vec3<f32>(global2.x, 151f, 1405f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1097f, -903f, arg_0.a) + vec3<f32>(-521f, arg_0.a, -581f))))))));
    var var_2 = any(vec4<bool>(arg_1.x, all(!vec4<bool>(arg_0.c, false, global0[_wgslsmith_index_u32(arg_0.d.x, 2u)], true)), true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], true, true)) || true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f) - global2.x));
    var_0 = countOneBits(-(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -7201i, var_0.x), vec3<i32>(30159i, var_0.x, var_0.x)), min(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(-38340i, var_0.x, var_0.x))) << (~(~arg_0.d) % vec3<u32>(32u))));
    return firstTrailingBit(abs((var_0.x & (var_0.x & var_0.x)) ^ _wgslsmith_mult_i32(select(2147483647i, var_0.x, false), min(28657i, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(~func_1(Struct_2(global2.x, 4294967295u, false, vec3<u32>(u_input.a, u_input.a, 62435u)), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)])), -6862i), vec4<u32>(u_input.a, ~_wgslsmith_mult_u32(u_input.a ^ u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(32707u, 17342u), vec2<u32>(68517u, u_input.a))), u_input.a, u_input.a), global2.yz);
    let var_1 = vec2<bool>(true, true);
    let var_2 = var_0;
    var var_3 = var_1.x;
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(-1507f, var_2.c.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1258f)))))), vec3<f32>(var_2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-350f * var_0.c.x), _wgslsmith_f_op_f32(abs(var_2.c.x))), _wgslsmith_f_op_f32(-1f)));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-global2.x), 42710u, var_2.c.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(47436u, reverseBits(u_input.a)), 48318u, 1u), abs(~(~vec3<u32>(var_2.b.x, var_2.b.x, 0u)))));
    var var_5 = var_0.b.xww;
    let var_6 = select(select(select(select(!vec3<bool>(true, var_4.c, false), select(vec3<bool>(true, true, var_4.c), vec3<bool>(var_4.c, global0[_wgslsmith_index_u32(u_input.a, 2u)], true), vec3<bool>(var_4.c, false, true)), all(vec3<bool>(var_1.x, var_4.c, var_4.c))), select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], var_4.c, var_4.c), vec3<bool>(true, true, true), -2147483647i < var_2.a.x), 4294967295u > u_input.a), vec3<bool>(var_4.c, true, (i32(-1i) * -1i) >= var_2.a.x), select(!(!vec3<bool>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(var_2.b.x, 2u)])), vec3<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(15791u, 2u)], true, global0[_wgslsmith_index_u32(var_4.d.x, 2u)], false)), true, var_1.x), false)), !select(select(!vec3<bool>(false, var_1.x, var_4.c), vec3<bool>(var_4.c, true, global0[_wgslsmith_index_u32(1u, 2u)]), select(vec3<bool>(var_4.c, true, false), vec3<bool>(global0[_wgslsmith_index_u32(var_2.b.x, 2u)], false, false), vec3<bool>(true, true, var_1.x))), vec3<bool>(!global0[_wgslsmith_index_u32(1u, 2u)], !var_4.c, true), false), !(!select(!vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(global0[_wgslsmith_index_u32(52417u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], var_4.c), vec3<bool>(var_1.x, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<bool>(true, true, false)), select(var_1.x, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-26035i, ~((48361i ^ var_2.a.x) << (~48173u % 32u)) << (~(~(~u_input.a)) % 32u), var_2.b.x);
}

