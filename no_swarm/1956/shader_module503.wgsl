struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-1393f, 966f, 1258f), vec3<f32>(-1935f, -1693f, -344f), vec3<f32>(339f, -2724f, 1000f));

var<private> global2: Struct_1 = Struct_1(true, false, 10935u, -1481f, 21483u);

var<private> global3: vec3<i32> = vec3<i32>(-1i, 18837i, i32(-2147483648));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> vec4<i32> {
    var var_0 = Struct_2(Struct_1(false, global2.a, global2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(325f, -717f, any(vec4<bool>(false, true, arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-1167f + _wgslsmith_f_op_f32(ceil(global2.d)))), 6779u), vec4<u32>(~u_input.a.x, 1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(42885u, 25084u, global2.e), reverseBits(u_input.b.yyw)) % 32u), 1u, 3267u), global2.d, Struct_1(!(select(true, global2.b, arg_0.x) == true), global2.e <= _wgslsmith_mult_u32(1u, ~u_input.a.x), u_input.a.x, _wgslsmith_f_op_f32(ceil(-197f)), ~u_input.a.x));
    let var_1 = vec3<bool>(false, all(select(vec4<bool>(false, true, true, arg_0.x), select(vec4<bool>(var_0.d.a, false, false, global2.a), !vec4<bool>(var_0.a.b, var_0.a.b, global2.a, var_0.d.b), any(vec4<bool>(arg_0.x, global2.b, arg_0.x, arg_0.x))), select(!vec4<bool>(false, global2.a, true, arg_0.x), !vec4<bool>(var_0.d.b, global2.b, true, false), !vec4<bool>(var_0.a.b, true, true, false)))), true);
    var var_2 = ~(~453u);
    let var_3 = 30101i;
    var_2 = _wgslsmith_sub_u32(~abs(var_0.b.x), firstLeadingBit(~12008u));
    return vec4<i32>(global3.x, global3.x, 1i, -global3.x);
}

fn func_2() -> Struct_1 {
    global3 = _wgslsmith_div_vec3_i32(-vec3<i32>(global3.x, ~46555i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 24925i, global3.x, 11793i), func_3(vec2<bool>(global2.b, true)))), ~(abs(~vec3<i32>(-53917i, global3.x, global3.x)) | firstLeadingBit(abs(vec3<i32>(1i, global3.x, global3.x)))));
    let var_0 = global2.d;
    global2 = Struct_1(true, true, 54722u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.d))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.d)))) * 426f), global2.e);
    var var_1 = 2147483647i;
    var var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.d, 415f), vec2<f32>(global2.d, -1245f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1337f, global2.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, global2.d)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(2612f, global2.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(297f, -1000f))))), false)), Struct_4(u_input.b.zxy, Struct_1(!(!global2.a), true, ~14067u, _wgslsmith_f_op_f32(ceil(1498f)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.b.x), 1u))), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-global3.x, 0i & global3.x, global3.x, -8751i)), ~(-vec4<i32>(0i, global3.x, 17593i, global3.x)) | (vec4<i32>(-1i) * -vec4<i32>(global3.x, -49489i, 0i, 2147483647i))));
    return var_2.b.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> bool {
    global2 = func_2();
    var var_0 = global2.d;
    let var_1 = !(!(!(!(!vec3<bool>(true, global2.b, true)))));
    let var_2 = -10887i;
    let var_3 = vec2<i32>(~35675i, 2147483647i);
    return !(!var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, -1771f, global2.d))))))));
    global0 = global3.x;
    var var_1 = Struct_1(true && global2.a, func_1(vec4<i32>(global3.x, global3.x, global3.x, global3.x) << (vec4<u32>(u_input.b.x, global2.e, u_input.b.x, 0u) % vec4<u32>(32u)), 0i) && global2.b, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(func_2().d, _wgslsmith_f_op_f32(-global2.d)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1185f))))), min(u_input.b.x, ~u_input.b.x) >> (abs(0u) % 32u));
    var var_2 = select(!select(select(select(vec3<bool>(global2.a, var_1.a, true), vec3<bool>(false, false, var_1.b), vec3<bool>(global2.a, false, global2.a)), select(vec3<bool>(false, true, var_1.a), vec3<bool>(global2.b, false, true), vec3<bool>(var_1.b, global2.a, false)), !global2.a), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, var_1.b), vec3<bool>(false, global2.b, var_1.a), vec3<bool>(global2.a, true, global2.a))), !(!select(!vec3<bool>(var_1.a, var_1.a, true), select(vec3<bool>(var_1.b, true, var_1.b), vec3<bool>(true, false, var_1.a), vec3<bool>(global2.b, var_1.b, true)), global2.b)), select(select(select(!vec3<bool>(false, var_1.a, false), !vec3<bool>(var_1.b, global2.b, var_1.a), vec3<bool>(global2.a, global2.a, false)), !vec3<bool>(global2.a, var_1.b, false), !(global3.x > global3.x)), vec3<bool>(true, var_1.a, global2.b), var_1.b));
    var_1 = Struct_1(global2.b, global2.a || global2.a, 44638u, _wgslsmith_f_op_f32(165f - _wgslsmith_f_op_f32(-991f - -226f)), 1u);
    global0 = 2147483647i;
    var_2 = !vec3<bool>(!var_2.x, false, var_2.x);
    var_1 = Struct_1(all(vec3<bool>(!var_2.x, !any(vec3<bool>(true, var_1.b, var_1.b)), var_1.b)), all(select(vec4<bool>(true, false, global3.x <= global3.x, global3.x >= global3.x), select(!vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(false, var_1.a, var_1.b, var_2.x), all(vec4<bool>(true, true, var_2.x, global2.a))), vec4<bool>(true, var_1.b, global2.b, false | var_1.a))), firstLeadingBit(87273u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))))) + 930f), 26006u);
    var var_3 = _wgslsmith_clamp_vec3_i32(~min(-vec3<i32>(59090i, global3.x, global3.x), (vec3<i32>(-31332i, -4003i, -1i) << (vec3<u32>(u_input.a.x, global2.c, 11328u) % vec3<u32>(32u))) ^ (vec3<i32>(global3.x, 2147483647i, 1i) << (vec3<u32>(global2.c, u_input.b.x, 4294967295u) % vec3<u32>(32u)))), vec3<i32>(1i, ~(-12577i), func_3(select(select(vec2<bool>(false, global2.b), vec2<bool>(global2.a, global2.b), vec2<bool>(var_1.a, false)), var_2.xx, true || var_2.x)).x), min(~vec3<i32>(func_3(var_2.yz).x, global3.x, global3.x ^ -1i), -_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(global3.x, -71038i, -5447i)), ~vec3<i32>(23068i, 2147483647i, global3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u << (global2.c % 32u), ~global2.e, 40020u), vec4<f32>(global2.d, -442f, -749f, global2.d), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, var_3.x), vec4<i32>(-20180i, _wgslsmith_mod_i32(var_3.x, 0i), select(-1i, 2147483647i, var_1.b), _wgslsmith_div_i32(global3.x, global3.x)), firstTrailingBit(vec4<i32>(var_3.x, global3.x, -19962i, -14760i))), _wgslsmith_mod_vec4_i32(vec4<i32>(~2147483647i, func_3(var_2.zz).x, -42540i, global3.x >> (1u % 32u)), -vec4<i32>(11722i, 0i, 45730i, 26425i))));
}

