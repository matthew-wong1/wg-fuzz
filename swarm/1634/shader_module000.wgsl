struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: vec3<bool>;

var<private> global3: vec3<u32> = vec3<u32>(1u, 27628u, 42141u);

var<private> global4: array<bool, 13> = array<bool, 13>(false, true, true, false, true, false, false, false, true, true, false, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = firstTrailingBit(~(-vec4<i32>(_wgslsmith_mod_i32(-2147483647i, arg_3.b), firstTrailingBit(-1i), abs(arg_2), 0i)));
    var var_1 = arg_1;
    var var_2 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, var_1.b, u_input.b.x), ~max(var_1.b, -arg_2)));
    var var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.e.x, arg_3.e.x), ~global3.xz, ~vec2<u32>(~2973u, ~4294967295u) | arg_3.e);
    global4 = array<bool, 13>();
    return _wgslsmith_f_op_f32(floor(2111f));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    global1 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-286f * -786f)), global1[_wgslsmith_index_u32(53735u, 21u)], (-select(-1i, arg_1.b, false) | 13815i) << (~select(~0u, ~33463u, false) % 32u), arg_1));
    var var_1 = vec3<u32>(select(39388u, ~abs(4294967295u), global2.x), 54827u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u) | min(vec2<u32>(arg_1.e.x, 1u), vec2<u32>(global3.x, global3.x)), vec2<u32>(abs(0u), global3.x))) << (vec3<u32>(arg_1.d, 0u << (0u % 32u), ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e.x, arg_1.d, arg_1.d), vec3<u32>(0u, global3.x, global3.x)), firstTrailingBit(0u))) % vec3<u32>(32u));
    let var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(30289u & global3.x), firstLeadingBit(~20083u), ~_wgslsmith_mod_u32(9876u, var_1.x)), select(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(arg_1.d, var_1.x, 0u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(24332u, arg_1.d, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 69769u, arg_1.d), vec3<u32>(arg_1.e.x, 27056u, arg_1.d))), ~(~vec3<u32>(global3.x, 4294967295u, 4294967295u))), ~(~(~vec3<u32>(53186u, global3.x, 1u))), vec3<bool>(arg_1.c.x, true, 1u >= ~global3.x)));
    let var_3 = arg_1;
    return !arg_1.c.x;
}

fn func_1() -> u32 {
    global2 = !(!vec3<bool>(func_2(global4[_wgslsmith_index_u32(global3.x, 13u)] | global2.x, global1[_wgslsmith_index_u32(global3.x, 21u)]), !select(global4[_wgslsmith_index_u32(global3.x, 13u)], global4[_wgslsmith_index_u32(109709u, 13u)], false), true));
    global3 = ~vec3<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, 0u), vec4<u32>(global3.x, 1u, 61220u, global3.x)) | (46117u ^ global3.x)), ~global3.x ^ _wgslsmith_div_u32(max(global3.x, global3.x), countOneBits(1u)), _wgslsmith_dot_vec3_u32(select(countOneBits(vec3<u32>(global3.x, global3.x, global3.x)), ~vec3<u32>(global3.x, global3.x, 1u), true), countOneBits(vec3<u32>(49714u, 4294967295u, 109978u) << (vec3<u32>(19405u, global3.x, global3.x) % vec3<u32>(32u)))));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(65382u, global3.x), _wgslsmith_mult_u32(firstTrailingBit(19840u), _wgslsmith_dot_vec3_u32(vec3<u32>(~global3.x, 1u, abs(global3.x)), ~vec3<u32>(61710u, global3.x, global3.x) ^ ~vec3<u32>(global3.x, 8565u, global3.x)))), 21u)];
    let var_1 = select(vec2<bool>(all(!select(vec2<bool>(false, global2.x), vec2<bool>(false, true), false)), !(~4294967295u <= (global3.x ^ 0u))), vec2<bool>(select(true, _wgslsmith_div_f32(var_0.a, var_0.a) > -385f, false), !(global3.x != var_0.e.x)), var_0.b >= -max(1i, -12722i));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(round(1796f))), vec3<f32>(-612f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f)), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.a))), !select(vec3<bool>(true, var_0.c.x, true), !var_0.c, all(var_1)))), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))), Struct_1(-572f, u_input.c, var_0.c, global3.x, firstLeadingBit(vec2<u32>(var_0.d, global3.x))), -2182i, Struct_1(131f, i32(-1i) * -70576i, vec3<bool>(true, true, true), global3.x, var_0.e)))));
    return 0u;
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    global3 = firstTrailingBit(_wgslsmith_add_vec3_u32(~max(vec3<u32>(1u, 54558u, 0u), vec3<u32>(1u, 76186u, 4294967295u)) << (countOneBits(~vec3<u32>(5785u, global3.x, 68202u)) % vec3<u32>(32u)), ~vec3<u32>(global3.x, global3.x & global3.x, 4294967295u)));
    var var_0 = 1u;
    let var_1 = arg_0.x;
    let var_2 = Struct_1(-594f, reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, 5626i), vec2<i32>(-2147483647i, u_input.c)), u_input.a.zy)), !vec3<bool>(!global2.x, true, true), ~1u, vec2<u32>(67413u, global3.x));
    let var_3 = var_2.a;
    return Struct_1(_wgslsmith_f_op_f32(-var_3), u_input.c, var_2.c, (_wgslsmith_sub_u32(select(1u, global3.x, false), global3.x) & 30220u) | var_2.d, global3.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<i32>(-u_input.a.x >> (func_1() % 32u), max(~_wgslsmith_add_i32(u_input.a.x, u_input.b.x), ~u_input.c << (_wgslsmith_div_u32(0u, 16638u) % 32u))));
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_mod_i32(-(var_0.b >> (func_1() % 32u)), -(~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, var_0.b, -2147483647i), vec3<i32>(1i, u_input.c, var_0.b)))));
    var_1 = _wgslsmith_mult_i32(u_input.c, -1i);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))) + _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(step(var_3, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(~vec2<u32>(global3.x, global3.x)), ~(~global3.zz), !(!global2.yx)));
}

