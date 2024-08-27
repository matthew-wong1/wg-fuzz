struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-404f, vec4<u32>(0u, 4294967295u, 25416u, 46578u), true, Struct_1(vec4<u32>(111079u, 1u, 0u, 71042u), i32(-2147483648)), vec4<i32>(13533i, 2147483647i, -14536i, -1i));

var<private> global1: array<bool, 25> = array<bool, 25>(false, true, false, true, false, false, false, true, false, false, true, false, true, false, true, false, true, true, true, false, false, true, true, true, true);

var<private> global2: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(1u, 12888u, 0u), vec3<u32>(1u, 4294967295u, 28852u), vec3<u32>(41984u, 1924u, 0u), vec3<u32>(44878u, 102394u, 85691u), vec3<u32>(7811u, 29520u, 99012u), vec3<u32>(0u, 24422u, 18667u), vec3<u32>(0u, 0u, 269u), vec3<u32>(42575u, 12782u, 23750u), vec3<u32>(59116u, 1u, 0u), vec3<u32>(4294967295u, 28315u, 4294967295u), vec3<u32>(0u, 0u, 12608u), vec3<u32>(1u, 0u, 0u), vec3<u32>(47417u, 4548u, 23741u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 105915u, 38759u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4090u, 4294967295u, 1u), vec3<u32>(4294967295u, 82987u, 1u), vec3<u32>(16231u, 11745u, 11183u), vec3<u32>(37238u, 79725u, 4294967295u), vec3<u32>(1u, 3611u, 4294967295u), vec3<u32>(7762u, 51671u, 1u), vec3<u32>(17168u, 7307u, 29412u), vec3<u32>(1574u, 4294967295u, 4294967295u), vec3<u32>(104112u, 1u, 8769u), vec3<u32>(0u, 4294967295u, 38493u), vec3<u32>(76136u, 46419u, 27688u), vec3<u32>(0u, 20654u, 40431u), vec3<u32>(4294967295u, 35160u, 52004u), vec3<u32>(1336u, 47211u, 0u));

var<private> global3: vec2<i32> = vec2<i32>(-10239i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, abs(1i ^ global0.d.b)), select(max(vec2<i32>(global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-19829i, -1i, -21946i), global0.e.zxz)), -global0.e.yx), firstLeadingBit(vec2<i32>(u_input.b, global3.x)), all(vec3<bool>(global1[_wgslsmith_index_u32(13773u, 25u)] & global1[_wgslsmith_index_u32(4294967295u, 25u)], select(false, global1[_wgslsmith_index_u32(0u, 25u)], true), false && global0.c))), global0.e.zz ^ _wgslsmith_sub_vec2_i32(~global0.e.wx, ~(~vec2<i32>(-2147483647i, global3.x))));
    let var_2 = -vec2<i32>(~min(global0.e.x, _wgslsmith_add_i32(arg_0.b, u_input.b)), -1i);
    global2 = array<vec3<u32>, 30>();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(ceil(-1485f))))));
    return arg_0.a;
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    global1 = array<bool, 25>();
    return vec4<u32>(1u, 1u, max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, _wgslsmith_dot_vec2_u32(arg_2.a.yw, global0.b.wy), 1u, 61249u), vec4<u32>(global0.d.a.x >> (global0.d.a.x % 32u), _wgslsmith_mult_u32(1u, u_input.a), arg_2.a.x, 65062u))), ~global0.b.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(706f + -532f)) - global0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(443f, arg_0.x) - _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f - arg_0.x)))))), ~_wgslsmith_mult_vec4_u32(arg_2.a, global0.b), _wgslsmith_add_i32(u_input.c, firstLeadingBit(1i)) >= -12856i, global0.d, global0.e);
    let var_1 = ~reverseBits(~_wgslsmith_mult_vec4_u32(~global0.b, _wgslsmith_sub_vec4_u32(vec4<u32>(3247u, u_input.a, 1u, var_0.d.a.x), vec4<u32>(37127u, arg_2.a.x, global0.d.a.x, 21672u))));
    global0 = Struct_2(-2455f, ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 936u, arg_2.a.x, arg_2.a.x) ^ func_3(vec2<f32>(-2433f, var_0.a), 49203u, Struct_1(global0.b, -2147483647i), -44266i), vec4<u32>(var_1.x, abs(4294967295u), 4294967295u, var_1.x)), !(!global0.c), var_0.d, vec4<i32>(-arg_1, _wgslsmith_mod_i32(1i | var_0.e.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_2.b, arg_1), _wgslsmith_div_i32(var_0.d.b, arg_2.b), -4317i)), arg_2.b, 1i));
    global2 = array<vec3<u32>, 30>();
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1008f - var_0.a)), _wgslsmith_sub_vec4_u32(arg_2.a, vec4<u32>(var_1.x, reverseBits(0u | var_0.d.a.x), _wgslsmith_mult_u32(abs(1u), var_0.d.a.x), min(~0u, _wgslsmith_mult_u32(var_1.x, 1u)))), false, Struct_1(vec4<u32>(var_0.d.a.x, var_0.d.a.x, ~(~0u), arg_2.a.x), -61660i), vec4<i32>(_wgslsmith_mod_i32(arg_1, max(2147483647i, 0i)) ^ 0i, global0.e.x, firstTrailingBit(~min(global3.x, 18726i)), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(arg_1, -7813i)), global0.e.wy)));
    return max(-countOneBits(1i), abs(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(~global0.b, global0.b) << (func_1(Struct_1(vec4<u32>(4294967295u, 4294967295u, global0.d.a.x, global0.d.a.x), -14993i), countOneBits(33038u), 409f) % vec4<u32>(32u)), max(-19047i << (1u % 32u), countOneBits(func_2(vec2<f32>(-1867f, 1302f), ~1i, global0.d))));
    global0 = Struct_2(_wgslsmith_div_f32(-1014f, _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, 672f) + global0.a))), ~(~global0.d.a), false, Struct_1(~global0.b, var_0.b), global0.e);
    let var_1 = !(!select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(38774u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)], false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.x, 25u)], global0.c, true, false), vec4<bool>(global1[_wgslsmith_index_u32(global0.d.a.x, 25u)], true, global1[_wgslsmith_index_u32(var_0.a.x, 25u)], true)), select(!vec4<bool>(true, global1[_wgslsmith_index_u32(27606u, 25u)], false, global1[_wgslsmith_index_u32(55392u, 25u)]), vec4<bool>(global0.c, global0.c, true, true), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(1u, 25u)])), global1[_wgslsmith_index_u32(u_input.a, 25u)]));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + global0.a)) * 410f), global0.a)), select(func_3(vec2<f32>(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -513f)), global0.b.x, var_0, -23344i), vec4<u32>(select(global0.b.x | var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, global0.d.a.x, 4294967295u), vec3<u32>(69648u, 4294967295u, var_0.a.x)), true), ~1u, 0u, 1u), select(select(select(var_1, var_1, var_1), var_1, var_1.x), var_1, !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, global0.c, true), vec4<bool>(false, var_1.x, false, true)))), !global0.c, var_0, min(_wgslsmith_mult_vec4_i32(global0.e, global0.e), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, global0.e.x, global0.e.x, global3.x), vec4<i32>(u_input.b, 0i, var_0.b, global3.x)))));
    global2 = array<vec3<u32>, 30>();
    let var_3 = 218f;
    let var_4 = var_0;
    var var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_2.a, var_2.a, 1000f) * vec4<f32>(2090f, -660f, -472f, -535f)), vec4<f32>(var_2.a, -638f, global0.a, 460f), global1[_wgslsmith_index_u32(reverseBits(var_2.d.a.x), 25u)])))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-619f, _wgslsmith_f_op_f32(-438f + var_2.a), var_3, -1033f))), ~var_4.a.x, var_3, select(var_2.e.wyy, -vec3<i32>(-var_2.d.b, -1i ^ global3.x, ~(-2147483647i)), min(u_input.d, _wgslsmith_div_u32(var_4.a.x, 0u)) < countOneBits(_wgslsmith_mult_u32(1u, u_input.d))));
}

