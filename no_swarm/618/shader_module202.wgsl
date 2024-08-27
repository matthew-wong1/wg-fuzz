struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
    d: u32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_5;

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(4385i, 16236i), vec2<i32>(42181i, -1i), vec2<i32>(35224i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -675i), vec2<i32>(-35967i, i32(-2147483648)), vec2<i32>(-49258i, -731i), vec2<i32>(60399i, 10402i), vec2<i32>(12627i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, -19739i), vec2<i32>(-43483i, i32(-2147483648)), vec2<i32>(52601i, 0i), vec2<i32>(25798i, -34606i), vec2<i32>(3657i, 0i), vec2<i32>(2147483647i, -10072i), vec2<i32>(-29109i, -710i), vec2<i32>(0i, 1i), vec2<i32>(11476i, -62854i), vec2<i32>(-18432i, i32(-2147483648)), vec2<i32>(10036i, -10197i));

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<u32>(282u, 0u), vec2<bool>(false, false)), false, vec2<u32>(0u, 4782u), vec3<i32>(66640i, -66226i, 8334i), Struct_1(vec2<u32>(4294967295u, 30275u), vec2<bool>(true, true))), -17382i, 12923i, Struct_2(Struct_1(vec2<u32>(4294967295u, 2139u), vec2<bool>(true, false)), false, vec2<u32>(0u, 1u), vec3<i32>(-1i, 1i, 0i), Struct_1(vec2<u32>(4294967295u, 5555u), vec2<bool>(false, false))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    var var_0 = !vec4<bool>(any(vec2<bool>(true, true)), global1.c, true, global1.c);
    return global3.d.a.b;
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: u32, arg_3: bool) -> bool {
    let var_0 = Struct_3(global3.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global3.a.d ^ vec3<i32>(1i, global3.c, 2147483647i), global3.a.d), vec3<i32>(_wgslsmith_div_i32(11568i, -78233i), 39915i, u_input.b >> (arg_0 % 32u))), -26816i, global3.a.d.x), 1i, Struct_2(Struct_1(~global3.d.c, select(!vec2<bool>(global3.d.a.b.x, false), func_3(), global3.d.a.b)), true, ~arg_1.a, -global3.d.d << ((~vec3<u32>(global1.a.x, 1u, global1.a.x) >> (~vec3<u32>(30851u, arg_1.a.x, arg_1.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), global3.a.a));
    let var_1 = var_0.d.a.a;
    let var_2 = Struct_2(Struct_1(global3.a.c, global3.a.a.b), global1.c, vec2<u32>(41951u, min(countOneBits(~31525u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 0u, arg_1.a.x, 0u) & vec4<u32>(26419u, global1.a.x, 27963u, global3.d.e.a.x), vec4<u32>(arg_2, 31606u, var_0.a.a.a.x, u_input.a)))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, ~26973i), u_input.b), global3.b, 0i), var_0.a.e);
    let var_3 = (~max(16980u, _wgslsmith_mod_u32(4294967295u, var_0.d.c.x)) << (1u % 32u)) & ~global1.a.x;
    global3 = var_0;
    return var_2.b == select(!all(select(vec4<bool>(true, global1.c, false, arg_1.c), vec4<bool>(var_2.e.b.x, var_2.a.b.x, true, global1.c), false)), false, true);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = global3.d;
    var var_1 = !select(vec3<bool>(_wgslsmith_sub_i32(arg_0, 16668i) <= ~global3.c, !select(true, arg_1, var_0.b), !(!global1.c)), vec3<bool>(all(!vec3<bool>(var_0.b, true, var_0.e.b.x)), false || (61034u <= global3.d.e.a.x), true), select(!vec3<bool>(var_0.b, arg_1, global3.a.b), !select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, true, true), vec3<bool>(arg_1, global3.a.b, false)), !(!arg_1)));
    var var_2 = Struct_3(Struct_2(Struct_1(~vec2<u32>(0u, 25691u), !(!vec2<bool>(false, global3.a.a.b.x))), true & global1.c, _wgslsmith_sub_vec2_u32(~reverseBits(global3.d.c), ~vec2<u32>(global1.a.x, u_input.a) | global1.a), min(vec3<i32>(global3.d.d.x, 2147483647i >> (global3.a.c.x % 32u), 40729i), var_0.d), Struct_1(~vec2<u32>(global3.d.a.a.x, var_0.a.a.x), global3.a.a.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(global3.d.d, vec3<i32>(-1i, global3.c, -28581i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-23239i, -2147483647i, arg_0), min(global3.d.d, global3.a.d), vec3<i32>(-10006i, global3.d.d.x, arg_0))), var_0.d), global3.b, Struct_2(global3.a.e, true, ~vec2<u32>(global1.a.x, _wgslsmith_mod_u32(var_0.a.a.x, 0u)), vec3<i32>(arg_0, _wgslsmith_dot_vec2_i32(global3.a.d.xy, _wgslsmith_add_vec2_i32(global3.d.d.zx, vec2<i32>(72743i, u_input.b))), _wgslsmith_div_i32(firstTrailingBit(-21397i), _wgslsmith_div_i32(arg_0, u_input.b))), global3.d.a));
    var var_3 = 502f;
    global0 = ~_wgslsmith_mult_i32(firstLeadingBit(-33315i), arg_0 & _wgslsmith_dot_vec4_i32(-vec4<i32>(global3.d.d.x, arg_0, u_input.b, -11485i), -vec4<i32>(u_input.b, -21402i, arg_0, var_2.d.d.x)));
    return true;
}

fn func_1() -> vec2<bool> {
    var var_0 = !select(select(!global3.d.e.b, vec2<bool>(-2147483647i <= u_input.b, true), global3.d.e.b), vec2<bool>(func_4(~(-32120i), func_2(global1.a.x, Struct_5(global3.d.a.a, vec3<f32>(global1.b.x, 438f, global1.b.x), false), global3.d.a.a.x, global1.c), global1.b.x), true), !select(!vec2<bool>(global1.c, false), vec2<bool>(global1.c, global3.a.b), vec2<bool>(false, global1.c)));
    var var_1 = min(_wgslsmith_dot_vec2_i32(global3.d.d.yx, ~min(countOneBits(vec2<i32>(1i, global3.a.d.x)), reverseBits(vec2<i32>(-32066i, global3.d.d.x)))), i32(-1i) * -abs(-2147483647i));
    var var_2 = vec4<bool>(true, false, true, _wgslsmith_f_op_f32(-global1.b.x) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.x)) * 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x)))));
    let var_3 = true;
    var_1 = ~0i;
    return vec2<bool>(all(vec3<bool>(true, var_2.x, global1.c)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(global3.d.c, ~countOneBits(global1.a), !select(select(global3.d.e.b, global3.d.a.b, vec2<bool>(true, false)), vec2<bool>(global1.c, global1.c), global3.d.e.b)), func_1());
    global3 = Struct_3(Struct_2(global3.d.a, -179f >= global1.b.x, ~vec2<u32>(var_0.a.x, firstTrailingBit(1u)), reverseBits((global3.a.d << (vec3<u32>(var_0.a.x, 89108u, 4294967295u) % vec3<u32>(32u))) & ~vec3<i32>(global3.d.d.x, -2147483647i, 0i)), global3.d.a), 49307i, -firstLeadingBit(~(-23386i)), Struct_2(var_0, true || global3.a.b, ~_wgslsmith_div_vec2_u32(~vec2<u32>(0u, 8479u), vec2<u32>(global1.a.x, var_0.a.x)), vec3<i32>(max(-27169i >> (global3.a.a.a.x % 32u), -12696i), global3.b, _wgslsmith_mult_i32(-37403i, firstTrailingBit(u_input.b))), Struct_1(vec2<u32>(global3.a.c.x, ~0u), select(!var_0.b, global3.d.e.b, var_0.b))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b.x)));
    let var_2 = Struct_4(select(vec3<bool>(!all(global3.a.a.b), true, all(select(vec3<bool>(global3.a.a.b.x, global3.d.e.b.x, global1.c), vec3<bool>(global1.c, true, true), vec3<bool>(true, false, global1.c)))), select(select(vec3<bool>(global3.a.e.b.x, var_0.b.x, var_0.b.x), select(vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(var_0.b.x, true, global1.c), vec3<bool>(var_0.b.x, global3.a.a.b.x, global3.a.e.b.x)), all(var_0.b)), vec3<bool>(true, true, global1.a.x >= global1.a.x), global3.a.a.b.x), !vec3<bool>(!global3.a.b, all(vec3<bool>(false, global3.d.a.b.x, var_0.b.x)), !global3.d.a.b.x)), _wgslsmith_add_i32(i32(-1i) * -reverseBits(14956i), ~u_input.b >> (4294967295u % 32u)), Struct_3(Struct_2(Struct_1(global3.d.c & var_0.a, func_3()), false, global3.d.a.a, (global3.a.d ^ vec3<i32>(-2147483647i, -1i, 2147483647i)) >> ((vec3<u32>(1u, u_input.a, 1u) | vec3<u32>(1u, var_0.a.x, 21203u)) % vec3<u32>(32u)), Struct_1(~vec2<u32>(4294967295u, 28322u), !var_0.b)), ~u_input.b, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), ~u_input.b)), Struct_2(Struct_1(~vec2<u32>(25606u, u_input.c), !vec2<bool>(var_0.b.x, global3.a.a.b.x)), true, ~(~var_0.a), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), global3.d.d, global3.d.d), var_0)), min(_wgslsmith_dot_vec2_u32(select(vec2<u32>(75741u, 0u), vec2<u32>(4294967295u, u_input.a), global3.d.a.b.x) >> (vec2<u32>(51136u, global1.a.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.a.x), var_0.a)), 28103u), !vec3<bool>(true, global3.d.b, !(false && global1.c)));
    var var_3 = 86498u;
    let var_4 = global3.a.d;
    var_1 = global1.b.x;
    let var_5 = vec2<u32>((~(3314u ^ u_input.a) << (32006u % 32u)) ^ var_0.a.x, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

