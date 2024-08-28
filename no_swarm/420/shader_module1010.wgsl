struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26>;

var<private> global1: f32 = 1753f;

var<private> global2: bool = false;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1431f, 512f)), Struct_1(vec2<f32>(877f, -824f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * global3.a.a.x), global0[_wgslsmith_index_u32(u_input.a, 26u)]))));
    global0 = array<f32, 26>();
    var var_1 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-444f, global0[_wgslsmith_index_u32(1u, 26u)])) * _wgslsmith_f_op_vec2_f32(-arg_0.a.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.a.a, var_0.a))))));
    var var_2 = var_1.a;
    return _wgslsmith_f_op_vec2_f32(-var_2.a);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(global3.b.a);
    let var_2 = Struct_2(global3.b, Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(func_3(Struct_2(global3.b, global3.a), select(vec3<u32>(4718u, 40604u, 1476u), vec3<u32>(1u, 75225u, 21507u), arg_0))))));
    let var_3 = select(!vec3<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), arg_0, true), select(!select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_0, true), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, false))), vec3<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(3244u, var_0), vec2<u32>(u_input.a, var_0)) > ~27167u, !any(vec4<bool>(true, false, arg_0, true)), arg_0), any(select(vec2<bool>(false, arg_0), vec2<bool>(true, true), vec2<bool>(arg_0, true)))), !arg_0);
    global0 = array<f32, 26>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(447f));
    let var_1 = _wgslsmith_add_u32(1u, ~u_input.a);
    let var_2 = _wgslsmith_sub_vec2_i32(-((vec2<i32>(u_input.b, -1i) & ~vec2<i32>(1i, u_input.c)) & (select(vec2<i32>(-59379i, u_input.b), vec2<i32>(0i, u_input.b), vec2<bool>(false, false)) >> ((vec2<u32>(var_1, 4294967295u) ^ vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)))), -reverseBits(vec2<i32>(-1i, -10329i)) >> (((vec2<u32>(var_1, var_1) & ~vec2<u32>(u_input.a, var_1)) & _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, u_input.a), countOneBits(vec2<u32>(4294967295u, var_1)))) % vec2<u32>(32u)));
    var var_3 = vec4<u32>(769u, _wgslsmith_mult_u32(0u, var_1) | _wgslsmith_add_u32(min(~u_input.a, u_input.a), u_input.a), ~countOneBits(_wgslsmith_sub_u32(36841u, 17696u)) ^ var_1, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, min(abs(var_1), min(var_1, 4294967295u))), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, var_1, 4294967295u, var_1), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a), vec4<bool>(true, false, true, false)), firstLeadingBit(vec4<u32>(0u, var_1, 16291u, 1u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 13616u, var_1, var_1), vec4<u32>(var_1, 0u, u_input.a, 65321u)) % vec4<u32>(32u)))));
    var var_4 = Struct_2(func_2(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))), func_2(true));
    return func_2(!(all(vec2<bool>(true, true)) & all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<i32>) -> vec4<i32> {
    let var_0 = func_4(func_2(true), Struct_2(global3.b, global3.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(977f * arg_0) * -1880f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 26u)] - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * -229f), -184f)), !(arg_1 >= 1i))));
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_mod_vec2_u32(firstLeadingBit(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(2067u, u_input.a), vec2<u32>(u_input.a, 18135u)), 59668u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(5227u, u_input.a, 4294967295u)), 0u), abs(~(~vec2<u32>(11897u, 0u))), ~(~max(vec2<u32>(61042u, 4294967295u), vec2<u32>(37926u, 1u)))));
    let var_3 = var_1;
    let var_4 = -1945i;
    return ~_wgslsmith_mult_vec4_i32(abs(-vec4<i32>(0i, 26014i, u_input.b, 1301i)), ~vec4<i32>(-10404i, -20023i, -1i, 2147483647i)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(0u, var_2.x, 4294967295u), ~1u, ~u_input.a, _wgslsmith_mod_u32(u_input.a, 1u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 1u, u_input.a, var_2.x), vec4<u32>(u_input.a, 0u, var_2.x, 22271u), false), select(vec4<u32>(0u, u_input.a, u_input.a, var_2.x), vec4<u32>(4294967295u, 1u, 10498u, 1u), vec4<bool>(false, false, false, true)))), vec4<u32>(~1u, ~u_input.a, _wgslsmith_div_u32(35250u, u_input.a) ^ firstTrailingBit(var_2.x), _wgslsmith_add_u32(select(u_input.a, var_2.x, true), _wgslsmith_mult_u32(u_input.a, var_2.x)))) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = arg_2;
    var var_2 = -arg_0.x;
    let var_3 = Struct_2(func_4(var_1, Struct_2(var_1, func_4(arg_2, Struct_2(global3.a, Struct_1(var_1.a)), func_2(true).a.x)), global3.b.a.x), Struct_1(vec2<f32>(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), -1401f)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, _wgslsmith_f_op_f32(trunc(-547f)), _wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(-func_2(false).a.x))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global3.a.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(883f, var_1.a.x) - var_1.a)), var_4.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(func_5(-func_1(global3.a.a.x, ~12527i, vec2<i32>(78132i, 0i) ^ vec2<i32>(u_input.c, u_input.b)), _wgslsmith_add_i32(u_input.b, -2147483647i), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global3.b.a))))), global3.b);
    let var_0 = u_input.b;
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(~abs(_wgslsmith_sub_i32(u_input.b, u_input.b)), -1i), u_input.c, _wgslsmith_div_i32(select(-(u_input.b << (1u % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 0i, 1i), firstLeadingBit(vec3<i32>(var_0, u_input.b, 26975i))), u_input.a > _wgslsmith_dot_vec3_u32(vec3<u32>(18687u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4606u, 10949u))), i32(-1i) * -1i), _wgslsmith_div_i32(-1i, var_0));
    var_1 = (_wgslsmith_clamp_vec4_i32(func_1(_wgslsmith_f_op_f32(step(-1000f, global3.b.a.x)), var_0, select(var_1.xy, var_1.xw, vec2<bool>(false, false))), reverseBits(~vec4<i32>(var_0, 0i, u_input.b, var_1.x)), vec4<i32>(u_input.b, var_0, var_1.x << (12126u % 32u), _wgslsmith_sub_i32(u_input.b, u_input.c))) & ~firstTrailingBit(vec4<i32>(-2147483647i, 0i, -17881i, var_0))) >> (max(~firstTrailingBit(~vec4<u32>(1u, 7410u, 4294967295u, u_input.a)), vec4<u32>(u_input.a, ~(~0u), abs(82438u | u_input.a), 4294967295u)) % vec4<u32>(32u));
    global2 = any(vec4<bool>(true & (true & all(vec3<bool>(true, false, false))), false & any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), true, true));
    let var_2 = Struct_2(func_5(firstTrailingBit(vec4<i32>(-1217i, var_0, var_1.x, -13255i) << ((vec4<u32>(4294967295u, 0u, u_input.a, 1u) ^ vec4<u32>(u_input.a, 8893u, u_input.a, 4294967295u)) % vec4<u32>(32u))), 2147483647i, global3.a), Struct_1(vec2<f32>(1000f, global0[_wgslsmith_index_u32(40315u, 26u)])));
    var var_3 = vec2<i32>(0i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0, min(var_1.yyy, vec3<i32>(15380i, var_1.x, 0i)), vec3<u32>(27233u, 4294967295u, 0u), -(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(var_1.wz, var_1.wy)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1162f, 1854f, global3.a.a.x, var_2.a.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(639f, global3.b.a.x, 128f, 185f)))))));
}

