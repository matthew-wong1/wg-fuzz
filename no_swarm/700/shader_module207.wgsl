struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<f32>, 24>;

var<private> global2: array<bool, 22>;

var<private> global3: vec2<u32>;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(331f, 440f, global4.x, 1489f), vec4<f32>(-207f, global0.x, global4.x, 582f), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 22u)], global2[_wgslsmith_index_u32(8383u, 22u)], false)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global0.x, 1059f, -1923f) * vec4<f32>(global0.x, global0.x, global4.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-976f, global4.x, global4.x, -614f))))))));
    let var_0 = Struct_1(!global2[_wgslsmith_index_u32((~u_input.c.x << (~10372u % 32u)) >> (u_input.b.x % 32u), 22u)], ~_wgslsmith_mod_vec3_u32(vec3<u32>(global3.x, _wgslsmith_mod_u32(global3.x, 37811u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c.x), vec3<u32>(u_input.b.x, global3.x, 4294967295u))), vec3<u32>(u_input.c.x, ~global3.x, u_input.b.x ^ global3.x)), ~(~firstTrailingBit(vec2<u32>(global3.x, u_input.b.x))), vec3<bool>(all(select(vec3<bool>(global2[_wgslsmith_index_u32(17374u, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], false, global2[_wgslsmith_index_u32(global3.x, 22u)]), true)) != global2[_wgslsmith_index_u32(~global3.x, 22u)], !global2[_wgslsmith_index_u32(~4294967295u, 22u)], global2[_wgslsmith_index_u32(abs(u_input.c.x), 22u)]));
    global0 = vec4<f32>(982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(floor(global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_1 = 0u;
    var var_2 = firstTrailingBit(firstTrailingBit(var_0.b));
    return select(true, any(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(global3.x, 22u)], false, var_0.a), select(vec4<bool>(false, false, var_0.d.x, var_0.a), vec4<bool>(global2[_wgslsmith_index_u32(1u, 22u)], true, true, var_0.d.x), var_0.d.x), any(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]))), select(!vec4<bool>(var_0.a, true, global2[_wgslsmith_index_u32(u_input.b.x, 22u)], false), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], false, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(var_0.c.x, 22u)]), false), select(vec4<bool>(var_0.d.x, true, false, global2[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 22u)], true, true, false), true)), var_0.d.x && true)), true);
}

fn func_2(arg_0: vec3<f32>) -> vec4<f32> {
    global1 = array<vec2<f32>, 24>();
    var var_0 = all(vec4<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.b.x), ~(~u_input.c.x)), 22u)], !all(vec2<bool>(global2[_wgslsmith_index_u32(44581u, 22u)], false)) && !global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(~0u, 22u)]));
    var var_1 = !vec3<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, ~u_input.c.x), 22u)], !(_wgslsmith_f_op_f32(global4.x + 1000f) > global4.x));
    var var_2 = Struct_3(Struct_2(Struct_1(var_1.x | global2[_wgslsmith_index_u32(u_input.b.x, 22u)], ~countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, global3.x)), vec2<u32>(global3.x, ~u_input.b.x), select(vec3<bool>(global2[_wgslsmith_index_u32(13014u, 22u)], true, true), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(1u, 22u)]), func_3())), Struct_1(_wgslsmith_add_i32(u_input.a, 9634i) > u_input.a, max(vec3<u32>(u_input.c.x, global3.x, 1u), vec3<u32>(u_input.b.x, 0u, 30955u)) | vec3<u32>(1u, global3.x, 9776u), ~vec2<u32>(global3.x, global3.x), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 2147483647i) & vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, -2147483647i)) >> (~(~u_input.b) % vec2<u32>(32u)), ~vec3<u32>(global3.x, u_input.c.x, u_input.b.x), Struct_1(global2[_wgslsmith_index_u32(9818u, 22u)], vec3<u32>(~global3.x, 70640u, 1u), countOneBits(u_input.c ^ u_input.b), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], var_1.x, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]))), firstLeadingBit(vec3<i32>(-u_input.a, _wgslsmith_div_i32(-20813i, u_input.a), u_input.a << (15055u % 32u)) >> (select(select(vec3<u32>(global3.x, u_input.c.x, 4294967295u), vec3<u32>(38509u, 1u, 41064u), vec3<bool>(true, true, var_1.x)), ~vec3<u32>(1u, 1u, u_input.b.x), !vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 22u)], var_1.x, false)) % vec3<u32>(32u))), Struct_2(Struct_1(all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 22u)])), (vec3<u32>(u_input.b.x, global3.x, u_input.c.x) >> (vec3<u32>(u_input.c.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) & (vec3<u32>(54619u, 0u, 12770u) >> (vec3<u32>(9467u, 93738u, u_input.c.x) % vec3<u32>(32u))), u_input.b, select(vec3<bool>(var_1.x, false, global2[_wgslsmith_index_u32(global3.x, 22u)]), select(vec3<bool>(false, true, true), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 22u)])), true)), Struct_1(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], vec3<u32>(select(global3.x, 11797u, false), 48732u << (u_input.b.x % 32u), _wgslsmith_clamp_u32(46453u, 4294967295u, u_input.c.x)), countOneBits(max(u_input.c, u_input.c)), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 22u)], var_1.x))), ~(abs(vec2<i32>(u_input.a, u_input.a)) >> (u_input.c % vec2<u32>(32u))), vec3<u32>(global3.x & 71397u, ~global3.x, ~select(u_input.b.x, global3.x, true)), Struct_1(false, firstLeadingBit(~vec3<u32>(4294967295u, 4294967295u, 4628u)), (vec2<u32>(1u, 0u) >> (u_input.b % vec2<u32>(32u))) | abs(u_input.b), vec3<bool>(var_1.x, var_1.x, var_1.x))), ~65217u, ~global3.x);
    let var_3 = ~countOneBits(_wgslsmith_add_i32(abs(~(-2147483647i)), -332i));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 1000f, -520f, global4.x))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -847f, 893f, global0.x)))))));
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1989f), _wgslsmith_f_op_f32(2679f * global4.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) * global0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, arg_0.x, global0.x, -776f)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global4.x, _wgslsmith_f_op_f32(-721f - -403f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(global0.x - -1648f))), -162f, var_0.x, _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(var_0.yyw)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1453f, 274f, -828f, arg_0.x) + vec4<f32>(866f, global4.x, 268f, global4.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global0.x, 1787f, -406f))), !global2[_wgslsmith_index_u32(max(global3.x & global3.x, u_input.b.x), 22u)])));
    global4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-944f - var_0.x) - 503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f))))), arg_0, arg_0.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 664f)))));
    return ~vec3<u32>(_wgslsmith_clamp_u32(16878u, global3.x >> (min(u_input.c.x, u_input.c.x) % 32u), 1u), u_input.c.x, ~(~(~1u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> f32 {
    global0 = vec4<f32>(-748f, global0.x, _wgslsmith_f_op_f32(-157f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1541f, global0.x))))), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global4.x), 1u < (u_input.b.x ^ 1u))));
    let var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(~_wgslsmith_div_i32(-12840i, arg_3.c.x), 0i), vec2<i32>(1i, max(select(_wgslsmith_dot_vec2_i32(vec2<i32>(29628i, arg_3.c.x), vec2<i32>(1i, -41617i)), arg_3.c.x | -1i, false && arg_1), u_input.a)));
    let var_1 = true;
    global4 = _wgslsmith_f_op_vec2_f32(floor(global0.zx));
    let var_2 = _wgslsmith_dot_vec3_u32(firstLeadingBit(func_1(global0.yx)), vec3<u32>(~_wgslsmith_add_u32(select(4294967295u, arg_3.e.c.x, true), global3.x), 1u, abs(u_input.c.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1203f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), _wgslsmith_f_op_f32(func_4(func_1(vec2<f32>(-1142f, 1000f)), any(vec4<bool>(global2[_wgslsmith_index_u32(77351u, 22u)], false, true, false)), u_input.a, Struct_2(Struct_1(true, vec3<u32>(1614u, 4294967295u, 8777u), u_input.b, vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)])), Struct_1(global2[_wgslsmith_index_u32(4675u, 22u)], vec3<u32>(u_input.c.x, u_input.c.x, 38178u), u_input.c, vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 22u)], false, global2[_wgslsmith_index_u32(20960u, 22u)])), vec2<i32>(u_input.a, -1928i), vec3<u32>(42687u, u_input.c.x, global3.x), Struct_1(true, vec3<u32>(4725u, u_input.c.x, 9407u), vec2<u32>(1u, global3.x), vec3<bool>(global2[_wgslsmith_index_u32(49242u, 22u)], true, global2[_wgslsmith_index_u32(73259u, 22u)]))))) >= -229f, any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(58459u, 22u)]), vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(0u, 22u)])))), !select(!select(vec3<bool>(false, false, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(73497u, 22u)], true)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(8724u, 22u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)], false), false), vec3<bool>(false, false, global2[_wgslsmith_index_u32(26331u, 22u)]), !global2[_wgslsmith_index_u32(3325u, 22u)]), select(select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global3.x, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(48866u, 22u)], false), vec3<bool>(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(global3.x, 22u)], global2[_wgslsmith_index_u32(12656u, 22u)])), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(119441u, 22u)], false), any(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 22u)])))), (any(select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(0u, 22u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], true))) == (2147483647i <= _wgslsmith_sub_i32(u_input.a, 10300i))) == false);
    var var_1 = u_input.c;
    let var_2 = true;
    var var_3 = any(select(select(!(!vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(0u, 22u)], var_0.x, global2[_wgslsmith_index_u32(1u, 22u)])), !vec4<bool>(false, var_0.x, var_0.x, true), select(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(5644u, 22u)], false), vec4<bool>(var_0.x, false, var_0.x, var_2), true), select(vec4<bool>(false, false, var_2, global2[_wgslsmith_index_u32(global3.x, 22u)]), vec4<bool>(false, false, false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 22u)], var_0.x, var_2)), !vec4<bool>(var_0.x, var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 22u)], false))), !vec4<bool>(all(vec3<bool>(var_0.x, global2[_wgslsmith_index_u32(30251u, 22u)], var_0.x)), func_3(), false, false), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_0.x, var_0.x, false), any(select(vec3<bool>(var_2, true, false), vec3<bool>(false, var_2, var_2), true)))));
    var var_4 = global2[_wgslsmith_index_u32(var_1.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 49250u), u_input.b)), _wgslsmith_div_vec3_u32(~vec3<u32>(firstLeadingBit(1u), _wgslsmith_mod_u32(u_input.b.x, 56410u), 4294967295u), vec3<u32>(1u, max(countOneBits(u_input.c.x), countOneBits(0u)), firstLeadingBit(global3.x))));
}

