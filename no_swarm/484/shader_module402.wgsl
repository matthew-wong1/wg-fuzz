struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, false, true, false, true, true, false, true, false);

var<private> global2: vec3<f32> = vec3<f32>(1267f, 380f, 232f);

var<private> global3: i32 = 0i;

var<private> global4: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(~global4.b.b.x, -1i) << (_wgslsmith_add_u32(countOneBits(~0u), u_input.a) % 32u), _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-35233i, _wgslsmith_add_i32(global4.c, -2147483647i) ^ ~global4.c, -(~u_input.b))));
    global0 = select(abs(~(-19234i >> (1u % 32u))), u_input.b, true);
    var var_1 = 10925u;
    global0 = ~global4.a.x;
    global4 = Struct_2(~global4.a, Struct_1(_wgslsmith_dot_vec3_u32(global4.b.c, ~(~global4.b.c)), ~(-max(vec4<i32>(u_input.d.x, u_input.e.x, -15364i, 20251i), vec4<i32>(-19317i, u_input.c, -2147483647i, -29893i))), _wgslsmith_sub_vec3_u32(global4.b.c, max(countOneBits(vec3<u32>(0u, u_input.a, global4.b.a)), vec3<u32>(1u, 45381u, u_input.a))), 65183i, _wgslsmith_f_op_f32(-498f + _wgslsmith_f_op_f32(-1253f * -543f))), 6961i);
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    global3 = firstTrailingBit(_wgslsmith_mod_i32(-1i, 18816i));
    global3 = 27683i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4.b.e, arg_3.e)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_4(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u >> (0u % 32u)), vec2<u32>(global4.b.a, _wgslsmith_mult_u32(0u, 32728u))), vec2<bool>(func_2(), false));
    global2 = vec3<f32>(-458f, global4.b.e, global4.b.e);
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(global4.a, global4.b, -2147483647i), -819f, vec4<u32>(global4.b.a, 42479u, 136476u, global4.b.c.x), global4.b)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global4.b.e)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1383f, 2206f, 782f), vec3<f32>(-1516f, global2.x, 434f), vec3<bool>(var_0.b.x, true, var_0.b.x))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-776f, global2.x, global4.b.e))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1453f, -276f, 711f) + vec3<f32>(global2.x, global2.x, 604f)), vec3<f32>(-591f, 1000f, global2.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, global4.b.e, -1322f)))))), true));
    var var_1 = Struct_4(vec2<u32>(u_input.a, 23818u), select(select(var_0.b, !(!vec2<bool>(var_0.b.x, global1[_wgslsmith_index_u32(var_0.a.x, 11u)])), true), vec2<bool>(var_0.a.x != ~global4.b.c.x, true & (u_input.a <= u_input.a)), vec2<bool>(true, true | any(var_0.b))));
    global1 = array<bool, 11>();
    return Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(max(global4.a.x, 3774i), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, -35584i), arg_0.x), 1i, _wgslsmith_dot_vec3_i32(-u_input.d.wyw, vec3<i32>(u_input.e.x, -2147483647i, global4.c))), -global4.a), Struct_1(~(~1u), ~(-min(vec4<i32>(-1i, global4.a.x, 2147483647i, global4.b.b.x), global4.a)), min(global4.b.c, select(vec3<u32>(var_1.a.x, var_1.a.x, global4.b.c.x) | global4.b.c, vec3<u32>(global4.b.c.x, global4.b.a, 4294967295u), any(vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)))), abs(-u_input.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x)))), firstTrailingBit(2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(-vec3<i32>(-28878i, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.b.d, 2147483647i), vec2<i32>(2147483647i, global4.c)), _wgslsmith_div_i32(u_input.c, global4.a.x)), global4.a.zzy, u_input.a == 1u));
    let var_1 = global2.x;
    var var_2 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global4.b.d | var_0.a.x, -2147483647i, var_0.a.x, _wgslsmith_mult_i32(var_0.c, global4.a.x)), vec4<i32>(global4.c >> (0u % 32u), firstTrailingBit(-5123i), _wgslsmith_div_i32(var_0.c, -31683i), firstTrailingBit(-21641i))), vec4<i32>(_wgslsmith_add_i32(-2147483647i, 1303i), 29942i, abs(var_0.b.d), ~var_0.a.x)), func_1(~(~u_input.d.wxx & min(global4.b.b.ywz, global4.b.b.wzy))).b, firstTrailingBit(i32(-1i) * -8197i));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.e)), _wgslsmith_f_op_f32(-var_2.b.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -870f) + 1101f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.e, 547f, -485f), vec3<f32>(var_2.b.e, var_2.b.e, -1172f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, global2.x, var_2.b.e))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1236f, global4.b.e))), var_2.b.e)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(745f)))));
    var var_5 = func_1(min(var_2.b.b.wxy, var_0.b.b.yxz));
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1824f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.b.e + 418f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2143f))), vec2<bool>(!global1[_wgslsmith_index_u32(~35997u, 11u)], false))));
    let var_7 = Struct_3(func_1(var_0.a.yyy));
    global3 = ~var_5.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(max(var_7.a.b.e, _wgslsmith_f_op_f32(step(global4.b.e, var_7.a.b.e)))), global1[_wgslsmith_index_u32(~2780u << (abs(var_7.a.b.a) % 32u), 11u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.x, -1264f, global2.x, var_7.a.b.e)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_7.a.b.e, -1556f, 169f, var_7.a.b.e) - vec4<f32>(1552f, 1647f, -224f, -600f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-597f + var_6.x), 749f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e * var_0.b.e)), _wgslsmith_f_op_f32(sign(func_1(var_0.a.xxw).b.e))), true)), vec3<u32>(1u, var_2.b.a, _wgslsmith_sub_u32(~_wgslsmith_div_u32(global4.b.a, global4.b.a), 0u)), abs(~min(vec4<i32>(global4.c, -21469i, var_2.a.x, -37101i), u_input.d)) & select(reverseBits(vec4<i32>(var_2.a.x, 2147483647i, 0i, u_input.d.x)), vec4<i32>(abs(var_2.b.d), _wgslsmith_dot_vec2_i32(var_7.a.a.yx, var_5.b.b.zw), global4.a.x, 1i), !any(vec4<bool>(false, false, true, false))), ~var_5.a.yxy);
}

