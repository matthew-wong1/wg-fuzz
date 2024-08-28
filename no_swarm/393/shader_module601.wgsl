struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: Struct_2 = Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec2<u32>(1u, 193471u), vec4<bool>(true, true, true, true), true, vec4<i32>(0i, i32(-2147483648), 1i, -49715i)));

var<private> global2: bool = true;

var<private> global3: vec4<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = abs(_wgslsmith_mod_i32((_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.d.x, global1.b.d.x, -32220i, global1.b.d.x), global1.b.d) | ~16526i) ^ min(~global1.b.d.x, ~(-20221i)), abs(2147483647i)));
    let var_1 = global1.a.x;
    global1 = Struct_2(!(!(!global1.b.b)), global1.b);
    var var_2 = global1.b;
    var var_3 = ~(-2147483647i);
    return -895f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1018f)));
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-955f + -444f), 260f)))), 478f) + _wgslsmith_f_op_f32(-807f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f - -399f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(803f)), _wgslsmith_div_f32(323f, 695f))))));
    global0 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1025f, -1009f)), _wgslsmith_f_op_f32(min(-2022f, -940f))), -1000f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(min(399f, -946f)))))) * 2027f));
    global0 = array<Struct_2, 15>();
    return vec4<bool>(true, false, !func_3(var_1), true);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec4<bool> {
    let var_0 = 43053u;
    global1 = arg_0;
    let var_1 = 446f;
    var var_2 = global0[_wgslsmith_index_u32(u_input.b, 15u)];
    let var_3 = func_2(global0[_wgslsmith_index_u32(~(~global3.x), 15u)]);
    return vec4<bool>(false, func_2(arg_0).x, true, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(select(arg_3.b.b, arg_1.b, any(arg_0.b.zw)), Struct_1(select(vec2<u32>(16910u, arg_1.a.x), ~vec2<u32>(u_input.c.x, arg_3.b.a.x), select(vec2<bool>(false, global1.b.b.x), arg_0.b.zz, vec2<bool>(arg_3.a.x, arg_2.c))) ^ arg_0.a, select(!func_1(Struct_2(vec4<bool>(false, arg_3.b.c, false, global1.a.x), arg_0), arg_1.c), vec4<bool>(true, arg_3.b.b.x, false, true), !vec4<bool>(true, arg_3.b.c, arg_0.b.x, arg_1.b.x)), true, -vec4<i32>(arg_2.d.x, arg_0.d.x, global1.b.d.x, -1i) ^ select(abs(arg_0.d), vec4<i32>(arg_1.d.x, arg_2.d.x, arg_1.d.x, 1i), vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(global1.b.a, !func_2(global0[_wgslsmith_index_u32(~firstLeadingBit(arg_2.a.x), 15u)]), arg_1.c, _wgslsmith_clamp_vec4_i32(-reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.d.x, arg_0.d.x, arg_0.d.x, -7385i), var_0.b.d)), arg_1.d, arg_3.b.d | _wgslsmith_mult_vec4_i32(arg_3.b.d >> (vec4<u32>(arg_3.b.a.x, 4294967295u, 4294967295u, 0u) % vec4<u32>(32u)), arg_3.b.d)));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(select(arg_2.d.x, 1i, true), select(arg_3.b.d.x, 12888i, var_1.b.x), arg_0.d.x & var_0.b.d.x), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global1.b.d.x, 0i), firstTrailingBit(vec3<i32>(-43790i, arg_2.d.x, arg_0.d.x)), arg_3.b.d.yyx), firstLeadingBit(_wgslsmith_sub_vec3_i32(arg_1.d.ywz, var_1.d.zwz)), func_3(_wgslsmith_f_op_f32(step(748f, 1000f))))), ~(-global1.b.d.yyx));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1429f, -1466f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)), -596f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-812f, -1000f, 256f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-289f, 1612f, -1209f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(351f, -1916f)))), 1f, -1160f)))));
    global1 = var_0;
    return -7694i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(~_wgslsmith_mult_u32(global3.x, _wgslsmith_div_u32(0u, global1.b.a.x)), ~(~global3.x & ~global3.x)), !vec4<bool>(global1.a.x || false, all(vec3<bool>(true, global1.a.x, global1.b.b.x)), false, global1.a.x), _wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(global1.b.a.x, 1u) >> (23577u % 32u)) <= global1.b.a.x, vec4<i32>(func_4(global1.b, Struct_1(global1.b.a, vec4<bool>(global1.a.x, global1.a.x, global1.b.b.x, false), all(vec2<bool>(global1.a.x, global1.a.x)), global1.b.d), Struct_1(vec2<u32>(1u, 0u) & global3.zz, select(vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), global1.b.b, vec4<bool>(false, global1.a.x, false, true)), false, firstTrailingBit(global1.b.d)), Struct_2(func_1(global0[_wgslsmith_index_u32(u_input.a, 15u)], global1.b.b.x), global1.b)), global1.b.d.x, global1.b.d.x, ((global1.b.d.x >> (global1.b.a.x % 32u)) | -global1.b.d.x) & ((i32(-1i) * -26176i) >> ((u_input.a ^ global3.x) % 32u))));
    var var_1 = 84231i;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1278f)));
    global0 = array<Struct_2, 15>();
    var var_3 = countOneBits(abs(var_0.d.yz));
    var_1 = global1.b.d.x;
    let var_4 = Struct_2(!(!func_1(Struct_2(vec4<bool>(true, var_0.b.x, false, global1.a.x), Struct_1(vec2<u32>(u_input.b, 2666u), global1.b.b, false, vec4<i32>(var_3.x, -2147483647i, -2147483647i, -27028i))), true)), Struct_1(u_input.c, var_0.b, !(var_2 <= _wgslsmith_f_op_f32(-var_2)), vec4<i32>(select(-42098i, var_3.x >> (global1.b.a.x % 32u), var_0.b.x), firstLeadingBit(global1.b.d.x >> (1u % 32u)), ~abs(var_3.x), _wgslsmith_clamp_i32(countOneBits(0i), 1i, var_3.x << (42561u % 32u)))));
    global3 = vec4<u32>(global3.x, max(~(global3.x | abs(var_4.b.a.x)), 66084u), 0u, _wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.b, 44165u, global1.b.a.x, 4294967295u) ^ vec4<u32>(global1.b.a.x, 96141u, 4294967295u, 29218u), countOneBits(vec4<u32>(global3.x, u_input.a, 0u, var_4.b.a.x))), select(vec4<u32>(abs(var_4.b.a.x), select(u_input.a, var_4.b.a.x, var_0.c), var_0.a.x, select(u_input.c.x, global1.b.a.x, true)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.a.x, u_input.b, 2433u, 0u), vec4<u32>(u_input.c.x, global3.x, 0u, var_4.b.a.x)), all(vec4<bool>(global1.a.x, var_0.c, var_4.b.b.x, global1.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)) * vec2<f32>(1831f, var_2)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, var_2, 303f), vec4<f32>(-1000f, var_2, var_2, var_2)), vec4<f32>(var_2, 1000f, var_2, var_2))))), _wgslsmith_add_vec3_u32(vec3<u32>(~2727u, global3.x, _wgslsmith_clamp_u32(reverseBits(6389u), 29948u, 0u)), vec3<u32>(~min(var_4.b.a.x, var_0.a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, u_input.b, global3.x), vec3<u32>(1u, 89982u, 46078u)), var_4.b.a.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.b.a.x, global1.b.a.x), vec2<u32>(1u, 4294967295u)), global3.xz, var_0.a), select(vec2<u32>(~var_0.a.x, ~global3.x), ~u_input.c & ~vec2<u32>(global3.x, 6750u), !var_0.c)));
}

