struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, true, false), Struct_1(true, false, true), Struct_1(true, false, true), Struct_1(false, false, true), Struct_1(true, false, false), Struct_1(true, true, false), Struct_1(true, true, false), Struct_1(true, true, false), Struct_1(false, false, false), Struct_1(true, false, false), Struct_1(false, true, true), Struct_1(true, true, false), Struct_1(true, true, false), Struct_1(false, true, true), Struct_1(false, false, false), Struct_1(false, false, false), Struct_1(false, true, true), Struct_1(true, true, true));

var<private> global1: vec2<i32> = vec2<i32>(-62799i, -7071i);

var<private> global2: array<vec4<f32>, 10>;

var<private> global3: Struct_1 = Struct_1(true, false, true);

var<private> global4: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<i32> {
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.x, global4.x, -191f)))) - vec3<f32>(-1699f, _wgslsmith_div_f32(global4.x, global4.x), _wgslsmith_f_op_f32(global4.x * 1000f))))));
    let var_0 = 2147483647i;
    var var_1 = vec4<bool>(any(!(!select(vec3<bool>(global3.a, false, global3.b), vec3<bool>(false, global3.b, global3.c), vec3<bool>(false, global3.a, true)))), select(all(!vec3<bool>(true, global3.b, true)), true, 1u < ~u_input.d.x), true, (u_input.a.x < (0i << (max(u_input.d.x, u_input.d.x) % 32u))) | global3.b);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(max(abs(vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x)), ~vec4<u32>(4294967295u, u_input.d.x, 72667u, 44767u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4294967295u), vec4<u32>(46141u, u_input.d.x, 4294967295u, 31114u)), vec4<u32>(21396u, 46522u, u_input.d.x, 1u), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, false, false, false))), !global3.a == true), abs(vec4<u32>(~(~7945u), ~1u, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x) | ~3760u, _wgslsmith_mod_u32(0u << (u_input.d.x % 32u), 1u)))), 18u)];
    global2 = array<vec4<f32>, 10>();
    return vec4<i32>(1i, ~(-_wgslsmith_mult_i32(global1.x, u_input.b.x) << (_wgslsmith_clamp_u32(abs(u_input.d.x), ~u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, u_input.d.x)) % 32u)), _wgslsmith_add_i32(reverseBits(global1.x), -24529i) << (38804u % 32u), ~((u_input.a.x ^ -34296i) & u_input.a.x));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    global4 = vec3<f32>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-546f, -1218f)))), _wgslsmith_div_f32(537f, -1007f));
    let var_0 = func_3() & vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -62703i, u_input.a.x, global1.x), ~vec4<i32>(u_input.c, global1.x, global1.x, -1i)) >> (67876u % 32u), global1.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, -2147483647i, 12399i, 0i), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global1.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.c, u_input.b.x, global1.x, u_input.b.x)), vec4<i32>(29897i, 1i, u_input.b.x, 1i))), abs(global1.x));
    var var_1 = Struct_1(arg_1.c, false, !any(vec4<bool>(false == arg_1.b, arg_2, arg_1.a, select(true, global3.b, false))));
    var var_2 = Struct_1(false, all(vec2<bool>(false, global3.b == (u_input.b.x > global1.x))), false);
    global1 = _wgslsmith_add_vec2_i32(select(var_0.xz, u_input.b.zy | _wgslsmith_sub_vec2_i32(~var_0.zy, vec2<i32>(var_0.x, 2147483647i)), arg_2), ~var_0.xw);
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: i32) -> vec3<bool> {
    let var_0 = global0[_wgslsmith_index_u32(0u, 18u)];
    var var_1 = u_input.b;
    let var_2 = func_2(reverseBits(u_input.d.x), Struct_1(false, true, any(!arg_1.zzy)), true, ~firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(36551u, 0u, 45673u, u_input.d.x), vec4<u32>(25749u, 36555u, u_input.d.x, u_input.d.x)), ~vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 4294967295u))));
    global2 = array<vec4<f32>, 10>();
    let var_3 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), ~u_input.d.x, ~0u, 0u), _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(8797u, u_input.d.x, 1u, 0u), vec4<u32>(u_input.d.x, u_input.d.x, 12245u, u_input.d.x), vec4<u32>(u_input.d.x, 0u, u_input.d.x, 1u)), min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 0u), vec4<u32>(4294967295u, 12339u, 75633u, u_input.d.x)), ~vec4<u32>(23503u, u_input.d.x, u_input.d.x, 1u))));
    return !select(!arg_1.yww, arg_1.wzz, var_2.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~(~vec3<u32>(firstLeadingBit(u_input.d.x), ~(~1u), ~u_input.d.x));
    global1 = vec2<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-34907i, u_input.b.x, u_input.c, 2147483647i)) ^ vec4<i32>(u_input.c, u_input.c, -45980i, 71237i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, global1.x, -1i, 0i), vec4<i32>(global1.x, global1.x, global1.x, 0i)) | vec4<i32>(0i, u_input.a.x, u_input.a.x, global1.x)), _wgslsmith_mod_i32(~u_input.c, u_input.c & (u_input.a.x ^ u_input.c))));
    var var_1 = Struct_1(min(~_wgslsmith_mod_u32(var_0.x, u_input.d.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(20390u, 0u)), ~u_input.d)) == u_input.d.x, false, !func_2(var_0.x, func_2(6961u, Struct_1(true, arg_0.x, true), false, vec4<u32>(var_0.x, 4294967295u, u_input.d.x, u_input.d.x)), u_input.a.x < -49442i, ~vec4<u32>(var_0.x, 51865u, u_input.d.x, u_input.d.x)).c | arg_0.x);
    let var_2 = _wgslsmith_f_op_f32(global4.x * global4.x);
    global1 = reverseBits(u_input.a.zz) & abs(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(global1.x, u_input.a.x) << (vec2<u32>(1u, var_0.x) % vec2<u32>(32u))), u_input.a.zz));
    return Struct_1(_wgslsmith_mult_i32(u_input.c, ~(-28974i)) < _wgslsmith_add_i32(-2147483647i, global1.x), global1.x >= reverseBits(firstTrailingBit(20546i)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 18u)];
    let var_1 = func_4(select(select(!select(vec3<bool>(global3.c, var_0.b, global3.b), vec3<bool>(var_0.b, global3.a, var_0.a), vec3<bool>(true, true, global3.a)), !vec3<bool>(false, true, var_0.b), func_1(min(54121i, global1.x), !vec4<bool>(false, var_0.b, var_0.c, global3.a), ~global1.x)), !(!(!vec3<bool>(global3.c, global3.b, var_0.c))), true), func_2(u_input.d.x, Struct_1(true || func_2(u_input.d.x, Struct_1(var_0.b, global3.b, true), var_0.b, vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x)).b, all(!vec4<bool>(var_0.b, var_0.a, global3.b, global3.b)), !(!var_0.c)), global3.b | !select(false, var_0.c, false), ~(vec4<u32>(6328u, u_input.d.x, u_input.d.x, 4294967295u) & vec4<u32>(u_input.d.x, 1u, 0u, 59627u)) & abs(vec4<u32>(24384u, 14101u, u_input.d.x, u_input.d.x) ^ vec4<u32>(1u, 14031u, 108168u, u_input.d.x))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(577f - global4.x)), -226f, -269f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global4.x)), _wgslsmith_f_op_f32(f32(-1f) * -1318f), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(776f * global4.x)))))));
    let var_3 = vec3<u32>(0u << (_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 3308u, 69386u) | vec3<u32>(0u, u_input.d.x, u_input.d.x))) % 32u), ~4294967295u, ~max(_wgslsmith_mult_u32(77782u, ~u_input.d.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, 78125u), vec3<u32>(u_input.d.x, u_input.d.x, 1u)), 1u)));
    global3 = func_2(~abs(45374u), Struct_1(var_0.a & func_4(func_1(global1.x, vec4<bool>(var_0.c, true, true, true), global1.x), global0[_wgslsmith_index_u32(5915u, 18u)]).a, true, true), false, _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(276u, 85581u, 34670u, u_input.d.x)), vec4<u32>(~1u, ~1u, _wgslsmith_dot_vec3_u32(var_3, vec3<u32>(0u, 35906u, var_3.x)), reverseBits(u_input.d.x))) | reverseBits(select(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, var_3.x), vec4<u32>(19968u, u_input.d.x, 3357u, u_input.d.x), false) << (~vec4<u32>(9195u, var_3.x, 38509u, 9893u) % vec4<u32>(32u))));
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

