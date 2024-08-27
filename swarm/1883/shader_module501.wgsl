struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_3(vec4<bool>(_wgslsmith_dot_vec3_i32(select(u_input.d, vec3<i32>(u_input.c, u_input.c, 0i), vec3<bool>(true, arg_1, true)), vec3<i32>(u_input.c, u_input.d.x, -1i)) > _wgslsmith_sub_i32(2147483647i, 0i), arg_0.x && !(arg_0.x != arg_1), !arg_1, !all(select(vec4<bool>(arg_1, arg_0.x, true, arg_1), vec4<bool>(true, arg_0.x, arg_0.x, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(897f, 591f) - vec2<f32>(1000f, -961f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(793f - -386f), -1338f) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1080f, -685f))))))), u_input.d.x);
    var var_1 = Struct_1(u_input.b.x, 1u);
    let var_2 = true;
    var_1 = Struct_1(0u, firstTrailingBit(38730u) & var_1.a);
    var_1 = Struct_1(select(~u_input.b.x, 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x)) < var_0.b.x), var_1.b);
    return arg_0.yz;
}

fn func_2() -> Struct_2 {
    var var_0 = abs(_wgslsmith_mod_u32(44552u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(33570u, u_input.b.x, u_input.b.x, 7225u) << (vec4<u32>(11131u, 0u, 60235u, 54507u) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 36430u)))));
    var_0 = u_input.b.x;
    let var_1 = -257f;
    let var_2 = !select(vec2<bool>(false, true), !func_3(vec3<bool>(true, false, true), true), vec2<bool>(!all(vec4<bool>(true, true, false, true)), false));
    var_0 = reverseBits(4294967295u);
    return Struct_2(Struct_1(_wgslsmith_mult_u32(firstTrailingBit(~u_input.b.x), ~_wgslsmith_mult_u32(u_input.b.x, 50115u)), _wgslsmith_clamp_u32(1u, ~u_input.b.x ^ 1u, 46313u)), !all(vec2<bool>(any(vec2<bool>(var_2.x, var_2.x)), true && var_2.x)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 39663u), abs(10082u), firstTrailingBit(1u)), firstLeadingBit(select(vec3<u32>(u_input.b.x, u_input.b.x, 36626u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<bool>(false, true, var_2.x)))), _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), -369f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> f32 {
    var var_0 = abs(arg_2.c.a);
    let var_1 = vec4<bool>(!arg_1.b, false, -(abs(u_input.c) << (4531u % 32u)) <= 21157i, !(1u >= ~arg_2.c.b) | (~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b) != 0u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.d - arg_0.d))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_u32(0u, 16738u, arg_0.c.b), 30322u), func_2().b, Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b), vec2<u32>(4294967295u, arg_0.a.a) & vec2<u32>(4294967295u, arg_2.c.b)), _wgslsmith_clamp_vec2_u32(~u_input.b, vec2<u32>(arg_0.c.b, arg_2.a.a) << (u_input.b % vec2<u32>(32u)), ~u_input.b)), 1u), -385f);
    var_0 = u_input.b.x;
    return -159f;
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1025f + 827f)), 294f, 1935f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(6241u, 21636u), 2147483647i > u_input.c, Struct_1(29991u, u_input.b.x), _wgslsmith_f_op_f32(var_0.x - -158f)), func_2(), func_2(), vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -894f), -781f, var_0.x, _wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, 0u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 49698u, u_input.b.x, 1u)), select(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<bool>(false, true, false, false))), vec4<u32>(u_input.b.x, u_input.b.x, 38493u, u_input.b.x)) | _wgslsmith_add_vec4_u32(~vec4<u32>(1u & u_input.b.x, 9281u >> (u_input.b.x % 32u), u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 0u)), vec4<u32>(u_input.b.x, ~(~6762u), ~u_input.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, 33839u, 45570u, u_input.b.x)), u_input.b.x)));
    let var_3 = Struct_3(!select(vec4<bool>(true, true, true, func_3(vec3<bool>(false, true, true), true).x), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(var_0.yy + var_0.xx))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -444f)))))), _wgslsmith_sub_i32(-u_input.d.x, u_input.c));
    let var_4 = vec4<i32>(u_input.d.x | u_input.a, ~_wgslsmith_dot_vec2_i32(u_input.d.xx, _wgslsmith_mod_vec2_i32(select(u_input.d.xy, vec2<i32>(u_input.d.x, u_input.c), var_3.a.x), ~vec2<i32>(var_3.c, u_input.d.x))), ~(-(59342i & ~u_input.d.x)), -u_input.a);
    return firstTrailingBit(var_4);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, i32(-1i) * -2147483647i, _wgslsmith_mod_i32(u_input.a, 1i), u_input.a), vec4<i32>(u_input.c, -54384i, -58089i, u_input.c) | func_1()), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_mod_i32(u_input.d.x, u_input.d.x), _wgslsmith_div_i32(u_input.c, -15360i), _wgslsmith_mult_i32(u_input.d.x, -1i)), countOneBits(vec4<i32>(-53724i, -43052i, -2147483647i, -10632i) | vec4<i32>(u_input.d.x, -20450i, u_input.c, -26980i)))), -(~(1i ^ (u_input.c ^ 18755i))), 2147483647i);
    let var_1 = Struct_3(!select(vec4<bool>(true, any(vec2<bool>(true, false)), all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-189f, -749f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, 767f) - vec2<f32>(1000f, 262f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-180f, 539f)))))), func_1().x);
    var var_2 = u_input.d.xy;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-280f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f), _wgslsmith_div_f32(-1373f, 1f)));
    let var_4 = _wgslsmith_sub_u32(27465u, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

