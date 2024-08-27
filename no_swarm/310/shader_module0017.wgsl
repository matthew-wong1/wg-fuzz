struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false), vec3<f32>(685f, 993f, 1495f), -829f, vec2<i32>(0i, i32(-2147483648)), Struct_1(vec2<bool>(true, true)));

var<private> global1: vec3<u32>;

var<private> global2: Struct_4 = Struct_4(365f, 19911i);

var<private> global3: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<u32>) -> vec4<i32> {
    let var_0 = global2.b & (~(u_input.d.x ^ _wgslsmith_sub_i32(global0.d.x, 63767i)) >> (_wgslsmith_sub_u32(firstLeadingBit(u_input.b), u_input.e.x) % 32u));
    global0 = Struct_2(!(!(!(!vec2<bool>(global0.a.x, true)))), _wgslsmith_f_op_vec3_f32(-global0.b), -540f, u_input.d.yx, global0.e);
    let var_1 = Struct_4(global2.a, ~(_wgslsmith_dot_vec2_i32(~global0.d, -global0.d) ^ max(global0.d.x, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(32883i, 4337i, global3.b)))));
    let var_2 = arg_0.yxx;
    var var_3 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-518f, var_1.a, 177f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.b.x, 175f, global2.a))), all(vec2<bool>(arg_0.x, true)))), _wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(397f, global3.a, global0.b.x) - vec3<f32>(173f, 259f, 551f)), any(vec3<bool>(true, var_2.x, global0.a.x))))))), global2.a, firstLeadingBit(vec2<i32>(u_input.d.x, -40109i)), Struct_1(global0.e.a));
    return _wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(23775i, var_3.d.x, global2.b, 37995i), vec4<i32>(-1i, global2.b, u_input.d.x, -6993i)), ~vec4<i32>(global2.b, 2147483647i, var_3.d.x, 2147483647i)), -select(vec4<i32>(-53564i, u_input.a, var_1.b, var_1.b), vec4<i32>(2147483647i, var_0, global0.d.x, 2147483647i), vec4<bool>(false, false, var_2.x, false))), firstLeadingBit(~vec4<i32>(-3505i, ~2147483647i, var_0, ~0i)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(global3.b, countOneBits(abs(2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, global0.d.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, 0i, 0i, u_input.d.x), vec4<i32>(global0.d.x, -2147483647i, -1i, -1i)), _wgslsmith_mod_i32(-2147483647i, max(global0.d.x, global2.b)), global2.b), func_3(vec4<bool>(global0.e.a.x && global0.a.x, any(vec2<bool>(global0.a.x, true)), false, global0.e.a.x), vec4<u32>(u_input.e.x | global1.x, global1.x, ~1u, _wgslsmith_mult_u32(9460u, 0u)))));
    let var_1 = Struct_3(global0.e, Struct_2(vec2<bool>(global0.a.x, true), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, 667f, -788f) + global0.b))), -1974f, ~u_input.d.zz, global0.e));
    let var_2 = var_1.b;
    global2 = Struct_4(639f, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, var_0, var_0), ~vec3<i32>(-1i, var_1.b.d.x, var_2.d.x), u_input.d), vec3<i32>(firstTrailingBit(global0.d.x), _wgslsmith_clamp_i32(0i, 18197i, var_2.d.x), firstLeadingBit(u_input.c.x))), 0i));
    let var_3 = ~4294967295u;
    return Struct_2(select(!var_1.a.a, vec2<bool>(!(var_2.a.x || false), var_1.a.a.x), var_1.a.a.x), vec3<f32>(global3.a, _wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(step(-1390f, _wgslsmith_f_op_f32(f32(-1f) * -1080f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - 1f)), -(select(vec2<i32>(-20693i, global0.d.x), select(var_1.b.d, u_input.c, global0.a.x), true) | var_2.d), Struct_1(vec2<bool>(max(u_input.e.x, 0u) <= var_3, global0.a.x)));
}

fn func_1() -> i32 {
    global0 = func_2();
    var var_0 = -u_input.d;
    global0 = Struct_2(vec2<bool>(any(select(vec4<bool>(true, global0.a.x, global0.e.a.x, global0.a.x), select(vec4<bool>(false, true, global0.a.x, false), vec4<bool>(true, false, false, global0.a.x), vec4<bool>(global0.e.a.x, global0.e.a.x, false, false)), !vec4<bool>(true, global0.a.x, global0.e.a.x, false))), any(!vec3<bool>(global0.a.x, global0.e.a.x, true))), vec3<f32>(-1554f, global0.b.x, _wgslsmith_f_op_f32(global2.a * 1000f)), 858f, func_2().d, func_2().e);
    let var_1 = func_2().e;
    var var_2 = global1.x;
    return _wgslsmith_clamp_i32(firstTrailingBit(global2.b), _wgslsmith_mult_i32(1i, 0i), _wgslsmith_mod_i32(global0.d.x, ~global3.b));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    global0 = arg_2;
    var var_0 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(~global1.x >> (max(u_input.b, u_input.b) % 32u), abs(~4294967295u), firstTrailingBit(34739u)), min(vec3<u32>(0u, 3311u, reverseBits(0u)), reverseBits(vec3<u32>(2367u, 4294967295u, global1.x))));
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x << (global1.x % 32u), abs(abs(u_input.b)), _wgslsmith_mod_u32(~select(4294967295u, u_input.b, arg_2.e.a.x), 3502u)), ~(~(~(vec3<u32>(u_input.e.x, u_input.b, 0u) & vec3<u32>(global1.x, 2706u, 26203u)))));
    global1 = abs(vec3<u32>(1u, ~(~(~0u)), 36514u));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1701f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + -3377f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a)))), -596f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1046f - global0.b.x), 1000f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_2.c))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f - global2.a))));
    return func_2().e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x & 36069i, func_1(), ~14205i, u_input.c.x), vec4<i32>(select(u_input.c.x, global2.b, false), 0i, max(16350i, u_input.c.x), 22933i >> (1u % 32u)), abs(-vec4<i32>(0i, global3.b, 2301i, -53761i))), firstLeadingBit(~vec4<i32>(0i, global2.b, 14500i, 1i)) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global3.b, global3.b, 26797i), vec4<i32>(-1i, -1i, global0.d.x, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, global2.b, global2.b), vec4<i32>(-10661i, global3.b, -47144i, -2147483647i))), vec4<i32>(global3.b, _wgslsmith_mult_i32(i32(-1i) * -12383i, global3.b), -global0.d.x, func_2().d.x)), Struct_2(global0.e.a, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(458f)))), global0.b.x, _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(global2.a + global3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().b.x)), (vec2<i32>(global0.d.x, u_input.d.x) >> (~vec2<u32>(u_input.b, global1.x) % vec2<u32>(32u))) << (reverseBits(vec2<u32>(u_input.e.x, 1u)) % vec2<u32>(32u)), global0.e));
    global2 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-602f, global3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a + -108f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global2.a)))))), select(-global3.b, -2273i, (min(u_input.b, global1.x) ^ u_input.e.x) < 1u));
    global0 = Struct_2(!var_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(214f, func_2().c, global3.a)), global0.b), 163f, min(reverseBits(~abs(global0.d)), max(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(global3.b, -70430i)), vec2<i32>(global0.d.x, 27000i)), firstTrailingBit(countOneBits(vec2<i32>(global2.b, global3.b))))), var_0);
    let var_1 = _wgslsmith_sub_i32(func_3(select(vec4<bool>(true, global2.b <= global3.b, true, u_input.a <= 31387i), !vec4<bool>(false, global0.a.x, var_0.a.x, global0.e.a.x), func_2().a.x), vec4<u32>(~(~u_input.e.x), global1.x ^ ~global1.x, _wgslsmith_div_u32(_wgslsmith_div_u32(84790u, 44332u), ~u_input.b), 38168u)).x, max(u_input.a, 17033i));
    global2 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -561f))))), var_1);
    global2 = Struct_4(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(1000f, global2.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, firstTrailingBit(abs(global0.d.x)), func_2().d.x, var_1), vec4<i32>(-51325i, 1i, ~(-51112i), max(_wgslsmith_dot_vec2_i32(global0.d, global0.d), var_1))));
    let var_2 = vec3<i32>(global2.b, ~(~abs(~global0.d.x)), 30111i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(firstTrailingBit(var_2), (-vec3<i32>(-2147483647i, 0i, 57659i) & _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.d.x, 1i, global0.d.x), vec3<i32>(global0.d.x, -2147483647i, 2147483647i), vec3<i32>(global2.b, global3.b, 50811i))) << (select(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.e.x, 14314u), vec3<u32>(1u, u_input.e.x, 0u), vec3<u32>(u_input.e.x, global1.x, 4294967295u)), abs(vec3<u32>(global1.x, global1.x, 45528u)), !global0.a.x) % vec3<u32>(32u)), vec3<i32>(1i, _wgslsmith_sub_i32(-1i, 1336i), _wgslsmith_add_i32(var_2.x, var_2.x)) & firstLeadingBit(u_input.d)), vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(102689i), -global0.d.x), (-global3.b | _wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(1i, global2.b))) >> (u_input.e.x % 32u), -1i));
}

