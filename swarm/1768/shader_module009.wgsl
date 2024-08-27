struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: u32 = 6453u;

var<private> global4: u32 = 58212u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = vec4<bool>(select(any(global0.xyy), any(!(!global0.wx)), true), true, global1.x, any(!(!vec3<bool>(false, true, global1.x))));
    global1 = select(global0.zy, select(!vec2<bool>(false, global1.x), !(!(!vec2<bool>(var_1.x, false))), false), global0.x);
    let var_2 = firstLeadingBit(abs(u_input.a.x));
    global0 = !select(select(!vec4<bool>(true, var_1.x, true, false), !vec4<bool>(global0.x, true, global0.x, false), !(!vec4<bool>(global1.x, var_1.x, false, false))), vec4<bool>(true, all(vec4<bool>(global1.x, false, global1.x, false)), false, select(any(vec4<bool>(global0.x, false, global1.x, global0.x)), all(var_1), all(global0.zy))), ~4294967295u > _wgslsmith_sub_u32(20806u, var_0.x));
    return abs(var_0.x);
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global3 = ~_wgslsmith_div_u32(~func_3(), _wgslsmith_clamp_u32(~17003u, abs(0u), 1u)) | ~_wgslsmith_mult_u32(1u, ~(~45621u));
    global0 = vec4<bool>(false, ((!global0.x | (-25285i == u_input.a.x)) || any(!vec4<bool>(false, global0.x, false, true))) & true, global1.x, global1.x);
    global2 = array<vec2<u32>, 8>();
    global4 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(countOneBits(8561u), ~27189u, ~4294967295u, _wgslsmith_mult_u32(0u, 873u))), 67187u);
    let var_0 = vec3<bool>(all(!vec4<bool>(true, global0.x, global0.x && global0.x, !global0.x)), select(true, true, !global1.x) & global1.x, true);
    return Struct_2(Struct_1(~(~(~vec4<u32>(0u, 4294967295u, 0u, 1u))), u_input.a.x), select(vec4<bool>(any(global0.xz), global1.x, !any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), all(global0.xzy)), !select(vec4<bool>(global1.x, false, global1.x, false), select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(false, false, global0.x, true), vec4<bool>(true, global0.x, global1.x, global0.x)), !vec4<bool>(global1.x, false, global1.x, true)), false), Struct_1(vec4<u32>(1u, _wgslsmith_add_u32(1u, 1u), _wgslsmith_div_u32(0u, 1u), 0u), -2147483647i));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_4) -> Struct_4 {
    global1 = select(arg_1.b.yx, global0.ww, true);
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(-100f)), _wgslsmith_f_op_f32(step(243f, -313f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, 1953f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(684f, var_1.x, -866f, 1038f))))), select(vec4<bool>(false, false, true, select(26151i == u_input.b, !global1.x, !var_0.b.x)), func_2(arg_2.a).b, arg_1.a.a.x <= ((arg_1.a.a.x | var_0.c.a.x) ^ arg_1.a.a.x))));
    global0 = select(var_0.b, !(!select(func_2(Struct_3(u_input.a.xxz)).b, func_2(arg_2.a).b, select(vec4<bool>(true, arg_0.a, true, global1.x), arg_1.b, arg_1.b.x))), var_0.b.x);
    return Struct_4(arg_2.a, ~(vec4<i32>(~var_0.a.b, u_input.b, select(-1i, 2147483647i, arg_1.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.b, 14153i, arg_1.c.b), vec3<i32>(3428i, u_input.a.x, arg_2.a.a.x))) >> (_wgslsmith_div_vec4_u32(arg_1.c.a, vec4<u32>(arg_2.c.a.x, 0u, var_0.c.a.x, var_0.c.a.x)) % vec4<u32>(32u))), func_2(arg_2.a).c);
}

fn func_5(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = arg_0.a;
    global4 = arg_0.c.a.x;
    var var_1 = func_2(Struct_3(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b & -1i, ~(-40200i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, u_input.b), u_input.a.wyx)), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, 1733i, u_input.a.x)), vec3<i32>(-2147483647i, 20281i, u_input.a.x)))));
    global0 = func_2(func_4(Struct_5(!(!global0.x)), Struct_2(arg_0.c, !var_1.b, func_4(Struct_5(global0.x), func_2(arg_0.a), Struct_4(Struct_3(vec3<i32>(var_1.c.b, -2147483647i, var_1.c.b)), u_input.a, Struct_1(arg_0.c.a, 32809i))).c), arg_0).a).b;
    global1 = !global0.ww;
    return vec4<bool>(!(_wgslsmith_sub_i32(arg_0.b.x, firstLeadingBit(2147483647i)) >= countOneBits(select(var_1.a.b, var_0.a.x, var_1.b.x))), select(var_1.b.x, true, false), all(vec4<bool>(global1.x, false & !global1.x, !var_1.b.x, !(!var_1.b.x))), all(var_1.b));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> vec3<f32> {
    global0 = select(vec4<bool>(select(true, true, global1.x), u_input.b > -(i32(-1i) * -26799i), true, global0.x), !select(vec4<bool>(!global1.x, global0.x, all(vec4<bool>(global1.x, true, global0.x, global1.x)), false), vec4<bool>(true & global0.x, !global0.x, any(vec4<bool>(true, global0.x, global1.x, false)), all(vec2<bool>(false, true))), true), func_5(func_4(Struct_5(global0.x), func_2(Struct_3(u_input.a.xwy)), Struct_4(Struct_3(vec3<i32>(474i, -41228i, u_input.a.x)), vec4<i32>(arg_1.x, u_input.a.x, arg_1.x, u_input.a.x), func_2(Struct_3(u_input.a.xxy)).c))));
    global1 = global0.wy;
    var var_0 = firstLeadingBit(1i);
    let var_1 = Struct_4(Struct_3(vec3<i32>(arg_0.b, 1i, arg_1.x)), u_input.a, arg_0);
    global2 = array<vec2<u32>, 8>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-431f, _wgslsmith_div_f32(-971f, -213f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(819f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-177f))), _wgslsmith_f_op_f32(-1384f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1047f))))), -573f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(Struct_1(select(select(~vec4<u32>(29594u, 13614u, 90306u, 41678u), max(vec4<u32>(45724u, 1u, 22561u, 4294967295u), vec4<u32>(36825u, 46761u, 40074u, 20478u)), select(vec4<bool>(global1.x, true, global0.x, global0.x), vec4<bool>(false, true, false, true), true)), vec4<u32>(1u, 1u, 1u, 1u), global0.x), ~_wgslsmith_add_i32(u_input.a.x, select(15670i, 0i, global0.x))), -vec3<i32>(countOneBits(-41803i), 0i, ~u_input.a.x) >> (_wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 1u)), vec3<u32>(abs(0u), ~4294967295u, ~20388u)) % vec3<u32>(32u)), ~countOneBits(~1u)));
    let var_1 = Struct_5(true);
    global2 = array<vec2<u32>, 8>();
    var var_2 = select(-vec3<i32>(-_wgslsmith_dot_vec3_i32(u_input.a.zzw, vec3<i32>(0i, u_input.b, 121335i)), countOneBits(u_input.b), -45458i), select(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-19671i, 0i, 5147i), vec3<i32>(1i, 1i, -18544i)), _wgslsmith_add_i32(u_input.a.x, -u_input.a.x), _wgslsmith_sub_i32(-32733i, i32(-1i) * -57850i)), reverseBits(u_input.a.ywy) << (vec3<u32>(_wgslsmith_clamp_u32(78364u, 0u, 4294967295u), _wgslsmith_clamp_u32(4754u, 4294967295u, 1u), 1u) % vec3<u32>(32u)), true), select(vec3<bool>(_wgslsmith_f_op_f32(-695f - var_0.x) < 775f, all(global0.zww), global1.x), global0.yxw, true));
    global0 = !vec4<bool>(func_5(func_4(var_1, Struct_2(Struct_1(vec4<u32>(32772u, 21747u, 4294967295u, 4294967295u), u_input.a.x), vec4<bool>(global1.x, false, true, false), Struct_1(vec4<u32>(33996u, 1u, 4294967295u, 16378u), 2147483647i)), Struct_4(Struct_3(vec3<i32>(u_input.a.x, -1i, u_input.b)), u_input.a, Struct_1(vec4<u32>(1u, 51227u, 22745u, 61483u), 36459i)))).x, any(!select(global0.zwz, vec3<bool>(false, false, global0.x), global0.wyz)), true, global1.x);
    var var_3 = _wgslsmith_add_vec4_i32(abs(-u_input.a), countOneBits(vec4<i32>(~u_input.b, u_input.a.x, ~reverseBits(var_2.x), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 644f), -365f), -(1i << (_wgslsmith_dot_vec4_u32(func_4(var_1, Struct_2(Struct_1(vec4<u32>(8022u, 4294967295u, 1u, 1u), var_3.x), vec4<bool>(global1.x, var_1.a, var_1.a, global0.x), Struct_1(vec4<u32>(41175u, 2575u, 4294967295u, 4294967295u), var_3.x)), Struct_4(Struct_3(vec3<i32>(-34939i, u_input.b, var_2.x)), u_input.a, Struct_1(vec4<u32>(1u, 13149u, 1u, 4294967295u), var_3.x))).c.a, select(vec4<u32>(23063u, 97410u, 24341u, 4294967295u), vec4<u32>(13521u, 1u, 1u, 4294967295u), false)) % 32u)));
}

