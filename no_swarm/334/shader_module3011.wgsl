struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -172f);

var<private> global1: array<f32, 31> = array<f32, 31>(1743f, 208f, 343f, -501f, -1105f, -1211f, 777f, -687f, -120f, -919f, 535f, 399f, 1000f, -824f, 139f, 1000f, -809f, 165f, 371f, 314f, -1555f, -1253f, -324f, 178f, -751f, -119f, 1294f, -1179f, -151f, -387f, -1877f);

var<private> global2: array<bool, 9>;

var<private> global3: Struct_1;

var<private> global4: array<f32, 17> = array<f32, 17>(1101f, -694f, 1000f, -701f, 1013f, 123f, -1934f, -359f, 1248f, 898f, -871f, 271f, 1000f, 226f, -1059f, 2313f, -542f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    global1 = array<f32, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, global4[_wgslsmith_index_u32(62604u, 17u)])))) + global1[_wgslsmith_index_u32(arg_2, 31u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -1467f)));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~arg_2, 31u)])) - -1000f))), 1010f);
    let var_1 = _wgslsmith_add_vec3_i32(~firstTrailingBit(_wgslsmith_mod_vec3_i32(-arg_1.b.wzw, arg_1.b.xyz ^ arg_1.b.wwz)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, ~(-2147483647i), u_input.a) << (vec3<u32>(u_input.c.x, 1u, ~0u) % vec3<u32>(32u)), arg_0.xww));
    let var_2 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(abs(7518u), firstTrailingBit(1u), _wgslsmith_div_u32(arg_2, 11929u), 1u), abs(vec4<u32>(arg_2, 59935u, u_input.c.x, 54327u))));
    return 1005u;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> f32 {
    global3 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_2.b.wz, arg_2.b.yw), max(-(~arg_0.a), _wgslsmith_mult_i32(~0i, 0i))));
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(arg_0.a, arg_2.c.a >> (2913u % 32u)), -1i, -(~u_input.a) | arg_0.a), -abs(arg_2.b.yyw));
    let var_1 = 91104u;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(select(func_3(vec4<i32>(arg_0.a, u_input.a, -24650i, u_input.a), arg_2, 1u), 67865u, !arg_2.d.x), 31u)], global0.x)) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(873f, global0.x)), 690f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(124u, 17u)]))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(9530u, 17u)])))), 1160f, all(arg_2.d.wx)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 17u)], 596f), _wgslsmith_f_op_f32(trunc(986f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 40016u), 31u)], _wgslsmith_f_op_f32(-1441f * global0.x))))) - _wgslsmith_f_op_f32(abs(-1168f)));
    return global1[_wgslsmith_index_u32(~abs(firstLeadingBit(abs(var_1))), 31u)];
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), global1[_wgslsmith_index_u32(26540u, 31u)], 108f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1722f, 1f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)] * global0.x)))));
    global0 = var_0.zy;
    let var_1 = _wgslsmith_clamp_u32(u_input.c.x | _wgslsmith_sub_u32(u_input.b & 0u, 1u), 78308u, _wgslsmith_dot_vec2_u32(~(~u_input.c), vec2<u32>(0u, u_input.c.x)));
    global1 = array<f32, 31>();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a), u_input.c.x, Struct_2(Struct_1(2147483647i), vec4<i32>(global3.a, global3.a, -2147483647i, -2147483647i), Struct_1(global3.a), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(u_input.c.x, 9u)], false), Struct_1(u_input.a))))))), 435f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -340f)), vec4<f32>(1194f, global1[_wgslsmith_index_u32(~69559u, 31u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(0u, 17u)] * 614f), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(9247u, 31u)]))), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f + _wgslsmith_f_op_f32(-1018f - 138f))))));
    return Struct_3(_wgslsmith_f_op_f32(select(-212f, _wgslsmith_f_op_f32(-460f - 1410f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1691u, u_input.b, u_input.b), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1, var_1, u_input.c.x), ~vec3<u32>(var_1, u_input.b, var_1))), 9u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(func_1().a, 1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, global0.x)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, 1246f), vec2<f32>(global1[_wgslsmith_index_u32(10307u, 31u)], var_1.a)))), true || (global2[_wgslsmith_index_u32(u_input.c.x, 9u)] | true))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-441f, -880f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(28012u, 31u)], 612f))))));
    let var_2 = true;
    global3 = Struct_1(-2042i);
    var var_3 = Struct_1(-7518i);
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~vec2<i32>(reverseBits(var_3.a), -global3.a), vec2<i32>(abs(abs(-2147483647i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-31383i, 2147483647i, global3.a, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, 2147483647i, var_3.a), vec4<i32>(u_input.a, -17603i, 2147483647i, global3.a))))), vec4<i32>(~(2147483647i & global3.a), -u_input.a, global3.a, -_wgslsmith_mult_i32(u_input.a, -1i)) >> (abs(vec4<u32>(~u_input.b, 59446u, select(1u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 9u)]), u_input.c.x)) % vec4<u32>(32u)), max(-abs(firstLeadingBit(vec3<i32>(-35752i, -1i, 12309i))), vec3<i32>(var_3.a, u_input.a, global3.a)));
}

