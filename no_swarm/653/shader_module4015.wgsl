struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec3<f32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 32802u), 4294967295u);

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, 2147483647i);

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec2<u32>(5387u, 0u), 47144u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1166f)), _wgslsmith_f_op_f32(max(505f, 358f)), any(vec3<bool>(true, true, false))))), Struct_1(global2.xzz, u_input.a.zx, ~1u), Struct_2(firstTrailingBit(~vec3<i32>(-2147483647i, u_input.b, u_input.b))), Struct_2(vec3<i32>(2147483647i, u_input.b, -42791i) << (~u_input.a.xzx % vec3<u32>(32u))), Struct_1(vec3<bool>(!global2.x, false, global1.a.x), global4.b >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a.x), global4.b, u_input.a.yx) % vec2<u32>(32u)), reverseBits(1u) >> (0u % 32u))), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1397f), 1230f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1054f, -557f, -927f)), vec3<f32>(821f, 561f, 1000f), global2.wyz)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f - -1115f) * -1154f)), Struct_1(select(vec3<bool>(global1.a.x, true, global4.a.x), global4.a, global1.a), vec2<u32>(~5354u, u_input.a.x >> (4294967295u % 32u)), 12592u), Struct_2(abs(vec3<i32>(2811i, global3.x, global3.x)) | select(vec3<i32>(global3.x, global3.x, 38557i), vec3<i32>(u_input.b, -63211i, 1i), vec3<bool>(global2.x, true, false))), Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 23428i, global3.x) ^ vec3<i32>(1i, global3.x, 1i), abs(vec3<i32>(global3.x, -10746i, -1i)))), Struct_1(global2.xwx, global4.b, 4294967295u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, -413f)) + _wgslsmith_div_vec2_f32(vec2<f32>(2072f, 948f), vec2<f32>(-563f, 301f))) - vec2<f32>(_wgslsmith_f_op_f32(-1323f * -1000f), _wgslsmith_div_f32(1956f, 1000f))), vec2<f32>(626f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -159f)))));
    global2 = !select(select(vec4<bool>(false, global1.a.x, global4.a.x, 0u < global1.c), select(select(vec4<bool>(true, true, false, var_0.d.b.a.x), vec4<bool>(global4.a.x, global4.a.x, global0.x, false), global1.a.x), vec4<bool>(global4.a.x, var_0.d.b.a.x, false, global0.x), !global0.x), vec4<bool>(true, global4.a.x, true, select(global4.a.x, global0.x, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, !var_0.a.b.a.x, 65109u < global4.c, false), !select(vec4<bool>(true, true, false, false), vec4<bool>(global0.x, global1.a.x, true, var_0.a.b.a.x), false)), select(!vec4<bool>(false, var_0.d.b.a.x, var_0.a.b.a.x, global0.x), vec4<bool>(92464u == u_input.a.x, var_0.a.e.b.x != global1.b.x, global1.a.x, global2.x), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1029f, _wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_f32(f32(-1f) * -837f), var_0.d.a)));
    var_0 = Struct_5(var_0.d, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(-global3.xx), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -36188i), vec2<i32>(u_input.b, var_0.a.c.a.x)) & select(var_0.d.d.a.yy, vec2<i32>(17817i, global3.x), global4.a.xz)), -_wgslsmith_mod_vec2_i32(abs(global3.zx), ~global3.zz)), vec3<f32>(-764f, 991f, _wgslsmith_f_op_f32(-1412f - _wgslsmith_f_op_f32(f32(-1f) * -214f))), var_0.d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.c.zz)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a, 370f) + var_1.yx))))));
    global3 = var_0.d.d.a;
    return ~(abs(u_input.b) ^ global3.x) >= (((global3.x ^ -u_input.b) >> (~abs(global4.b.x) % 32u)) | -var_0.d.c.a.x);
}

fn func_2(arg_0: Struct_1) -> bool {
    global2 = vec4<bool>(global2.x, arg_0.a.x, global1.a.x || true, true);
    global0 = global1.a;
    global2 = vec4<bool>(func_3(), all(select(!vec2<bool>(true, global2.x), select(select(global0.xz, vec2<bool>(true, true), global4.a.x), !global0.yx, vec2<bool>(true, false)), arg_0.a.x)), (global1.c << (max(36030u, 1u) % 32u)) <= 1u, true && (-331f == _wgslsmith_f_op_f32(round(1223f))));
    var var_0 = 1754f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(sign(314f)))), true)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(824f + -1224f) * _wgslsmith_f_op_f32(min(112f, -277f)))))));
    return !(select(false, false, any(vec3<bool>(true, global0.x, true))) | true);
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global2 = !(!vec4<bool>(true, 13338i != _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, 17336i, u_input.b, global3.x), vec4<i32>(arg_0.x, 0i, 27419i, u_input.b)), global0.x, !func_2(Struct_1(global2.yyz, vec2<u32>(global1.b.x, 0u), 1u))));
    let var_0 = select(global1.a.zz, select(vec2<bool>(true, true), select(global1.a.zz, vec2<bool>(func_3(), arg_0.x > -2147483647i), !global2.xx), select(select(vec2<bool>(true, false), select(global2.yy, global1.a.xx, global0.x), vec2<bool>(true, true)), vec2<bool>(global1.c > global1.c, select(false, global2.x, global1.a.x)), global0.xy)), _wgslsmith_mult_i32(reverseBits(-2551i), 0i) >= _wgslsmith_div_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.b, arg_0.x), vec4<i32>(23103i, u_input.b, 64891i, arg_0.x))), -27464i));
    let var_1 = Struct_4(all(global4.a), u_input.a.yx, _wgslsmith_f_op_f32(min(755f, _wgslsmith_f_op_f32(ceil(-611f)))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(round(var_1.c))))));
    let var_3 = var_1.c;
    return any(select(!(!vec3<bool>(global2.x, true, true)), vec3<bool>(false, true, any(vec2<bool>(global0.x, var_0.x))), (0i ^ global3.x) > global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(all(vec2<bool>(firstLeadingBit(-27297i) >= global3.x, func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 12276i, -2147483647i), vec3<i32>(47314i, 24143i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.b))))), false, true, !all(!vec2<bool>(true, global1.a.x)));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1339f, 285f) - _wgslsmith_f_op_f32(-151f * -1000f))) - -325f), Struct_1(select(global4.a, select(vec3<bool>(global0.x, false, global2.x), global1.a, select(vec3<bool>(global2.x, global1.a.x, false), global4.a, vec3<bool>(global0.x, false, global0.x))), !global2.zxx), countOneBits(reverseBits(vec2<u32>(85006u, 80627u))) & vec2<u32>(~0u, u_input.a.x), u_input.a.x), Struct_2(~countOneBits(vec3<i32>(18645i, 527i, 1i) | vec3<i32>(u_input.b, global3.x, 0i))), Struct_2(-vec3<i32>(72096i, 36000i, _wgslsmith_add_i32(-52024i, -1i))), Struct_1(vec3<bool>(global4.a.x, reverseBits(1855u) == _wgslsmith_add_u32(4294967295u, global1.c), global2.x), global4.b & global1.b, ~(~_wgslsmith_div_u32(20381u, u_input.a.x))));
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, ~4294967295u, ~(~28846u), abs(29719u)), ~(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.c, global4.b.x, 4294967295u, global4.b.x), u_input.a) ^ ~vec4<u32>(4294967295u, global1.b.x, 24480u, var_0.b.c))), countOneBits(select(u_input.a, select(~vec4<u32>(17600u, global1.b.x, 72343u, global1.b.x), vec4<u32>(var_0.b.c, 102395u, 0u, u_input.a.x), select(vec4<bool>(global0.x, global4.a.x, global2.x, false), vec4<bool>(global4.a.x, global2.x, false, true), true)), vec4<bool>(global2.x, true, u_input.b > -2147483647i, var_0.e.a.x))));
    var var_2 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(26756u);
}

