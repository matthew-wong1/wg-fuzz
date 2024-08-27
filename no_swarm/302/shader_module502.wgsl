struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: vec2<i32> = vec2<i32>(23895i, -1150i);

var<private> global2: Struct_2;

var<private> global3: f32 = -1000f;

var<private> global4: array<vec4<bool>, 18>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<f32> {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(33680u, 24539u, 2375u), 17925u), vec2<u32>(u_input.a.x & arg_0.a, arg_0.a)), 6017u) << (0u % 32u), 18u)];
    global2 = arg_0;
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1098f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1738f + -920f), _wgslsmith_f_op_f32(f32(-1f) * -424f)), 1784f, -1207f), var_0.x);
    global3 = -1256f;
    var var_2 = var_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.a.xx)));
}

fn func_3(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-333f * 2839f), _wgslsmith_div_f32(2069f, -456f), -1591f, -2219f))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1242f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-438f, -1176f)) * _wgslsmith_f_op_f32(f32(-1f) * -576f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -561f))), _wgslsmith_f_op_f32(abs(-304f)))), true);
    global1 = select(min(~(~firstTrailingBit(vec2<i32>(2147483647i, u_input.d.x))), select(min(u_input.d.xy, u_input.d.yz) << (vec2<u32>(7143u, 4294967295u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(-u_input.d.yz, firstTrailingBit(vec2<i32>(u_input.c, u_input.d.x))), true)), ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-52837i, -1i), ~1i), -countOneBits(44611i)), vec2<bool>(all(!vec4<bool>(false, false, false, var_0.b)), true));
    global2 = Struct_2(countOneBits(max(85915u, u_input.e.x | ~u_input.a.x)));
    var var_1 = Struct_2(~1u);
    let var_2 = vec3<bool>(false, all(!select(!vec3<bool>(false, false, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, true, var_0.b))), true);
    return var_2.zz;
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    var var_0 = true;
    var var_1 = select(select(vec4<bool>(false, false, all(func_3(vec4<i32>(30739i, 2147483647i, -2176i, 1i))), true), vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), global4[_wgslsmith_index_u32(global2.a, 18u)])), any(func_3(vec4<i32>(global1.x, u_input.c, global1.x, 3147i))), !any(global4[_wgslsmith_index_u32(global2.a, 18u)]), true), !global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xx, _wgslsmith_div_vec2_u32(vec2<u32>(global2.a, 6513u), vec2<u32>(u_input.e.x, global2.a))), 18u)]), vec4<bool>(!func_3(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 53099i, 13925i, 14092i), vec4<i32>(-1737i, -3724i, -1i, global1.x))).x, 2147483647i == _wgslsmith_sub_i32(countOneBits(global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.c, -48813i), vec3<i32>(u_input.d.x, u_input.c, -46231i))), all(global4[_wgslsmith_index_u32(~u_input.b >> (abs(u_input.a.x) % 32u), 18u)]), !all(vec3<bool>(true, false, false))), true);
    var_1 = select(select(select(!global4[_wgslsmith_index_u32(u_input.b, 18u)], global4[_wgslsmith_index_u32(~(~global2.a), 18u)], var_1.x), select(vec4<bool>(!var_1.x, u_input.c > u_input.d.x, 486f != arg_0.x, true), select(global4[_wgslsmith_index_u32(~3405u, 18u)], global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global2.a), 18u)]), 1u == abs(global2.a)), true), select(select(global4[_wgslsmith_index_u32(firstLeadingBit(0u), 18u)], select(vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(true, true, var_1.x, true), select(global4[_wgslsmith_index_u32(global2.a, 18u)], vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true))), !(global1.x > 53919i)), vec4<bool>(var_1.x, var_1.x, !any(vec4<bool>(true, var_1.x, false, var_1.x)), true), var_1.x), 0i > _wgslsmith_clamp_i32(select(-65289i, 28571i, false), u_input.d.x & countOneBits(u_input.c), -1i));
    global2 = Struct_2(4294967295u);
    var var_2 = -23548i;
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> vec3<f32> {
    var var_0 = arg_3;
    global0 = array<Struct_1, 7>();
    let var_1 = !func_3(-arg_3).x;
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i >> (u_input.a.x % 32u), _wgslsmith_mod_i32(1i, ~arg_0), -8611i, u_input.d.x), _wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, 11754i, 27483i, global1.x), firstTrailingBit(-vec4<i32>(var_0.x, global1.x, arg_3.x, arg_3.x)))), arg_0, arg_3.x, min(-_wgslsmith_div_i32(u_input.c, ~(-27659i)), ~(-arg_3.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -796f))))));
    return vec3<f32>(-869f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(max(43084u, 8843u)), vec3<i32>(-1i) * -vec3<i32>(-12309i, var_2.x, -1i))).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(432f)))))), -1705f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1528f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1023f + -330f), 1236f, all(vec2<bool>(true, true))))) - _wgslsmith_f_op_f32(f32(-1f) * -515f)));
    global1 = u_input.d.zy;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_4(~u_input.d.x, -vec4<i32>(global1.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -21150i, u_input.c, -77634i), vec4<i32>(global1.x, global1.x, global1.x, -1i)) | -3788i, _wgslsmith_sub_i32(10845i, -16498i) & ~global1.x), vec3<u32>(34900u, 4294967295u, func_2(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(u_input.e.x), firstLeadingBit(u_input.d))))), abs(~(-_wgslsmith_div_vec4_i32(vec4<i32>(15407i, -1i, u_input.d.x, 11073i), vec4<i32>(global1.x, -2147483647i, u_input.d.x, 32935i))))));
    global3 = var_1.x;
    var var_2 = vec2<bool>(all(vec3<bool>(all(vec3<bool>(true, true, true)), func_3(vec4<i32>(-17114i, -1i, -1i, u_input.c)).x && (var_1.x < 1644f), true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(-272f + -2302f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(9427i, vec4<i32>(global1.x, 52280i, global1.x, 0i), vec3<u32>(0u, u_input.b, 1u), vec4<i32>(u_input.c, global1.x, -25218i, global1.x))) * var_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1)))), vec3<u32>(firstLeadingBit(1u), 121863u, ~max(1u, u_input.b) | 19510u), u_input.c);
}

