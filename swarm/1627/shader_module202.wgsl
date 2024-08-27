struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i);

var<private> global1: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(2147483647i, -24908i, 31766i, 2147483647i), vec4<i32>(i32(-2147483648), -22795i, 0i, 0i), vec4<i32>(-32097i, -26889i, 29054i, i32(-2147483648)), vec4<i32>(14775i, 0i, 0i, -19715i), vec4<i32>(-1i, 56160i, 1i, 2869i), vec4<i32>(1i, 25960i, -1i, -51580i), vec4<i32>(-7752i, 2147483647i, 34308i, 7442i), vec4<i32>(i32(-2147483648), -1i, 45355i, -13117i), vec4<i32>(2147483647i, 2147483647i, 19459i, 75886i), vec4<i32>(1938i, i32(-2147483648), 2147483647i, -43069i), vec4<i32>(2147483647i, -30221i, 1i, 0i), vec4<i32>(-34753i, 13574i, -20311i, 29416i), vec4<i32>(-5177i, 2147483647i, i32(-2147483648), 3658i), vec4<i32>(-32354i, -1i, -1i, 2147483647i), vec4<i32>(39664i, 21141i, 0i, -15908i), vec4<i32>(46354i, -31188i, 0i, 0i), vec4<i32>(5704i, -18006i, 2147483647i, 0i), vec4<i32>(1i, 1i, i32(-2147483648), -1i), vec4<i32>(2147483647i, -36327i, -61586i, -4387i), vec4<i32>(2147483647i, -30607i, -34226i, 1i), vec4<i32>(-41647i, -51859i, -55448i, 294i), vec4<i32>(2147483647i, 1i, 2147483647i, 14818i), vec4<i32>(-43220i, 2147483647i, 2147483647i, 46989i), vec4<i32>(-35773i, 1i, 31389i, 29060i), vec4<i32>(-7717i, 1i, -20739i, 16642i), vec4<i32>(-1i, -5600i, -1i, 19984i), vec4<i32>(2147483647i, -43921i, 1i, 0i), vec4<i32>(-15429i, 2147483647i, 1i, -76537i), vec4<i32>(-25770i, -30670i, -7322i, 57498i));

var<private> global2: u32 = 0u;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = Struct_1(global3.a.x);
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 1u ^ countOneBits(u_input.a.x)), ~(~0u)), u_input.a.x | (_wgslsmith_dot_vec3_u32(u_input.a.zyx, ~u_input.a.yxx) >> (_wgslsmith_dot_vec2_u32(u_input.a.zy, max(vec2<u32>(37718u, u_input.a.x), vec2<u32>(u_input.b, arg_0.b.x))) % 32u)), (firstLeadingBit(u_input.b) ^ arg_0.b.x) & 1u);
    global0 = arg_0.a;
    var var_1 = select(max(max(~vec4<i32>(-23148i, u_input.c, -40096i, 1i), global1[_wgslsmith_index_u32(arg_0.b.x, 29u)]), vec4<i32>(reverseBits(global0.a), arg_0.a.a, 1i, _wgslsmith_add_i32(10914i, 0i))) ^ -(~select(global1[_wgslsmith_index_u32(73292u, 29u)], vec4<i32>(global0.a, -68670i, global3.a.x, global3.a.x), vec4<bool>(true, arg_0.c, false, false))), -vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(32137i, global0.a), 1i), u_input.c, ~u_input.c, -2147483647i), arg_0.c);
    let var_2 = _wgslsmith_div_f32(160f, 1505f);
    return var_0.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    var var_0 = !vec4<bool>(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global3.b)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), !arg_0.x, arg_0.x);
    let var_1 = firstTrailingBit(~abs(_wgslsmith_div_u32(u_input.b, u_input.a.x))) & ((29867u & (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 2231u, u_input.b), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 16356u)) ^ 4294967295u)) ^ 4294967295u);
    global3 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -2147483647i, global0.a, 2147483647i), global1[_wgslsmith_index_u32(u_input.b, 29u)]), 1i), vec2<i32>(abs(global3.a.x), global0.a)), 569f);
    var var_2 = select(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_add_u32(func_3(Struct_3(Struct_1(global3.a.x), u_input.a.yw, true, Struct_1(-2147483647i))), 20824u), _wgslsmith_div_u32(firstTrailingBit(u_input.a.x), select(1u, var_1, false)), 33077u), vec3<u32>(var_1, (u_input.a.x << (u_input.b % 32u)) >> (7119u % 32u), _wgslsmith_clamp_u32(~u_input.a.x, ~4294967295u, countOneBits(48902u))), _wgslsmith_mult_vec3_u32(u_input.a.yww, ~vec3<u32>(21822u, 42221u, var_1))), abs(vec3<u32>(u_input.a.x, 32336u, ~var_1 ^ _wgslsmith_add_u32(u_input.a.x, 4294967295u))), vec3<bool>(var_0.x, any(var_0.xw), true));
    let var_3 = Struct_1(3426i);
    return Struct_2(-(~(-vec2<i32>(global0.a, global3.a.x)) << (~(var_2.zy & u_input.a.zx) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(1089f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, true))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(-1i), countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, ~75488u), select(vec2<u32>(arg_3, 0u), max(vec2<u32>(u_input.a.x, arg_3), vec2<u32>(arg_3, u_input.b)), select(arg_1.yy, vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, true))), ~vec2<u32>(31417u, arg_3))), arg_1.x, Struct_1(global0.a));
    global0 = Struct_1(abs(2147483647i));
    global3 = func_2(arg_1.zzy, global3.b);
    let var_1 = var_0.b.x;
    let var_2 = var_0;
    return func_2(!(!select(select(arg_1.zzy, arg_1.zxw, var_2.c), vec3<bool>(true, var_2.c, false), u_input.b >= 37205u)), arg_2.x);
}

fn func_1() -> Struct_3 {
    global2 = 36010u;
    global3 = func_4(func_2(vec3<bool>(true, _wgslsmith_f_op_f32(-global3.b) <= _wgslsmith_f_op_f32(select(global3.b, global3.b, true)), any(vec4<bool>(true, true, true, true))), global3.b), vec4<bool>(true & !(-542f >= global3.b), any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), global3.b, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(302f * -323f), global3.b)))), u_input.b);
    global0 = Struct_1(~(~0i));
    global0 = Struct_1(global3.a.x);
    global1 = array<vec4<i32>, 29>();
    return Struct_3(Struct_1(-global3.a.x), ~vec2<u32>(firstTrailingBit(u_input.a.x), 1u), all(vec3<bool>(false, any(vec2<bool>(true, true)), any(vec4<bool>(false, false, false, true)) && true)), Struct_1(~global3.a.x));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: f32) -> Struct_4 {
    let var_0 = Struct_4(-1476f, Struct_2(global3.a & func_2(vec3<bool>(true, true, arg_0.c), _wgslsmith_f_op_f32(1000f + global3.b)).a, arg_2));
    var var_1 = ~func_3(Struct_3(arg_0.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b.x, arg_0.b.x), u_input.a.zy, arg_0.b) | countOneBits(u_input.a.zy), arg_0.c, Struct_1(-2147483647i)));
    return var_0;
}

fn func_6(arg_0: Struct_4, arg_1: bool) -> u32 {
    var var_0 = Struct_3(func_1().a, ~u_input.a.xz, all(vec2<bool>(false, arg_1)), Struct_1(-(~(-1171i))));
    var var_1 = true;
    var_1 = any(select(!select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, var_0.c), vec2<bool>(true, true)), vec2<bool>(false, var_0.c), any(vec3<bool>(true, arg_1, true))), !select(vec2<bool>(var_0.c, arg_1), select(vec2<bool>(true, var_0.c), vec2<bool>(false, true), arg_1), var_0.c), true));
    let var_2 = 1u;
    var var_3 = vec2<u32>(68664u, 1u) >> (countOneBits(u_input.a.wx) % vec2<u32>(32u));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1u;
    var var_0 = func_6(func_5(func_1(), select(true || func_1().c, true, -1137f < _wgslsmith_f_op_f32(1000f + global3.b)), func_2(vec3<bool>(true, 4294967295u == u_input.b, any(vec3<bool>(false, false, false))), global3.b).b, _wgslsmith_f_op_f32(f32(-1f) * -2117f)), false);
    var var_1 = !(!vec3<bool>(!all(vec3<bool>(false, true, true)), any(vec2<bool>(false, true)), all(vec3<bool>(true, false, true))));
    var var_2 = reverseBits(min(_wgslsmith_div_vec4_u32(~u_input.a, u_input.a), vec4<u32>(0u, ~u_input.b | _wgslsmith_add_u32(u_input.a.x, 4294967295u), 36190u, abs(u_input.a.x) << (_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, 30034u)) % 32u))));
    let var_3 = func_1();
    let var_4 = vec2<bool>(true, var_1.x && true);
    let var_5 = select(~(~(vec2<u32>(u_input.a.x, var_2.x) << (~vec2<u32>(var_3.b.x, var_2.x) % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(0u, 7606u), var_2.wz) >> (u_input.a.xz % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_2.x), ~var_3.b)), var_3.b), vec2<bool>(!(_wgslsmith_sub_u32(u_input.a.x, 4294967295u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.x, var_3.b.x, var_3.b.x), vec3<u32>(1u, 0u, 50372u))), any(!(!vec3<bool>(var_4.x, false, var_4.x)))));
    global3 = func_4(func_4(func_5(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -127f) >= _wgslsmith_f_op_f32(exp2(global3.b)), global3.b, global3.b).b, !(!select(vec4<bool>(var_3.c, var_1.x, var_4.x, true), vec4<bool>(false, var_3.c, var_1.x, false), var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) - global3.b), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.b * 581f))), global3.b), 39680u), vec4<bool>(1i < _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-2147483647i, 23892i, 11925i), -15939i, u_input.c << (u_input.b % 32u)), false, var_3.c, !(14045i > -u_input.c)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.b, global3.b, global3.b, 100f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, global3.b, global3.b, -1563f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1664f, global3.b, -421f, global3.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2108f, 1000f, global3.b, 1106f) * vec4<f32>(-857f, global3.b, global3.b, 560f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(418f, 628f, global3.b, global3.b), vec4<f32>(global3.b, 1532f, global3.b, -172f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1721f, global3.b, 1687f, -273f), vec4<f32>(-241f, global3.b, global3.b, global3.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global3.b, -593f, global3.b) - vec4<f32>(global3.b, -269f, global3.b, global3.b))))), ~(~u_input.b) | u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global3.b * -920f), global3.b, 19430u, -33477i);
}

