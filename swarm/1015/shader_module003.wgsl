struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: i32 = -1409i;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(34581u, 21761u), -1053f, Struct_1(0u, vec2<i32>(2147483647i, 19859i)), -1625f);

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(arg_0, abs(max(abs(vec2<i32>(14289i, -18377i)), ~vec2<i32>(14154i, global1.c.b.x)))), !arg_3.x, select(vec3<bool>(arg_3.x, true, true), vec3<bool>(arg_3.x, true, false), !(!(!arg_3.zwz))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - global1.d), _wgslsmith_div_f32(221f, global2.b))) + global1.b), global2.d, _wgslsmith_f_op_f32(sign(global2.d))));
    global1 = Struct_2(vec2<u32>(abs(109549u) ^ abs(max(1u, var_0.a.a)), _wgslsmith_div_u32(abs(~global1.c.a), ~min(global1.c.a, 1u))), var_0.d.x, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1131f * _wgslsmith_div_f32(-880f, var_0.d.x))));
    global1 = Struct_2(abs(vec2<u32>(global1.a.x ^ ~0u, var_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(450f, global2.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.d - global1.b))) - -829f)), Struct_1(arg_0, _wgslsmith_clamp_vec2_i32(vec2<i32>(16518i, min(-26140i, -29288i)), ~global2.c.b << (firstTrailingBit(vec2<u32>(arg_2.a, global2.a.x)) % vec2<u32>(32u)), arg_2.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.d))));
    global2 = Struct_2(vec2<u32>(~_wgslsmith_mult_u32(arg_2.a, countOneBits(global1.a.x)), ~(~abs(0u))), _wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-407f)), _wgslsmith_div_f32(var_0.d.x, global2.d)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, 598f))))), global1.c, global1.b);
    var var_1 = global1.c.b;
    return vec4<u32>(~_wgslsmith_clamp_u32(select(arg_2.a, global1.c.a, true), abs(1u), var_0.a.a), (91568u & reverseBits(arg_0)) ^ ~(~31808u), ~1u, _wgslsmith_clamp_u32(85509u, countOneBits(var_0.a.a), 4294967295u) << (arg_2.a % 32u)) | (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~96303u), 17602u, ~7470u, ~1u) >> (vec4<u32>(arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, 0u, arg_0), ~vec4<u32>(global2.c.a, arg_2.a, 4294967295u, 4294967295u)), ~(17638u << (global1.a.x % 32u)), ~45027u) % vec4<u32>(32u)));
}

fn func_2() -> Struct_2 {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(~vec4<u32>(91370u, 82088u, 0u, 67515u)) << (func_3(~u_input.a.x, global1.c.b.x >> (0u % 32u), global1.c, vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 15785u, global1.a.x, u_input.a.x), vec4<u32>(global2.a.x, 4294967295u, global2.a.x, 44245u))), select(~(~vec4<u32>(120443u, 4294967295u, global1.a.x, 5375u)), vec4<u32>(0u, u_input.a.x, 28476u, func_3(0u, global2.c.b.x, global2.c, vec4<bool>(true, true, true, false)).x), all(vec4<bool>(false, true, true, true))));
    global0 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~countOneBits(global1.c.b.x), countOneBits(firstTrailingBit(-7030i))), global2.c.b.x));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(var_0.x, ~(global1.a.x << (1u % 32u))), countOneBits(41570u), 8114u);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1001f)))), global2.d, _wgslsmith_f_op_f32(f32(-1f) * -1065f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(187f, 978f, -293f))) - vec3<f32>(global1.b, -1286f, global1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -1083f, global1.d) - vec3<f32>(global2.b, 397f, -726f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(274f, global2.b, global1.d) - vec3<f32>(-733f, global2.d, global1.b)))), false)));
    var var_3 = select(vec3<i32>(_wgslsmith_div_i32(global2.c.b.x, global1.c.b.x), ~global2.c.b.x, global2.c.b.x), abs((_wgslsmith_div_vec3_i32(vec3<i32>(-61496i, 2502i, global2.c.b.x), vec3<i32>(global2.c.b.x, 1i, -10240i)) << (u_input.a % vec3<u32>(32u))) | firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 1i, global1.c.b.x), vec3<i32>(global2.c.b.x, 1i, global2.c.b.x), vec3<i32>(global1.c.b.x, global2.c.b.x, 32285i)))), any(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    return Struct_2(max(var_1.yy, vec2<u32>(reverseBits(61638u), 0u)) ^ select(vec2<u32>(1u, _wgslsmith_add_u32(0u, var_1.x)), ~max(global2.a, var_0.wy), vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_2.x, global1.d, true)), 3020f, true))))), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~var_0.x, _wgslsmith_clamp_u32(0u, 1u, 85630u)), select(33924u, 45060u, false) >> (0u % 32u), func_3(1u, -11910i, global2.c, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false)).x), _wgslsmith_div_vec2_i32(-firstTrailingBit(vec2<i32>(global1.c.b.x, var_3.x)), global2.c.b >> ((vec2<u32>(967u, var_1.x) << (var_1.yz % vec2<u32>(32u))) % vec2<u32>(32u)))), -368f);
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    global0 = global1.c.b.x & global1.c.b.x;
    let var_0 = Struct_1(global1.c.a, vec2<i32>(min(global1.c.b.x, global2.c.b.x), -1i));
    let var_1 = 20248i;
    let var_2 = _wgslsmith_add_i32(-reverseBits(global1.c.b.x | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -1i), vec3<i32>(var_1, var_0.b.x, var_1))), -33064i);
    let var_3 = Struct_1(4294967295u, _wgslsmith_mod_vec2_i32(~(~vec2<i32>(var_0.b.x, var_0.b.x)), _wgslsmith_mult_vec2_i32(global2.c.b, ~vec2<i32>(var_0.b.x, var_1))) & (vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, var_0.b.x, var_0.b.x), vec4<i32>(var_1, var_1, -29182i, -6937i)), 5050i >> (global1.c.a % 32u)) ^ global1.c.b));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-189f, -1679f, global2.d)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-628f, global1.b, -959f))))));
    global2 = Struct_2(~_wgslsmith_div_vec2_u32(~max(u_input.a.yx, vec2<u32>(global1.c.a, global1.c.a)), vec2<u32>(firstLeadingBit(global2.a.x), global2.c.a)), global1.d, global1.c, global2.b);
    var var_0 = false;
    var var_1 = vec2<i32>(global2.c.b.x, firstTrailingBit(global2.c.b.x));
    var var_2 = any(vec3<bool>(true, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, false))), !(!select(false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~_wgslsmith_mod_u32(14076u, u_input.a.x)), 1u));
}

