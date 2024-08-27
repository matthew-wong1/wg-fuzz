struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1008f;

var<private> global1: array<f32, 22>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(-447f, -786f), 1u), Struct_1(vec2<f32>(271f, -262f), 1u), Struct_1(vec2<f32>(-316f, 1294f), 19636u), Struct_1(vec2<f32>(150f, 1174f), 23299u), Struct_1(vec2<f32>(-1000f, 1660f), 0u), Struct_1(vec2<f32>(-1618f, -457f), 7783u), Struct_1(vec2<f32>(-530f, -1422f), 0u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> vec3<bool> {
    global1 = array<f32, 22>();
    let var_0 = vec4<i32>(67214i, -global2.d.x, 2147483647i >> (~global2.b.b.b % 32u), abs(1i));
    let var_1 = any(vec4<bool>(global2.c.x && true, arg_2.a.x <= arg_2.a.x, 308f >= _wgslsmith_f_op_f32(max(arg_0, 157f)), !(true == all(vec4<bool>(global2.a, global2.c.x, false, global2.a)))));
    let var_2 = Struct_3(var_1, Struct_2(global2.b.a, arg_2), !(!global2.c), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(-global2.d, _wgslsmith_div_vec4_i32(var_0, vec4<i32>(-12127i, -14581i, 0i, u_input.a)))), vec4<i32>(_wgslsmith_mod_i32(global2.d.x, abs(var_0.x)), 1i, _wgslsmith_mult_i32(19704i, countOneBits(var_0.x)), _wgslsmith_clamp_i32(global2.d.x >> (arg_1.b.b % 32u), firstTrailingBit(-66694i), 1i))));
    global2 = var_2;
    return var_2.c;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = !vec4<bool>(!(!(!arg_3.c.x)), all(select(!vec2<bool>(arg_3.c.x, false), vec2<bool>(global2.a, true), any(vec2<bool>(true, true)))), all(arg_3.c.xx), false);
    global0 = -1344f;
    global2 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1239f)));
    global2 = Struct_3(any(select(var_0, var_0, select(select(var_0, vec4<bool>(arg_3.c.x, global2.a, arg_3.c.x, global2.c.x), var_0), !var_0, true))), arg_3.b, select(vec3<bool>(all(var_0) && true, any(var_0), true), select(func_3(_wgslsmith_f_op_f32(arg_2.x * -877f), Struct_4(0u, Struct_1(arg_3.b.b.a, 4294967295u)), Struct_1(vec2<f32>(433f, 584f), arg_1.a)), !vec3<bool>(var_0.x, true, arg_3.a), arg_3.c), global2.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(14835i, -(u_input.a | 2147483647i), arg_3.d.x, 1i), global2.d));
    return Struct_4(20198u, global2.b.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: bool) -> vec2<f32> {
    var var_0 = arg_1.b.a.x;
    let var_1 = u_input.b;
    var var_2 = all(!global2.c.xy);
    let var_3 = vec4<i32>(arg_0.x, arg_0.x, 2147483647i, -min(abs(arg_0.x << (39295u % 32u)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, var_1.x, global2.d.x), vec3<i32>(1i, arg_0.x, -2147483647i)), _wgslsmith_div_i32(u_input.b.x, 1i))));
    var var_4 = func_2(~u_input.b, arg_1, arg_1.b.a, Struct_3(arg_3, global2.b, select(vec3<bool>(global2.a && false, global2.a, global2.a), !global2.c, global2.c), max(~arg_0, ~(vec4<i32>(var_3.x, global2.d.x, 0i, -16933i) ^ arg_0))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<f32>) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(global2.d, func_2(global2.d.xww, Struct_4(arg_0.x, Struct_1(vec2<f32>(1576f, global2.b.a.a.x), 40740u)), arg_2.xz, Struct_3(arg_1, Struct_2(global2.b.b, global2.b.b), vec3<bool>(true, false, true), global2.d)), Struct_4(global2.b.b.b, Struct_1(arg_2.zz, 29024u)), false)) + _wgslsmith_f_op_vec2_f32(func_4(global2.d, func_2(vec3<i32>(global2.d.x, u_input.a, 34433i), Struct_4(4294967295u, global3[_wgslsmith_index_u32(32598u, 7u)]), arg_2.zy, Struct_3(false, global2.b, global2.c, vec4<i32>(4009i, -81i, -9782i, u_input.b.x))), Struct_4(global2.b.a.b, global3[_wgslsmith_index_u32(global2.b.b.b, 7u)]), true))), arg_0.x), func_2(vec3<i32>(global2.d.x & -18178i, select(global2.d.x, u_input.b.x, false), ~(-26780i)) | reverseBits(global2.d.yzz), func_2(reverseBits(global2.d.xyw), Struct_4(80784u, Struct_1(global2.b.a.a, 4294967295u)), vec2<f32>(arg_2.x, 654f), Struct_3(any(global2.c.yz), Struct_2(Struct_1(vec2<f32>(global2.b.b.a.x, -1702f), 7013u), global3[_wgslsmith_index_u32(0u, 7u)]), !global2.c, max(vec4<i32>(-16982i, u_input.b.x, global2.d.x, u_input.a), vec4<i32>(-1i, u_input.b.x, u_input.b.x, -5311i)))), vec2<f32>(1f, 427f), Struct_3(false, global2.b, global2.c, abs(vec4<i32>(63731i, -1i, global2.d.x, global2.d.x)))).b);
    var_0 = global2.b;
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0 | arg_0), select(arg_0, vec3<u32>(var_0.b.b, 1u, var_0.b.b), global2.a) >> (vec3<u32>(arg_0.x, 77584u, 13163u) % vec3<u32>(32u))), ~(17580u & var_0.b.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_2 - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_2)) * arg_2), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global2.b.a.b, 22u)], -1000f, global2.b.a.a.x)), arg_2)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, var_0.b.a.x, _wgslsmith_f_op_f32(trunc(arg_2.x)))))));
    global1 = array<f32, 22>();
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    let var_1 = vec4<bool>(any(!vec3<bool>(true, global2.a, true)) && (~(~4294967295u) > _wgslsmith_clamp_u32(~16632u, ~1u, _wgslsmith_add_u32(1u, global2.b.b.b))), global2.c.x, global2.c.x, !global2.c.x);
    let var_2 = func_1(countOneBits(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(global2.b.b.b, 34037u, 57332u) ^ vec3<u32>(16297u, 0u, global2.b.b.b)), vec3<u32>(global2.b.b.b, ~0u, firstLeadingBit(global2.b.a.b)))), any(global2.c.zy) || !global2.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-921f, global1[_wgslsmith_index_u32(18970u, 22u)], global2.b.a.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, 449f, global1[_wgslsmith_index_u32(0u, 22u)]) - vec3<f32>(-1449f, 992f, global1[_wgslsmith_index_u32(1u, 22u)]))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global2.b.a.a.x, global2.b.b.a.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(1197f, global1[_wgslsmith_index_u32(global2.b.a.b, 22u)], global1[_wgslsmith_index_u32(4561u, 22u)]), vec3<f32>(global1[_wgslsmith_index_u32(global2.b.b.b, 22u)], global2.b.b.a.x, global1[_wgslsmith_index_u32(global2.b.a.b, 22u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1526f, 1888f, global1[_wgslsmith_index_u32(4294967295u, 22u)])))));
    global3 = array<Struct_1, 7>();
    let var_3 = global1[_wgslsmith_index_u32(abs(global2.b.a.b), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, 13586i, abs(~(-2147483647i) >> (~global2.b.a.b % 32u))), ~vec4<u32>(func_2(vec3<i32>(-30520i, 0i, u_input.b.x), Struct_4(29830u, Struct_1(vec2<f32>(426f, 153f), 0u)), vec2<f32>(global1[_wgslsmith_index_u32(global2.b.a.b, 22u)], -259f), Struct_3(false, global2.b, var_1.xzz, global2.d)).a, firstLeadingBit(_wgslsmith_sub_u32(29618u, global2.b.a.b)), firstTrailingBit(global2.b.a.b), reverseBits(~8911u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(106f, global1[_wgslsmith_index_u32(59135u, 22u)], global1[_wgslsmith_index_u32(23744u, 22u)], -178f) + vec4<f32>(global2.b.a.a.x, global2.b.a.a.x, 440f, global1[_wgslsmith_index_u32(0u, 22u)])) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1686f, global1[_wgslsmith_index_u32(global2.b.b.b, 22u)], -324f, -152f)))))))), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.b.b, 29289u, global2.b.b.b), vec3<u32>(0u, global2.b.a.b, 78902u)), global2.b.a.b >> (global2.b.b.b % 32u), 18392u & global2.b.a.b, global2.b.b.b ^ global2.b.a.b)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(12895u, global2.b.a.b, global2.b.b.b, 79849u), ~vec4<u32>(43139u, 0u, 0u, 0u))));
}

