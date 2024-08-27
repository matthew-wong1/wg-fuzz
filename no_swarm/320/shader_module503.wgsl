struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 323f;

var<private> global1: f32;

var<private> global2: u32 = 33155u;

var<private> global3: vec3<f32>;

var<private> global4: array<Struct_2, 17>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_3.d;
    let var_1 = Struct_2(Struct_1(arg_3.a | arg_3.e, _wgslsmith_dot_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(-2147483647i, 1i))), firstTrailingBit(-vec2<i32>(2015i, arg_3.d))), _wgslsmith_f_op_vec2_f32(global3.zx - _wgslsmith_f_op_vec2_f32(ceil(global3.xy))), var_0, arg_3.a), !(!vec4<bool>(!arg_3.e, arg_3.a & arg_3.e, arg_3.e, false)), !(!select(select(vec3<bool>(true, arg_3.a, true), vec3<bool>(false, true, true), arg_3.e), select(vec3<bool>(arg_3.e, arg_3.a, true), vec3<bool>(arg_3.a, arg_3.a, false), vec3<bool>(true, arg_3.a, arg_3.a)), true)), max(_wgslsmith_mod_u32(4294967295u, ~14711u) & arg_0.x, _wgslsmith_sub_u32(~(~27940u), ~(arg_2 << (64363u % 32u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-arg_3.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.x)), 144f), all(!select(vec4<bool>(arg_3.a, false, false, arg_3.a), vec4<bool>(false, arg_3.a, false, arg_3.a), arg_3.e)))));
    let var_2 = (any(select(var_1.b, select(var_1.b, vec4<bool>(true, true, var_1.c.x, true), vec4<bool>(true, false, var_1.b.x, arg_3.e)), !var_1.b)) && (~_wgslsmith_clamp_i32(arg_1.x, -1i, 2147483647i) != ~_wgslsmith_div_i32(arg_1.x, arg_1.x))) || var_1.c.x;
    var var_3 = -_wgslsmith_sub_vec2_i32(arg_1.xx, vec2<i32>(arg_3.b, select(arg_1.x, arg_1.x | var_0, true)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-667f, arg_3.c.x), -285f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e * var_1.e) - -407f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1148f + var_1.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(var_1.e - arg_3.c.x), any(vec4<bool>(arg_3.a, false, var_1.b.x, arg_3.e))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -1000f, -240f, arg_3.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, -1000f, var_1.a.c.x, global3.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1140f, var_1.e, -672f, -169f), vec4<f32>(-738f, global3.x, global3.x, global3.x), true))), any(var_1.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1023f, _wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(arg_3.c.x * 1308f), _wgslsmith_f_op_f32(global3.x * global3.x))) + vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), 1f, var_1.a.c.x, arg_3.c.x)));
    return arg_1.xx;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = arg_1.d;
    global3 = vec3<f32>(_wgslsmith_f_op_f32(global3.x + 1548f), arg_1.a.c.x, arg_1.e);
    var var_1 = arg_0.a;
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, arg_0.a.c.x, var_1.c.x) * vec3<f32>(arg_1.e, arg_0.a.c.x, -1380f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -176f, arg_1.a.c.x)), arg_0.a.e)))));
    var_1 = Struct_1(true, 0i, vec2<f32>(var_1.c.x, -680f), arg_0.a.d, arg_1.c.x);
    return _wgslsmith_mod_vec2_i32(countOneBits(~func_3(vec3<u32>(0u, 107451u, 51995u), vec3<i32>(arg_0.a.d, 1i, 114110i), var_0, arg_0.a) << ((u_input.a.zx & (vec2<u32>(u_input.a.x, 8816u) | u_input.a.yw)) % vec2<u32>(32u))), ~(~(-vec2<i32>(-35762i, -1i))) | ~firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a.b, -30970i), vec2<i32>(-19797i, arg_1.a.d))));
}

fn func_1() -> i32 {
    var var_0 = vec4<bool>(false, true, true, _wgslsmith_mult_u32(1u, min(~4294967295u, abs(1u))) >= firstTrailingBit(~1u));
    let var_1 = -_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-27613i, -42879i), func_2(Struct_2(Struct_1(true, 42509i, global3.xz, -44449i, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, true), 0u, 785f), global4[_wgslsmith_index_u32(u_input.b, 17u)])), -vec2<i32>(-47743i, -56195i)), -min(select(vec2<i32>(22050i, 24960i), vec2<i32>(-1i, 1i), false), abs(vec2<i32>(14401i, 2147483647i))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))), -144f, _wgslsmith_f_op_f32(-519f + 1767f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1260f, 673f, var_0.x)) - -784f), -2029f, global3.x))));
    global4 = array<Struct_2, 17>();
    global1 = global3.x;
    return _wgslsmith_mult_i32(countOneBits(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(-2147483647i, var_1.x, -1i, var_1.x))) ^ var_1.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.x, -30693i, 44929i, var_1.x), vec4<i32>(var_1.x, var_1.x, 0i, -53605i) << (u_input.a % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, var_1.x, 0i), max(vec4<i32>(19281i, -1i, 1i, -10522i), vec4<i32>(-7485i, var_1.x, -1i, var_1.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, reverseBits(var_1.x), -var_1.x, _wgslsmith_sub_i32(var_1.x, var_1.x)), -(~vec4<i32>(58003i, 2147483647i, 1i, 27030i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(select(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))), false, -2575f != global3.x), ~(-_wgslsmith_mult_i32(-16593i, -37808i)), vec2<f32>(478f, 818f), func_1(), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), vec3<bool>(any(vec2<bool>(true, true)), 9215u >= u_input.a.x, u_input.b != 4294967295u)), select(vec3<bool>(select(false, false, true), all(vec3<bool>(true, false, true)), true), vec3<bool>(true, global3.x > -1227f, 4294967295u < u_input.a.x), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)), all(vec4<bool>(true, true, true, true))), u_input.a.x, -2261f);
    global1 = -297f;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_2(Struct_1(false, var_0.a.b, var_0.a.c, -var_0.a.d, true), vec4<bool>(var_0.b.x, var_0.a.e, true, false | var_0.a.a), var_0.c, 0u, _wgslsmith_f_op_f32(f32(-1f) * -752f)), Struct_2(var_0.a, select(select(var_0.b, vec4<bool>(var_0.a.a, false, true, var_0.a.e), vec4<bool>(false, var_0.c.x, var_0.c.x, false)), var_0.b, true), var_0.b.ywx, _wgslsmith_div_u32(~u_input.b, var_0.d >> (u_input.b % 32u)), var_0.a.c.x)).x);
}

