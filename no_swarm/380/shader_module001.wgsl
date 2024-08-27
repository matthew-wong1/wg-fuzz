struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(1u), Struct_2(0u), Struct_2(29136u), Struct_2(1u), Struct_2(36774u), Struct_2(23665u), Struct_2(22588u), Struct_2(1u), Struct_2(55262u), Struct_2(0u), Struct_2(33874u), Struct_2(19276u), Struct_2(73888u), Struct_2(22736u), Struct_2(8734u));

var<private> global1: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(458f, -903f), vec2<f32>(249f, -691f), vec2<f32>(-1205f, -1419f), vec2<f32>(-929f, -429f), vec2<f32>(104f, -132f), vec2<f32>(-994f, -1599f), vec2<f32>(-365f, -415f), vec2<f32>(-1000f, 569f));

var<private> global2: u32 = 64577u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global0 = array<Struct_2, 15>();
    let var_0 = global0[_wgslsmith_index_u32(arg_0.x, 15u)];
    var var_1 = Struct_1(-1000f, select(vec4<bool>(_wgslsmith_mult_i32(-24034i, u_input.e.x) == u_input.b.x, true, true, true), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_mult_u32(~u_input.d, ~0u) <= select(3581u, ~69414u, true)), select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(u_input.e.x > u_input.b.x, true))), false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-188f, var_1.a) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2454f)))));
    global2 = 13234u;
    return var_1.a;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(~u_input.d);
    global0 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1173f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f)))))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(var_0.a, 22118u))), var_1), any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, true)))), !any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), (_wgslsmith_add_i32(10307i, 0i) > ~u_input.b.x) & true), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true), vec2<bool>(var_0.a < 22552u, var_1 < var_1)), !select(vec2<bool>(true, true), vec2<bool>(false, true), select(false, true, false)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true)))), !(!((var_0.a ^ var_0.a) < _wgslsmith_mult_u32(35525u, 35818u))));
    var_0 = Struct_2(var_0.a);
    return Struct_2(~_wgslsmith_sub_u32(68127u, ~countOneBits(u_input.d)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_2();
    global2 = countOneBits(var_0.a);
    var var_1 = vec3<f32>(-1057f, arg_1.a, -594f);
    var var_2 = select(!(!arg_1.b.wyy), !arg_1.b.zxz, select(arg_1.b.wyx, !arg_1.b.wxy, !select(!arg_1.b.xxz, !vec3<bool>(arg_1.d, arg_1.c.x, arg_1.b.x), vec3<bool>(true, arg_1.d, arg_1.d))));
    global2 = ~var_0.a;
    return Struct_2(_wgslsmith_div_u32(21769u, ~(~var_0.a) & ~6344u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = false;
    global2 = ~arg_3.a;
    global1 = array<vec2<f32>, 8>();
    global2 = _wgslsmith_dot_vec4_u32(abs(~(countOneBits(vec4<u32>(13251u, arg_3.a, u_input.a.x, u_input.a.x)) ^ ~vec4<u32>(u_input.d, u_input.a.x, 86911u, 4294967295u))), vec4<u32>(arg_3.a, 1u, 9146u, max(arg_0.a, arg_3.a)));
    global2 = reverseBits(~firstTrailingBit(34967u));
    return Struct_1(arg_1.a, arg_1.b, select(select(arg_1.b.zx, vec2<bool>(!var_0, all(arg_1.c)), any(!vec3<bool>(var_0, true, arg_1.b.x))), vec2<bool>(arg_3.a > ~4294967295u, any(select(arg_1.b.zx, arg_1.c, true))), arg_1.c), false);
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = firstLeadingBit(~vec4<i32>(-firstTrailingBit(u_input.c), ~(-2147483647i), 1i, -(-4127i << (0u % 32u))));
    global0 = array<Struct_2, 15>();
    var_0 = _wgslsmith_add_vec4_i32(select(max(-_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, 32757i, 9465i), vec4<i32>(8698i, -25513i, var_0.x, var_0.x)), vec4<i32>(~(-1i), ~0i, _wgslsmith_dot_vec3_i32(var_0.zyy, var_0.wzy), -37659i)), -vec4<i32>(firstTrailingBit(var_0.x), u_input.e.x << (401u % 32u), max(2147483647i, 4972i), u_input.e.x), false), abs(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 62383i, -2147483647i, u_input.b.x), max(vec4<i32>(var_0.x, u_input.b.x, u_input.e.x, -53795i), vec4<i32>(u_input.c, u_input.e.x, 0i, -2147483647i)), -vec4<i32>(43437i, 0i, u_input.b.x, 30152i))));
    global1 = array<vec2<f32>, 8>();
    var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, ~countOneBits(var_0.x), -2147483647i, u_input.b.x), vec4<i32>(-44183i, -2147483647i, i32(-1i) * -u_input.e.x, 34731i));
    return select(vec4<bool>(false, !arg_1, all(vec3<bool>(arg_0, true, arg_1)) | any(select(vec2<bool>(false, true), arg_3.b.xy, arg_3.c)), !all(vec2<bool>(arg_2.c.x, arg_2.b.x))), arg_3.b, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 0u;
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x, ~(~0u)), 15u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1388f, _wgslsmith_f_op_f32(trunc(-164f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1224f - -889f))))), true)), select(func_5(false, true, func_4(func_1(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], Struct_1(1000f, vec4<bool>(true, false, true, true), vec2<bool>(true, true), false)), Struct_1(-605f, vec4<bool>(false, true, true, true), vec2<bool>(false, false), true), firstTrailingBit(vec3<i32>(-2147483647i, u_input.b.x, 1i)), Struct_2(u_input.d)), Struct_1(331f, select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), vec2<bool>(true, true), false)), !select(func_4(Struct_2(21727u), Struct_1(-563f, vec4<bool>(false, false, true, true), vec2<bool>(true, false), true), vec3<i32>(-1i, u_input.b.x, -2147483647i), Struct_2(var_0.a)).b, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), true), vec4<bool>(true, true, true, true)), !vec2<bool>(any(vec3<bool>(false, true, true)), func_4(func_1(Struct_2(27308u), Struct_1(1000f, vec4<bool>(false, true, true, false), vec2<bool>(false, true), false)), func_4(global0[_wgslsmith_index_u32(1u, 15u)], Struct_1(-158f, vec4<bool>(true, false, false, false), vec2<bool>(false, false), true), vec3<i32>(u_input.b.x, u_input.e.x, -51183i), Struct_2(u_input.a.x)), abs(vec3<i32>(30711i, u_input.c, 0i)), Struct_2(u_input.a.x)).b.x), any(!(!func_4(Struct_2(var_0.a), Struct_1(-411f, vec4<bool>(false, false, true, true), vec2<bool>(false, false), true), vec3<i32>(u_input.c, -1i, 0i), Struct_2(var_0.a)).b)));
    var var_2 = vec4<f32>(1337f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))));
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(func_1(func_2(), var_1).a >> (abs(~func_2().a) % 32u)), 15u)];
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-firstTrailingBit(u_input.e)));
}

