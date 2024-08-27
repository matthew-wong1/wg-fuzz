struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 2147483647i, 35028i, -22282i);

var<private> global1: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec2<f32> {
    let var_0 = true;
    return _wgslsmith_f_op_vec2_f32(sign(global1.a.c));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = ~_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.a, 0u, 31306u), vec3<u32>(24536u, 48492u, global1.a.a)) >> (min(vec3<u32>(arg_0.a.a, global1.a.a, global1.a.a) << (vec3<u32>(4294967295u, 54048u, 16935u) % vec3<u32>(32u)), abs(vec3<u32>(4300u, 4294967295u, 66608u))) % vec3<u32>(32u)), vec3<u32>(~global1.a.a, arg_0.a.a, arg_0.a.a));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_div_u32(~var_0.x, global1.a.a), arg_0.a.b, vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -934f))), arg_0.a.c.x), _wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, 1i), arg_0.a.d), vec3<i32>(_wgslsmith_div_i32(-6612i, 62506i), ~24844i, u_input.a)), 1i), vec3<bool>(true, true, !(false && !arg_0.d.x)), select(any(global1.d), all(!select(vec3<bool>(false, global1.c, arg_0.d.x), global1.b, true)), global1.e.x), vec4<bool>(global1.a.c.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c.x) * _wgslsmith_f_op_f32(431f + -1053f)), false, true, (i32(-1i) * -20836i) > ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.d.x, 0i), vec2<i32>(-23380i, -1i))), !select(select(vec3<bool>(arg_0.b.x, false, true), vec3<bool>(arg_0.e.x, true, global1.e.x), -18085i < global1.a.d.x), vec3<bool>(arg_0.b.x, !arg_0.d.x, any(arg_0.e.yz)), select(select(arg_0.e, arg_0.d.zwy, arg_0.c), arg_0.d.wwx, arg_0.e.x)));
    var_1 = Struct_3(global1.a, arg_0.e, (true || !(!global1.b.x)) && global1.d.x, select(arg_0.d, var_1.d, !(!select(false, global1.d.x, false))), vec3<bool>(false, var_1.b.x, !global1.d.x));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.c.x, -378f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(363f, 882f)) - vec2<f32>(811f, var_1.a.c.x))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(abs(4294967295u), ~global0.yx, _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(39297u, global0.zx, vec2<f32>(-288f, -604f), global1.a.d, -1i), global1.b, !arg_0, global1.d, select(global1.b, global1.e, vec3<bool>(global1.c, global1.d.x, true))))), ~(~firstLeadingBit(global1.a.d)), ~_wgslsmith_sub_i32(global0.x, ~arg_1)), global1.a);
    let var_1 = Struct_4(var_0.b, var_0, Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global1.a.a, var_0.a.a)), vec2<u32>(arg_3, 0u)), firstLeadingBit(-var_0.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c.x, -483f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(443f, 1792f)))), vec3<i32>(_wgslsmith_mod_i32(global1.a.b.x, u_input.a), abs(u_input.a), var_0.b.d.x << (1u % 32u)), -45250i), Struct_1(global1.a.a, vec2<i32>(arg_1, 29968i) << (~vec2<u32>(1u, var_0.b.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a.c - vec2<f32>(-1000f, arg_2.x)))), -(global1.a.d >> (vec3<u32>(0u, var_0.b.a, 4294967295u) % vec3<u32>(32u))), 13404i)));
    global0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -abs(vec4<i32>(20878i, global1.a.e, global0.x, arg_1)), vec4<i32>(-1i, countOneBits(8373i) ^ _wgslsmith_mod_i32(arg_1, -9223i), _wgslsmith_sub_i32(5984i, reverseBits(-50035i)), i32(-1i) * -var_1.c.a.b.x), max(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 80904i, 499i, arg_1), vec4<i32>(var_0.b.e, var_1.a.e, var_0.a.d.x, arg_1)), vec4<i32>(-2147483647i, global1.a.d.x, 1i, -2147483647i) << (vec4<u32>(94566u, var_1.b.b.a, arg_3, 15692u) % vec4<u32>(32u)), !arg_0), vec4<i32>(-46881i, -13724i, global0.x, var_0.b.e | arg_1)));
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.c.x, arg_2.x, 1983f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-833f, arg_2.x, global1.a.c.x)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(min(-871f, -137f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(var_0.a, global1.b, true, global1.d, global1.b))).x - arg_2.x), _wgslsmith_div_f32(-1897f, 335f)), false);
    let var_3 = var_1.a.d.zy;
    return Struct_2(var_0.b, Struct_1(max(561u, 44711u), vec2<i32>(~u_input.a & max(-35974i, global0.x), countOneBits(2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), -963f), global1.a.d, global0.x | -13155i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(all(global1.b), -_wgslsmith_dot_vec4_i32(~(-vec4<i32>(global0.x, -2147483647i, global0.x, global1.a.b.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(-29466i, u_input.a, 1120i, -12516i), vec4<i32>(global1.a.e, global0.x, -27163i, -1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.a.c, _wgslsmith_f_op_vec2_f32(func_1())))), _wgslsmith_div_u32(global1.a.a ^ ~min(4294967295u, global1.a.a), global1.a.a));
    let var_1 = global1.a.e & ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a.d.x, 1i, 15840i), vec3<i32>(19468i, var_0.a.d.x, global0.x), vec3<i32>(-24958i, u_input.a, 0i)), ~global0.www), global0.xxy & vec3<i32>(global0.x, u_input.a, 9196i));
    var_0 = func_2(true, abs(global1.a.d.x), vec2<f32>(182f, var_0.a.c.x), 44174u);
    var var_2 = vec4<u32>(abs(max(~var_0.a.a, ~1u) << (var_0.a.a % 32u)), ~_wgslsmith_sub_u32(~(~global1.a.a), ~(~24841u)), _wgslsmith_dot_vec2_u32(vec2<u32>(34058u, _wgslsmith_clamp_u32(countOneBits(var_0.a.a), ~4294967295u, min(50834u, global1.a.a))), ~vec2<u32>(72218u, 10017u)), global1.a.a);
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.c.x, global1.a.c.x, -669f))))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(var_0.a.c.x, _wgslsmith_f_op_f32(-global1.a.c.x)), global1.a.c.x, 1215f))), true);
    let var_4 = Struct_2(global1.a, var_0.b);
    var var_5 = _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(11553i, global1.a.d.x), countOneBits(global0.x), _wgslsmith_add_i32(u_input.a, var_0.a.e), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -10103i, var_1), vec3<i32>(global1.a.d.x, var_1, -2147483647i))) & firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, var_0.a.d.x, -2147483647i, 3413i), vec4<i32>(global1.a.b.x, -27574i, var_0.b.b.x, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(18751i, -2147483647i, 37725i, 0i), vec4<i32>(-21785i, u_input.a, var_1, 19555i)))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -32406i, global0.x, u_input.a), vec4<i32>(var_4.b.e, var_1, 2147483647i, global1.a.e))), vec4<i32>(8784i, reverseBits(-1i), 1i, -1i) & select(~vec4<i32>(-50144i, -1i, 2147483647i, -13908i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.d.x, -2147483647i, global1.a.b.x, -1i), vec4<i32>(global1.a.e, global0.x, 56188i, u_input.a), vec4<i32>(19168i, -1i, -64805i, 77979i)), global1.c), abs(vec4<i32>(firstLeadingBit(2147483647i), -38665i, -u_input.a, abs(1i)))));
    var var_6 = vec2<bool>(true, false);
    let var_7 = Struct_1(4294967295u, vec2<i32>(18780i, var_4.a.e), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_4.b.c * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-723f, var_0.a.c.x)))))), ~max((global1.a.d >> (var_2.zwy % vec3<u32>(32u))) << (select(var_2.wwz, vec3<u32>(var_2.x, var_0.b.a, 0u), false) % vec3<u32>(32u)), (var_0.b.d & var_0.a.d) | var_4.a.d), _wgslsmith_dot_vec4_i32(max(-vec4<i32>(u_input.a, 11854i, global0.x, u_input.a), abs(vec4<i32>(-32243i, u_input.a, 1i, global1.a.b.x))) & vec4<i32>(_wgslsmith_div_i32(u_input.a, 2147483647i), var_4.a.e, min(-12634i, 0i), ~var_0.b.d.x), vec4<i32>(11271i, -50019i, u_input.a, ~select(u_input.a, -2147483647i, global1.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(0u, 42407u, 1u, select(var_2.x, var_4.a.a, var_6.x) ^ 1u)), _wgslsmith_clamp_u32(select(var_0.b.a, 137477u, global1.c), ~var_0.b.a, select(global1.a.a, 25430u, any(vec3<bool>(false, false, var_3.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c.x, var_7.c.x)));
}

