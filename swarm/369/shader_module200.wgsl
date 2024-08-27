struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(0i, 0i, 20207i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(12223i, 47186i, 29121i), vec3<i32>(-1i, 1i, -10477i), vec3<i32>(0i, 25384i, 67064i), vec3<i32>(38852i, 1i, i32(-2147483648)), vec3<i32>(-24941i, 1i, -26229i), vec3<i32>(1i, 0i, 11061i), vec3<i32>(-22567i, 2147483647i, 30505i), vec3<i32>(51727i, 2147483647i, 37523i), vec3<i32>(0i, -13512i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 1i, -18824i), vec3<i32>(47088i, -25091i, -20410i), vec3<i32>(-17318i, 1i, -1i), vec3<i32>(15426i, 1i, 1i), vec3<i32>(1i, -7113i, 28058i), vec3<i32>(2147483647i, -1i, 3512i), vec3<i32>(-44123i, 19869i, 802i));

var<private> global1: Struct_2 = Struct_2(-566f, Struct_1(2147483647i, vec4<i32>(i32(-2147483648), -24891i, -4215i, 2147483647i), -1805f, vec3<bool>(false, false, false), vec2<f32>(-2105f, -541f)));

var<private> global2: array<i32, 13> = array<i32, 13>(2147483647i, -34676i, -17110i, -1i, i32(-2147483648), 8328i, 2147483647i, 1i, 8586i, i32(-2147483648), -30088i, 16069i, 1i);

var<private> global3: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 21448i, 0i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    global2 = array<i32, 13>();
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b.c), _wgslsmith_f_op_f32(sign(-913f)))) + _wgslsmith_f_op_f32(-506f * 932f)) - global1.b.c), global1.b);
    var var_0 = Struct_2(422f, global1.b);
    let var_1 = global1.b.d.x;
    global3 = ~(-countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 15706i), var_0.b.b.xx), var_0.b.b.x, global1.b.a, firstTrailingBit(global1.b.b.x))));
    return global1.b;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global3 = vec4<i32>(global1.b.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(~106907u, ~1u, max(arg_2, arg_2), ~arg_2), ~_wgslsmith_mod_vec4_u32(vec4<u32>(26877u, arg_2, arg_2, arg_2), vec4<u32>(4294967295u, 0u, arg_2, 33725u))) % 32u), reverseBits(global3.x), global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(25216u, 13u)]);
    let var_0 = vec3<i32>(2147483647i ^ u_input.a, global2[_wgslsmith_index_u32(1u, 13u)], global1.b.a);
    var var_1 = !vec3<bool>(arg_1.b.d.x, var_0.x == _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_2, 13u)], global3.x, -18151i), vec3<i32>(u_input.c, -44165i, 20028i)), all(select(!vec4<bool>(arg_1.b.d.x, global1.b.d.x, false, arg_1.b.d.x), !vec4<bool>(true, global1.b.d.x, false, arg_0.x), true)));
    var var_2 = arg_1;
    global0 = array<vec3<i32>, 19>();
    return arg_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = func_3(select(vec3<bool>(arg_2.b.d.x, func_3(arg_2.b.d, Struct_2(-564f, arg_2.b), 732u).b.d.x & (global1.b.c >= 165f), true), !(!select(global1.b.d, arg_2.b.d, vec3<bool>(false, arg_3.x, false))), func_2().d), Struct_2(arg_1, func_3(select(!arg_0, arg_3.yxw, select(global1.b.d, vec3<bool>(arg_3.x, true, arg_2.b.d.x), arg_0)), arg_2, ~_wgslsmith_div_u32(8096u, 98441u)).b), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(9342u, 0u, 34715u, 38193u), vec4<u32>(8601u, 1u, 1u, 4294967295u))), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(1u, 4294967295u, 1u, 21128u)), ~vec4<u32>(0u, 118950u, 1u, 25444u))));
    global2 = array<i32, 13>();
    let var_1 = var_0.b.b;
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(firstTrailingBit(-26765i), i32(-1i) * -2147483647i), 3234i, 1i);
    global1 = Struct_2(_wgslsmith_div_f32(-729f, _wgslsmith_f_op_f32(f32(-1f) * -549f)), func_3(vec3<bool>(_wgslsmith_f_op_f32(select(1000f, var_0.b.c, arg_0.x)) <= 1139f, true, all(arg_0)), func_3(func_2().d, arg_2, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4426u, 67242u, 0u), vec3<u32>(16188u, 86113u, 1u))), 0u).b);
    return global1.b;
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    var var_0 = reverseBits(arg_0.yy);
    global2 = array<i32, 13>();
    var var_1 = func_4(vec3<bool>(global1.b.d.x, !global1.b.d.x, true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f) + -461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-742f))))), func_3(vec3<bool>(select(global1.b.d.x, true, global1.b.d.x || global1.b.d.x), true, true), Struct_2(137f, func_2()), arg_0.x), vec4<bool>(global1.b.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global1.a, global1.a)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a, global1.b.e.x, true))), !func_2().d.x, global1.b.d.x));
    var var_2 = vec3<bool>(~0u < ~firstLeadingBit(~arg_0.x), func_4(vec3<bool>(func_4(vec3<bool>(false, var_1.d.x, global1.b.d.x), var_1.c, Struct_2(-810f, Struct_1(global1.b.b.x, var_1.b, -144f, var_1.d, var_1.e)), vec4<bool>(true, true, global1.b.d.x, false)).d.x, func_4(global1.b.d, global1.b.c, Struct_2(207f, global1.b), vec4<bool>(true, var_1.d.x, true, true)).d.x, false), var_1.c, func_3(var_1.d, func_3(global1.b.d, Struct_2(global1.a, global1.b), var_0.x), _wgslsmith_dot_vec2_u32(arg_0.xy, vec2<u32>(63544u, arg_0.x))), vec4<bool>(true, true, any(vec3<bool>(global1.b.d.x, global1.b.d.x, global1.b.d.x)), all(vec3<bool>(global1.b.d.x, global1.b.d.x, var_1.d.x)))).d.x || var_1.d.x, false);
    var_0 = select(~(~firstLeadingBit(vec2<u32>(4294967295u, 1u))) << (_wgslsmith_mod_vec2_u32(~(~vec2<u32>(8369u, 4539u)), ~arg_0.zy) % vec2<u32>(32u)), ~arg_0.yx, vec2<bool>(var_1.d.x, !var_1.d.x));
    return ~firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.b.x, global3.x, var_1.a) >> (arg_0 % vec3<u32>(32u)), global1.b.b.yzz, var_1.b.wwx << (arg_0 % vec3<u32>(32u)))) ^ (abs(global0[_wgslsmith_index_u32(39761u, 19u)]) & -(~countOneBits(vec3<i32>(global2[_wgslsmith_index_u32(arg_0.x, 13u)], -56232i, -10109i))));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = global1.b;
    var var_1 = arg_3;
    var var_2 = global1.b.d.zx;
    global3 = max(abs(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_0.x, 14736i), -global1.b.b.x, 2112i), func_3(!var_0.d, func_3(var_0.d, Struct_2(-1889f, Struct_1(u_input.b.x, var_0.b, 1035f, var_0.d, var_0.e)), 11218u), arg_1.x).b.a, 1i, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(7444u, arg_3), 13u)])), abs(_wgslsmith_add_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(max(arg_1.x, 4776u), 13u)], -47772i, var_0.a, func_4(var_0.d, -792f, Struct_2(459f, global1.b), vec4<bool>(var_0.d.x, true, global1.b.d.x, global1.b.d.x)).a), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(global1.b.b, vec4<i32>(0i, arg_0.x, global3.x, global2[_wgslsmith_index_u32(0u, 13u)])), vec4<i32>(global2[_wgslsmith_index_u32(arg_1.x, 13u)], 12789i, global3.x, global3.x)))));
    let var_3 = ~(~(-select(-vec3<i32>(-2147483647i, -13621i, 2147483647i), ~vec3<i32>(arg_0.x, 49265i, var_0.a), !global1.b.d)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-1110f, _wgslsmith_f_op_f32(global1.a - global1.a)))), func_5(vec2<i32>(_wgslsmith_dot_vec3_i32(func_1(vec3<u32>(1u, 0u, 4294967295u)), vec3<i32>(global2[_wgslsmith_index_u32(21565u, 13u)], -2147483647i, 2147483647i)), firstLeadingBit(global3.x)), ~(~countOneBits(vec4<u32>(22144u, 4294967295u, 24466u, 43361u))), abs(select(4294967295u, _wgslsmith_clamp_u32(4294967295u, 0u, 75880u), global1.b.d.x)), ~(~(~28426u))));
    var var_0 = Struct_1(global1.b.a, vec4<i32>(firstTrailingBit(global1.b.a), global3.x, func_3(!vec3<bool>(false, global1.b.d.x, false), func_3(select(global1.b.d, global1.b.d, global1.b.d), func_3(vec3<bool>(false, global1.b.d.x, global1.b.d.x), Struct_2(899f, global1.b), 1u), ~0u), 53667u).b.a, _wgslsmith_dot_vec2_i32(min(vec2<i32>(-26722i, 0i) | global3.zx, global3.zy), vec2<i32>(global3.x, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(8304u, 19u)], global1.b.b.ywy)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-984f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1424f * 944f), 647f))))), vec3<bool>(false, true, true), global1.b.e);
    global0 = array<vec3<i32>, 19>();
    global2 = array<i32, 13>();
    global0 = array<vec3<i32>, 19>();
    let var_1 = 1u;
    global3 = countOneBits(var_0.b);
    var var_2 = Struct_2(-1225f, Struct_1(reverseBits(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(var_1, var_1)), 13u)]), _wgslsmith_add_vec4_i32(global1.b.b, ~global1.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.e.x, var_0.e.x)))), global1.a), !vec3<bool>(global1.b.d.x, true, var_0.a < u_input.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(global1.b.e.x + var_0.c), -979f), vec2<f32>(var_0.c, _wgslsmith_f_op_f32(-352f + global1.a)), vec2<bool>(var_0.d.x, var_0.d.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c, var_2.b.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.e.x, var_0.c)), var_2.a), vec4<f32>(158f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(447f + -830f) - _wgslsmith_f_op_f32(-var_2.b.e.x))))), ~(-1i ^ func_4(global1.b.d, _wgslsmith_f_op_f32(-var_2.a), Struct_2(-223f, var_2.b), !vec4<bool>(global1.b.d.x, false, true, global1.b.d.x)).a), ~2147483647i);
}

