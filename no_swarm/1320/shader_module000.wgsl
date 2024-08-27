struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(18678u, 0u, 1u), vec3<u32>(4294967295u, 41303u, 1u), vec3<u32>(1u, 0u, 39683u), vec3<u32>(89104u, 37217u, 22468u), vec3<u32>(24258u, 0u, 12787u), vec3<u32>(65775u, 1u, 63101u), vec3<u32>(0u, 32754u, 5835u), vec3<u32>(1u, 4294967295u, 19136u), vec3<u32>(4294967295u, 4294967295u, 116086u), vec3<u32>(4294967295u, 4294967295u, 21114u), vec3<u32>(0u, 90999u, 1u), vec3<u32>(0u, 4279u, 4294967295u));

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(true, false, vec3<i32>(8544i, -58041i, 2147483647i)), Struct_2(false, false, vec3<i32>(-21452i, 17165i, 11112i)));

var<private> global2: vec3<i32>;

var<private> global3: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(50009u, 4294967295u, 0u, 1u), vec4<u32>(1u, 68289u, 23987u, 0u), vec4<u32>(42895u, 39001u, 4294967295u, 1u), vec4<u32>(9572u, 1u, 19229u, 3648u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(4294967295u, 51127u, 1u, 4876u), vec4<u32>(14885u, 4294967295u, 0u, 0u), vec4<u32>(9184u, 0u, 4799u, 1790u), vec4<u32>(1u, 4294967295u, 18338u, 1u), vec4<u32>(21210u, 27275u, 6269u, 0u), vec4<u32>(4294967295u, 32473u, 4294967295u, 84844u), vec4<u32>(4294967295u, 18089u, 49846u, 49705u), vec4<u32>(41717u, 51607u, 34904u, 51104u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global1 = array<Struct_2, 2>();
    global3 = array<vec4<u32>, 13>();
    var var_0 = !select(select(!vec4<bool>(false, false, false, arg_1), !vec4<bool>(false, false, arg_1, false), select(!vec4<bool>(false, false, false, arg_3.a), select(vec4<bool>(false, false, arg_1, arg_0.b), vec4<bool>(true, arg_0.b, arg_3.b, false), true), !vec4<bool>(arg_3.b, true, arg_3.b, true))), select(select(!vec4<bool>(arg_1, false, false, false), !vec4<bool>(arg_3.a, false, false, false), 1u >= arg_2.a.x), vec4<bool>(arg_3.b, arg_3.c.x == -7143i, arg_1, arg_0.a), select(vec4<bool>(false, arg_1, arg_3.b, false), vec4<bool>(false, arg_0.a, arg_1, arg_0.a), true)), vec4<bool>(select(any(vec3<bool>(arg_1, arg_3.b, arg_1)), true, false && arg_1), any(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_3.b, false, arg_1, arg_0.a), false)), arg_0.b, true));
    var var_1 = -countOneBits(arg_0.c.x) > (arg_0.c.x & max(_wgslsmith_add_i32(13323i, ~arg_3.c.x), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c.x, global2.x, -2147483647i, global2.x), vec4<i32>(arg_3.c.x, 18742i, arg_0.c.x, global2.x)))));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~1u), select(36297u, u_input.a.x, arg_0.a && arg_0.b), ~max(arg_2.a.x, u_input.a.x)), vec3<u32>(0u, max(41430u, ~0u), firstTrailingBit(34394u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1491f, _wgslsmith_f_op_f32(step(269f, 1141f))))))) * _wgslsmith_f_op_f32(ceil(1f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(547f * arg_2.x))), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(16271u, 2u)], false, Struct_1(arg_0.a), Struct_2(false, true, vec3<i32>(1i, 2147483647i, arg_1.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -1004f)), _wgslsmith_f_op_f32(-arg_2.x)) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1294f + -483f), _wgslsmith_f_op_f32(328f - -1395f)), 434f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f) - 1f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) * _wgslsmith_f_op_f32(530f * arg_2.x)), _wgslsmith_f_op_f32(floor(arg_2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x)))));
    global2 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global2.x, global2.x, -1i, 2147483647i), vec4<i32>(3141i, arg_1.x, -54138i, global2.x) & ~vec4<i32>(global2.x, global2.x, 28048i, global2.x)), 19324i, _wgslsmith_clamp_i32(reverseBits(-arg_1.x), _wgslsmith_sub_i32(arg_1.x, _wgslsmith_mult_i32(-3562i, arg_1.x)), max(abs(0i), ~2147483647i)));
    global2 = countOneBits(-_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.x, -1i, global2.x)) & abs(vec3<i32>(global2.x, 61391i, -24208i)), -(~vec3<i32>(arg_1.x, global2.x, 1i))));
    global0 = array<vec3<u32>, 12>();
    var var_1 = arg_0;
    return firstTrailingBit(~(~var_1.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    global3 = array<vec4<u32>, 13>();
    let var_0 = vec3<u32>(~(~4294967295u & ~func_2(Struct_1(arg_0.a), arg_1.c.xx, vec2<f32>(2465f, 495f))), min(max(max(u_input.a.x, 6342u), _wgslsmith_clamp_u32(countOneBits(0u), select(4294967295u, u_input.a.x, false), u_input.a.x << (36614u % 32u))), arg_0.a.x >> (~29461u % 32u)), 100466u << ((reverseBits(arg_0.a.x ^ 28046u) ^ ~arg_0.a.x) % 32u));
    global3 = array<vec4<u32>, 13>();
    global3 = array<vec4<u32>, 13>();
    global2 = vec3<i32>(~(~2147483647i), global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(42081i) >> (u_input.a.x % 32u), ~0i, _wgslsmith_clamp_i32(abs(global2.x), 9554i, max(1i, 0i))), select(max(vec3<i32>(arg_2.x, arg_2.x, -2147483647i) >> (arg_0.a % vec3<u32>(32u)), min(vec3<i32>(global2.x, -2147483647i, global2.x), arg_1.c)), vec3<i32>(0i, 1i, arg_1.c.x) ^ (arg_1.c << (vec3<u32>(661u, var_0.x, 0u) % vec3<u32>(32u))), vec3<bool>(!arg_1.b, true, true))));
    return Struct_2(1f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(func_2(arg_0, vec2<i32>(1i, -35780i), vec2<f32>(184f, 1000f)), 2u)], any(vec4<bool>(arg_1.a, true, arg_1.b, false)), arg_0, Struct_2(true, arg_1.b, vec3<i32>(global2.x, arg_1.c.x, 42869i)))))), !arg_1.a, max(vec3<i32>(global2.x, _wgslsmith_mod_i32(abs(1i), _wgslsmith_mod_i32(arg_1.c.x, -16509i)), _wgslsmith_mult_i32(-3239i, abs(57371i))), countOneBits(arg_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 64126u;
    let var_1 = func_1(Struct_1(vec3<u32>(14071u, u_input.a.x, max(1u, var_0))), global1[_wgslsmith_index_u32(4294967295u, 2u)], -global2.xx);
    let var_2 = func_1(Struct_1(u_input.a.ywz), Struct_2(!var_1.a, u_input.a.x == ~abs(u_input.a.x), ~(~firstTrailingBit(var_1.c))), var_1.c.yy);
    var var_3 = var_1.b;
    var var_4 = -32050i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-913f * _wgslsmith_f_op_f32(select(280f, _wgslsmith_div_f32(-893f, 1677f), false & var_1.b))), -569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1756f)))))), firstTrailingBit(u_input.a.zy) | (~vec2<u32>(u_input.a.x, u_input.a.x) & max(vec2<u32>(u_input.a.x, 50315u), vec2<u32>(0u, 37941u))), ~min(u_input.a.ywx, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wwz, vec3<u32>(u_input.a.x, 78478u, u_input.a.x)), var_0 & u_input.a.x, max(1u, 1u))), _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a.x, var_0), ~(~max(u_input.a.zy, u_input.a.ww))), _wgslsmith_clamp_vec2_i32(func_1(Struct_1(_wgslsmith_add_vec3_u32(u_input.a.yww, vec3<u32>(69571u, u_input.a.x, 0u))), func_1(Struct_1(vec3<u32>(var_0, u_input.a.x, 30625u)), var_1, _wgslsmith_clamp_vec2_i32(vec2<i32>(6631i, -2147483647i), global2.xy, vec2<i32>(-21812i, var_1.c.x))), var_1.c.xz | vec2<i32>(3225i, global2.x)).c.yz, var_2.c.yz, countOneBits(var_1.c.xy)));
}

