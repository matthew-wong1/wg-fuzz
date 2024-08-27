struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(31224i, -1i, 16290i, 39576i), vec4<bool>(false, true, false, true), vec2<f32>(799f, 924f), vec3<i32>(-28755i, -22941i, 1687i));

var<private> global2: f32 = 1889f;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(-1619f, vec4<i32>(-8556i, 48837i, 8719i, -69885i), -1i, Struct_1(vec4<i32>(-38503i, 2147483647i, -1i, -1i), vec4<bool>(true, false, true, true), vec2<f32>(-1196f, 1925f), vec3<i32>(11572i, 2147483647i, 1i))), Struct_2(-612f, vec4<i32>(-57857i, 1i, i32(-2147483648), i32(-2147483648)), i32(-2147483648), Struct_1(vec4<i32>(54941i, -4801i, -22893i, 2147483647i), vec4<bool>(true, true, true, true), vec2<f32>(-192f, -504f), vec3<i32>(-76380i, -12271i, 1i))), Struct_2(1003f, vec4<i32>(-27868i, -10108i, 1i, -4661i), 1i, Struct_1(vec4<i32>(71130i, -1i, -40337i, 2794i), vec4<bool>(false, true, false, false), vec2<f32>(-807f, 1249f), vec3<i32>(0i, 2147483647i, 0i))), Struct_2(512f, vec4<i32>(7518i, 8299i, -1i, -1i), -38154i, Struct_1(vec4<i32>(-338i, -1i, 17171i, 63544i), vec4<bool>(false, false, true, true), vec2<f32>(-708f, -485f), vec3<i32>(43143i, -11997i, 46152i))), Struct_2(-1000f, vec4<i32>(7565i, 1i, -18489i, 1i), 50890i, Struct_1(vec4<i32>(3314i, 42098i, 1i, 18057i), vec4<bool>(true, false, true, false), vec2<f32>(-2402f, 477f), vec3<i32>(i32(-2147483648), 0i, -5436i))), Struct_2(-306f, vec4<i32>(-12401i, 20295i, i32(-2147483648), 48546i), -5311i, Struct_1(vec4<i32>(-24981i, -1i, i32(-2147483648), -5977i), vec4<bool>(true, false, false, true), vec2<f32>(640f, -818f), vec3<i32>(22747i, 2147483647i, 23404i))), Struct_2(-544f, vec4<i32>(-10499i, i32(-2147483648), -33090i, -53099i), 0i, Struct_1(vec4<i32>(i32(-2147483648), 4286i, i32(-2147483648), -1i), vec4<bool>(true, true, true, true), vec2<f32>(1000f, 1000f), vec3<i32>(1i, -1i, i32(-2147483648)))), Struct_2(-345f, vec4<i32>(2147483647i, 33545i, 4272i, -1i), -20347i, Struct_1(vec4<i32>(52389i, -10342i, 10505i, -1i), vec4<bool>(false, true, false, false), vec2<f32>(-1329f, 2143f), vec3<i32>(i32(-2147483648), 0i, -1i))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = Struct_1(vec4<i32>(global0.c, 0i, global0.c, max(-62945i, select(global0.c, u_input.a.x, arg_0.b.x))) ^ global1.a, !global1.b, arg_0.c, ~global0.d.d);
    var var_0 = 570f;
    global3 = array<Struct_2, 8>();
    var var_1 = arg_0;
    global2 = 1000f;
    return all(vec2<bool>(!(_wgslsmith_f_op_f32(select(-1921f, var_1.c.x, false)) < _wgslsmith_f_op_f32(-arg_0.c.x)), !all(select(vec4<bool>(false, global1.b.x, arg_0.b.x, var_1.b.x), global0.d.b, var_1.b))));
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = !all(vec2<bool>(func_3(Struct_1(global0.d.a, vec4<bool>(true, false, false, global0.d.b.x), vec2<f32>(global1.c.x, global0.a), global0.d.a.wzz)), !global1.b.x));
    var var_1 = global0.d;
    var_1 = Struct_1(firstTrailingBit(global0.b | (vec4<i32>(-1i) * -vec4<i32>(-1i, -2147483647i, -18303i, var_1.a.x))), var_1.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1.c + vec2<f32>(_wgslsmith_div_f32(1101f, 467f), _wgslsmith_f_op_f32(-global0.a))), global0.d.c)), vec3<i32>(43449i << (1u % 32u), ~_wgslsmith_add_i32(0i, global1.d.x), firstTrailingBit(max(72905i, 16724i))) ^ u_input.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.x))))));
    let var_3 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, ~56899u, countOneBits(0u)), max(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(1u, 37915u, 70094u, 37480u)))), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 58523u, 0u), vec4<u32>(4294967295u, 1u, 13782u, 31316u)), 1u)));
    return vec3<bool>(false, true & !(!all(vec2<bool>(false, global1.b.x))), all(vec4<bool>(true, true, all(vec3<bool>(true, global0.d.b.x, global0.d.b.x)), any(!vec4<bool>(false, global1.b.x, global0.d.b.x, false)))));
}

fn func_1(arg_0: f32) -> u32 {
    global1 = Struct_1(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(firstTrailingBit(2147483647i), u_input.a.x, ~20214i, -2147483647i)), -(~(vec4<i32>(37277i, u_input.a.x, u_input.a.x, 28722i) ^ vec4<i32>(global0.c, 11332i, -2147483647i, 1i)))), !(!global1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)), global0.d.d);
    let var_0 = global0.d;
    var var_1 = 1u;
    global1 = Struct_1(global0.b, global0.d.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.c.x, -1715f), global0.d.c)), _wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(827f, arg_0)))), _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, global0.a))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-177f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))), select(firstTrailingBit(vec3<i32>(37811i, _wgslsmith_mod_i32(global0.d.d.x, 29738i), -18149i)), ~_wgslsmith_mod_vec3_i32(~global1.d, select(global0.b.zyw, vec3<i32>(2147483647i, -2147483647i, global1.d.x), vec3<bool>(var_0.b.x, true, var_0.b.x))), select(select(global1.b.zzw, !vec3<bool>(global1.b.x, false, true), select(global1.b.zww, vec3<bool>(global1.b.x, false, global1.b.x), var_0.b.x)), func_2(u_input.a.zz), global0.d.b.x)));
    var var_2 = _wgslsmith_mod_i32(max(-u_input.a.x, 1i) >> (~5943u % 32u), _wgslsmith_div_i32(global1.a.x, ~var_0.d.x) >> (13032u % 32u));
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, ~27270u, _wgslsmith_mod_u32(1u, 4294967295u))), ~((_wgslsmith_clamp_vec3_u32(vec3<u32>(31141u, 0u, 82423u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u)) >> (vec3<u32>(62877u, 4294967295u, 0u) % vec3<u32>(32u))) & vec3<u32>(1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.d;
    let var_0 = false;
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1119f, 908f))), _wgslsmith_dot_vec2_u32(select(max(vec2<u32>(42081u, 4294967295u), vec2<u32>(18375u, 21753u)), min(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 92750u)), true), ~vec2<u32>(67816u, 38060u))) << (_wgslsmith_dot_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(16020u, 0u)), ~vec2<u32>(0u, 2350u))), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(12929u, 48733u), vec2<u32>(0u, 1u))) ^ vec2<u32>(_wgslsmith_mult_u32(78389u, 10570u), 4294967295u)) % 32u), 8u)];
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-783f)) + _wgslsmith_f_op_f32(trunc(-1653f)))))));
    var_1 = global3[_wgslsmith_index_u32(38851u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.c.x, 1i, ~vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 21584u)), abs(66130u)), 71772u));
}

