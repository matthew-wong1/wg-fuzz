struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> u32 {
    global1 = Struct_2(~(~global1.a), -1126f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1.c)))));
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, 7716i), countOneBits(-(~(i32(-1i) * -13474i))));
    var var_1 = 1u;
    global1 = arg_1.c;
    var_1 = ~19939u;
    return 1u & ~arg_1.b.x;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = vec3<u32>(select(~firstLeadingBit(arg_0.d.a.x), ~func_3(1u, global0[_wgslsmith_index_u32(~0u, 31u)]), true), _wgslsmith_dot_vec2_u32(~abs(~vec2<u32>(u_input.a, 4294967295u)), ~firstLeadingBit(vec2<u32>(arg_1.d.a.x, 64261u))), _wgslsmith_dot_vec3_u32(vec3<u32>((u_input.a & arg_0.c.a.x) | 34313u, min(abs(u_input.a), ~u_input.a), global1.a.x), vec3<u32>(arg_0.b.x, 1u, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.b.x, _wgslsmith_f_op_f32(arg_1.c.b * arg_0.a), global1.b, _wgslsmith_f_op_f32(select(306f, -1646f, true))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(238f, arg_1.c.b, 1434f, global1.c.x))), vec4<f32>(-837f, arg_0.d.c, arg_0.d.b.x, arg_0.a), vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(-1000f, 438f), arg_1.a, arg_0.d.b.x, -1078f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.c.x, -250f, -957f, arg_0.c.c.x) * vec4<f32>(arg_0.a, 359f, 1278f, arg_1.c.c.x)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1822f, -753f, -1000f, 1326f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.b, 1231f, 213f, 1000f), vec4<f32>(-1000f, global1.b, arg_0.c.b, global1.b)), arg_0.d.e.x)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.d.c, global1.b, 380f) * vec4<f32>(arg_1.c.b, arg_1.d.b.x, global1.c.x, arg_0.d.b.x))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1205f, 621f, 449f) - vec4<f32>(arg_1.d.b.x, global1.b, 206f, -1169f)))), !select(select(vec4<bool>(arg_1.d.d, arg_1.d.d, arg_1.d.e.x, true), vec4<bool>(false, arg_0.d.e.x, arg_1.d.d, true), vec4<bool>(arg_1.d.e.x, arg_1.d.d, false, true)), select(vec4<bool>(arg_0.d.d, arg_1.d.e.x, arg_0.d.e.x, false), vec4<bool>(false, arg_0.d.e.x, false, arg_1.d.e.x), arg_0.d.e.x), select(vec4<bool>(arg_0.d.e.x, arg_1.d.e.x, true, arg_1.d.e.x), vec4<bool>(arg_0.d.e.x, false, true, true), vec4<bool>(false, true, true, arg_0.d.e.x))))));
    var var_2 = Struct_2(~global1.a, arg_0.d.c, _wgslsmith_f_op_vec2_f32(round(arg_0.c.c)));
    let var_3 = Struct_3(Struct_1(vec4<u32>(var_2.a.x, ~0u, 65736u, 4294967295u >> (_wgslsmith_sub_u32(global1.a.x, 7035u) % 32u)), vec3<f32>(1000f, global1.b, _wgslsmith_f_op_f32(min(570f, -781f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.c.c.x)), _wgslsmith_f_op_f32(-arg_0.d.c)))), true, !vec2<bool>(false, select(false, arg_0.d.e.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 664f)) * _wgslsmith_f_op_f32(step(595f, _wgslsmith_div_f32(-388f, 140f))))));
    var var_4 = vec2<i32>(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec2_i32(-(u_input.b.zy & vec2<i32>(arg_1.e, arg_0.e)), vec2<i32>(i32(-1i) * -16492i, select(48355i, arg_1.e, true))), 1i), _wgslsmith_clamp_i32(arg_0.e, arg_0.e, -21761i));
    return vec3<bool>(var_3.a.e.x, all(vec4<bool>(arg_0.d.d, true, var_3.a.d, arg_1.d.e.x)), arg_0.d.d);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(~min(vec4<u32>(u_input.a, arg_1, arg_2.d.a.x, global1.a.x), global1.a) ^ ~vec4<u32>(u_input.a, 4294967295u, arg_1, 0u), vec3<f32>(_wgslsmith_f_op_f32(-272f + _wgslsmith_f_op_f32(round(global1.c.x))), _wgslsmith_f_op_f32(-global1.c.x), arg_2.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.c.c.x))))), true, vec2<bool>(true, true)), _wgslsmith_f_op_f32(floor(arg_2.d.c)));
    let var_1 = countOneBits(var_0.a.a);
    let var_2 = all(select(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, var_0.a.e.x), false), !vec3<bool>(arg_2.d.d, var_0.a.e.x, var_0.a.e.x), select(vec3<bool>(false, true, false), vec3<bool>(var_0.a.e.x, true, arg_2.d.e.x), true)), select(vec3<bool>(any(vec3<bool>(true, true, false)), true | var_0.a.d, false && var_0.a.d), !func_2(arg_2, Struct_4(global1.b, global1.a.xxz, arg_2.c, Struct_1(vec4<u32>(42468u, 0u, arg_2.d.a.x, global1.a.x), vec3<f32>(arg_2.d.c, -983f, -1000f), var_0.a.c, var_0.a.e.x, vec2<bool>(arg_2.d.e.x, true)), -3989i)), vec3<bool>(true, true, true)), !vec3<bool>(any(vec4<bool>(true, true, true, arg_2.d.d)), true, var_0.a.d)));
    let var_3 = _wgslsmith_f_op_f32(select(-239f, 216f, true));
    let var_4 = global1.a;
    return Struct_2(~global1.a & firstLeadingBit(vec4<u32>(var_0.a.a.x, global1.a.x, ~var_4.x, select(21083u, 0u, arg_2.d.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-485f, _wgslsmith_f_op_f32(var_3 - var_3), false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a.c, arg_2.d.b.x))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2.c.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(u_input.b << (global1.a % vec4<u32>(32u)), u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, abs(~21049u), global1.a.x), 31u)]);
    global1 = Struct_2(~(global1.a | vec4<u32>(reverseBits(global1.a.x), u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(abs(u_input.b), u_input.a | 51158u, Struct_4(global1.c.x, global1.a.wyw, Struct_2(vec4<u32>(u_input.a, u_input.a, 12023u, global1.a.x), global1.b, vec2<f32>(-2241f, global1.b)), Struct_1(vec4<u32>(7215u, 23769u, u_input.a, global1.a.x), vec3<f32>(1281f, 882f, global1.b), global1.c.x, true, vec2<bool>(true, false)), -69071i)).c.x) - _wgslsmith_f_op_f32(-global1.b)), global1.c);
    let var_0 = u_input.b.zz;
    let var_1 = func_1(abs(vec4<i32>(u_input.c >> (~92700u % 32u), -u_input.c, 1i << (~u_input.a % 32u), countOneBits(~var_0.x))), 6798u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(global1.a.ww, vec2<u32>(59038u, 0u)), ~global1.a.yz), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global1.a.zw, global1.a.wy), vec2<u32>(global1.a.x, global1.a.x))), ~(~select(global1.a.wz, vec2<u32>(global1.a.x, 49533u), vec2<bool>(true, false)))), 31u)]);
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    global1 = func_1(-vec4<i32>(_wgslsmith_clamp_i32(0i, var_0.x, var_2.e), select(max(var_2.e, 22567i), var_2.e, u_input.c > 2147483647i), var_0.x, -1i), var_1.a.x, Struct_4(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(f32(-1f) * -451f)), ~countOneBits(_wgslsmith_sub_vec3_u32(var_1.a.yxx, var_1.a.zxz)), var_2.c, Struct_1(~(~global1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(837f, -2092f, global1.c.x))) + var_2.d.b), _wgslsmith_f_op_f32(f32(-1f) * -1762f), 1u >= var_2.c.a.x, !select(vec2<bool>(var_2.d.e.x, false), vec2<bool>(var_2.d.d, false), var_2.d.e)), -2147483647i));
    let var_3 = vec2<u32>(~var_2.d.a.x, 55809u);
    let var_4 = ~(u_input.b.x ^ _wgslsmith_add_i32(var_0.x, ~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(u_input.b, firstLeadingBit(~global1.a.x), global0[_wgslsmith_index_u32(max(1u, ~17735u), 31u)]).a.x, vec2<i32>(31804i, _wgslsmith_div_i32(var_0.x << (1594u % 32u), -1i) >> (min(global1.a.x, 9053u) % 32u)), select(global1.a.wyw, vec3<u32>(func_1(u_input.b, global1.a.x, Struct_4(global1.c.x, vec3<u32>(0u, var_3.x, 43534u), Struct_2(var_2.c.a, var_1.c.x, var_2.d.b.xz), var_2.d, var_4)).a.x, 0u >> (var_1.a.x % 32u), 2955u ^ var_1.a.x), true) >> (firstLeadingBit(var_2.b) % vec3<u32>(32u)), var_4, global1.b);
}

