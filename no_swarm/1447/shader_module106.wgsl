struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
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

var<private> global0: array<u32, 25> = array<u32, 25>(1u, 24024u, 1u, 18654u, 0u, 0u, 24456u, 10520u, 0u, 0u, 75909u, 1u, 4294967295u, 3218u, 1u, 1u, 0u, 1u, 1u, 86946u, 1201u, 4294967295u, 65665u, 31086u, 23752u);

var<private> global1: Struct_2 = Struct_2(Struct_1(-1417f, 1u), vec4<i32>(38081i, 2147483647i, 0i, -1i));

var<private> global2: array<u32, 31>;

var<private> global3: array<u32, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    var var_0 = u_input.c.x;
    return -1983f;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3(global1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1120f), vec2<i32>(-36486i, 62902i)));
    var var_1 = firstLeadingBit(_wgslsmith_add_i32(-(~global1.b.x), -global1.b.x));
    let var_2 = max(vec4<i32>(select(u_input.a.x, u_input.a.x, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) >> ((u_input.c | vec2<u32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.b, 25u)], 8u)], 25u)], global3[_wgslsmith_index_u32(arg_0, 8u)])) % vec2<u32>(32u)), select(global1.b.xw, u_input.a.zy & vec2<i32>(-2147483647i, 33i), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), -u_input.a.x), ~((u_input.a & min(vec4<i32>(u_input.d, global1.b.x, 12498i, -34296i), global1.b)) ^ _wgslsmith_sub_vec4_i32(-global1.b, global1.b & u_input.a)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, -1126f, 223f) * vec3<f32>(805f, global1.a.a, global1.a.a))))));
    global3 = array<u32, 8>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2292f))), 1u);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    global3 = array<u32, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_div_f32(242f, -1171f), 548f));
    let var_1 = Struct_3(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~(~(19099u << (0u % 32u))), 31u)], 25u)], 0u), Struct_2(arg_1, u_input.a | u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-116f + global1.a.a) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, global1.a.a), global1.a.a)) * 284f), Struct_2(func_2(firstLeadingBit(4294967295u)), vec4<i32>(-1i) * -select(vec4<i32>(2570i, arg_0, 0i, -8289i), global1.b, false)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), global1.b.x < 2147483647i), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), false), vec2<bool>(!(global1.a.b >= 21470u), true)));
    let var_2 = firstLeadingBit(vec4<i32>(global1.b.x, firstLeadingBit(firstLeadingBit(arg_0)) >> (69060u % 32u), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(arg_2.x, arg_0)), _wgslsmith_sub_i32(-var_1.b.b.x, ~_wgslsmith_add_i32(-1i, var_1.d.b.x))));
    global2 = array<u32, 31>();
    return 153f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = u_input.b;
    var var_1 = vec4<f32>(arg_1.c, global1.a.a, 145f, _wgslsmith_f_op_f32(arg_0.x + global1.a.a));
    global2 = array<u32, 31>();
    var var_2 = Struct_4(arg_1.d, global1.a, ~vec4<i32>(50833i, arg_1.d.b.x, 1558i, _wgslsmith_mod_i32(var_0, -2147483647i) ^ 0i));
    var var_3 = firstLeadingBit(vec4<u32>(~4294967295u, firstTrailingBit(~4294967295u), global0[_wgslsmith_index_u32(~firstTrailingBit(func_2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 31u)]).b), 25u)], _wgslsmith_sub_u32(reverseBits(global2[_wgslsmith_index_u32(57894u, 31u)]) | _wgslsmith_div_u32(global1.a.b, 1u), u_input.c.x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_i32(-7247i, -33032i, 14496i), Struct_1(1000f, u_input.c.x), global1.b.wx)))), 169f, 1127f), Struct_3(vec3<u32>(31707u, u_input.c.x, ~99457u), Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.a.a - global1.a.a), ~global0[_wgslsmith_index_u32(7662u, 25u)]), -u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a - global1.a.a) * _wgslsmith_f_op_f32(-global1.a.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) + -975f)), Struct_2(global1.a, -select(global1.b, u_input.a, vec4<bool>(false, false, false, true))), vec2<bool>((global1.b.x << (global1.a.b % 32u)) != select(2147483647i, 1i, false), true)));
    let var_1 = !(!(!(!(global1.b.x <= u_input.b))));
    global3 = array<u32, 8>();
    let var_2 = Struct_4(Struct_2(Struct_1(1696f, u_input.c.x), ~vec4<i32>(-var_0.b.b.x, global1.b.x, _wgslsmith_dot_vec2_i32(var_0.b.b.wx, vec2<i32>(global1.b.x, 2147483647i)), -2147483647i)), Struct_1(_wgslsmith_f_op_f32(step(var_0.b.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-696f)) + var_0.d.a.a))), firstTrailingBit(~global1.a.b)), -vec4<i32>(_wgslsmith_add_i32(min(global1.b.x, 37105i), _wgslsmith_add_i32(-1i, u_input.b)), -27571i, min(u_input.d, var_0.b.b.x) & -u_input.b, u_input.d));
    global3 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(286f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1471f, 2644f)), global1.a.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1491f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c - -787f), -1000f))), global1.a.a));
}

