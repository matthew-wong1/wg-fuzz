struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: array<i32, 24>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(arg_1 + arg_1)), arg_1));
    global1 = array<i32, 24>();
    global0 = array<vec2<bool>, 23>();
    global1 = array<i32, 24>();
    var var_1 = Struct_1(u_input.a, vec3<bool>(select(any(vec3<bool>(true, false, arg_2.x)), true, (arg_1 == 1000f) && true), !(arg_2.x & arg_2.x), !any(select(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(20586u, 23u)], vec2<bool>(arg_2.x, arg_2.x)))), _wgslsmith_add_vec2_i32(u_input.d.yx, vec2<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(36814i, -10522i)) & u_input.d.xy), ~u_input.a.x, _wgslsmith_div_vec2_u32(~u_input.a.zx & vec2<u32>(~u_input.a.x, u_input.a.x), ~(~(u_input.a.zx ^ vec2<u32>(u_input.a.x, u_input.a.x)))));
    return vec4<bool>(all(select(vec4<bool>(var_1.b.x != true, true, true, all(vec2<bool>(var_1.b.x, false))), select(select(vec4<bool>(var_1.b.x, false, var_1.b.x, false), vec4<bool>(var_1.b.x, false, true, true), vec4<bool>(var_1.b.x, arg_2.x, false, var_1.b.x)), select(vec4<bool>(var_1.b.x, false, var_1.b.x, false), vec4<bool>(true, arg_2.x, var_1.b.x, arg_2.x), vec4<bool>(var_1.b.x, arg_2.x, false, var_1.b.x)), arg_1 > 285f), !(global1[_wgslsmith_index_u32(4294967295u, 24u)] == -15704i))), arg_2.x, arg_2.x, var_1.b.x & !var_1.b.x);
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(u_input.a & _wgslsmith_mod_vec3_u32(select(~u_input.a, vec3<u32>(u_input.a.x, 0u, 49957u) | u_input.a, vec3<bool>(false, true, false)), vec3<u32>(74872u, ~0u, u_input.a.x >> (u_input.a.x % 32u))), select(vec3<bool>(false, false, all(vec4<bool>(true, true, true, true))), func_2(u_input.e, 1228f, vec2<bool>(true, true)).zzy, !(all(vec4<bool>(false, true, true, false)) | all(vec4<bool>(false, false, false, false)))), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d.yx, vec2<i32>(-35985i, global1[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<i32>(u_input.d.x, u_input.d.x)), vec2<i32>(0i, 65542i), ~u_input.d.zx), abs(~(~u_input.a.x | 1u)), ~(~(countOneBits(vec2<u32>(u_input.a.x, 0u)) & vec2<u32>(42227u, 31326u))));
    global0 = array<vec2<bool>, 23>();
    let var_1 = all(func_2(5980i, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(368f, _wgslsmith_f_op_f32(-657f - -124f), any(vec4<bool>(var_0.b.x, false, false, true))))), !vec2<bool>(var_0.b.x | var_0.b.x, all(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)))));
    global0 = array<vec2<bool>, 23>();
    var var_2 = reverseBits(reverseBits(i32(-1i) * -abs(-32497i)));
    return vec2<i32>(2147483647i, 1i);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(reverseBits(arg_2.a), arg_0.zzy, u_input.d.xz | -firstLeadingBit(vec2<i32>(u_input.d.x, u_input.b)), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(51910u, 1u), countOneBits(arg_3.x)), 1u), ~arg_2.a.x), vec2<u32>(~abs(_wgslsmith_sub_u32(4294967295u, u_input.a.x)), min(firstTrailingBit(abs(0u)), ~_wgslsmith_add_u32(arg_2.d, 18269u))));
    let var_1 = countOneBits(select(~(-vec4<i32>(15998i, -1i, 0i, -19630i)), -(countOneBits(vec4<i32>(arg_2.c.x, global1[_wgslsmith_index_u32(35422u, 24u)], 2147483647i, arg_2.c.x)) ^ ~vec4<i32>(-33126i, -19145i, 0i, 1i)), arg_2.b.x));
    global1 = array<i32, 24>();
    return arg_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = arg_0;
    global1 = array<i32, 24>();
    let var_1 = true;
    let var_2 = func_4(select(select(vec4<bool>(true, var_0.x, arg_0.x & arg_2, all(vec4<bool>(var_1, true, arg_0.x, false))), func_2(25295i, _wgslsmith_f_op_f32(min(1105f, -284f)), vec2<bool>(true, var_1)), u_input.a.x != u_input.a.x), vec4<bool>(!(!arg_2), true, _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(9336i, 0i, u_input.d.x)) <= 1i, all(vec3<bool>(var_1, var_0.x, arg_0.x))), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -727f), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, abs(4294967295u), ~u_input.a.x), vec3<u32>(6954u, _wgslsmith_dot_vec4_u32(vec4<u32>(26139u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 1u, 1u, u_input.a.x)), ~u_input.a.x)), vec3<bool>(true, true, true), func_3(), ~min(u_input.a.x, u_input.a.x), u_input.a.zy), vec3<u32>(~(~_wgslsmith_div_u32(1u, u_input.a.x)), ~u_input.a.x, 1u));
    let var_3 = _wgslsmith_sub_u32(var_2.a.x, var_2.e.x);
    return func_4(!(!vec4<bool>(var_2.b.x || var_2.b.x, !arg_2, true, arg_2)), -758f, var_2, vec3<u32>(u_input.a.x, 83029u, ~select(var_2.d, firstTrailingBit(10949u), any(var_0.zw))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = u_input.d;
    global0 = array<vec2<bool>, 23>();
    let var_2 = arg_1;
    var var_3 = firstTrailingBit(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(arg_2.x, arg_2.x, arg_2.x)) ^ firstTrailingBit(1u), arg_1.e.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    global0 = array<vec2<bool>, 23>();
    global1 = array<i32, 24>();
    global1 = array<i32, 24>();
    var var_1 = func_5(firstTrailingBit(u_input.b | u_input.c), func_1(vec4<bool>(true, true, true, true), ~(i32(-1i) * -5042i), true), select(u_input.a, func_4(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1805f - -1228f) - -1634f), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 0u) >> (vec3<u32>(4294967295u, u_input.a.x, 22130u) % vec3<u32>(32u)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), -vec2<i32>(u_input.b, u_input.e), u_input.a.x, vec2<u32>(43942u, 0u)), vec3<u32>(1u, 15792u, 1u)).a, vec3<bool>(true, func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(2147483647i, u_input.e, 0i)), _wgslsmith_f_op_f32(-1267f - -1302f), func_4(vec4<bool>(false, true, false, false), -843f, Struct_1(u_input.a, vec3<bool>(true, false, true), vec2<i32>(6729i, -57809i), u_input.a.x, u_input.a.yz), u_input.a).b.yx).x, true)));
    global0 = array<vec2<bool>, 23>();
    var_1 = func_5(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(0u, 24u)], ~(~global1[_wgslsmith_index_u32(4294967295u, 24u)]) | firstLeadingBit(~2147483647i), -func_5(global1[_wgslsmith_index_u32(~var_1.d, 24u)], Struct_1(vec3<u32>(4294967295u, u_input.a.x, 1u), var_1.b, vec2<i32>(1i, -1i), var_1.d, var_1.a.xx), u_input.a).c.x), Struct_1(_wgslsmith_div_vec3_u32(~firstTrailingBit(var_1.a), ~countOneBits(var_1.a)), func_2(12720i, 1459f, func_1(vec4<bool>(true, true, true, true), ~var_1.c.x, var_1.b.x && false).b.xy).xyy, var_1.c, ~u_input.a.x, u_input.a.zx), firstTrailingBit(~vec3<u32>(~var_1.a.x, ~31154u, _wgslsmith_div_u32(var_1.d, u_input.a.x))));
    let var_2 = var_1.b.zz;
    let var_3 = countOneBits(vec3<i32>(func_3().x, 1i, _wgslsmith_mult_i32(-(~u_input.e), ~u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, -392f)))), vec3<u32>(max(~var_1.e.x >> (func_4(vec4<bool>(false, var_1.b.x, true, true), 386f, Struct_1(vec3<u32>(1153u, var_1.e.x, u_input.a.x), var_1.b, vec2<i32>(1i, -15587i), 4294967295u, var_1.e), var_1.a).a.x % 32u), ~_wgslsmith_sub_u32(3686u, u_input.a.x)), countOneBits(0u), reverseBits(var_1.a.x | u_input.a.x)), ~vec4<u32>(21804u, 1u, _wgslsmith_mult_u32(u_input.a.x, var_1.a.x), select(11078u, 4294967295u, var_1.b.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(37595u, ~25835u, firstLeadingBit(24385u), ~54584u), reverseBits(vec4<u32>(986u, 53601u, u_input.a.x, 20494u)) << (vec4<u32>(u_input.a.x, 1u, 80005u, 105834u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~((var_1.a << (_wgslsmith_mult_vec3_u32(var_1.a, vec3<u32>(u_input.a.x, 40943u, u_input.a.x)) % vec3<u32>(32u))) >> ((var_1.a << (~vec3<u32>(u_input.a.x, var_1.a.x, 22463u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(~(var_1.d ^ (var_1.d >> (u_input.a.x % 32u))), 24u)]));
}

