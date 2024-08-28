struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: array<bool, 31> = array<bool, 31>(false, true, false, true, true, false, false, false, true, false, false, true, true, false, false, true, false, false, false, false, false, true, false, false, true, true, false, false, false, false, true);

var<private> global3: vec2<f32>;

var<private> global4: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(-9941i, -22724i, -1512i), vec3<i32>(-6110i, -51957i, 43961i), vec3<i32>(-88644i, 0i, 2147483647i), vec3<i32>(1i, 0i, -51556i), vec3<i32>(18103i, -5433i, 0i), vec3<i32>(i32(-2147483648), 59817i, i32(-2147483648)), vec3<i32>(38741i, 0i, 2147483647i), vec3<i32>(-9056i, -7340i, 26002i), vec3<i32>(-19576i, 0i, 19854i), vec3<i32>(2147483647i, -39367i, -1i), vec3<i32>(36329i, 2147483647i, 0i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), 69415i), vec3<i32>(0i, 0i, 0i), vec3<i32>(i32(-2147483648), 39980i, 2147483647i), vec3<i32>(22248i, 0i, 2147483647i), vec3<i32>(-1i, 0i, -1302i), vec3<i32>(1i, -8731i, 1i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(-28782i, 25578i, 2548i), vec3<i32>(2147483647i, 27203i, -1i), vec3<i32>(-1i, 27161i, -3255i), vec3<i32>(2147483647i, 39071i, 2147483647i), vec3<i32>(0i, -31433i, 31985i), vec3<i32>(-1193i, 0i, -25539i), vec3<i32>(11193i, 1i, 19492i), vec3<i32>(-2049i, -1i, -23588i), vec3<i32>(-4656i, -1i, 47719i), vec3<i32>(-27041i, 0i, -61008i), vec3<i32>(-50585i, 26663i, 33601i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<u32>) -> f32 {
    let var_0 = ~_wgslsmith_add_vec2_i32(vec2<i32>(-60391i, arg_2.b), min(~(~vec2<i32>(arg_2.b, arg_2.b)), select(vec2<i32>(arg_2.b, 0i), vec2<i32>(arg_2.b, -1i), vec2<bool>(false, arg_2.a)) >> (reverseBits(vec2<u32>(42597u, u_input.b)) % vec2<u32>(32u))));
    return global3.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> u32 {
    global1 = array<vec4<f32>, 22>();
    var var_0 = 38130i;
    let var_1 = arg_0.x | abs(2980u);
    var var_2 = Struct_1(abs(arg_1.x), _wgslsmith_mod_u32(u_input.a.x, min(0u, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_1, var_1), vec4<u32>(u_input.a.x, u_input.b, 5592u, 1u) ^ vec4<u32>(26851u, u_input.a.x, 4294967295u, 34916u)), 36249u, select(~39178u, _wgslsmith_div_u32(1u, var_1), global3.x > global3.x), 43957u), firstLeadingBit(~vec4<u32>(arg_0.x, 0u, var_1, u_input.a.x)) ^ (vec4<u32>(1u, var_1, 1u, 1u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 23230u, 47101u, 14472u), vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.b)))));
    let var_3 = ~59829i;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(6929u, 9474u, var_2.c, 55224u), vec4<u32>(arg_0.x, 22087u, 0u, 14226u), vec4<u32>(12074u, var_2.b, var_2.c, u_input.a.x)), vec4<u32>(u_input.b, var_2.c, var_2.c, var_1) << (vec4<u32>(var_1, var_1, 44738u, u_input.b) % vec4<u32>(32u)))), vec4<u32>(var_1, ~0u >> (u_input.a.x % 32u), 63181u, abs(~4294967295u))), firstLeadingBit(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(11299u, 0u, arg_0.x, var_2.b), vec4<u32>(1877u, 1u, u_input.b, var_2.b)))));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_3(-arg_0.b & arg_0.b, _wgslsmith_f_op_f32(sign(-510f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-292f, _wgslsmith_f_op_f32(func_2(vec4<f32>(arg_1, arg_1, 1000f, 722f), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 31u)], arg_3)), arg_0, select(arg_2.yz, arg_2.yy, arg_3)))))));
    var var_1 = abs(arg_2.xz);
    var var_2 = !vec2<bool>(true & (true == (global2[_wgslsmith_index_u32(var_1.x, 31u)] || true)), true);
    var_2 = select(select(vec2<bool>(arg_3, global2[_wgslsmith_index_u32(func_3(~arg_2.xz, -vec3<i32>(2871i, 1i, -18775i)), 31u)]), vec2<bool>(true, arg_3), false), !select(vec2<bool>(true, any(vec4<bool>(false, false, false, arg_0.a))), vec2<bool>(true, true), vec2<bool>(true, arg_3 & var_2.x)), !vec2<bool>(true, _wgslsmith_div_f32(286f, 658f) <= _wgslsmith_f_op_f32(sign(-1014f))));
    var var_3 = firstLeadingBit(select(vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -1i, var_0.a, 23013i), abs(min(-45558i, var_0.a)), -13358i, var_0.a), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_0.a, var_0.a, -23008i, 44391i)), ~vec4<i32>(-21616i, var_0.a, -2131i, arg_0.b), -vec4<i32>(var_0.a, var_0.a, arg_0.b, 2147483647i)) >> (~(vec4<u32>(1u, var_1.x, 0u, 0u) << (vec4<u32>(u_input.a.x, arg_2.x, u_input.a.x, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_3));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>) -> StorageBuffer {
    global3 = vec2<f32>(-212f, -284f);
    global1 = array<vec4<f32>, 22>();
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global3.x) - vec2<f32>(global3.x, arg_0))), vec2<f32>(-609f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    global1 = array<vec4<f32>, 22>();
    var var_0 = Struct_3(36329i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(arg_1.c.x * global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(149f, _wgslsmith_f_op_f32(-435f + global3.x))), any(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 31u)], true))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -1026f), _wgslsmith_f_op_f32(arg_0 - -1425f))));
    return StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_2, arg_2), select(arg_1.b, var_0.a, arg_1.a), firstLeadingBit(arg_2.x), arg_1.b), vec4<i32>(-2147483647i, arg_1.b, var_0.a, -arg_2.x)) >> (vec4<u32>(select(0u, 4294967295u, arg_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(4294967295u, 19559u, 21640u)) << (~u_input.b % 32u), u_input.b, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.zy * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.c.zx - arg_1.c.zy))))), ~(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-8257i, 1i), vec2<i32>(37134i, 18988i)), ~vec2<i32>(-1i, -2522i)), max(vec2<i32>(-30396i, 113714i), vec2<i32>(2147483647i, -44794i)) >> (select(vec2<u32>(1u, 0u), vec2<u32>(u_input.a.x, u_input.b), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 31u)])) % vec2<u32>(32u)))), min(firstLeadingBit(1u) << (~_wgslsmith_div_u32(u_input.a.x, u_input.b) % 32u), u_input.a.x), u_input.a.x);
    var var_1 = Struct_3(~max(-29573i, _wgslsmith_clamp_i32(var_0.a & 138i, select(var_0.a, var_0.a, false), var_0.a)), -970f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + -353f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))));
    global1 = array<vec4<f32>, 22>();
    global3 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), -762f);
    var var_2 = true;
    let x = u_input.a;
    s_output = func_4(860f, func_1(Struct_2(global2[_wgslsmith_index_u32(~(4294967295u << (u_input.b % 32u)), 31u)], var_1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 275f, 313f, 928f)), false))), global3.x, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 6498u, var_0.c), vec3<u32>(u_input.b, u_input.a.x, var_0.c)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(57637u, u_input.a.x, 12945u), vec3<u32>(75520u, 58574u, 1u))), true), abs(vec2<i32>(~23268i, i32(-1i) * -2147483647i) ^ _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(-67451i, var_0.a)), max(vec2<i32>(var_0.a, var_0.a), vec2<i32>(0i, var_0.a)), vec2<i32>(21923i, var_1.a))));
}

