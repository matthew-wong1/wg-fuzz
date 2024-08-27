struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(Struct_1(vec4<u32>(1u, 19643u, 38543u, 54784u), false, vec2<bool>(false, true), 4294967295u)), Struct_2(Struct_1(vec4<u32>(32203u, 4294967295u, 644u, 11012u), false, vec2<bool>(false, false), 1u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 15293u), false, vec2<bool>(false, false), 14416u)), Struct_2(Struct_1(vec4<u32>(20246u, 33662u, 0u, 1857u), true, vec2<bool>(false, false), 1u)), Struct_2(Struct_1(vec4<u32>(30366u, 0u, 36222u, 14561u), false, vec2<bool>(false, false), 38696u)), Struct_2(Struct_1(vec4<u32>(0u, 10862u, 229u, 1u), false, vec2<bool>(false, false), 1u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 37029u, 52858u, 4700u), false, vec2<bool>(false, false), 1u)), Struct_2(Struct_1(vec4<u32>(1u, 43592u, 1u, 1u), false, vec2<bool>(false, false), 1u)), Struct_2(Struct_1(vec4<u32>(1u, 13308u, 0u, 1u), false, vec2<bool>(true, false), 69446u)), Struct_2(Struct_1(vec4<u32>(54217u, 1u, 22839u, 0u), false, vec2<bool>(false, true), 4294967295u)), Struct_2(Struct_1(vec4<u32>(1u, 1u, 91641u, 66697u), true, vec2<bool>(true, true), 0u)), Struct_2(Struct_1(vec4<u32>(52123u, 0u, 0u, 50865u), true, vec2<bool>(true, true), 4294967295u)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 1u), true, vec2<bool>(true, false), 22030u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 75185u, 7764u, 125018u), false, vec2<bool>(false, false), 2488u)), Struct_2(Struct_1(vec4<u32>(0u, 44841u, 0u, 24044u), true, vec2<bool>(true, false), 1u)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 103613u, 62846u), true, vec2<bool>(true, true), 10477u)), Struct_2(Struct_1(vec4<u32>(53676u, 4294967295u, 27678u, 0u), false, vec2<bool>(true, false), 4294967295u)), Struct_2(Struct_1(vec4<u32>(0u, 19728u, 6961u, 0u), false, vec2<bool>(true, false), 0u)), Struct_2(Struct_1(vec4<u32>(0u, 22679u, 77159u, 43987u), true, vec2<bool>(false, false), 26029u)), Struct_2(Struct_1(vec4<u32>(8842u, 0u, 0u, 0u), false, vec2<bool>(true, true), 88u)), Struct_2(Struct_1(vec4<u32>(9473u, 4294967295u, 539u, 0u), true, vec2<bool>(true, true), 4294967295u)), Struct_2(Struct_1(vec4<u32>(1u, 102261u, 15416u, 4294967295u), true, vec2<bool>(false, false), 0u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 77709u, 0u), true, vec2<bool>(false, true), 4294967295u)), Struct_2(Struct_1(vec4<u32>(36325u, 1u, 28480u, 4294967295u), true, vec2<bool>(false, true), 23535u)), Struct_2(Struct_1(vec4<u32>(0u, 0u, 1u, 1u), false, vec2<bool>(false, false), 4294967295u)), Struct_2(Struct_1(vec4<u32>(71265u, 0u, 14067u, 48726u), true, vec2<bool>(false, false), 4294967295u)), Struct_2(Struct_1(vec4<u32>(8732u, 0u, 63628u, 0u), false, vec2<bool>(true, false), 1u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 20704u, 9788u, 13501u), true, vec2<bool>(false, false), 110569u)), Struct_2(Struct_1(vec4<u32>(4294967295u, 36739u, 23045u, 0u), false, vec2<bool>(true, true), 1u)), Struct_2(Struct_1(vec4<u32>(71553u, 0u, 1u, 61210u), true, vec2<bool>(true, false), 12002u)), Struct_2(Struct_1(vec4<u32>(67088u, 40983u, 18563u, 4294967295u), false, vec2<bool>(false, true), 8846u)));

var<private> global2: f32;

var<private> global3: array<Struct_3, 26>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 26u)];
    var var_1 = vec4<u32>(0u & ~(var_0.b.d << (~var_0.b.d % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, u_input.d, select(23108u, var_0.a.a.x, false)), var_0.b.a.yyx & (vec3<u32>(0u, var_0.b.a.x, 0u) >> (~vec3<u32>(0u, var_0.b.a.x, var_0.a.d) % vec3<u32>(32u)))), 1u, ~(~abs(u_input.d)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 633f, global0.x, var_0.d.x) - vec4<f32>(-555f, var_0.d.x, var_0.d.x, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.d.x, var_0.d.x, 1218f, -284f), vec4<f32>(-1068f, global0.x, var_0.d.x, var_0.d.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(678f, -294f, global0.x, -128f) - vec4<f32>(794f, -348f, -735f, 1240f))), true)) - vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x, _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(floor(467f))))));
    var_1 = var_0.a.a;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-554f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.x))))));
    return 0u;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: f32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(705f * arg_0), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(arg_2, arg_0, false)), _wgslsmith_f_op_f32(floor(-779f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1763f, 2148f, global0.x, arg_2))))))));
    global3 = array<Struct_3, 26>();
    var var_0 = -596f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    return u_input.a;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global3 = array<Struct_3, 26>();
    var var_0 = func_3(global0.x, -abs(u_input.a.xy) | -vec2<i32>(-1i, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * 1769f), global0.x)))) << (_wgslsmith_sub_vec3_u32(abs(abs(u_input.b)), ~u_input.b) % vec3<u32>(32u));
    let var_1 = true;
    var var_2 = 1242f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-340f)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(trunc(global0.x))))) + _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(ceil(-1012f)))))) + 1579f);
    return ~29845u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(~select(firstLeadingBit(41765u), func_1(u_input.a), true), 0u), ~func_2(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), 70567u, firstLeadingBit(18357u), ~4294967295u), vec4<u32>(0u, 1u, var_0, _wgslsmith_clamp_u32(70798u, var_0, 0u))), true, vec2<bool>(all(vec3<bool>(false, true, false)), false), func_2(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true))), Struct_1(vec4<u32>(1u, 57146u, var_0, ~(~10983u)), select(true | (u_input.d != 27001u), true, true), vec2<bool>(true, true), select(~(~1u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0, u_input.b.x, 1u)), _wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(var_0, 37023u, 4294967295u))), false)), -u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(min(global0.x, -117f)), global0.x, _wgslsmith_f_op_f32(1489f - 962f)), global0.zxw))));
    let var_2 = global3[_wgslsmith_index_u32(max(30323u, abs(~893u) ^ select(u_input.d, var_1.a.d, all(var_1.b.c))), 26u)];
    global1 = array<Struct_2, 31>();
    global2 = 208f;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d.x, 1278f, var_1.d.x, var_2.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(971f, var_1.d.x, -1483f, var_2.d.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.d.x, 2349f, 984f, -480f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1218f, -235f, 1000f, var_2.d.x) + vec4<f32>(2803f, global0.x, 1708f, var_2.d.x)))), vec4<f32>(-596f, -387f, var_2.d.x, 1000f))), select(vec4<bool>(var_1.a.b, true, var_1.a.c.x, true), vec4<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(var_2.b.c.x, false, var_1.a.c.x)), all(vec2<bool>(var_1.a.c.x, true)), any(vec4<bool>(var_1.b.c.x, var_2.b.b, var_1.b.c.x, var_1.b.c.x))), max(var_2.c, -1i) < -1i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1102f, var_1.d.x, -163f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1040f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_2.d.x + -884f), _wgslsmith_f_op_f32(global0.x * var_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1744f), var_1.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1136f, var_1.d.x, var_2.d.x, global0.x), vec4<f32>(1098f, -242f, -3017f, -844f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 525f, var_2.d.x, 347f)))))), vec4<bool>(func_2(select(vec4<bool>(var_2.a.c.x, var_1.a.b, false, var_2.a.b), vec4<bool>(true, var_2.a.c.x, var_1.b.c.x, var_1.b.c.x), vec4<bool>(var_1.b.c.x, false, var_1.a.c.x, false))) != ~_wgslsmith_dot_vec3_u32(var_2.a.a.xxw, u_input.b), all(vec2<bool>(true, false)), true, _wgslsmith_mod_i32(-38030i, -2147483647i) <= _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -36863i, var_2.c, u_input.a.x)), select(vec4<i32>(var_2.c, var_2.c, 0i, var_1.c), vec4<i32>(var_1.c, u_input.c, 5212i, 1i), var_2.b.c.x)))));
    let var_4 = _wgslsmith_sub_i32(-var_2.c, firstLeadingBit(firstLeadingBit(_wgslsmith_sub_i32(var_2.c, -1i))) | -2147483647i);
    let var_5 = Struct_1(~var_1.a.a, all(select(select(select(vec4<bool>(var_1.a.c.x, false, var_2.b.c.x, var_1.a.b), vec4<bool>(var_2.a.b, true, var_1.a.c.x, false), var_1.b.c.x), !vec4<bool>(true, var_2.a.c.x, true, true), select(vec4<bool>(var_2.b.b, true, var_1.b.c.x, false), vec4<bool>(true, true, var_1.a.b, var_2.b.c.x), var_1.b.c.x)), select(vec4<bool>(false, var_2.b.b, var_1.b.c.x, true), select(vec4<bool>(var_1.a.b, var_1.a.c.x, true, var_2.a.c.x), vec4<bool>(false, var_2.a.b, false, var_1.b.b), vec4<bool>(var_1.b.b, true, var_1.b.c.x, var_1.a.b)), !vec4<bool>(true, var_2.b.c.x, var_2.a.c.x, var_2.a.b)), vec4<bool>(var_0 <= 0u, true, !var_1.b.c.x, var_1.b.b))), !vec2<bool>(var_2.b.b, true), ~_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, 6154u), abs(7801u))));
    let var_6 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_1.d.x, var_3.x)))) - global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(292f, var_6), ~vec3<u32>(_wgslsmith_div_u32(52354u, 84224u) | func_1(vec3<i32>(-3663i, u_input.a.x, var_2.c)), firstLeadingBit(var_1.a.d), ~(~28592u)), var_4);
}

