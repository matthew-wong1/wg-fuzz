struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(0u, vec2<bool>(true, true), vec3<i32>(-1i, 2147483647i, 9660i), 1000f, vec4<i32>(13366i, 39100i, 2147483647i, 0i)), Struct_1(66238u, vec2<bool>(false, false), vec3<i32>(0i, -36960i, -18319i), -246f, vec4<i32>(23210i, 53602i, 73572i, 1i)), Struct_1(95200u, vec2<bool>(false, true), vec3<i32>(7041i, 2147483647i, -1i), 519f, vec4<i32>(26455i, i32(-2147483648), 0i, 26150i)), Struct_1(39504u, vec2<bool>(false, true), vec3<i32>(-33975i, 1i, 0i), 563f, vec4<i32>(-16173i, -1i, 1i, 1i)), Struct_1(4294967295u, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 2147483647i, -38495i), 785f, vec4<i32>(83308i, 0i, 10323i, -41616i)), Struct_1(45797u, vec2<bool>(false, false), vec3<i32>(2147483647i, i32(-2147483648), -63193i), 1170f, vec4<i32>(-8609i, i32(-2147483648), 0i, 2147483647i)), Struct_1(1u, vec2<bool>(true, true), vec3<i32>(-34516i, i32(-2147483648), -1i), -785f, vec4<i32>(-1i, 7678i, 2147483647i, 4923i)));

var<private> global1: vec3<i32>;

var<private> global2: Struct_1 = Struct_1(41552u, vec2<bool>(false, true), vec3<i32>(-1i, i32(-2147483648), 20309i), 215f, vec4<i32>(0i, -1i, -42104i, 1i));

var<private> global3: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = global0[_wgslsmith_index_u32(37247u, 7u)];
    global2 = global0[_wgslsmith_index_u32(~18877u & var_0.a, 7u)];
    global0 = array<Struct_1, 7>();
    return arg_2.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(19491u << (_wgslsmith_mod_u32(global2.a, 0u) % 32u))) >> (((~_wgslsmith_div_u32(u_input.c, arg_1.a) & _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3.a, arg_2.a, u_input.c, 72039u)), ~vec4<u32>(54207u, arg_1.a, u_input.c, 29252u))) | ~(~57645u | global2.a)) % 32u), 7u)];
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a, reverseBits(var_0.a), abs(u_input.b), 4294967295u), abs(vec4<u32>(arg_2.a >> (var_0.a % 32u), 0u, ~68873u, ~arg_2.a))), arg_2.a), 7u)];
    let var_1 = arg_1;
    let var_2 = Struct_1(0u, arg_0.wx, _wgslsmith_add_vec3_i32(func_3(_wgslsmith_add_vec4_u32(abs(vec4<u32>(arg_2.a, 0u, global3.a, var_0.a)), ~vec4<u32>(1u, 4294967295u, arg_1.a, 1u)), max(~var_1.a, 4294967295u), Struct_1(_wgslsmith_mod_u32(58939u, 1u), global3.b, ~vec3<i32>(-1762i, 18520i, -2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -140f), global3.e)), arg_2.e.wyw << (vec3<u32>(~arg_1.a, ~var_0.a, _wgslsmith_add_u32(global2.a, global3.a)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(var_1.d - 1909f), ~arg_3);
    return var_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = vec3<u32>(5807u, func_2(vec4<bool>(global3.b.x, true, arg_2.b.x, !all(vec3<bool>(false, global2.b.x, false))), func_2(!vec4<bool>(arg_2.b.x, true, global2.b.x, false), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(10170u, global3.a), vec2<u32>(31509u, arg_2.a)), vec2<u32>(0u, 4294967295u)), 7u)], Struct_1(~global2.a, vec2<bool>(global3.b.x, true), ~vec3<i32>(42033i, arg_2.e.x, global3.e.x), _wgslsmith_f_op_f32(select(arg_2.d, arg_2.d, false)), ~arg_1.e), vec4<i32>(arg_0.x, -arg_0.x, -2147483647i, 0i)), Struct_1(1u, global3.b, ~(~arg_1.c), 443f, _wgslsmith_sub_vec4_i32(arg_2.e, -arg_1.e)), arg_1.e).a, _wgslsmith_add_u32(5551u, ~arg_1.a));
    let var_1 = arg_1.d;
    global2 = func_2(vec4<bool>(false & (global2.b.x & true), arg_2.b.x, select(true, true, true), true), Struct_1(4294967295u | firstLeadingBit(global2.a | arg_1.a), select(vec2<bool>(arg_2.b.x, arg_2.b.x), select(vec2<bool>(false, false), func_2(vec4<bool>(arg_2.b.x, true, true, arg_2.b.x), arg_2, Struct_1(1u, vec2<bool>(true, arg_2.b.x), global2.c, arg_2.d, vec4<i32>(1i, -10497i, 15289i, 1i)), arg_1.e).b, !global3.b), all(vec4<bool>(global3.b.x, global3.b.x, arg_2.b.x, true))), global3.e.yzw, global2.d, arg_1.e), Struct_1(abs(_wgslsmith_clamp_u32(var_0.x, global3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 12093u, 4294967295u), vec4<u32>(global2.a, global2.a, arg_2.a, 4294967295u)))), select(select(global3.b, func_2(vec4<bool>(arg_1.b.x, global2.b.x, false, true), Struct_1(arg_1.a, arg_1.b, global3.c, -139f, vec4<i32>(-46523i, 1i, arg_1.e.x, 1i)), global0[_wgslsmith_index_u32(global2.a, 7u)], vec4<i32>(u_input.a.x, -3698i, arg_2.e.x, global1.x)).b, vec2<bool>(arg_2.b.x, false)), !func_2(vec4<bool>(true, global2.b.x, true, global3.b.x), Struct_1(global3.a, vec2<bool>(arg_2.b.x, arg_1.b.x), vec3<i32>(global1.x, -1i, 323i), -210f, global2.e), Struct_1(38591u, vec2<bool>(global3.b.x, global2.b.x), vec3<i32>(9218i, u_input.a.x, arg_0.x), arg_2.d, global2.e), global3.e).b, arg_2.b), _wgslsmith_clamp_vec3_i32(global2.c, -arg_2.c, select(_wgslsmith_sub_vec3_i32(global2.c, arg_1.e.wyz), vec3<i32>(arg_1.e.x, global3.c.x, arg_0.x), func_2(vec4<bool>(false, global3.b.x, false, false), Struct_1(global3.a, vec2<bool>(true, true), vec3<i32>(-2147483647i, -12674i, 11975i), global3.d, arg_0), global0[_wgslsmith_index_u32(global3.a, 7u)], arg_2.e).b.x)), arg_2.d, -vec4<i32>(_wgslsmith_sub_i32(79076i, -1i), _wgslsmith_div_i32(global2.e.x, global1.x), 22917i & arg_1.e.x, u_input.a.x)), global2.e);
    global3 = Struct_1(global3.a, vec2<bool>(!arg_2.b.x, firstTrailingBit(1u) < 43295u), -abs(~(arg_1.e.zyx ^ vec3<i32>(arg_1.e.x, global1.x, -22340i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.d, var_1), var_1, true)) + _wgslsmith_f_op_f32(-200f + -123f)) * -443f), select(vec4<i32>(_wgslsmith_dot_vec4_i32(~arg_0, vec4<i32>(global2.e.x, -1i, u_input.a.x, global1.x)), _wgslsmith_mult_i32(abs(2147483647i), 1i), arg_2.c.x, u_input.a.x << (arg_1.a % 32u)), _wgslsmith_mod_vec4_i32(arg_2.e, vec4<i32>(_wgslsmith_mult_i32(0i, arg_0.x), -1i, _wgslsmith_dot_vec3_i32(arg_0.zxw, arg_0.xwy), -2147483647i)), false));
    let var_2 = 24743i;
    return arg_2.e;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(961f * global2.d)))))), _wgslsmith_div_f32(-442f, -1255f), global3.d, -1583f);
    let var_1 = -666f;
    let var_2 = var_0.wx;
    var var_3 = 1i;
    let var_4 = Struct_1(1u, select(select(select(global2.b, vec2<bool>(false, false), vec2<bool>(global2.b.x, global2.b.x)), !global2.b, ~global2.a == 45927u), !global2.b, !(!(!vec2<bool>(global2.b.x, global3.b.x)))), countOneBits(global3.e.wwy), _wgslsmith_f_op_f32(global3.d - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global2.d)), _wgslsmith_f_op_f32(-var_1)))))), func_4(vec4<i32>(~33847i, global3.c.x, global2.e.x, _wgslsmith_add_i32(1i, ~(-2147483647i))), global0[_wgslsmith_index_u32(global3.a, 7u)], func_2(!(!vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x)), global0[_wgslsmith_index_u32(global2.a, 7u)], global0[_wgslsmith_index_u32(49533u, 7u)], vec4<i32>(global2.e.x, 51622i, 1i, -36942i) << (~vec4<u32>(1u, global2.a, global3.a, arg_0) % vec4<u32>(32u)))));
    return global2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.x;
    var var_1 = Struct_1(global3.a, vec2<bool>(any(!select(vec2<bool>(global2.b.x, global2.b.x), global3.b, false)), (0i >> (global3.a % 32u)) != func_1(u_input.c | 8725u)), firstTrailingBit(max(vec3<i32>(countOneBits(global1.x), -51935i, global2.e.x | -2147483647i), _wgslsmith_div_vec3_i32(global2.c << (vec3<u32>(72912u, 80983u, u_input.b) % vec3<u32>(32u)), u_input.a >> (vec3<u32>(4294967295u, 4294967295u, u_input.b) % vec3<u32>(32u))))), -146f, abs(select(~_wgslsmith_add_vec4_i32(vec4<i32>(global2.e.x, 1i, 0i, -32932i), global3.e), vec4<i32>(abs(-8806i), 8873i, 2147483647i, u_input.a.x), 5940i == global3.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(countOneBits(vec4<u32>(21832u, 112604u, 62433u, 15401u))), abs(vec4<u32>(var_1.a, u_input.b, 4294967295u, var_1.a)) | ~vec4<u32>(global3.a, global2.a, var_1.a, 4294967295u)), ~(~vec4<u32>(1u, global3.a, 19756u, 1u))), ~_wgslsmith_mod_vec4_i32(-firstLeadingBit(vec4<i32>(2147483647i, global2.e.x, -2147483647i, var_1.c.x)), _wgslsmith_clamp_vec4_i32(global3.e, func_2(vec4<bool>(global2.b.x, false, false, global3.b.x), global0[_wgslsmith_index_u32(var_1.a, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], var_1.e).e, abs(var_1.e))));
}

