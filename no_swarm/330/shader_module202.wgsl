struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<bool, 22>;

var<private> global2: vec3<i32> = vec3<i32>(-1i, 2147483647i, -5303i);

var<private> global3: array<u32, 30> = array<u32, 30>(26691u, 4294967295u, 1u, 13369u, 611u, 46746u, 1u, 84019u, 0u, 45235u, 1u, 0u, 4294967295u, 9994u, 1u, 10020u, 1u, 36715u, 0u, 915u, 9207u, 58014u, 36373u, 90162u, 4294967295u, 0u, 4294967295u, 74352u, 2470u, 1u);

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<bool>) -> f32 {
    global2 = firstLeadingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, 1i, -22871i), arg_1.wxx) | arg_1.xwy);
    let var_0 = Struct_2(min(_wgslsmith_dot_vec2_i32(global2.zz, global2.zx), ~(21243i ^ global2.x)), -1250f, 40468u, Struct_1(0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -945f), -1073f, 434f, -316f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-220f, 675f, 818f, 318f), vec4<f32>(-1428f, -472f, 742f, -2370f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1813f, 1000f, -294f, 707f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-736f, -1105f, -121f, 815f) * vec4<f32>(-353f, -501f, 625f, -1454f)))))));
    global1 = array<bool, 22>();
    global4 = _wgslsmith_mod_i32(-var_0.d.a, _wgslsmith_div_i32(25318i, arg_1.x));
    var var_1 = select(vec3<bool>(!(_wgslsmith_f_op_f32(-var_0.b) > -754f), true, all(select(select(vec4<bool>(arg_2.x, arg_2.x, arg_0, arg_0), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_0, true, arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 22u)])), select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 22u)], arg_2.x, true), vec4<bool>(arg_0, true, false, arg_2.x), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.c, 22u)], global1[_wgslsmith_index_u32(42355u, 22u)], arg_0)), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], true)))), arg_2, global1[_wgslsmith_index_u32(0u, 22u)]);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1196f)), _wgslsmith_f_op_f32(f32(-1f) * -427f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(773f)))));
    let var_1 = !vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 22u)], false);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) - _wgslsmith_f_op_f32(func_3(var_1.x, vec4<i32>(1i, -25342i, 1i, global2.x), vec3<bool>(var_1.x, true, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0 != var_0, vec4<i32>(-2147483647i, -2147483647i, -1i, global2.x) << (vec4<u32>(u_input.b.x, 53094u, 4294967295u, 116976u) % vec4<u32>(32u)), vec3<bool>(var_1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_f32(var_0 + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1022f))) - 2221f), var_0)));
    global3 = array<u32, 30>();
    global4 = u_input.a;
    return global0[_wgslsmith_index_u32(0u, 12u)];
}

fn func_1() -> f32 {
    global1 = array<bool, 22>();
    global3 = array<u32, 30>();
    global3 = array<u32, 30>();
    var var_0 = Struct_2(_wgslsmith_mod_i32(-(~(-17810i)), -11817i), _wgslsmith_f_op_f32(f32(-1f) * -1086f), ~1u, func_2(), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -188f, 668f, -485f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(511f, 718f, -753f, -1644f), vec4<f32>(-523f, -1515f, -1000f, -482f), vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 30u)], 22u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(529f, 1396f, -980f, 1316f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-421f, 1000f, -1061f, -684f) + vec4<f32>(1145f, -316f, 1166f, -294f)))))));
    let var_1 = Struct_1(_wgslsmith_div_i32(~(firstLeadingBit(80016i) << (min(u_input.b.x, 4294967295u) % 32u)), -34517i));
    return -963f;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_u32(~(~633u) | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 35092u), vec2<u32>(0u, u_input.b.x)), u_input.b.x);
    let var_1 = Struct_2(arg_1, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, vec4<i32>(-1i, arg_1, global2.x, -2147483647i), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(71057u, 22u)]))) - _wgslsmith_f_op_f32(ceil(1056f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-633f)), arg_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2, arg_2)))), ~_wgslsmith_clamp_u32(~(~global3[_wgslsmith_index_u32(u_input.b.x, 30u)]), u_input.b.x, countOneBits(select(0u, 0u, false))), Struct_1(global2.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1816f, 952f, _wgslsmith_f_op_f32(f32(-1f) * -115f), -484f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, arg_2, -620f, arg_2)))))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(ceil(-1846f)))), 881f);
    global3 = array<u32, 30>();
    let var_3 = Struct_2(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(sign(-1637f)))))), 6448u, func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-139f + 658f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(func_1()), -1329f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1280f, 1993f, var_1.e.x, 358f)), _wgslsmith_f_op_vec4_f32(var_1.e - var_1.e)))))));
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<i32>(_wgslsmith_sub_i32(-u_input.a, min(0i, 0i)), _wgslsmith_mult_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 39765i, 1i), vec3<i32>(-1i, global2.x, global2.x)))), u_input.a, _wgslsmith_f_op_f32(func_1()));
    let var_1 = select(vec3<i32>(max(countOneBits(-19332i), 20624i), global2.x, var_0.a), select(vec3<i32>(var_0.a, var_0.a, -54968i), reverseBits(~(-vec3<i32>(0i, -2147483647i, 2147483647i))), !all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], true, true, global1[_wgslsmith_index_u32(0u, 22u)]))), true);
    let var_2 = true;
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-342f, 1100f, -583f, -1922f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -264f, -1000f, 665f))))), vec2<u32>(1u, firstTrailingBit(countOneBits(1u))), ~u_input.b.yzz);
}

