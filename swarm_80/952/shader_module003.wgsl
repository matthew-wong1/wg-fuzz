struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = firstTrailingBit(~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(0i, 1i, -2147483647i, u_input.a.x)), vec4<i32>(-46969i, -3764i, -22319i, arg_1)), firstLeadingBit(vec4<i32>(arg_0, -23824i, arg_1, 1i))));
    global0 = array<vec3<i32>, 14>();
    global0 = array<vec3<i32>, 14>();
    var_0 = ~vec4<i32>(select(-71150i >> (u_input.b % 32u), var_0.x, false), abs(_wgslsmith_mod_i32(arg_1, -1i)), _wgslsmith_mod_i32(countOneBits(arg_1), var_0.x), -u_input.a.x) & _wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_0, -2147483647i, 2147483647i), vec4<i32>(-34919i, 64850i, 2147483647i, arg_0)), ~vec4<i32>(u_input.a.x, 39368i, var_0.x, -1i)), -((vec4<i32>(-51105i, 1i, 1i, 0i) & vec4<i32>(1i, u_input.a.x, 0i, 0i)) << (vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1f + 289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -568f))) + _wgslsmith_div_f32(-899f, -1390f)))));
    return false;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global0 = array<vec3<i32>, 14>();
    global0 = array<vec3<i32>, 14>();
    var var_0 = any(select(vec4<bool>(!all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, true)) || false, true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))), !vec4<bool>(all(vec2<bool>(true, false)), false, true, func_3(u_input.a.x, u_input.a.x)), select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))))));
    global0 = array<vec3<i32>, 14>();
    var var_1 = ~1i;
    return Struct_2(Struct_1(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 1i, 43536i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0.x), vec4<i32>(u_input.a.x, -13467i, -1i, 1i)) >> (vec4<u32>(44712u, 4294967295u, 1u, 7066u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(step(-1000f, 1543f))), 0i);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = ~vec3<u32>(select(u_input.b, 1u, any(select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, false, arg_1), false))), u_input.c, ~abs(~1u));
    var var_1 = func_2(-_wgslsmith_sub_vec2_i32(arg_0.a.a.zz, u_input.a.zx));
    var var_2 = func_2(firstTrailingBit(_wgslsmith_add_vec2_i32(var_1.a.a.zx, (vec2<i32>(arg_0.b, 2147483647i) >> (var_0.zx % vec2<u32>(32u))) | (vec2<i32>(-10729i, var_1.a.a.x) & vec2<i32>(u_input.a.x, 43433i))))).a;
    var var_3 = arg_0;
    var var_4 = vec4<i32>(~max(abs(arg_0.a.a.x), var_3.a.a.x), var_1.a.a.x, abs(-min(arg_0.a.a.x << (var_0.x % 32u), i32(-1i) * -62046i)), arg_0.b);
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, ~_wgslsmith_mult_i32(2147483647i, arg_0.a.x)), vec2<i32>(arg_1.a.x, i32(-1i) * -1i));
    var_0 = arg_0.a.x;
    global0 = array<vec3<i32>, 14>();
    var var_1 = Struct_2(arg_0, _wgslsmith_sub_i32(~countOneBits(_wgslsmith_sub_i32(arg_0.a.x, -2147483647i)), func_2(vec2<i32>(arg_0.a.x >> (u_input.c % 32u), i32(-1i) * -2147483647i)).a.a.x));
    var var_2 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), !any(vec3<bool>(true, false, true))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), select(true, false, true));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = vec4<i32>(-_wgslsmith_dot_vec2_i32(-select(vec2<i32>(70061i, u_input.a.x), vec2<i32>(1i, u_input.a.x), vec2<bool>(false, true)), vec2<i32>(u_input.a.x ^ -10722i, _wgslsmith_dot_vec3_i32(vec3<i32>(7713i, u_input.a.x, -14913i), vec3<i32>(u_input.a.x, u_input.a.x, 34764i)))), _wgslsmith_dot_vec2_i32(-u_input.a.yx, u_input.a.yy & vec2<i32>(-15167i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i))), -func_4(func_1(Struct_2(Struct_1(vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x), 303f), 54204i), false), Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 9706i), 501f)) ^ (u_input.a.x | 0i), u_input.a.x);
    var_1 = vec4<i32>(i32(-1i) * -3503i, ~_wgslsmith_clamp_i32(u_input.a.x, var_1.x, -2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(abs(u_input.a) ^ min(global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.a), _wgslsmith_sub_vec3_i32(firstLeadingBit(var_1.yzx), vec3<i32>(var_1.x, var_1.x, 1i))), var_1.xxx), _wgslsmith_add_i32(select(countOneBits(-9343i), var_1.x, true), func_2(_wgslsmith_mult_vec2_i32(-vec2<i32>(-23262i, u_input.a.x), var_1.xx)).b));
    var var_2 = ~(-22486i);
    let var_3 = Struct_2(Struct_1(abs(vec4<i32>(-2147483647i, 7979i, u_input.a.x, u_input.a.x) & func_1(Struct_2(Struct_1(vec4<i32>(43790i, -1i, -11310i, 2147483647i), 140f), 1i), true).a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(func_2(vec2<i32>(u_input.a.x, 12515i)).a.b, -1983f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1433f - 1000f) - -1179f))), ~var_1.x);
    let var_4 = Struct_2(func_2(u_input.a.xy >> (~vec2<u32>(var_0, var_0) % vec2<u32>(32u))).a, -_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_div_i32(var_1.x, u_input.a.x)));
    let var_5 = func_4(var_3.a, func_1(var_3, !all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    global0 = array<vec3<i32>, 14>();
    var var_6 = Struct_2(func_2(var_4.a.a.xw).a, abs(firstLeadingBit(abs(u_input.a.x >> (var_0 % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(-(select(vec4<i32>(0i, var_4.a.a.x, u_input.a.x, -19492i), vec4<i32>(var_5, var_3.b, 677i, var_3.b), true) >> ((vec4<u32>(33026u, 53055u, var_0, 68301u) | vec4<u32>(u_input.c, u_input.c, var_0, 1u)) % vec4<u32>(32u))), var_3.a.a, select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.b, var_4.a.b)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.b, var_3.a.b, var_6.a.b) + vec3<f32>(var_3.a.b, -657f, -534f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -1213f, 161f), vec3<f32>(var_3.a.b, -525f, -727f))), vec3<bool>(true, true, true))))))), var_6.a.a.zz);
}

