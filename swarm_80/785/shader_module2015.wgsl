struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1101f, -857f, -1339f, -794f);

var<private> global1: array<bool, 31>;

var<private> global2: f32;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = arg_0.a;
    var var_1 = ~vec4<u32>(~(~0u) << (u_input.c.x % 32u), _wgslsmith_add_u32(5694u, ~u_input.c.x), u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(0u, ~u_input.c.x)));
    var var_2 = select(select(true, all(arg_0.a.a.xxw), global3.x), true, var_0.a.x);
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~var_1.x, var_1.x, u_input.b.x), ~reverseBits(vec3<u32>(var_1.x, 11627u, 1347u & var_1.x)));
    let var_4 = countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, u_input.a.x) ^ vec4<i32>(u_input.a.x, u_input.a.x, -1i, -24692i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 51812i, u_input.a.x), vec4<i32>(u_input.a.x, -15687i, u_input.a.x, u_input.a.x))), -6962i)) << (vec2<u32>(18327u, _wgslsmith_dot_vec3_u32(max(~vec3<u32>(var_3, 1u, 22849u), u_input.c.zww << (var_1.wwz % vec3<u32>(32u))), select(vec3<u32>(var_1.x, 74326u, 1u), vec3<u32>(var_3, 51770u, var_1.x) & var_1.zyw, vec3<bool>(global1[_wgslsmith_index_u32(10426u, 31u)], var_0.a.x, false)))) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, -712f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global0.x + global0.x)), -544f)), -359f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-392f, global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global0.x, global0.x)))), -1627f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x - -1535f), -1000f, global0.x, _wgslsmith_f_op_f32(global0.x * 1519f))))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_div_f32(global0.x, global0.x));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(Struct_4(vec4<bool>(false, global3.x, false, true))))));
    var var_1 = any(select(select(select(vec2<bool>(true, false), vec2<bool>(global3.x, global1[_wgslsmith_index_u32(26843u, 31u)]), false), global3.xx, !global3.yz), vec2<bool>(global1[_wgslsmith_index_u32(~38095u, 31u)], any(global3.wy)), global1[_wgslsmith_index_u32(u_input.c.x & abs(u_input.c.x), 31u)]));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x + var_0.a)), var_0.a)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(-2821f)));
    return Struct_4(vec4<bool>(false && !all(vec4<bool>(true, false, true, true)), !(!global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.c.x), 31u)]), true & global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mult_u32(u_input.b.x, u_input.c.x)), 31u)], select(!global3.x, false, true && global1[_wgslsmith_index_u32(56052u, 31u)]) && all(vec2<bool>(false, true))));
}

fn func_1(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.yxx);
    var var_1 = global3.zw;
    let var_2 = true;
    let var_3 = 1i;
    let var_4 = func_2();
    return global3.wxy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 31>();
    let var_0 = vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], any(vec4<bool>(true, true, all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], false, true, global3.x), true)), !global3.x)), all(func_1(vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -18474i), -1i, u_input.a.x))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 592f, global0.x, 865f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 303f, 2141f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-191f, global0.x, -890f, global0.x) + vec4<f32>(-589f, -1118f, -1000f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -2335f, -345f, -760f))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), global0.x, global0.x, global0.x))) + vec4<f32>(global0.x, _wgslsmith_f_op_f32(select(-1809f, global0.x, false)), -239f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-288f * 306f)))))));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(0u >> ((~u_input.c.x >> (~23145u % 32u)) % 32u), _wgslsmith_clamp_u32(1u, ~firstTrailingBit(u_input.b.x), firstLeadingBit(~u_input.b.x)), u_input.b.x, 44661u), reverseBits(~(~u_input.b)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~u_input.c, ~_wgslsmith_mod_vec4_u32(u_input.c, u_input.b)), firstLeadingBit(reverseBits(u_input.c))));
    let var_2 = global3.zy;
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.x, ~(u_input.b.x << (u_input.b.x % 32u)), any(vec4<bool>(u_input.a.x >= u_input.a.x, true, all(vec4<bool>(false, true, true, false)), global3.x))), u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -808f) - global0.x) + global0.x))));
}

