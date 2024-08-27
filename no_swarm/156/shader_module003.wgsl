struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(-560f, vec4<i32>(47981i, 2147483647i, -1i, 0i), vec2<u32>(55707u, 37554u), vec4<f32>(-489f, -1292f, 1823f, -3499f), Struct_3(vec3<i32>(-3084i, 0i, i32(-2147483648)))));

var<private> global1: Struct_2 = Struct_2(Struct_1(639f, 15649u, 26382u, vec3<f32>(2801f, -789f, -1252f)), vec2<bool>(false, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<f32>) -> bool {
    let var_0 = false;
    global0 = array<Struct_4, 1>();
    global0 = array<Struct_4, 1>();
    var var_1 = ~u_input.a;
    var var_2 = Struct_2(global1.a, !(!select(vec2<bool>(arg_1.b.x, false), select(arg_1.b, arg_1.b, global1.b.x), !arg_1.b)));
    return any(vec3<bool>(true, true, global1.b.x)) | !(true | var_0);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1093f, global1.a.a)) * _wgslsmith_f_op_f32(ceil(117f)))), _wgslsmith_f_op_f32(select(-790f, 326f, func_3(Struct_1(global1.a.a, arg_2.x, global1.a.b, global1.a.d), Struct_2(global1.a, vec2<bool>(arg_1.x, arg_0.x)), vec3<u32>(arg_2.x, arg_2.x, arg_2.x) & vec3<u32>(global1.a.c, arg_2.x, 31623u), vec3<f32>(global1.a.d.x, global1.a.d.x, 212f)))), _wgslsmith_f_op_f32(-global1.a.a)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(953f, global1.a.d.x)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * global1.a.a)))), 9072u, ~_wgslsmith_mod_u32(arg_2.x, 36368u << (global1.a.c % 32u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(608f, 427f, -166f))))), vec2<bool>(-1i != (~0i >> (arg_2.x % 32u)), all(vec4<bool>(global1.b.x, true, true, any(vec2<bool>(arg_1.x, arg_0.x))))));
    let var_2 = ~abs(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(arg_2.x, arg_2.x, var_1.a.b) >> (vec3<u32>(1u, 34737u, u_input.a) % vec3<u32>(32u))), vec3<u32>(var_1.a.b, ~u_input.a, ~global1.a.c)));
    var var_3 = firstTrailingBit(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(5659u, 0u), arg_2), ~(~1u), abs(1330u)));
    var var_4 = vec4<bool>(any(!(!select(arg_0, arg_0, vec4<bool>(true, true, false, true)))), all(!(!vec2<bool>(arg_1.x, false))), any(vec3<bool>(any(arg_0), false, func_3(Struct_1(var_1.a.a, u_input.a, 4294967295u, vec3<f32>(181f, var_0.x, -1000f)), Struct_2(Struct_1(-1051f, arg_2.x, 0u, vec3<f32>(var_0.x, var_0.x, 851f)), arg_0.xw), vec3<u32>(var_1.a.b, var_2.x, var_1.a.c) | var_2, _wgslsmith_f_op_vec3_f32(var_0 - var_0)))), global1.b.x);
    return !any(vec4<bool>(true, all(vec2<bool>(true, false)), !var_4.x, false));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_4 {
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1265f, global1.a.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1518f))), 0u, 1u, global1.a.d), arg_0.ww);
    global1 = Struct_2(global1.a, select(arg_0.zy, vec2<bool>(true, any(vec2<bool>(false, true))), func_2(arg_0, !(!arg_0.zwz), arg_2.yz)));
    var var_0 = Struct_2(global1.a, vec2<bool>(true, false));
    global1 = Struct_2(global1.a, global1.b);
    let var_1 = 66222u;
    return arg_1;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_4, 1>();
    var var_0 = u_input.a;
    var var_1 = func_4(vec4<bool>(~4294967295u <= ~_wgslsmith_sub_u32(u_input.a, 1u), global1.b.x, func_2(vec4<bool>(global1.b.x, true, global1.b.x, global1.b.x), vec3<bool>(true, false, true), abs(vec2<u32>(0u, 0u))) && select(select(global1.b.x, global1.b.x, global1.b.x), global1.b.x, global1.b.x), min(4294967295u, ~global1.a.b) < firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global1.a.c, u_input.a, global1.a.c), vec4<u32>(33765u, u_input.a, 53487u, 0u)))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2076f), vec4<i32>(-2147483647i, 1i, _wgslsmith_sub_i32(1i, reverseBits(-30355i)), ~77069i), ~vec2<u32>(3822u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.a, -1527f, 1000f, global1.a.d.x)))))), Struct_3(_wgslsmith_sub_vec3_i32(-vec3<i32>(22471i, -56170i, 1i), vec3<i32>(1i, 1i, 1i)))), ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, u_input.a, 0u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, 1u, global1.a.b))), max(vec3<u32>(4294967295u, 669u, 56207u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(4294967295u, u_input.a, global1.a.b)))));
    let var_2 = func_4(!select(vec4<bool>(true, true, true, all(vec2<bool>(global1.b.x, global1.b.x))), vec4<bool>(true, true, false, false), true), Struct_4(1865f, vec4<i32>(39599i, _wgslsmith_mult_i32(countOneBits(var_1.e.a.x), ~var_1.e.a.x), var_1.e.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.e.a.yy, vec2<i32>(var_1.e.a.x, 1i)), 1i)), ((var_1.c << (var_1.c % vec2<u32>(32u))) | abs(vec2<u32>(var_1.c.x, 26127u))) & ~var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_1.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2169f, 716f, global1.a.d.x, var_1.a)))), func_4(vec4<bool>(!global1.b.x, 1629f >= var_1.a, true, !global1.b.x), global0[_wgslsmith_index_u32(u_input.a, 1u)], ~(~vec3<u32>(15868u, 44079u, global1.a.b))).e), _wgslsmith_sub_vec3_u32(abs(~vec3<u32>(u_input.a, global1.a.c, 4294967295u)) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(5785u, 0u, 14797u), vec3<u32>(64461u, 1u, 7492u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, var_1.c.x), vec3<u32>(70323u, 1u, global1.a.c))) % vec3<u32>(32u)), (~vec3<u32>(67208u, u_input.a, var_1.c.x) << (abs(vec3<u32>(4294967295u, var_1.c.x, global1.a.c)) % vec3<u32>(32u))) >> (~(~vec3<u32>(var_1.c.x, var_1.c.x, 0u)) % vec3<u32>(32u))));
    let var_3 = true;
    return Struct_2(global1.a, vec2<bool>(true, all(vec3<bool>(!var_3, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 1>();
    global1 = func_1();
    var var_0 = u_input.a;
    let var_1 = func_4(select(vec4<bool>(global1.b.x, (-2147483647i << (global1.a.c % 32u)) >= abs(3458i), global1.b.x, (53548u < global1.a.c) && global1.b.x), !vec4<bool>(!global1.b.x, true, all(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true)), false), select(!vec4<bool>(true, false, global1.b.x, false), select(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), !vec4<bool>(true, global1.b.x, global1.b.x, false), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, true), false), select(vec4<bool>(global1.b.x, false, global1.b.x, true), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), global1.b.x), true))), Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(444f, _wgslsmith_f_op_f32(trunc(global1.a.a)))))), vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(12443i, 14630i, -1i), vec3<i32>(1i, 1i, 0i), global1.b.x), vec3<i32>(1i, 1i, 1i)), select(-44300i, 1i, global1.b.x), select(-60530i, func_4(vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), Struct_4(global1.a.a, vec4<i32>(2147483647i, 2147483647i, -1i, -45721i), vec2<u32>(1u, 1u), vec4<f32>(global1.a.d.x, 693f, global1.a.a, 1000f), Struct_3(vec3<i32>(14994i, -13633i, 49792i))), vec3<u32>(14881u, global1.a.b, 50498u)).e.a.x, true), 2147483647i), firstLeadingBit(vec2<u32>(~u_input.a, ~u_input.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a, 1000f, 1598f, -227f) * vec4<f32>(global1.a.a, global1.a.a, global1.a.a, 498f))), vec4<f32>(_wgslsmith_f_op_f32(-global1.a.d.x), _wgslsmith_f_op_f32(round(-585f)), _wgslsmith_div_f32(-971f, global1.a.a), _wgslsmith_div_f32(global1.a.a, -390f)))), Struct_3(~vec3<i32>(1i, 1i, 1i))), vec3<u32>(_wgslsmith_mult_u32(func_1().a.b, _wgslsmith_mod_u32(u_input.a, 37985u ^ global1.a.c)), 1669u, ~(~global1.a.b))).e;
    var_0 = global1.a.b;
    var_0 = 1427u;
    var_0 = global1.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-739f, _wgslsmith_f_op_f32(-global1.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.d.xz)));
}

