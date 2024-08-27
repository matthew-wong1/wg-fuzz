struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-572f, 502f), vec2<f32>(1557f, 323f));

var<private> global2: Struct_1 = Struct_1(42141u, vec3<i32>(54797i, -84472i, i32(-2147483648)), vec2<u32>(95863u, 1u));

var<private> global3: u32 = 46371u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = vec3<bool>(~(~global2.c.x) < countOneBits(58023u), any(!(!vec2<bool>(arg_0, arg_0))), -2368i < (_wgslsmith_sub_i32(-84233i, global2.b.x) | ~(-4988i)));
    var var_1 = ~(~arg_1.x);
    let var_2 = Struct_1(min(_wgslsmith_dot_vec2_u32(~global2.c << (_wgslsmith_sub_vec2_u32(arg_1, u_input.b.yz) % vec2<u32>(32u)), firstTrailingBit(~arg_1)), global2.a), vec3<i32>(23162i, 2147483647i, global2.b.x), select(u_input.b.yx, max(global2.c ^ vec2<u32>(1u, 11533u), _wgslsmith_mod_vec2_u32(arg_2.xz, u_input.b.yx)) >> (vec2<u32>(u_input.b.x, ~u_input.b.x) % vec2<u32>(32u)), true));
    let var_3 = Struct_1(max(4294967295u, _wgslsmith_div_u32(~1u, arg_2.x)), -global2.b, arg_1);
    var var_4 = var_3;
    return 1i;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_1(max(8598u, min(35813u, ~18288u)), vec3<i32>(u_input.d, func_3(arg_3 <= _wgslsmith_f_op_f32(ceil(arg_3)), vec2<u32>(30425u, arg_1), u_input.b), -1i), arg_0.yy);
    var var_1 = select(vec4<bool>(all(vec2<bool>(false, true)), _wgslsmith_sub_i32(reverseBits(var_0.b.x), i32(-1i) * -56741i) == select(global2.b.x, 2147483647i | global2.b.x, any(vec3<bool>(true, true, false))), !arg_2, all(select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2), arg_2))), vec4<bool>(arg_2 && all(!vec3<bool>(true, arg_2, false)), any(select(!vec4<bool>(arg_2, arg_2, arg_2, false), !vec4<bool>(arg_2, false, false, false), arg_0.x >= arg_1)), true, true), vec4<bool>(select(true, false, arg_2), false, !(true | arg_2), select(arg_2, all(vec2<bool>(true, true)) | all(vec3<bool>(arg_2, arg_2, false)), (u_input.d == global2.b.x) && true)));
    return var_0;
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = func_2(~(~abs(~vec4<u32>(arg_0.a, 44795u, u_input.b.x, u_input.b.x))), ~(~(~arg_0.c.x << (1u % 32u))), select(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(floor(104f)));
    var_0 = Struct_1(~_wgslsmith_sub_u32(11017u, _wgslsmith_sub_u32(1u, func_2(vec4<u32>(18451u, arg_0.c.x, 18476u, global2.a), 27700u, false, 1393f).a)), ~vec3<i32>(-(var_0.b.x | global2.b.x), -1i, global2.b.x), ~(~(_wgslsmith_mult_vec2_u32(u_input.b.zy, global2.c) & _wgslsmith_sub_vec2_u32(u_input.b.yx, vec2<u32>(u_input.b.x, 4294967295u)))));
    let var_1 = Struct_1(u_input.b.x, arg_0.b, ~(~(~vec2<u32>(var_0.a, arg_0.a) | ~arg_0.c)));
    global3 = global2.c.x;
    global0 = array<vec2<i32>, 31>();
    return _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(~vec2<i32>(var_0.b.x, global2.b.x)), var_0.b.yy, firstLeadingBit(_wgslsmith_div_vec2_i32(var_0.b.xz, vec2<i32>(arg_0.b.x, -1i)))), u_input.c.yw), global2.b.xx);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_1 {
    global3 = global2.c.x;
    var var_0 = !select(!vec3<bool>(any(vec3<bool>(arg_1, arg_1, arg_1)), arg_1, global2.b.x != arg_0.b.x), !select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, false, arg_1), arg_1), vec3<bool>(false, arg_1, arg_1), false), true);
    var var_1 = func_2(abs(vec4<u32>(0u | arg_3.x, 121015u, _wgslsmith_mod_u32(64209u, 43615u), abs(arg_0.c.x)) >> (arg_3 % vec4<u32>(32u))), 68615u, all(!(!(!vec4<bool>(arg_1, false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-455f, 770f)), _wgslsmith_f_op_f32(f32(-1f) * -832f), false)))));
    global2 = arg_0;
    var var_2 = func_2(abs(_wgslsmith_sub_vec4_u32(arg_3, vec4<u32>(4294967295u, 9689u, 159u, countOneBits(arg_3.x)))), 4294967295u, all(!select(var_0.yy, !vec2<bool>(arg_1, var_0.x), select(arg_1, arg_1, true))), _wgslsmith_f_op_f32(-1042f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-538f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -138f))))));
    return arg_0;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.e.x;
    var_0 = ~(-(~((1i & global2.b.x) << (4294967295u % 32u))));
    let var_1 = global2.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1109f, -759f, 336f, 114f)))))));
    var_0 = ~2147483647i;
    return func_5(Struct_1(reverseBits(74755u), -vec3<i32>(~(-2147483647i), global2.b.x, ~0i), global2.c), !(_wgslsmith_f_op_f32(-593f + var_2.x) >= _wgslsmith_div_f32(var_2.x, var_2.x)) && false, min(func_4(func_2(firstTrailingBit(vec4<u32>(1u, global2.a, var_1.x, global2.c.x)), _wgslsmith_mod_u32(u_input.b.x, var_1.x), any(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(ceil(var_2.x)))), ~countOneBits(~vec2<i32>(global2.b.x, u_input.d))), min(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.c.x, global2.c.x, 22772u, 64527u << (global2.a % 32u)), vec4<u32>(max(global2.a, u_input.b.x), abs(global2.c.x), global2.c.x, ~0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 0u, 10278u, 4294967295u) ^ select(vec4<u32>(u_input.b.x, var_1.x, global2.a, 1u), vec4<u32>(var_1.x, global2.c.x, global2.c.x, 0u), vec4<bool>(true, false, false, false)), ~vec4<u32>(global2.a, u_input.b.x, global2.a, u_input.b.x), ~(~vec4<u32>(1488u, 51068u, var_1.x, var_1.x)))));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<f32>) -> StorageBuffer {
    let var_0 = ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_1.c.x, 23182u, arg_1.a) << (vec4<u32>(4294967295u, 0u, 0u, arg_1.c.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, global2.a, global2.c.x, global2.c.x), vec4<u32>(global2.c.x, global2.a, 38162u, 37984u))) & ~select(select(vec4<u32>(u_input.b.x, u_input.b.x, 0u, arg_1.c.x), ~vec4<u32>(4294967295u, global2.a, u_input.b.x, 17451u), false), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a, arg_1.a, 15978u, u_input.b.x), vec4<u32>(25926u, 38820u, 66405u, 53296u)), abs(vec4<u32>(22153u, arg_1.c.x, global2.c.x, global2.a))), !select(arg_2, arg_2, true));
    var var_1 = _wgslsmith_add_i32(firstTrailingBit(func_4(Struct_1(arg_1.a, vec3<i32>(global2.b.x, -19665i, global2.b.x), vec2<u32>(18882u, 10843u))).x) ^ countOneBits(-5939i), u_input.e.x | reverseBits(1i));
    global0 = array<vec2<i32>, 31>();
    let var_2 = arg_1;
    global3 = ~select(u_input.b.x, 0u ^ _wgslsmith_div_u32(u_input.b.x, 0u), !arg_2.x);
    return StorageBuffer(abs(min(select(var_0, var_0, vec4<bool>(true, arg_2.x, false, arg_2.x)), vec4<u32>(49095u, var_0.x, 0u, u_input.b.x)) & var_0), _wgslsmith_clamp_i32(func_2(var_0, ~(~var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -958f) != _wgslsmith_f_op_f32(-1007f + arg_3.x), arg_0).b.x, -33906i, -1i), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1615f)) + _wgslsmith_f_op_f32(abs(arg_0))) - -331f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.b.x | countOneBits(max(global2.a, ~u_input.b.x));
    var var_0 = vec3<i32>(1i, ~46049i, -2147483647i);
    global1 = array<vec2<f32>, 2>();
    var var_1 = Struct_1(0u, firstTrailingBit(_wgslsmith_add_vec3_i32(abs(u_input.e.yxw), abs(global2.b)) << (u_input.b % vec3<u32>(32u))), select(~vec2<u32>(u_input.b.x << (10497u % 32u), _wgslsmith_clamp_u32(global2.a, 4294967295u, 4294967295u)), abs(u_input.b.yz), select(vec2<bool>(true, true), vec2<bool>(true, global2.b.x == u_input.e.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let var_2 = 1209f;
    let var_3 = true;
    let x = u_input.a;
    s_output = func_6(595f, func_1(), !(!select(vec4<bool>(true, false, false, var_3), !vec4<bool>(true, var_3, false, var_3), vec4<bool>(false, var_3, true, true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1869f, 624f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(114f, 673f, var_2)))) * _wgslsmith_div_vec3_f32(vec3<f32>(1465f, -999f, var_2), vec3<f32>(var_2, var_2, var_2))))));
}

