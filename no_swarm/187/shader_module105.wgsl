struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(4294967295u, 34967u, 39208u, 4294967295u, 51405u, 19816u, 4294967295u, 4294967295u, 10893u, 27258u, 24959u, 90054u);

var<private> global1: bool;

var<private> global2: vec2<i32> = vec2<i32>(-13268i, i32(-2147483648));

var<private> global3: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = ~u_input.b;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(673f, 466f, -249f) + vec3<f32>(1000f, -235f, 198f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1242f, -1227f, 1100f) - vec3<f32>(415f, 188f, 826f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(219f, -1001f, 921f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(704f, -1141f, 1250f) - vec3<f32>(-1749f, -180f, 3075f)), true))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(3020f, 649f, -1250f)))))))));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec2<f32> {
    let var_0 = Struct_5(vec2<u32>(_wgslsmith_div_u32(arg_0, ~u_input.b), 4294967295u), vec3<bool>(arg_1 > arg_1, true, true), vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !all(vec3<bool>(true, true, true))));
    global0 = array<u32, 12>();
    var var_1 = func_1(!select(vec3<bool>(true, var_0.c.x | true, all(vec2<bool>(true, var_0.b.x))), var_0.b, vec3<bool>(true, !var_0.c.x, var_0.b.x)), var_0.b);
    var var_2 = 36817i;
    global1 = true;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1598f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(min(-778f, _wgslsmith_f_op_f32(sign(-2134f))))))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4) -> Struct_5 {
    var var_0 = arg_1.a;
    global1 = arg_0.b.x;
    var var_1 = Struct_3(_wgslsmith_div_vec2_f32(arg_1.a.c.a.a.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.a.x, -1078f), _wgslsmith_f_op_vec2_f32(arg_1.a.d.a.yz - var_0.c.a.a.zx)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(var_0.d.a.xx)))))), 2147483647i, var_0.c, func_1(vec3<bool>(!all(arg_0.c), !(!arg_0.b.x), any(vec2<bool>(true, arg_0.b.x))), arg_0.b));
    let var_2 = reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(4294967295u, 28843u, 61932u, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 10419u, 1368u), vec4<u32>(arg_0.a.x, u_input.a, 7935u, u_input.b))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 4294967295u, global0[_wgslsmith_index_u32(u_input.b, 12u)], 17361u), vec4<u32>(global0[_wgslsmith_index_u32(10985u, 12u)], u_input.b, 125015u, arg_0.a.x))), min(~(~vec4<u32>(arg_0.a.x, 4294967295u, u_input.b, 1614u)), ~abs(vec4<u32>(u_input.c, 14960u, 11741u, 110572u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -618f), arg_1.a.a.x), _wgslsmith_f_op_vec2_f32(func_3(~(~22434u), ~(-1212i))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.c.a.a.x)), _wgslsmith_f_op_f32(var_1.d.a.x * arg_1.a.c.b)) - arg_1.a.a) * vec2<f32>(_wgslsmith_f_op_f32(select(var_0.c.d.a.x, _wgslsmith_f_op_f32(max(var_0.a.x, -2221f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_1.a.x)))), false));
    return Struct_5(max(firstTrailingBit(vec2<u32>(countOneBits(var_2.x), arg_0.a.x)), ~arg_0.a ^ _wgslsmith_mod_vec2_u32(arg_0.a, arg_0.a)), !select(!vec3<bool>(true, false, arg_0.b.x), arg_0.b, all(select(arg_0.b.yx, vec2<bool>(true, false), vec2<bool>(arg_0.c.x, arg_0.b.x)))), !(!vec2<bool>(arg_0.c.x, -1i < var_0.c.c.x)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_add_u32(0u, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.a, vec2<u32>(max(arg_0.a.x, 14083u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(72716u, 12u)], 0u, 7762u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.x, 12u)], 12u)], 56415u, 42654u, 0u)))), 12u)]);
    global3 = true;
    var var_1 = arg_1.a.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x)));
    global2 = arg_1.a.c.c;
    return Struct_4(Struct_3(var_1.a.yx, -arg_1.a.b, Struct_2(arg_1.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1000f)), arg_1.a.c.b), countOneBits(arg_1.a.c.c), arg_1.a.c.d), arg_1.a.d));
}

fn func_5(arg_0: Struct_4, arg_1: bool) -> Struct_2 {
    global2 = _wgslsmith_sub_vec2_i32(reverseBits(firstLeadingBit(-arg_0.a.c.c)) << (abs(vec2<u32>(~1u, 73903u)) % vec2<u32>(32u)), arg_0.a.c.c);
    global1 = any(vec4<bool>(true, firstLeadingBit(-global2.x) != -47921i, -_wgslsmith_clamp_i32(arg_0.a.b, global2.x, -1i) < 2147483647i, !arg_1));
    var var_0 = arg_0.a.c.c.x;
    var var_1 = true;
    global0 = array<u32, 12>();
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-func_1(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, false, arg_1), false), !vec3<bool>(arg_1, false, arg_1)).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d.a.x * arg_0.a.a.x))), abs(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.a.b, 12168i)), _wgslsmith_mod_vec2_i32(-arg_0.a.c.c, firstLeadingBit(vec2<i32>(global2.x, arg_0.a.c.c.x))))), func_4(func_2(Struct_5(vec2<u32>(u_input.b, 57453u) | vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 12u)]), !vec3<bool>(arg_1, true, arg_1), func_2(Struct_5(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], 0u), vec3<bool>(arg_1, arg_1, arg_1), vec2<bool>(true, arg_1)), Struct_4(arg_0.a)).c), arg_0), func_4(func_2(Struct_5(vec2<u32>(62503u, global0[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<bool>(false, arg_1, arg_1), vec2<bool>(false, arg_1)), Struct_4(Struct_3(vec2<f32>(-348f, 522f), 62101i, arg_0.a.c, arg_0.a.d))), func_4(Struct_5(vec2<u32>(global0[_wgslsmith_index_u32(8842u, 12u)], 23050u), vec3<bool>(arg_1, arg_1, arg_1), vec2<bool>(false, true)), arg_0))).a.c.d);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    global3 = true;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x - -1000f)) >= -260f;
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.a.a.x))));
    var var_1 = _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(u_input.b, 12u)]);
    global1 = any(arg_0);
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(func_1(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true)), _wgslsmith_f_op_f32(func_6(vec4<bool>(true, !(u_input.a != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21627u, 12u)], 12u)]), true, false != select(false, true, false)), func_5(func_4(func_2(Struct_5(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(15086u, 12u)]), vec3<bool>(false, false, false), vec2<bool>(false, true)), Struct_4(Struct_3(vec2<f32>(-2634f, -461f), global2.x, Struct_2(Struct_1(vec3<f32>(-1000f, -828f, -703f)), -437f, vec2<i32>(global2.x, global2.x), Struct_1(vec3<f32>(-496f, -571f, 838f))), Struct_1(vec3<f32>(506f, -1578f, -269f))))), Struct_4(Struct_3(vec2<f32>(-1118f, -1633f), global2.x, Struct_2(Struct_1(vec3<f32>(699f, 600f, -302f)), 1272f, vec2<i32>(-14959i, global2.x), Struct_1(vec3<f32>(924f, 793f, 1875f))), Struct_1(vec3<f32>(718f, -2585f, 2330f))))), !any(vec4<bool>(true, true, true, false))))), vec2<i32>(-global2.x, global2.x), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-168f, -2412f, -2142f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(702f, -1021f, -2279f) - vec3<f32>(698f, -1414f, 415f))), vec3<f32>(1f, 1f, 1f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))))));
    global2 = _wgslsmith_clamp_vec2_i32(~(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(25859i, global2.x, -1672i), vec3<i32>(global2.x, -31718i, 0i)), -20145i) & var_1.c), vec2<i32>(var_1.c.x, 1756i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c.x, global2.x) >> (select(vec2<u32>(84202u, 78884u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], 15259u), vec2<bool>(true, true)) % vec2<u32>(32u)), var_1.c & ~vec2<i32>(-2147483647i, 1i)));
    let var_2 = Struct_1(vec3<f32>(438f, 837f, _wgslsmith_f_op_f32(f32(-1f) * -1150f)));
    let var_3 = firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 17892u), vec3<u32>(global0[_wgslsmith_index_u32(69268u, 12u)], u_input.a, u_input.c)) | vec3<u32>(reverseBits(_wgslsmith_sub_u32(21765u, global0[_wgslsmith_index_u32(0u, 12u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(~6675u), 12u)], 12u)], 22140u));
    var_0 = true;
    var var_4 = true;
    global2 = -var_1.c << (vec2<u32>(~var_3.x, _wgslsmith_sub_u32(21947u, var_3.x)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(func_4(Struct_5(vec2<u32>(32469u, u_input.b), vec3<bool>(true, true, true), vec2<bool>(true, true)), Struct_4(func_4(Struct_5(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 0u), vec3<bool>(false, false, true), vec2<bool>(true, true)), Struct_4(Struct_3(vec2<f32>(-1000f, var_1.d.a.x), var_1.c.x, var_1, var_1.d))).a)).a.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(var_2.a.x, var_2.a.x))) * -966f), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_u32(~17553u, 174u), 1i)).x), _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(68505u, 12u)], u_input.c, 35550u), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(42426u, 12u)], u_input.a, 32246u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)]), vec4<u32>(23333u, global0[_wgslsmith_index_u32(var_3.x, 12u)], 101319u, 4294967295u))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(1u, global0[_wgslsmith_index_u32(56942u, 12u)], u_input.a, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.c, 78156u, 102307u), vec4<u32>(17554u, 4294967295u, global0[_wgslsmith_index_u32(var_3.x, 12u)], 1u))), min(vec4<u32>(73917u, u_input.b, global0[_wgslsmith_index_u32(0u, 12u)], 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, 79633u, var_3.x, global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<u32>(u_input.b, 1u, 0u, global0[_wgslsmith_index_u32(var_3.x, 12u)]))))), global2.x);
}

