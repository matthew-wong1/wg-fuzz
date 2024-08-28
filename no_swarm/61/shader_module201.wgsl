struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 22>;

var<private> global2: vec2<u32>;

var<private> global3: Struct_1;

var<private> global4: array<Struct_2, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<bool> {
    global0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b, abs(u_input.b) >> (vec3<u32>(global3.a.x, 108606u, _wgslsmith_div_u32(global2.x, 11016u)) % vec3<u32>(32u))), global2.x, ~_wgslsmith_mult_u32(u_input.d.x, abs(_wgslsmith_mod_u32(1u, 43417u))));
    var var_0 = select(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, false, false, false))), any(vec2<bool>(false, false)) | true), select(select(vec2<bool>(all(vec4<bool>(true, false, false, true)), true), vec2<bool>(any(vec4<bool>(true, false, false, false)), all(vec4<bool>(false, false, true, true))), true), vec2<bool>(select(true, any(vec3<bool>(false, false, true)), true), any(vec3<bool>(true, false, true))), true), 29118i < select(countOneBits(-2147483647i), ~min(u_input.a, -15235i), true));
    global4 = array<Struct_2, 27>();
    global2 = vec2<u32>(0u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.d.x, global3.a.x, global3.a.x, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(global2.x, 1u, 4294967295u, global2.x), vec4<u32>(46522u, 4294967295u, 1330u, u_input.b.x))), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(global2.x, 3051u, global2.x, global3.a.x)), ~vec4<u32>(global2.x, global3.a.x, global3.a.x, global3.a.x)))) | vec2<u32>(12397u, u_input.d.x);
    global2 = ~u_input.b.yx;
    return vec4<bool>(!any(vec3<bool>(var_0.x, var_0.x, select(var_0.x, true, var_0.x))), all(select(select(!vec2<bool>(var_0.x, true), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false), true), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), vec2<bool>(true, var_0.x), !var_0.x)), any(!vec4<bool>(all(vec2<bool>(var_0.x, true)), true, -2147483647i > u_input.c, true)), !(!all(vec3<bool>(false, var_0.x, var_0.x)) || (!var_0.x & true)));
}

fn func_2() -> vec4<u32> {
    global4 = array<Struct_2, 27>();
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.a.x, abs(2731u)), 27u)];
    let var_1 = var_0.e;
    let var_2 = global4[_wgslsmith_index_u32(var_0.d.a.x, 27u)];
    let var_3 = select(func_3(), vec4<bool>(true, true, true, true), vec4<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), var_0.a.x == _wgslsmith_sub_u32(abs(28418u), reverseBits(var_2.d.a.x)), true));
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> Struct_2 {
    global1 = array<vec4<i32>, 22>();
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_div_f32(-865f, -1823f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1375f + _wgslsmith_f_op_f32(ceil(-216f)))))));
    global0 = _wgslsmith_clamp_u32(arg_0, ~(~var_0.x), _wgslsmith_add_u32(115910u, _wgslsmith_mod_u32(~(~1u), u_input.b.x)));
    global1 = array<vec4<i32>, 22>();
    return Struct_2(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, u_input.b.x), vec4<u32>(38349u, global3.a.x, var_0.x, 0u)), min(vec4<u32>(u_input.d.x, global2.x, var_0.x, 50628u), vec4<u32>(4294967295u, var_0.x, 6869u, 4456u)), true) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(31411u, 11493u, global3.a.x, 1u), vec4<u32>(u_input.b.x, 4294967295u, var_0.x, arg_0)), arg_0, ~59439u, ~59879u), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(61536u, global2.x, global3.a.x, 4294967295u), vec4<u32>(global2.x, u_input.d.x, arg_0, global3.a.x)), vec4<u32>(38673u, 0u, 3562u, 4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1181f)), _wgslsmith_f_op_f32(step(985f, 1419f))))), -584f, _wgslsmith_f_op_f32(-1316f + _wgslsmith_f_op_f32(select(507f, -1685f, select(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1796f * _wgslsmith_f_op_f32(select(2003f, 1185f, false))))), firstLeadingBit(_wgslsmith_mod_vec3_i32(arg_1, _wgslsmith_sub_vec3_i32(vec3<i32>(3834i, 2147483647i, -1i) << (var_0.yyy % vec3<u32>(32u)), arg_1 ^ arg_1))), Struct_1(u_input.d.zx), Struct_1(vec2<u32>(~(~global3.a.x), _wgslsmith_add_u32(var_0.x, 33390u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    global2 = global3.a;
    global0 = 28926u;
    let var_0 = any(vec2<bool>(true, false));
    let var_1 = -299f;
    global1 = array<vec4<i32>, 22>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 809f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(exp2(arg_1.b.x))))), 13157u, 70883u, global2.x, _wgslsmith_div_f32(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_f_op_f32(arg_2.b.x * var_1))), _wgslsmith_f_op_f32(-303f - _wgslsmith_f_op_f32(841f + arg_2.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), true));
    global0 = 3853u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-721f * _wgslsmith_f_op_f32(-176f + -145f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(828f - 1146f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1022f, 219f)) * _wgslsmith_f_op_f32(-253f - 464f))) + -2099f));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c, ~0i), 1101i);
    var var_3 = true;
    var var_4 = vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(~0u), ~global3.a.x), ~(~global2.x), 21950u, min(~max(19427u, 23675u), ~(~0u)) & ~u_input.d.x);
    let var_5 = -1714f;
    var var_6 = u_input.a;
    let x = u_input.a;
    s_output = func_4(Struct_1(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, 31629u, var_4.x, 1821u), vec4<u32>(global2.x, 1u, 14784u, u_input.d.x))), 40360u)), global4[_wgslsmith_index_u32(~(~0u), 27u)], func_1(1u, ~(~(vec3<i32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(global2.x, 0u, u_input.b.x) % vec3<u32>(32u))))));
}

