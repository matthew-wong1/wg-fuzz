struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -27152i, 0i);

var<private> global1: Struct_2;

var<private> global2: u32;

var<private> global3: array<u32, 9> = array<u32, 9>(4294967295u, 32144u, 1u, 16857u, 67820u, 30116u, 25018u, 30024u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    let var_0 = !vec4<bool>(global1.c.d.x, any(vec4<bool>(true, !global1.c.d.x, false, global1.c.d.x)), true, arg_2.c.d.x);
    var var_1 = i32(-1i) * -(~(-2147483647i));
    global0 = vec3<i32>(u_input.b.x, abs(global1.c.a.x), -5611i);
    var_1 = select(u_input.b.x, arg_2.c.a.x, !var_0.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-210f, -1247f, arg_1.x, 377f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global1.a.x, -592f)), _wgslsmith_f_op_f32(arg_2.c.e + global1.a.x), _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(max(-1000f, arg_2.a.x))) * vec4<f32>(arg_2.a.x, _wgslsmith_div_f32(194f, arg_1.x), -361f, _wgslsmith_f_op_f32(sign(arg_1.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-284f, -1031f, global1.a.x, arg_0.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, arg_0.c.x) - vec4<f32>(-2252f, arg_0.c.x, arg_2.a.x, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c.x, 758f, global1.a.x, -1198f)))), vec4<f32>(-800f, -555f, -681f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global1.c.e, -435f)), _wgslsmith_div_f32(-1000f, 2468f))))));
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> f32 {
    global2 = ~0u;
    let var_0 = Struct_5(960f, vec4<u32>(~global3[_wgslsmith_index_u32(1u, 9u)], ~min(~global1.c.b.x, 4294967295u), arg_1.b.x, _wgslsmith_add_u32(1u, 22431u)), !select(!select(vec4<bool>(false, false, global1.c.d.x, global1.c.d.x), vec4<bool>(false, global1.c.d.x, global1.c.d.x, global1.c.d.x), vec4<bool>(global1.c.d.x, arg_1.d.x, global1.c.d.x, arg_1.d.x)), vec4<bool>(select(global1.c.d.x, false, global1.c.d.x), func_3(Struct_1(u_input.b, arg_1.b, vec3<f32>(arg_0.x, -1000f, arg_0.x), arg_1.d, arg_1.e), arg_1.c.yx, Struct_2(global1.c.c.zy, vec4<i32>(-18369i, 12088i, -76772i, 2147483647i), global1.c)), arg_1.d.x, any(vec2<bool>(arg_1.d.x, global1.c.d.x))), !(arg_1.d.x || global1.c.d.x)));
    let var_1 = 109131u;
    global3 = array<u32, 9>();
    global1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(557f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, arg_1.c.x, arg_1.d.x)) - 563f)), global1.c.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, min(arg_1.a.x, global1.c.a.x), _wgslsmith_div_i32(31857i, arg_1.a.x)), ~(~10147i), max(4861i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, global0.x))), ~1i), ~vec4<i32>(_wgslsmith_dot_vec3_i32(global1.b.yxz, vec3<i32>(arg_2, u_input.b.x, arg_3)), -32211i >> (global1.c.b.x % 32u), 4363i, u_input.d)), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(global0.zy, vec2<i32>(20020i, arg_2)), _wgslsmith_mod_i32(global0.x & arg_1.a.x, select(0i, -1i, arg_1.d.x))), _wgslsmith_mult_vec3_u32((vec3<u32>(global3[_wgslsmith_index_u32(46713u, 9u)], var_1, var_0.b.x) | vec3<u32>(global3[_wgslsmith_index_u32(var_1, 9u)], var_1, var_1)) ^ (vec3<u32>(u_input.c, 22934u, 0u) >> (vec3<u32>(28828u, 22328u, global1.c.b.x) % vec3<u32>(32u))), abs(select(var_0.b.xyx, vec3<u32>(1u, var_0.b.x, global1.c.b.x), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.a, arg_1.e) + global1.c.c)), vec3<bool>(all(var_0.c.zz), !arg_1.d.x, !all(var_0.c.wwz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))))));
    return global1.c.e;
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.c.x, _wgslsmith_f_op_f32(func_2(vec4<f32>(global1.a.x, 465f, -2083f, -1237f), Struct_1(global0.zz, global1.c.b, global1.c.c, global1.c.d, -673f), global1.c.a.x, u_input.a))) + global1.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.c.e))))));
    var var_1 = global1.c;
    var var_2 = true;
    global2 = 14552u;
    let var_3 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, -1000f, -1663f, 1559f), vec4<f32>(-487f, 1477f, 1201f, global1.c.c.x), var_1.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, var_1.e, -190f, var_1.e) - vec4<f32>(var_1.c.x, var_1.c.x, 990f, var_1.e)), vec4<bool>(false, var_1.d.x, false, false))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.e, 1267f, -1099f, var_1.e)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.e, -499f, global1.a.x, global1.a.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(abs(-653f)), var_1.c.x, _wgslsmith_f_op_f32(-931f - -811f))))), Struct_1(vec2<i32>(-12079i, global0.x), countOneBits(_wgslsmith_sub_vec3_u32(global1.c.b, var_1.b) >> (firstTrailingBit(var_1.b) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c.e + var_1.e), 862f)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.e, var_1.e)))), vec3<bool>((global1.c.a.x == 68295i) != true, !(47732u > var_1.b.x), false & (var_1.b.x != 0u)), -1078f), Struct_2(vec2<f32>(global1.a.x, var_1.c.x), ~(-_wgslsmith_sub_vec4_i32(global1.b, vec4<i32>(u_input.a, -2147483647i, global1.c.a.x, -55352i))), global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-246f)))) + -318f), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(var_1.c.zz, vec2<f32>(178f, 1232f)))))), ~(~vec4<i32>(var_1.a.x, global0.x, 2147483647i, 36657i)), Struct_1(select(global0.zz, global0.zz << (vec2<u32>(u_input.c, global3[_wgslsmith_index_u32(u_input.c, 9u)]) % vec2<u32>(32u)), select(var_1.d.xx, var_1.d.xx, true)), vec3<u32>(~42101u, 1u << (1u % 32u), 28982u), vec3<f32>(-1044f, -1218f, global1.a.x), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_2(vec4<f32>(global1.c.e, -1862f, global1.c.e, global1.c.c.x), global1.c, u_input.a, -1i))))));
    return select(vec4<i32>(abs(reverseBits(-62402i)), global1.b.x, min(~1i, global0.x), var_3.e.c.a.x), countOneBits(_wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.a.x, var_3.b.a.x, u_input.a, -1i), vec4<i32>(1i, 0i, var_3.b.a.x, -4942i), vec4<i32>(global1.c.a.x, 49474i, var_1.a.x, -2147483647i))), vec4<i32>(var_3.b.a.x, ~global0.x, var_1.a.x | -33117i, _wgslsmith_mod_i32(2147483647i, 37715i)))), any(vec2<bool>(var_3.b.d.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(-1551f, ~(~(~vec4<u32>(global3[_wgslsmith_index_u32(29483u, 9u)], 20316u, u_input.c, 29300u) | vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.c, 9u)], 798u, 0u))), select(!vec4<bool>(any(vec3<bool>(true, false, false)), !global1.c.d.x, true, true), !select(!vec4<bool>(true, false, global1.c.d.x, global1.c.d.x), select(vec4<bool>(false, global1.c.d.x, global1.c.d.x, true), vec4<bool>(false, global1.c.d.x, global1.c.d.x, false), vec4<bool>(false, global1.c.d.x, global1.c.d.x, false)), vec4<bool>(false, false, global1.c.d.x, global1.c.d.x)), global1.c.d.x));
    var var_1 = !select(!vec3<bool>(!global1.c.d.x, var_0.c.x, true), var_0.c.wwy, !select(true, 4294967295u != global1.c.b.x, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-147f, var_0.a, -864f, global1.a.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(459f, global1.a.x, 702f, global1.a.x)))))));
    let var_3 = !(global1.c.a.x < abs(-(u_input.d >> (20163u % 32u))));
    let var_4 = vec4<f32>(global1.c.c.x, -934f, global1.c.e, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(814f, var_0.a, !(1u != global3[_wgslsmith_index_u32(0u, 9u)]))))));
    global1 = Struct_2(vec2<f32>(-669f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(570f, var_2.x)))), func_1(), global1.c);
    global2 = 1u;
    global1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.x, 1000f), vec2<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1425f))), ~(~global1.b), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(~u_input.d, _wgslsmith_add_i32(15614i, global1.c.a.x)), global0.xy) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i >> (global1.c.b.x % 32u), 1i), vec2<i32>(-34190i, firstTrailingBit(u_input.d)), global0.zz), 1i, var_2.x, ~u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, -16521i), global0.x));
}

