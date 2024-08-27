struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(0u, 66306u, 0u, 1u), vec4<u32>(14183u, 52848u, 55038u, 1u), vec4<u32>(4294967295u, 72169u, 9173u, 4294967295u), vec4<u32>(0u, 24456u, 1u, 4294967295u), vec4<u32>(33938u, 31561u, 0u, 26226u), vec4<u32>(0u, 0u, 2713u, 1u), vec4<u32>(46263u, 55523u, 38173u, 1u), vec4<u32>(103382u, 21370u, 1u, 39563u), vec4<u32>(0u, 59631u, 47548u, 4294967295u), vec4<u32>(107878u, 56084u, 4294967295u, 9319u), vec4<u32>(0u, 19105u, 4294967295u, 0u), vec4<u32>(0u, 45182u, 4294967295u, 92744u), vec4<u32>(2034u, 85574u, 10141u, 9890u), vec4<u32>(67915u, 1u, 4294967295u, 4294967295u), vec4<u32>(69222u, 65012u, 22021u, 0u), vec4<u32>(21420u, 102505u, 54195u, 27015u), vec4<u32>(0u, 36464u, 1u, 4294967295u), vec4<u32>(0u, 10542u, 4294967295u, 63358u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(0u, 7771u, 0u, 30439u), vec4<u32>(41933u, 37925u, 1u, 108831u), vec4<u32>(4294967295u, 0u, 4294967295u, 38765u), vec4<u32>(28264u, 1u, 4294967295u, 32771u), vec4<u32>(1u, 57795u, 97404u, 45070u), vec4<u32>(54054u, 0u, 4294967295u, 4294967295u), vec4<u32>(3383u, 1u, 0u, 1u));

var<private> global1: array<vec3<bool>, 4>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<bool>(true, false, true, true), 0i, vec2<bool>(true, false), vec2<f32>(-1164f, -1147f), 1u), false);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec2<i32>) -> f32 {
    global1 = array<vec3<bool>, 4>();
    var var_0 = vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(select(select(vec2<u32>(1u, u_input.a), vec2<u32>(78224u, 29772u), false) | abs(vec2<u32>(21643u, 0u)), ~vec2<u32>(1u, 92003u), true == (arg_0 || arg_0)), vec2<u32>(0u, 397u >> (arg_2.a.e % 32u)) << (~select(vec2<u32>(arg_2.a.e, 0u), vec2<u32>(u_input.a, 1u), arg_2.a.c) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.d.x, arg_2.a.d.x, 626f, -386f) * vec4<f32>(1312f, 485f, arg_2.a.d.x, global2.a.d.x))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1828f * 2240f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(319f - -126f) * 1371f), -665f, _wgslsmith_div_f32(-1420f, 909f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.d.x, global2.a.d.x, -1000f, arg_2.a.d.x), vec4<f32>(-189f, arg_2.a.d.x, arg_2.a.d.x, arg_2.a.d.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(611f, global2.a.d.x, 1339f, global2.a.d.x) + vec4<f32>(-1000f, arg_2.a.d.x, global2.a.d.x, global2.a.d.x)))), any(select(arg_2.a.a, arg_2.a.a, global2.a.a)))));
    let var_2 = Struct_1(!vec4<bool>(arg_0, all(vec3<bool>(global2.b, arg_2.b, false)), true, arg_0), arg_2.a.b, arg_2.a.a.ww, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.a.d.x, 1620f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.d.x, arg_2.a.d.x))))), var_1.xz, global2.a.c)), min(_wgslsmith_mod_u32(global2.a.e, _wgslsmith_div_u32(62578u, 1u)), max(min(firstTrailingBit(arg_2.a.e), abs(global2.a.e)), 109776u)));
    let var_3 = vec4<i32>(abs(_wgslsmith_sub_i32(arg_1.x >> (0u % 32u), max(-2147483647i, ~arg_3.x))), arg_2.a.b, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-984i, arg_1.x & arg_1.x, ~1i, ~global2.a.b), vec4<i32>(_wgslsmith_clamp_i32(var_2.b, arg_3.x, 2147483647i), reverseBits(var_2.b), i32(-1i) * -30465i, i32(-1i) * -33980i), !all(arg_2.a.c)), max(abs(vec4<i32>(6051i, arg_1.x, -54868i, arg_3.x)), ~vec4<i32>(0i, -90241i, global2.a.b, global2.a.b)) | min(~vec4<i32>(var_2.b, arg_2.a.b, 2147483647i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_2.a.b, global2.a.b, arg_3.x), vec4<i32>(0i, arg_2.a.b, 1i, var_2.b)))), select(~_wgslsmith_dot_vec2_i32(-vec2<i32>(global2.a.b, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, -13742i), arg_3)), _wgslsmith_sub_i32(firstLeadingBit(reverseBits(2147483647i)), arg_1.x), !any(vec3<bool>(false, var_2.a.x, arg_0))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1433f);
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2556f, global2.a.d.x), global2.a.d, global2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.a.d, vec2<f32>(global2.a.d.x, -731f), false)))), vec2<f32>(_wgslsmith_f_op_f32(func_3(all(vec2<bool>(global2.a.c.x, false)), vec3<i32>(global2.a.b, 12192i, global2.a.b), Struct_3(Struct_1(vec4<bool>(global2.b, true, false, false), global2.a.b, vec2<bool>(global2.a.c.x, false), global2.a.d, global2.a.e), global2.a.a.x), vec2<i32>(27903i, global2.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, vec3<i32>(global2.a.b, -11726i, global2.a.b), Struct_3(Struct_1(global2.a.a, 0i, vec2<bool>(global2.b, global2.b), vec2<f32>(920f, global2.a.d.x), 81532u), global2.a.c.x), vec2<i32>(-2147483647i, global2.a.b))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1478f, global2.a.d.x, false)), -278f) + global2.a.d) * global2.a.d));
    var var_1 = global2.a.d.x;
    var var_2 = Struct_2(select(vec2<u32>(~u_input.a, ~5669u) & min(vec2<u32>(global2.a.e, 4294967295u) ^ vec2<u32>(57962u, 4294967295u), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(36895u, 4294967295u) % vec2<u32>(32u))), vec2<u32>(firstTrailingBit(1u), 1u), select(vec2<bool>(true, true), global2.a.c, true)), global2.a.b, true);
    var var_3 = var_2.c;
    let var_4 = Struct_3(Struct_1(global2.a.a, countOneBits(_wgslsmith_clamp_i32(1i, global2.a.b << (global2.a.e % 32u), global2.a.b)), global2.a.c, _wgslsmith_f_op_vec2_f32(-global2.a.d), 34832u), global2.a.a.x);
    return global2.a.a.wzw;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(~(~(~arg_0 << (~abs(u_input.a) % 32u))), 4u)];
    var var_1 = all(!func_2());
    let var_2 = false;
    var var_3 = 1000f;
    var_3 = global2.a.d.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.d.x) * 631f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1431f, -193f)) - global2.a.d.x) - _wgslsmith_f_op_f32(516f * global2.a.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 1178f))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<bool>(all(!vec4<bool>(func_2().x, global2.b, !arg_1.x, arg_1.x)), all(func_2().yz), arg_0.a.a.x);
    let var_1 = abs(_wgslsmith_clamp_vec3_u32(~firstTrailingBit(vec3<u32>(59103u, arg_0.a.e, 45292u)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 1617u), vec3<u32>(u_input.a, arg_0.a.e, arg_0.a.e)), ~vec3<u32>(4294967295u, arg_0.a.e, u_input.a)) << (vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(7886u, 1u), ~1u, abs(arg_0.a.e)), global2.a.e, global2.a.e) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_clamp_vec2_i32(abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.a.b, 0i), vec2<i32>(arg_0.a.b, -1i), vec2<i32>(global2.a.b, global2.a.b))) & vec2<i32>(global2.a.b, firstLeadingBit(2147483647i >> (arg_0.a.e % 32u))), min(vec2<i32>(2147483647i, _wgslsmith_div_i32(-2147483647i, 2147483647i)) >> (vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_1.x), 1u) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global2.a.b), vec2<i32>(global2.a.b, 34135i)), min(vec2<i32>(-42918i, -19811i), vec2<i32>(40709i, 6817i)), firstTrailingBit(vec2<i32>(-23477i, global2.a.b)))), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(global2.a.b, global2.a.b), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.b, global2.a.b), vec2<i32>(global2.a.b, global2.a.b))) << (~vec2<u32>(u_input.a, ~9369u) % vec2<u32>(32u)));
    var var_3 = Struct_1(select(select(arg_0.a.a, select(!global2.a.a, vec4<bool>(arg_1.x, var_0.x, false, true), var_0.x && false), true), vec4<bool>(true, arg_2.x < -119f, false, true), var_0.x), global2.a.b, select(arg_0.a.a.xz, !(!arg_1.zy), true & arg_1.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, _wgslsmith_f_op_f32(global2.a.d.x + _wgslsmith_f_op_f32(arg_2.x - global2.a.d.x))))), reverseBits(_wgslsmith_add_u32(arg_0.a.e, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_1.x, 26u)] >> (global0[_wgslsmith_index_u32(arg_0.a.e, 26u)] % vec4<u32>(32u)), countOneBits(vec4<u32>(48704u, 0u, 35921u, 50083u))))));
    var var_4 = -vec3<i32>(arg_0.a.b, -9254i, 2147483647i);
    return Struct_1(!var_3.a, var_3.b, !vec2<bool>(arg_0.b, global2.a.c.x), vec2<f32>(-464f, _wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.d.x)) - _wgslsmith_f_op_f32(floor(var_3.d.x))))), arg_0.a.e << (_wgslsmith_mult_u32(~(0u >> (global2.a.e % 32u)), 4294967295u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(func_4(Struct_3(Struct_1(vec4<bool>(global2.b, false, true, true), ~(-2147483647i), !global2.a.c, vec2<f32>(589f, 2069f), _wgslsmith_sub_u32(35372u, 1u)), global2.b), select(vec3<bool>(global2.a.a.x & global2.b, any(vec2<bool>(global2.b, true)), false), !global1[_wgslsmith_index_u32(57678u, 4u)], all(global2.a.c) & false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(global2.a.e, vec4<f32>(global2.a.d.x, global2.a.d.x, -336f, global2.a.d.x))))))), global2.a.c.x);
    let var_0 = func_4(Struct_3(global2.a, -2147483647i < _wgslsmith_sub_i32(global2.a.b << (u_input.a % 32u), _wgslsmith_div_i32(global2.a.b, global2.a.b))), vec3<bool>(global2.a.a.x, false, select(global2.b, global2.a.c.x, true)), _wgslsmith_f_op_vec3_f32(func_1(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, global2.a.d.x, global2.a.d.x) + vec4<f32>(-749f, -774f, -499f, -181f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1951f, 121f, 131f, global2.a.d.x)))))).e;
    global2 = Struct_3(func_4(Struct_3(func_4(Struct_3(Struct_1(vec4<bool>(global2.a.c.x, global2.a.a.x, false, global2.b), global2.a.b, vec2<bool>(true, global2.b), vec2<f32>(-217f, global2.a.d.x), 4294967295u), false), global2.a.a.xwy, _wgslsmith_div_vec3_f32(vec3<f32>(-834f, -1000f, 704f), vec3<f32>(global2.a.d.x, global2.a.d.x, global2.a.d.x))), true), vec3<bool>(global2.a.a.x, select(func_4(Struct_3(Struct_1(vec4<bool>(global2.b, global2.a.c.x, global2.b, true), 5920i, global2.a.a.wy, global2.a.d, 4294967295u), global2.a.a.x), vec3<bool>(false, global2.b, global2.b), vec3<f32>(-694f, global2.a.d.x, -1600f)).a.x, global2.b, any(vec2<bool>(global2.a.a.x, true))), !global2.a.c.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(498f)), _wgslsmith_div_f32(global2.a.d.x, -1000f), -819f)))), true);
    var var_1 = Struct_3(global2.a, global2.b);
    var var_2 = global2.a.a;
    let var_3 = var_1.a.a;
    global1 = array<vec3<bool>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a.d.x, 1616f, global2.a.d.x, -1000f))))));
}

