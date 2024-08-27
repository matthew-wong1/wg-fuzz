struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-1i, 0i, 0i, 0i), Struct_1(false, 1113f, 37854i, vec2<u32>(26392u, 34431u)), true);

var<private> global2: u32 = 1u;

var<private> global3: array<u32, 8> = array<u32, 8>(4294967295u, 1u, 5152u, 4294967295u, 16949u, 13275u, 1u, 68158u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    var var_0 = vec2<bool>(false, global1.b.a);
    let var_1 = global1.c;
    var var_2 = Struct_5(global1.b.b, Struct_2(global1.a, Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1393f, global1.b.b)) - global1.b.b), max(0i, ~u_input.b.x), u_input.a.zx << (min(u_input.a.zx, vec2<u32>(33434u, global3[_wgslsmith_index_u32(u_input.a.x, 8u)])) % vec2<u32>(32u))), global1.b.a || (false && any(vec3<bool>(false, var_0.x, true)))), ~27520u);
    var var_3 = true;
    var_2 = Struct_5(-2080f, Struct_2(global1.a, var_2.b.b, false), 14327u);
    return Struct_4(!(var_2.c > 0u), var_2.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(378f, 726f)) + -2243f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.b * global1.b.b), 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(965f, var_2.a, -152f), vec3<f32>(-561f, -920f, -503f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b.b, 188f, 1114f, 215f) * vec4<f32>(var_2.b.b.b, 866f, var_2.a, var_2.b.b.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1331f, var_2.a, 569f, -1000f))) - vec4<f32>(global1.b.b, -1085f, global1.b.b, -1000f))), ~1u);
}

fn func_3(arg_0: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x - -2786f), arg_0.c.x, -580f, _wgslsmith_f_op_f32(round(arg_0.d.x))) + _wgslsmith_f_op_vec4_f32(floor(arg_0.d)));
    var var_1 = Struct_5(global1.b.b, func_2().b, _wgslsmith_sub_u32(~u_input.a.x, arg_0.e));
    global3 = array<u32, 8>();
    var var_2 = ~1u;
    let var_3 = ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-29027i, countOneBits(global0[_wgslsmith_index_u32(48646u, 31u)]), arg_0.b.a.x), vec3<i32>(countOneBits(arg_0.b.a.x), arg_0.b.a.x, var_1.b.a.x), select(vec3<i32>(arg_0.b.a.x, global1.a.x, arg_0.b.b.c), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), !vec3<bool>(false, false, var_1.b.b.a))));
    return Struct_2(-global1.a & ~firstTrailingBit(select(vec4<i32>(global0[_wgslsmith_index_u32(0u, 31u)], u_input.b.x, -13730i, -34865i), var_1.b.a, var_1.b.b.a)), arg_0.b.b, false);
}

fn func_1(arg_0: vec2<u32>) -> vec4<u32> {
    global1 = func_3(func_2());
    var var_0 = global1.a.xxx;
    let var_1 = global1.b;
    let var_2 = func_2().b;
    let var_3 = vec4<bool>(var_1.a, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 55659u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.d.x, 8u)], 8u)]), firstTrailingBit(vec3<u32>(var_2.b.d.x, 1u, 0u)))) == arg_0.x, var_2.c, func_2().b.c);
    return ~vec4<u32>(func_3(func_2()).b.d.x, 13982u, ~var_2.b.d.x, ~var_2.b.d.x);
}

fn func_4(arg_0: vec4<u32>) -> u32 {
    let var_0 = abs(380u);
    global0 = array<i32, 31>();
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b.b, global1.b.b))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.b.b, global1.b.b), vec2<f32>(1000f, 549f), false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2().c.xx + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.b, 683f) + vec2<f32>(global1.b.b, 153f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.b.b, 1000f)))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(735f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.b), global1.b.b, func_2().a)))))));
    global0 = array<i32, 31>();
    global3 = array<u32, 8>();
    return 24352u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_div_u32(u_input.a.x, 4294967295u));
    var_0 = func_4(~(~func_1(vec2<u32>(4294967295u, 37457u))));
    global2 = func_3(func_2()).b.d.x;
    var_0 = global1.b.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.b, -1558f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.b.b - global1.b.b))), global1.b.b)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.b, -467f, global1.b.b, global1.b.b) * vec4<f32>(global1.b.b, global1.b.b, global1.b.b, global1.b.b)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(657f - global1.b.b), _wgslsmith_f_op_f32(select(-336f, global1.b.b, false)), -1090f, _wgslsmith_f_op_f32(f32(-1f) * -695f)), vec4<f32>(_wgslsmith_f_op_f32(round(global1.b.b)), _wgslsmith_f_op_f32(-global1.b.b), _wgslsmith_f_op_f32(-341f + global1.b.b), global1.b.b), vec4<bool>(select(global1.b.a, global1.b.a, global1.c), all(vec2<bool>(false, false)), global1.b.a, !global1.b.a))))));
    let var_2 = abs((select(_wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(17042u, 8u)], global1.b.d.x, u_input.a.x, 41138u), vec4<u32>(global1.b.d.x, 48915u, 66061u, 43788u)), vec4<u32>(13803u, 1u, u_input.a.x, global1.b.d.x) & vec4<u32>(38485u, 4294967295u, global1.b.d.x, u_input.a.x), true) ^ (min(vec4<u32>(global3[_wgslsmith_index_u32(62987u, 8u)], 46166u, global1.b.d.x, global1.b.d.x), vec4<u32>(global1.b.d.x, global1.b.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 8u)], 8u)], u_input.a.x)) >> ((vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(37385u, 8u)], 8u)], 0u, u_input.a.x) << (vec4<u32>(1u, 1u, 7759u, 48598u) % vec4<u32>(32u))) % vec4<u32>(32u)))) | firstTrailingBit((vec4<u32>(0u, global1.b.d.x, 1u, 16549u) | vec4<u32>(54437u, u_input.a.x, global1.b.d.x, global1.b.d.x)) >> (func_1(global1.b.d) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(-1712f)), _wgslsmith_f_op_f32(var_1.x + func_3(Struct_4(global1.b.a, Struct_2(vec4<i32>(0i, global0[_wgslsmith_index_u32(80537u, 31u)], u_input.b.x, 2147483647i), Struct_1(global1.c, 1172f, -2147483647i, u_input.a.xz), global1.b.a), _wgslsmith_div_vec3_f32(var_1.wxx, vec3<f32>(-368f, 387f, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1513f, global1.b.b, global1.b.b), vec4<f32>(var_1.x, global1.b.b, -1949f, global1.b.b)), var_2.x >> (4294967295u % 32u))).b.b));
}

