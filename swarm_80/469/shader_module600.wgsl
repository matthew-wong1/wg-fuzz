struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(42270u, 31448u, 4294967295u, 3269u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(45271u, 121161u, 1u, 52893u), vec4<u32>(132184u, 4294967295u, 5292u, 38765u), vec4<u32>(0u, 1u, 48764u, 9114u), vec4<u32>(0u, 0u, 0u, 59604u), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 1129u, 18725u, 1u), vec4<u32>(1u, 0u, 27681u, 1u), vec4<u32>(13115u, 64135u, 9876u, 0u), vec4<u32>(23076u, 0u, 0u, 14106u), vec4<u32>(55866u, 43604u, 1u, 1u), vec4<u32>(1u, 50436u, 4294967295u, 0u), vec4<u32>(71284u, 26282u, 4294967295u, 4294967295u), vec4<u32>(9396u, 32980u, 0u, 4441u), vec4<u32>(36848u, 0u, 0u, 20823u), vec4<u32>(7721u, 8511u, 46743u, 27583u), vec4<u32>(8737u, 4294967295u, 74897u, 0u), vec4<u32>(2125u, 0u, 35879u, 56512u), vec4<u32>(4294967295u, 2927u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 11668u, 4294967295u), vec4<u32>(115532u, 5120u, 0u, 50560u), vec4<u32>(64438u, 4294967295u, 21403u, 4294967295u), vec4<u32>(93634u, 1u, 43617u, 47986u), vec4<u32>(6095u, 69959u, 0u, 1u), vec4<u32>(9190u, 13430u, 1u, 0u), vec4<u32>(57394u, 0u, 17169u, 22436u), vec4<u32>(31592u, 0u, 77061u, 1u), vec4<u32>(103423u, 1u, 0u, 13732u));

var<private> global1: Struct_2;

var<private> global2: array<bool, 23> = array<bool, 23>(true, true, true, true, false, true, false, true, false, true, false, true, false, true, false, true, true, false, false, true, false, false, true);

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 4294967295u);

var<private> global4: Struct_5 = Struct_5(4294967295u, Struct_4(vec4<bool>(false, false, true, false), 1000f, vec3<u32>(97761u, 10747u, 1u)), -363f, vec2<u32>(13887u, 4294967295u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global1 = arg_2.d;
    global0 = array<vec4<u32>, 31>();
    global3 = ~_wgslsmith_add_vec3_u32(global4.b.c, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.x, global4.b.c.x, 4294967295u), min(global4.b.c, arg_1)), arg_1 & ~arg_1));
    global0 = array<vec4<u32>, 31>();
    global0 = array<vec4<u32>, 31>();
    return -122f;
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = -(u_input.a.x & 10040i);
    global3 = vec3<u32>(global3.x, abs(min(1u, ~_wgslsmith_mult_u32(10257u, 37295u))), ~_wgslsmith_div_u32(global4.a, 4294967295u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + -770f);
    global0 = array<vec4<u32>, 31>();
    let var_2 = global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_add_u32(0u, ~(~global3.x)), global4.d.x), 23u)];
    return true;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_5 {
    let var_0 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a.a, -342f, -1000f, global4.c))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.a, -424f, 263f, global4.c))) + vec4<f32>(_wgslsmith_div_f32(global1.a.a, global4.c), -1000f, _wgslsmith_f_op_f32(func_2(vec3<f32>(-2477f, -416f, -249f), global4.b.c, Struct_3(global1.a.a, global4.c, vec3<i32>(0i, arg_0, u_input.a.x), Struct_2(global1.a, false), Struct_1(616f, true)), Struct_2(Struct_1(global1.a.a, global2[_wgslsmith_index_u32(4294967295u, 23u)]), false))), _wgslsmith_f_op_f32(-global1.a.a)))));
    global3 = vec3<u32>(global3.x, global4.b.c.x, ~global3.x) << (global4.b.c % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.a.a)), _wgslsmith_f_op_f32(global1.a.a * _wgslsmith_f_op_f32(155f - global1.a.a)), global4.b.a.x))))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(-360f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.a))), 0u > (1u ^ (1u >> (global3.x % 32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1815f + global1.a.a) + 1237f) - global1.a.a) * _wgslsmith_f_op_f32(-global1.a.a)), _wgslsmith_f_op_f32(-global4.c));
    var var_3 = !global4.b.a.zwy;
    return Struct_5(_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(~70u, 43317u)), ~(~_wgslsmith_add_u32(5840u, global4.d.x))), Struct_4(global4.b.a, -404f, abs(~firstLeadingBit(global4.b.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2381f)))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global3.x, 34700u) ^ (_wgslsmith_mult_vec2_u32(global4.b.c.zy, vec2<u32>(4294967295u, global3.x)) >> (vec2<u32>(0u, global3.x) % vec2<u32>(32u))), ~vec2<u32>(1u, 1u) ^ global3.xz, firstLeadingBit(countOneBits(vec2<u32>(0u, 1u))) & global3.xz));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_5) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(abs(646f))) - vec2<f32>(2452f, _wgslsmith_f_op_f32(-global4.c))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.b, global1.a.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, 835f)))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.b.b), _wgslsmith_f_op_f32(global1.a.a * -409f))))))));
    let var_1 = 801f;
    let var_2 = Struct_4(global4.b.a, -213f, _wgslsmith_div_vec3_u32(abs(~firstTrailingBit(vec3<u32>(14856u, 32859u, global3.x))), _wgslsmith_mod_vec3_u32(~vec3<u32>(24513u, 1u, 32550u), global4.b.c)));
    global4 = func_1(u_input.a.x, u_input.a);
    var var_3 = Struct_3(598f, var_2.b, ~_wgslsmith_div_vec3_i32(~(vec3<i32>(42526i, -74922i, 15629i) & vec3<i32>(arg_0, arg_0, -1i)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 36624i, 1i), vec3<i32>(2147483647i, -33510i, 158i), vec3<i32>(u_input.a.x, 1i, 49993i)), -vec3<i32>(1i, -2147483647i, -1i), select(arg_2.b.a.yxx, vec3<bool>(true, true, true), var_2.a.wxz))), Struct_2(global1.a, true), Struct_1(global4.c, ((arg_2.b.a.x & arg_2.b.a.x) && (global4.b.a.x || false)) | var_2.a.x));
    return countOneBits(-(~arg_0 & ~u_input.a.x));
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<i32>) -> Struct_4 {
    global3 = ~vec3<u32>(global4.a, global3.x ^ global3.x, ((global4.a << (33113u % 32u)) & 30845u) << (firstTrailingBit(14203u) % 32u));
    let var_0 = global1.a;
    global3 = vec3<u32>(~global3.x, global4.a, _wgslsmith_mod_u32(5236u, 1u << (~(global4.a >> (58553u % 32u)) % 32u)));
    let var_1 = Struct_5(global4.a, Struct_4(!global4.b.a, global4.b.b, global4.b.c), _wgslsmith_f_op_f32(778f * -798f), ~(~countOneBits(vec2<u32>(global3.x, global3.x) ^ vec2<u32>(29985u, global4.b.c.x))));
    var var_2 = global4.b;
    return Struct_4(var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.b))), vec3<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(0u, 31u)] ^ global0[_wgslsmith_index_u32(var_2.c.x, 31u)], vec4<u32>(var_2.c.x, var_1.a, 21087u, global4.b.c.x)) ^ _wgslsmith_dot_vec2_u32(abs(vec2<u32>(17010u, var_2.c.x)), ~vec2<u32>(3175u, 1u)), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(global3.x, 21660u, 40891u, 65917u), global0[_wgslsmith_index_u32(var_1.b.c.x, 31u)], global4.b.a), vec4<u32>(var_2.c.x, 24255u, ~global4.a, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(79190u, 31u)], global0[_wgslsmith_index_u32(global3.x, 31u)]))), 14510u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec2<bool>(global3.x >= ~global3.x, true), select(vec2<bool>(!global1.a.b, any(global4.b.a)), select(!global4.b.a.ww, vec2<bool>(true, true), global4.b.a.wz), true), select(!global4.b.a.zw, global4.b.a.yz, ~global3.x >= 4294967295u)), func_4(u_input.a.x, ~(~vec3<u32>(0u, global3.x, 0u)), func_1(max(u_input.a.x, u_input.a.x), ~(vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a))), -firstTrailingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(-15670i, u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_1 = u_input.a.x;
    global0 = array<vec4<u32>, 31>();
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, global4.c) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1348f, var_0.b, -269f) + vec3<f32>(682f, -1545f, 341f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1237f, global1.a.a, global1.a.a))))))));
    var var_3 = global4.b.a.x & !all(vec2<bool>(false, true));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-3436f, _wgslsmith_f_op_f32(sign(global1.a.a)), _wgslsmith_f_op_f32(min(-343f, _wgslsmith_f_op_f32(2174f - -340f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(514f, var_0.b, 515f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(228f, var_2.x, 719f) * vec3<f32>(global1.a.a, -801f, global1.a.a)))) * vec3<f32>(_wgslsmith_div_f32(global4.c, global4.b.b), global4.b.b, -247f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-488f, 460f, var_2.x), vec3<f32>(global4.b.b, -249f, 2201f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_f_op_f32(trunc(global1.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -959f)), any(!vec3<bool>(false, var_0.a.x, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, 1000f, -1167f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1874f, 1000f, 1070f) + vec3<f32>(var_0.b, var_2.x, 311f)))))));
    let var_5 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x >> ((global3.x & global3.x) % 32u), _wgslsmith_mult_i32(-11630i, ~var_1), var_1), reverseBits(~(-vec3<i32>(-2147483647i, var_1, var_1))));
    var var_6 = abs(var_5);
    let var_7 = func_1(firstTrailingBit(~28102i), ~(~vec2<i32>(0i, u_input.a.x) ^ select(-vec2<i32>(var_5, 0i), vec2<i32>(-16121i, var_1), func_5(vec2<bool>(true, false), -1i, vec4<i32>(16069i, var_5, var_5, -6759i)).a.yx))).b.a.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(304f))) - _wgslsmith_f_op_f32(min(var_0.b, -1143f))))));
}

