struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<f32, 10>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32) -> bool {
    global2 = array<f32, 10>();
    global0 = true;
    var var_0 = Struct_2(~min(0u, 1u ^ u_input.a.x) | (u_input.a.x << (u_input.a.x % 32u)), vec3<u32>(u_input.a.x, abs(4294967295u), 0u << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x) % 32u)));
    global1 = array<Struct_1, 25>();
    var var_1 = !vec3<bool>(~_wgslsmith_add_i32(arg_0, arg_0) != arg_0, true, true);
    return var_1.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 10u)]))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 10u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1, 10u)] * global2[_wgslsmith_index_u32(arg_0.x, 10u)])))))) + 1118f);
    global0 = all(!vec2<bool>(select(true, all(vec3<bool>(false, true, true)), func_3(arg_3)), !(arg_2 >= arg_3)));
    let var_1 = vec2<bool>(all(vec3<bool>(true, true, true)), true);
    global2 = array<f32, 10>();
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, ~arg_1), vec2<u32>(_wgslsmith_mod_u32(16246u, u_input.a.x), abs(u_input.a.x))) != _wgslsmith_mult_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 0u, arg_1), vec4<u32>(4294967295u, u_input.a.x, 73344u, arg_1))));
    return _wgslsmith_f_op_f32(min(1361f, -622f));
}

fn func_1() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1311f), _wgslsmith_f_op_f32(ceil(1229f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 392f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-264f, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]) + vec3<f32>(1870f, -1004f, 1506f))), any(vec4<bool>(true, false, true, true))))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.wyy) & select(u_input.a.x, u_input.a.x, false), 10u)], _wgslsmith_f_op_f32(func_2(u_input.a.zzx, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 0u), _wgslsmith_mod_i32(38147i, -13124i), 2147483647i)), -543f))));
    var var_1 = Struct_3(Struct_2(abs(u_input.a.x), vec3<u32>(~_wgslsmith_dot_vec3_u32(u_input.a.zxw, vec3<u32>(u_input.a.x, 37585u, 1u)), ~115428u, ~1u)), Struct_2(~4294967295u, abs(~vec3<u32>(17526u, 54246u, 9475u))), Struct_2(_wgslsmith_mult_u32(1u, u_input.a.x), _wgslsmith_add_vec3_u32(abs(reverseBits(vec3<u32>(u_input.a.x, 4294967295u, 116613u))), u_input.a.xyx)), !(!vec4<bool>(false, true, true, all(vec3<bool>(false, true, false)))), Struct_2(u_input.a.x, ~vec3<u32>(~4294967295u, 1u ^ u_input.a.x, ~4294967295u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_f_op_f32(abs(-625f)), _wgslsmith_f_op_f32(f32(-1f) * -2117f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1238f, -2012f, 477f, global2[_wgslsmith_index_u32(66032u, 10u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(18370u, 10u)], var_0.x, -572f, -603f) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], 2123f, global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(23118u, 10u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 463f, var_0.x, var_0.x))))))));
    var_1 = Struct_3(var_1.b, var_1.c, var_1.e, vec4<bool>(var_1.d.x, true, !(!var_1.d.x), var_1.d.x), var_1.a);
    global0 = var_1.d.x;
    return ~countOneBits(~vec3<u32>(abs(var_1.b.b.x), 1u, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(-14685i, ~abs(0i), i32(-1i) * -1i), select(-40419i << (u_input.a.x % 32u), _wgslsmith_sub_i32(-1i, -1i), true) ^ 45325i));
    var var_1 = !(!vec2<bool>(abs(u_input.a.x) != ~u_input.a.x, (var_0.x >> (23925u % 32u)) > -1i));
    let var_2 = Struct_2(84041u, ~func_1() | ~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)), reverseBits(4294967295u), _wgslsmith_div_u32(4294967295u, u_input.a.x)));
    let var_3 = 1u;
    global2 = array<f32, 10>();
    var var_4 = _wgslsmith_clamp_i32(2147483647i << (_wgslsmith_sub_u32(firstTrailingBit(4294967295u) ^ ~9746u, var_2.b.x) % 32u), firstLeadingBit(var_0.x), -min(-49444i, abs(min(-2147483647i, 1i))));
    global1 = array<Struct_1, 25>();
    var var_5 = _wgslsmith_sub_i32(59757i, var_0.x << (_wgslsmith_sub_u32(~(~13812u), 1u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a.x, u_input.a.x, var_3, abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 8238u, u_input.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_3, 10u)], global2[_wgslsmith_index_u32(var_3, 10u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 10u)] * 682f))))))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, ~(-2147483647i), i32(-1i) * -1i, var_0.x), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, 2147483647i, 2147483647i), vec4<i32>(1i, var_0.x, 0i, 53817i)), ~reverseBits(vec4<i32>(var_0.x, 33550i, -67094i, 2147483647i))), select(-_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, 0i)), var_0.xy, !vec2<bool>(var_1.x && var_1.x, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_3, 10u)]) * _wgslsmith_f_op_f32(f32(-1f) * -649f)));
}

