struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_2(Struct_1(684f, 1434f, vec2<u32>(4294967295u, 4294967295u), 29820u), vec2<i32>(-44795i, 7833i)), vec4<u32>(4294967295u, 30474u, 4294967295u, 31108u), Struct_2(Struct_1(423f, -656f, vec2<u32>(53765u, 7639u), 1u), vec2<i32>(2147483647i, -1i)), Struct_1(889f, -1336f, vec2<u32>(30691u, 1u), 1u), vec4<f32>(1289f, 709f, 567f, -745f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> vec4<u32> {
    var var_0 = vec3<u32>(max(_wgslsmith_mod_u32(global1.a.d.d & u_input.b.x, firstTrailingBit(u_input.b.x)), 8392u) & u_input.b.x, ~_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x)), u_input.b.x | 0u);
    var var_1 = false;
    var var_2 = Struct_3(global1.a.a, _wgslsmith_div_vec4_u32(select(~vec4<u32>(51561u, u_input.b.x, global1.a.d.d, 1u), global1.a.b, select(false, any(vec2<bool>(false, false)), arg_2 == true)), ~_wgslsmith_div_vec4_u32(vec4<u32>(60159u, 26532u, 4294967295u, 0u), global1.a.b)), global1.a.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.a.b) + _wgslsmith_f_op_f32(f32(-1f) * -1249f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.a.a.a))), var_0.yz, ~7947u), global1.a.e);
    var_2 = Struct_3(Struct_2(Struct_1(-390f, _wgslsmith_f_op_f32(ceil(global1.a.a.a.a)), vec2<u32>(49260u ^ global1.a.d.c.x, 1u), var_0.x), ~vec2<i32>(_wgslsmith_mult_i32(51822i, var_2.c.b.x), 3778i)), min(global1.a.b, var_2.b ^ ~var_2.b) << (~countOneBits(global1.a.b << (vec4<u32>(global1.a.c.a.c.x, var_2.d.c.x, 4294967295u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1399f + -1453f)), global1.a.c.a.a, ~countOneBits(vec2<u32>(4294967295u, 10494u)), 1u), vec2<i32>(-13422i << (var_2.a.a.c.x % 32u), global0[_wgslsmith_index_u32(abs(u_input.b.x), 7u)])), global1.a.a.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a.a)), _wgslsmith_f_op_f32(sign(-209f)), -1311f))));
    let var_3 = Struct_2(global1.a.a.a, firstLeadingBit(u_input.d));
    return vec4<u32>(min(select(min(var_3.a.c.x, 1u), global1.a.b.x, !arg_2), global1.a.a.a.c.x) ^ ~1u, var_0.x, var_3.a.d, 11465u);
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = i32(-1i) * -72281i;
    let var_1 = Struct_4(arg_1);
    let var_2 = Struct_2(global1.a.c.a, vec2<i32>(~global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, var_1.a.d.c.x), 7u)], 44466i));
    let var_3 = _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.a.a.a.c, u_input.b.xz), _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, var_1.a.a.a.c.x), ~4294967295u, min(arg_1.d.c.x, 14732u)), 0u, var_2.a.c.x), func_3(arg_1.c.b.x, select(vec2<bool>(any(vec3<bool>(true, true, true)), true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), true), true), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false)))));
    let var_4 = var_2;
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(var_1.a.b, vec4<u32>(countOneBits(_wgslsmith_div_u32(global1.a.c.a.d, 4294967295u)), _wgslsmith_div_u32(~4294967295u, abs(var_1.a.b.x)), var_1.a.d.d, var_4.a.c.x & 4294967295u)), vec4<u32>(countOneBits(firstTrailingBit(func_3(0i, vec2<bool>(true, true), false).x)), _wgslsmith_add_u32(~global1.a.b.x | 1u, ~var_2.a.c.x), _wgslsmith_add_u32(u_input.b.x, (u_input.b.x ^ 0u) >> (~var_1.a.b.x % 32u)), 1u), reverseBits(~countOneBits(var_3 << (var_1.a.b % vec4<u32>(32u)))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = arg_0.a.b.zww;
    global0 = array<i32, 7>();
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~select(arg_0.a.b, global1.a.b, vec4<bool>(false, true, true, false))), min(reverseBits(vec4<u32>(arg_1.a.d, 4294967295u, u_input.b.x, arg_2.c.a.c.x)), global1.a.b), arg_2.b), func_2(-2134f, arg_0.a));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> u32 {
    global1 = Struct_4(global1.a);
    var var_0 = Struct_3(Struct_2(Struct_1(arg_3.a, _wgslsmith_f_op_f32(158f - _wgslsmith_f_op_f32(576f - -2236f)), arg_3.c >> (~u_input.b.yz % vec2<u32>(32u)), 31820u), vec2<i32>(-16525i, -_wgslsmith_add_i32(global1.a.a.b.x, -1i))), reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.d, global1.a.d.c.x, arg_0, arg_2), global1.a.b) | (_wgslsmith_sub_vec4_u32(global1.a.b, global1.a.b) & global1.a.b)), Struct_2(global1.a.a.a, vec2<i32>(-1i, -global1.a.a.b.x)), global1.a.c.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1.a.e + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-805f, global1.a.c.a.a, -741f, 2096f) - global1.a.e)))))));
    var var_1 = global1.a.c.a;
    let var_2 = vec3<f32>(1f, var_1.b, -1000f);
    var var_3 = global1.a.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1026i;
    var_0 = global0[_wgslsmith_index_u32(func_4(~77258u, ~abs(_wgslsmith_mod_u32(firstTrailingBit(global1.a.b.x), u_input.b.x)), abs(abs(_wgslsmith_div_u32(global1.a.d.d, u_input.b.x) << (func_1(Struct_4(Struct_3(global1.a.c, global1.a.b, Struct_2(global1.a.c.a, global1.a.a.b), Struct_1(global1.a.d.b, -2678f, vec2<u32>(u_input.b.x, global1.a.d.c.x), u_input.b.x), vec4<f32>(1000f, global1.a.e.x, 1945f, global1.a.a.a.a))), global1.a.c, global1.a) % 32u))), global1.a.a.a), 7u)];
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.e.yxx - vec3<f32>(global1.a.c.a.a, global1.a.d.a, -503f)) * _wgslsmith_f_op_vec3_f32(global1.a.e.zwz * _wgslsmith_f_op_vec3_f32(-global1.a.e.xxz))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.a.e.yzx)) * _wgslsmith_f_op_vec3_f32(select(global1.a.e.xzw, global1.a.e.zyy, vec3<bool>(false, true, true)))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-283f)), global1.a.a.a.a, _wgslsmith_f_op_f32(-global1.a.c.a.b)));
    global0 = array<i32, 7>();
    var var_2 = ~vec4<i32>(-(~30823i), u_input.d.x, -42628i, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, global0[_wgslsmith_index_u32(1u, 7u)], 2147483647i), select(vec3<i32>(-19766i, -20404i, 2147483647i), vec3<i32>(0i, -1i, global1.a.a.b.x), vec3<bool>(false, false, false)))) ^ -(~(select(vec4<i32>(u_input.d.x, 50010i, 31814i, global0[_wgslsmith_index_u32(global1.a.d.d, 7u)]), vec4<i32>(0i, -6038i, 1i, -2147483647i), vec4<bool>(false, false, true, false)) | vec4<i32>(15966i, -2147483647i, -6444i, global0[_wgslsmith_index_u32(u_input.b.x, 7u)])));
    global0 = array<i32, 7>();
    var var_3 = global1.a.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.c.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a.d.b)) * _wgslsmith_f_op_f32(-global1.a.d.a)))));
}

