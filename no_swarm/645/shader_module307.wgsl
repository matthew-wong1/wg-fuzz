struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 25921i), 73223u);

var<private> global1: array<f32, 15>;

var<private> global2: vec4<i32> = vec4<i32>(28637i, i32(-2147483648), i32(-2147483648), 0i);

var<private> global3: Struct_1 = Struct_1(vec2<i32>(32325i, i32(-2147483648)), vec3<i32>(-1i, 19662i, 2147483647i), 0u, vec4<bool>(false, false, false, true));

var<private> global4: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -1i), 11888u), Struct_2(vec2<bool>(false, true), vec2<i32>(1i, 11037i), 75656u), Struct_2(vec2<bool>(false, true), vec2<i32>(34451i, -1i), 1u), Struct_2(vec2<bool>(true, false), vec2<i32>(47753i, -6587i), 2954u), Struct_2(vec2<bool>(false, true), vec2<i32>(-1i, -51005i), 55681u), Struct_2(vec2<bool>(true, true), vec2<i32>(-19475i, 29646i), 37288u), Struct_2(vec2<bool>(true, true), vec2<i32>(2147483647i, 0i), 4294967295u), Struct_2(vec2<bool>(true, false), vec2<i32>(-1i, 0i), 4294967295u), Struct_2(vec2<bool>(false, false), vec2<i32>(22233i, 0i), 0u), Struct_2(vec2<bool>(true, true), vec2<i32>(31141i, 3304i), 4294967295u), Struct_2(vec2<bool>(false, true), vec2<i32>(-34469i, -1i), 1u), Struct_2(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -49532i), 0u), Struct_2(vec2<bool>(true, true), vec2<i32>(-1i, i32(-2147483648)), 1u), Struct_2(vec2<bool>(true, false), vec2<i32>(5194i, -9011i), 4335u), Struct_2(vec2<bool>(false, false), vec2<i32>(1i, 7910i), 122654u), Struct_2(vec2<bool>(false, true), vec2<i32>(24614i, 24051i), 0u), Struct_2(vec2<bool>(true, false), vec2<i32>(-30761i, 32744i), 26321u), Struct_2(vec2<bool>(false, false), vec2<i32>(-8409i, i32(-2147483648)), 4294967295u), Struct_2(vec2<bool>(true, false), vec2<i32>(-1i, -1i), 38486u), Struct_2(vec2<bool>(true, true), vec2<i32>(-40818i, 1i), 0u), Struct_2(vec2<bool>(true, true), vec2<i32>(22620i, 10594i), 0u), Struct_2(vec2<bool>(false, false), vec2<i32>(1628i, i32(-2147483648)), 4294967295u), Struct_2(vec2<bool>(false, false), vec2<i32>(1i, -46952i), 7110u), Struct_2(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), i32(-2147483648)), 7078u), Struct_2(vec2<bool>(false, false), vec2<i32>(-5369i, i32(-2147483648)), 38652u), Struct_2(vec2<bool>(true, true), vec2<i32>(-1i, 2147483647i), 0u), Struct_2(vec2<bool>(false, true), vec2<i32>(2147483647i, -57872i), 17879u), Struct_2(vec2<bool>(true, false), vec2<i32>(2147483647i, 1i), 0u), Struct_2(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), 34639u));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> u32 {
    let var_0 = Struct_3(-625f, abs(vec2<u32>(0u, arg_0.x)), true, arg_2, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(16962u, arg_0.x), _wgslsmith_mod_vec2_u32(arg_0.zz, arg_0.zy))));
    let var_1 = Struct_1(select(u_input.a, _wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, global0.b.x), min(vec2<i32>(global3.a.x, 5782i), -var_0.d.b)), !arg_2.a.x), global3.b, _wgslsmith_dot_vec3_u32(arg_0, firstTrailingBit(~vec3<u32>(16108u, 1u, global3.c))), select(!(!select(vec4<bool>(global0.a.x, global0.a.x, false, true), global3.d, global3.d.x)), vec4<bool>(any(vec4<bool>(var_0.c, true, global3.d.x, false)) | true, false, _wgslsmith_f_op_f32(arg_1 - arg_1) == _wgslsmith_f_op_f32(-344f - var_0.a), any(global3.d.yww)), !global3.d));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(reverseBits(~1642u)), 15u)]), ~var_0.b ^ vec2<u32>(var_0.e, 17524u), select(all(global3.d.wzz) != true, all(!global3.d), false) || true, arg_2, 1u);
    var_2 = var_0;
    var var_3 = arg_2.c;
    return 32957u;
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<f32, 15>();
    let var_0 = Struct_1(vec2<i32>(0i, 2147483647i << (func_3(~vec3<u32>(48441u, arg_0, u_input.e.x), 927f, global4[_wgslsmith_index_u32(~arg_0, 29u)]) % 32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -_wgslsmith_add_i32(global2.x, 2147483647i), global2.x), vec3<i32>(~51079i, global2.x, 0i)), 15754u, global3.d);
    var var_1 = select(!select(all(vec4<bool>(global3.d.x, false, var_0.d.x, global3.d.x)), any(vec4<bool>(global3.d.x, false, var_0.d.x, var_0.d.x)), global3.d.x) | global3.d.x, max(1i, _wgslsmith_dot_vec2_i32(global0.b, abs(global3.a))) == _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -(global0.b.x | u_input.b.x), global2.x), select(global0.c <= 13460u, true, global3.d.x));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(24204u | global3.c, 15u)] - _wgslsmith_f_op_f32(f32(-1f) * -617f)), 1000f)), -487f))));
    return 4294967295u;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(vec2<bool>(!select(!global3.d.x, false, true), 1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 5962u), vec3<u32>(0u, global3.c, 60685u))), vec2<i32>(reverseBits(~16936i), -1i), ~(~abs(global0.c)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_2), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2847f * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global3.c, 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(307f - arg_2.x) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(211f + arg_2.x)))), -478f)));
    global2 = countOneBits(countOneBits(-(~(vec4<i32>(global0.b.x, u_input.b.x, global0.b.x, 2147483647i) | vec4<i32>(2147483647i, -6223i, arg_0, global2.x)))));
    let var_2 = global4[_wgslsmith_index_u32(func_2(min((~u_input.c & ~0u) << (select(_wgslsmith_dot_vec3_u32(arg_1.zzz, vec3<u32>(arg_1.x, global3.c, 1u)), 11789u, any(vec4<bool>(var_0.a.x, false, true, var_0.a.x))) % 32u), var_0.c)), 29u)];
    let var_3 = arg_2;
    return Struct_1(var_2.b, -(~(vec3<i32>(-1i) * -vec3<i32>(var_2.b.x, -12248i, global2.x))), 36555u, select(!global3.d, select(!(!global3.d), vec4<bool>(!global0.a.x, true, global1[_wgslsmith_index_u32(99845u, 15u)] == 277f, false), any(!vec2<bool>(false, var_2.a.x))), true));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = ((firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, global2.x, u_input.b.x, 0i), vec4<i32>(arg_1.b.x, 1i, 1i, arg_2.b.x), vec4<i32>(global2.x, -2147483647i, 1i, u_input.a.x))) << (u_input.e % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(~(~vec4<i32>(global0.b.x, arg_1.a.x, global2.x, arg_1.b.x)), vec4<i32>(i32(-1i) * -3670i, arg_1.b.x | global3.a.x, global0.b.x, firstLeadingBit(0i)))) >> ((abs(countOneBits(reverseBits(vec4<u32>(u_input.e.x, arg_0.x, 4294967295u, arg_0.x)))) << (vec4<u32>(global0.c, 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c, arg_1.c, u_input.e.x, arg_0.x), u_input.e), arg_0.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_0 = vec3<u32>(~(103199u & ~(~arg_0.x)), ~global0.c, _wgslsmith_mult_u32(abs(func_2(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(arg_0.x, 0u, 1774u, 0u)))), ~_wgslsmith_dot_vec3_u32(min(u_input.e.zyz, vec3<u32>(global0.c, 57774u, arg_1.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(3240u, u_input.e.x, 67263u), arg_0))));
    let var_1 = select(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, u_input.a.x), _wgslsmith_add_i32(-(i32(-1i) * -1i), abs(u_input.b.x))), 1i, all(vec2<bool>(!global3.d.x, arg_2.d.x)));
    global3 = func_4(u_input.b.x, vec4<u32>(arg_1.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 48060u), ~arg_0.xy) & _wgslsmith_mod_u32(arg_1.c, global3.c), var_0.x, abs(min(_wgslsmith_dot_vec3_u32(arg_0, arg_0), arg_1.c))), vec4<f32>(-335f, _wgslsmith_f_op_f32(round(-619f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 15u)] * -578f) * _wgslsmith_f_op_f32(trunc(-420f))) - global1[_wgslsmith_index_u32(~u_input.e.x, 15u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f * global1[_wgslsmith_index_u32(u_input.d, 15u)])))));
    var var_2 = func_4(max(_wgslsmith_sub_i32(-2147483647i, arg_2.a.x), i32(-1i) * -13539i), ~abs(vec4<u32>(46126u, 36335u, 4294967295u, arg_1.c) << ((vec4<u32>(u_input.e.x, 0u, global0.c, 1u) >> (vec4<u32>(0u, var_0.x, 25952u, arg_1.c) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(54575u, 15u)]), _wgslsmith_f_op_f32(max(-1270f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 15u)]))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(257f, -251f)) + _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(global0.c, 15u)])) - global1[_wgslsmith_index_u32(firstLeadingBit(max(global3.c, 48430u)), 15u)])));
    return arg_2;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> f32 {
    global3 = func_5(~(~u_input.e.zwz ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global0.c, u_input.e.x, arg_0.d.c), u_input.e.ywx)), func_4(-_wgslsmith_div_i32(~(-1i), -3965i), _wgslsmith_mult_vec4_u32(vec4<u32>(func_2(u_input.d), global0.c, global0.c, ~30385u), abs(~vec4<u32>(global0.c, u_input.c, 0u, 4294967295u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-758f, 446f, -938f, arg_0.a), vec4<f32>(arg_0.a, 975f, 677f, -1242f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 201f, -695f, global1[_wgslsmith_index_u32(global0.c, 15u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(389f, 1392f, arg_0.a, -404f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 15u)], 1039f, -436f, arg_0.a), global3.d.x)))))), Struct_1(_wgslsmith_add_vec2_i32(func_4(arg_0.d.b.x, vec4<u32>(4294967295u, 22759u, 1u, global3.c) & u_input.e, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-874f, arg_0.a, global1[_wgslsmith_index_u32(u_input.d, 15u)], 1696f), vec4<f32>(global1[_wgslsmith_index_u32(arg_0.e, 15u)], -2477f, -1471f, -1000f)))).a, min(u_input.b << (vec2<u32>(global0.c, 0u) % vec2<u32>(32u)), -vec2<i32>(-1i, global0.b.x))), vec3<i32>(global2.x, -global0.b.x, global0.b.x), _wgslsmith_div_u32(~arg_0.e, reverseBits(global0.c)) ^ ~(~global3.c), select(vec4<bool>(true, global3.d.x, !arg_0.d.a.x, true), vec4<bool>(global0.a.x && global0.a.x, false, !global0.a.x, all(global3.d)), global3.c > ~global0.c)));
    global1 = array<f32, 15>();
    var var_0 = global3.d.x;
    var var_1 = arg_0;
    var_0 = all(vec2<bool>(true, false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(156f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a + global1[_wgslsmith_index_u32(global0.c, 15u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(_wgslsmith_mult_vec2_i32(-((global0.b << (vec2<u32>(0u, 4477u) % vec2<u32>(32u))) & _wgslsmith_div_vec2_i32(global0.b, global0.b)), vec2<i32>(global3.a.x, 1i)), _wgslsmith_div_vec3_i32(global3.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(6123i, global0.b.x, global0.b.x), global2.zwy, vec3<i32>(u_input.b.x, reverseBits(2147483647i), firstTrailingBit(22604i)))), ~0u >> (1u % 32u), select(global3.d, vec4<bool>(global3.d.x, all(!global0.a), true, ~(-6964i) < global3.a.x), vec4<bool>(select(global0.a.x, true, any(global3.d.yyy)), true, global3.d.x, _wgslsmith_f_op_f32(-1105f + global1[_wgslsmith_index_u32(1u, 15u)]) <= _wgslsmith_f_op_f32(f32(-1f) * -1025f))));
    var var_0 = firstTrailingBit(global0.c) == ~_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.e), u_input.e);
    let var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1727f, global1[_wgslsmith_index_u32(global3.c, 15u)]), vec2<f32>(1388f, 1635f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(407f, u_input.e.xw, true, global4[_wgslsmith_index_u32(global0.c, 29u)], u_input.d), vec2<bool>(global3.d.x, false))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 15u)]))))));
    var_0 = !global0.a.x;
    global1 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.a, global0.b), global1[_wgslsmith_index_u32(23242u, 15u)], u_input.b, _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(global0.c, 52400u)), ~(-vec2<i32>(0i, 743i) | _wgslsmith_mod_vec2_i32(global0.b >> (vec2<u32>(6724u, u_input.c) % vec2<u32>(32u)), global3.a)));
}

