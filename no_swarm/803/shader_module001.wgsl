struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<u32>(1u, 5775u), Struct_1(vec3<i32>(1i, -22967i, 1i))), 861f), Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<u32>(2630u, 11418u), Struct_1(vec3<i32>(373i, -1i, 58036i))), 502f), Struct_4(vec3<bool>(true, false, true), Struct_3(vec2<u32>(22001u, 0u), Struct_1(vec3<i32>(33564i, 0i, 0i))), 144f), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<u32>(38161u, 24859u), Struct_1(vec3<i32>(13277i, 1i, -2401i))), 340f), Struct_4(vec3<bool>(false, true, true), Struct_3(vec2<u32>(72562u, 1u), Struct_1(vec3<i32>(-1350i, 2147483647i, 0i))), -610f), Struct_4(vec3<bool>(false, false, false), Struct_3(vec2<u32>(29226u, 0u), Struct_1(vec3<i32>(i32(-2147483648), -1i, 0i))), -151f), Struct_4(vec3<bool>(false, true, true), Struct_3(vec2<u32>(39194u, 1u), Struct_1(vec3<i32>(-9474i, -96285i, -85156i))), -121f), Struct_4(vec3<bool>(true, false, false), Struct_3(vec2<u32>(0u, 49903u), Struct_1(vec3<i32>(-1i, 24660i, 0i))), 1000f), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<u32>(32060u, 1u), Struct_1(vec3<i32>(23681i, 0i, 2147483647i))), 343f), Struct_4(vec3<bool>(true, false, false), Struct_3(vec2<u32>(14566u, 116515u), Struct_1(vec3<i32>(-1i, -1i, 0i))), -678f), Struct_4(vec3<bool>(false, true, false), Struct_3(vec2<u32>(1u, 12851u), Struct_1(vec3<i32>(i32(-2147483648), -31574i, -1i))), -615f), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<u32>(1u, 8878u), Struct_1(vec3<i32>(2147483647i, 2147483647i, 11415i))), 1000f), Struct_4(vec3<bool>(true, false, false), Struct_3(vec2<u32>(1u, 1u), Struct_1(vec3<i32>(-13730i, -1099i, 30000i))), -1029f), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<u32>(0u, 19169u), Struct_1(vec3<i32>(-10183i, 33748i, 1i))), -575f), Struct_4(vec3<bool>(false, true, true), Struct_3(vec2<u32>(36887u, 1u), Struct_1(vec3<i32>(14404i, 44304i, 22972i))), -602f), Struct_4(vec3<bool>(true, true, false), Struct_3(vec2<u32>(4625u, 25817u), Struct_1(vec3<i32>(0i, 2147483647i, i32(-2147483648)))), -436f), Struct_4(vec3<bool>(false, false, true), Struct_3(vec2<u32>(1u, 4294967295u), Struct_1(vec3<i32>(52250i, 3566i, -33805i))), 175f), Struct_4(vec3<bool>(false, false, true), Struct_3(vec2<u32>(40898u, 65446u), Struct_1(vec3<i32>(41042i, 29330i, 21637i))), 587f), Struct_4(vec3<bool>(false, true, true), Struct_3(vec2<u32>(51492u, 0u), Struct_1(vec3<i32>(-32070i, 20353i, 0i))), 240f), Struct_4(vec3<bool>(true, true, true), Struct_3(vec2<u32>(0u, 4294967295u), Struct_1(vec3<i32>(-1i, -33396i, i32(-2147483648)))), 613f));

var<private> global1: array<vec3<u32>, 10>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    let var_0 = all(vec2<bool>(true, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))));
    let var_1 = select(select(select(select(!vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), any(vec2<bool>(var_0, var_0))), select(vec2<bool>(true, var_0), !vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, true))), !(!vec2<bool>(var_0, true))), !select(vec2<bool>(var_0, var_0), !vec2<bool>(true, var_0), var_0), true), !vec2<bool>(any(!vec2<bool>(var_0, var_0)), any(!vec4<bool>(true, var_0, true, var_0))), var_0);
    let var_2 = _wgslsmith_div_vec2_u32(~abs(vec2<u32>(abs(u_input.a), u_input.a)), _wgslsmith_add_vec2_u32(max(countOneBits(vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(vec2<u32>(u_input.a, u_input.a))) | vec2<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(57630u, u_input.a))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(104857u, 36920u)), firstTrailingBit(vec2<u32>(4294967295u, u_input.a))), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))))));
    var var_3 = var_0;
    var var_4 = Struct_2(-1i, u_input.a | var_2.x, Struct_1(select(countOneBits(u_input.d.zww), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, arg_0.x, 2147483647i), select(vec3<i32>(u_input.b, -21902i, -1i), vec3<i32>(u_input.d.x, -24792i, arg_0.x), vec3<bool>(false, var_1.x, var_1.x))), false)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, -655f, var_1.x)))), -1084f));
}

fn func_2() -> Struct_5 {
    var var_0 = reverseBits(~12129u);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)));
    global0 = array<Struct_4, 20>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2905f, -791f), vec2<f32>(-620f, 696f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(var_1.x, -745f), _wgslsmith_f_op_f32(step(-370f, -836f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(437f, 125f), vec2<f32>(var_1.x, -127f)))))), vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.d.xyy << (vec3<u32>(58764u, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-280f * var_1.x))), 2266f)))));
    return Struct_5(~vec4<u32>(27403u, ~u_input.a, _wgslsmith_clamp_u32(63772u, 4294967295u, 1u), max(4294967295u, 46116u)) & _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 7063u))), Struct_1(u_input.d.xyw), !(!all(vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(~17830u, 20u)]);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_2) -> Struct_3 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1425f, -605f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.d.c, -2378f)), _wgslsmith_div_f32(arg_1.d.c, arg_1.d.c), _wgslsmith_f_op_f32(arg_1.d.c + 225f)), vec3<f32>(arg_1.d.c, _wgslsmith_f_op_f32(f32(-1f) * -2005f), _wgslsmith_f_op_f32(f32(-1f) * -1729f))), select(arg_1.c, arg_1.d.a.x, all(vec2<bool>(arg_1.d.a.x, true)))))));
    let var_2 = Struct_2((i32(-1i) * -47891i) ^ _wgslsmith_div_i32(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, arg_0.a.x, -10592i), vec4<i32>(-2147483647i, arg_2.a, 2147483647i, arg_0.a.x))), countOneBits(~4294967295u), arg_2.c);
    var var_3 = u_input.d;
    var var_4 = ~(~(~arg_1.a.zyy));
    return Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.d.b.a.x, var_0.b), ~_wgslsmith_mult_vec2_u32(~var_4.yy, _wgslsmith_clamp_vec2_u32(arg_1.d.b.a, arg_1.d.b.a, arg_1.a.zy)), var_4.yy), arg_1.b);
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = func_4(arg_0.b.b, func_2(), Struct_2(-13449i, 1903u, func_2().b));
    var var_1 = ~(~_wgslsmith_sub_u32(var_0.a.x, 29401u));
    var_1 = 20846u;
    global1 = array<vec3<u32>, 10>();
    var_0 = arg_0.b;
    return min(firstLeadingBit(u_input.d.x), -1i);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    let var_0 = vec3<bool>(!arg_0, !arg_0, ~(~u_input.b) < (u_input.b | 45663i));
    var var_1 = arg_1;
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(u_input.b, arg_2.a.x), _wgslsmith_sub_i32(arg_3.x, ~u_input.d.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-var_1.c.a.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.c.a.x, 1i, 0i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_1.a, arg_2.a.x, u_input.b), vec4<i32>(arg_1.c.a.x, u_input.d.x, arg_3.x, -1i)))), ~(var_1.a | var_1.a)), -arg_2.a.x);
    var var_3 = Struct_5(~abs(~reverseBits(vec4<u32>(var_1.b, var_1.b, var_1.b, 4394u))), Struct_1(select(reverseBits(~var_2.yxy), vec3<i32>(~0i, var_2.x, ~arg_3.x), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, arg_0, false))))), any(vec2<bool>(arg_0, true)) | !any(!vec2<bool>(var_0.x, false)), func_2().d);
    global0 = array<Struct_4, 20>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -394f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.d.zxx);
    let var_1 = vec4<f32>(-926f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_clamp_i32(0i, var_0.a.x, 2147483647i) >= func_1(Struct_4(vec3<bool>(true, false, true), Struct_3(vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<i32>(-3993i, u_input.b, 18694i))), 1050f), -1000f, var_0.a.x), Struct_2(firstLeadingBit(u_input.b), u_input.a ^ 0u, Struct_1(vec3<i32>(u_input.b, var_0.a.x, u_input.b))), func_4(Struct_1(u_input.d.wyy), func_2(), Struct_2(-32774i, u_input.a, Struct_1(vec3<i32>(u_input.b, -443i, 7803i)))).b, u_input.d.yx << (select(vec2<u32>(37045u, u_input.a), vec2<u32>(38879u, 42249u), vec2<bool>(true, false)) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f + -214f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(174f)) * _wgslsmith_f_op_f32(-277f * -633f))))), _wgslsmith_f_op_f32(-1740f + _wgslsmith_f_op_f32(496f * _wgslsmith_f_op_f32(f32(-1f) * -416f))));
    global1 = array<vec3<u32>, 10>();
    global1 = array<vec3<u32>, 10>();
    let var_2 = !(!(!func_2().c));
    var_0 = Struct_1(-vec3<i32>(-33740i, var_0.a.x, u_input.d.x) >> (_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(u_input.a, u_input.a)), 10u)], _wgslsmith_mult_vec3_u32(abs(global1[_wgslsmith_index_u32(1u, 10u)]), vec3<u32>(96905u, u_input.a, u_input.a))) % vec3<u32>(32u)));
    let var_3 = 1051f;
    var var_4 = ~(~firstTrailingBit(~vec3<u32>(7704u, 0u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec2_i32(~(-var_0.a.zz), vec2<i32>(u_input.c, var_0.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(32829i, -41028i), vec2<i32>(u_input.b, var_0.a.x) >> ((vec2<u32>(var_4.x, 1u) | var_4.xz) % vec2<u32>(32u))), true), -_wgslsmith_div_i32(~var_0.a.x, -reverseBits(var_0.a.x)));
}

