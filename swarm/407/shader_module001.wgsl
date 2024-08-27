struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 3>;

var<private> global2: Struct_2 = Struct_2(0u, vec3<bool>(false, true, false), vec4<f32>(307f, 2066f, -730f, -190f), Struct_1(vec3<f32>(316f, 406f, -448f), vec2<bool>(false, false), false, vec4<f32>(590f, -316f, 586f, 827f), true));

var<private> global3: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(2147483647i, i32(-2147483648), 19999i), vec3<i32>(12679i, -17173i, 2147483647i), vec3<i32>(0i, -89064i, 0i), vec3<i32>(14205i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 21904i, 0i), vec3<i32>(30949i, 16874i, 1i), vec3<i32>(0i, -1i, 1i), vec3<i32>(-41978i, -42874i, -19321i), vec3<i32>(2147483647i, 36913i, -30431i), vec3<i32>(-47384i, -1i, 1i), vec3<i32>(23127i, 2147483647i, 0i), vec3<i32>(-34726i, -62119i, -97687i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec4<u32> {
    global0 = u_input.b;
    let var_0 = Struct_2(~select(_wgslsmith_mod_u32(~global2.a, _wgslsmith_add_u32(arg_2.x, 1u)), global2.a, select(true, !global2.d.b.x, false && global2.b.x)), global2.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(global2.d.d, arg_0.d)))), arg_0);
    global0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_mult_i32(0i, u_input.b.x), max(global0.x, u_input.b.x)), global0.x, 12747i, -4551i >> (global2.a % 32u)), vec4<i32>(max(-global0.x, -49783i) | (~u_input.a << (abs(4294967295u) % 32u)), global0.x >> (4284u % 32u), -1i, 1i));
    return ~arg_2;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = global2.d.c;
    let var_1 = ~func_3(global2.d, arg_2, ~vec4<u32>(abs(global2.a), _wgslsmith_mult_u32(u_input.c, u_input.c), _wgslsmith_add_u32(26684u, global2.a), reverseBits(87799u)));
    var var_2 = Struct_3(min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_clamp_u32(0u, var_1.x, global2.a), min(1u, var_1.x)), ~select(var_1.xzz, vec3<u32>(global2.a, u_input.c, var_1.x), vec3<bool>(arg_1.x, false, global1[_wgslsmith_index_u32(u_input.c, 3u)]))), vec3<u32>(~1u, var_1.x, var_1.x)), global2.d, _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(global2.a, select(var_1.x, 0u, global2.d.e) ^ firstLeadingBit(u_input.c))));
    global1 = array<bool, 3>();
    global2 = Struct_2(~func_3(global2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, var_2.b.d.x, arg_0, -2195f), vec4<f32>(-1802f, 756f, arg_0, 2122f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, var_2.b.a.x, arg_2.x, arg_0), global2.d.d, global2.b.x))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.c, var_1.x, 17851u, u_input.c)), ~var_1)).x, !(!global2.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))), arg_0, 889f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(global2.d.a, var_2.b.d.wyx, !all(var_2.b.b))), select(arg_1.xy, arg_1.zy, !(!vec2<bool>(var_2.b.e, arg_1.x))), all(vec4<bool>(true, true, arg_1.x, var_2.b.c != true)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_2.b.d.x, -1058f, arg_1.x)), _wgslsmith_f_op_f32(abs(arg_2.x)))), _wgslsmith_f_op_f32(-var_2.b.d.x), _wgslsmith_f_op_f32(378f - global2.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1705f)))), (arg_0 >= _wgslsmith_div_f32(-1000f, global2.d.a.x)) | true));
    return Struct_2(_wgslsmith_div_u32(u_input.c, _wgslsmith_sub_u32(var_2.a.x, 1u)), !(!vec3<bool>(false, all(vec3<bool>(false, arg_1.x, arg_1.x)), arg_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1445f, 297f, 684f, -2434f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_2.b.d * vec4<f32>(-253f, arg_2.x, global2.d.a.x, var_2.b.d.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, 1824f, arg_0, arg_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a.x, 798f, 323f, var_2.b.a.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.yyx)), var_2.b.b, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-744f, _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(round(470f)))), all(!select(global2.d.b, arg_1.yx, arg_1.x))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global1 = array<bool, 3>();
    let var_0 = any(!(!global2.b));
    global2 = func_2(global2.c.x, !global2.b, global2.c);
    var var_1 = global2.d.a;
    global3 = array<vec3<i32>, 12>();
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.a.x + global2.d.a.x) - -1000f), select(global2.b, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1597f), vec3<bool>(false, global2.d.b.x, all(vec4<bool>(false, true, false, global2.d.b.x))), global2.d.d).b, vec3<bool>(true, firstLeadingBit(global2.a) >= ~arg_0.x, global0.x == -44516i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1809f + func_2(287f, vec3<bool>(true, true, true), global2.d.d).d.a.x), _wgslsmith_f_op_f32(floor(-1000f)), func_2(_wgslsmith_f_op_f32(select(-164f, global2.d.d.x, global1[_wgslsmith_index_u32(global2.a, 3u)])), !global2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global2.c.x, var_1.x, var_1.x))).d.d.x, global2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, global0.x), global0.x, -1i, _wgslsmith_sub_i32(-288i, global0.x));
    global0 = u_input.b;
    var var_1 = func_1(select(firstTrailingBit(~(~vec4<u32>(u_input.c, global2.a, 17768u, 1u))), firstTrailingBit(~(vec4<u32>(global2.a, u_input.c, u_input.c, 22674u) & vec4<u32>(global2.a, 44030u, global2.a, u_input.c))), !vec4<bool>(!global1[_wgslsmith_index_u32(1u, 3u)], true, global1[_wgslsmith_index_u32(53877u, 3u)], true)));
    let var_2 = global2.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.yyw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(178f - var_2.d.x), vec4<f32>(_wgslsmith_f_op_f32(step(-158f, _wgslsmith_div_f32(-609f, var_3.x))), var_3.x, _wgslsmith_f_op_f32(-global2.d.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.d.x * _wgslsmith_f_op_f32(select(var_1.c.x, var_3.x, false))) * _wgslsmith_f_op_f32(-var_1.c.x))), vec3<u32>(global2.a << (_wgslsmith_div_u32(~0u, _wgslsmith_mult_u32(16289u, var_1.a)) % 32u), 1u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.a, u_input.c), global2.a)), _wgslsmith_add_u32(countOneBits(13164u), _wgslsmith_mult_u32(global2.a, global2.a)));
}

