struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = -countOneBits(~vec2<i32>(abs(0i), -u_input.a));
    let var_1 = firstLeadingBit(_wgslsmith_mod_u32(max(arg_0, ~3750u), 93304u));
    global0 = 1007f;
    let var_2 = ~firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(abs(u_input.c), countOneBits(vec4<u32>(u_input.b, 7992u, 4294967295u, 4294967295u)))));
    var var_3 = ~(var_0 ^ max(firstLeadingBit(var_0), vec2<i32>(-1i, u_input.a & -2147483647i)));
    return arg_2;
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = 0u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(-979f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1072f - -402f)))));
    var var_2 = Struct_3(true);
    var var_3 = firstLeadingBit(u_input.a << (_wgslsmith_mod_u32(~4294967295u, arg_0.x) % 32u));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f + _wgslsmith_div_f32(var_1.a, var_1.a)))), -694f);
    return ~_wgslsmith_mult_u32(71177u, countOneBits(~33841u) >> (u_input.b % 32u));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_4(arg_2);
    var var_1 = true;
    let var_2 = select(!vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -920f) <= _wgslsmith_f_op_f32(1000f + arg_1.a), true), !vec3<bool>(true, all(vec3<bool>(true, true, true)), func_1(func_3(u_input.c), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), func_1(arg_2.c.x, vec3<bool>(false, true, false), Struct_3(true))).a), vec3<bool>(true, (~1u >> (select(var_0.a.a, 1u, true) % 32u)) >= _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_2.c.yx), u_input.c.xz), !all(vec4<bool>(true, true, true, true))));
    let var_3 = var_0.a.b.x;
    var var_4 = func_1(u_input.b, select(select(select(var_2, var_2, false == var_2.x), vec3<bool>(any(vec2<bool>(var_2.x, false)), !var_2.x, any(var_2.xy)), all(!vec4<bool>(var_2.x, var_2.x, false, var_2.x))), vec3<bool>(true, true, true), select(select(var_2, !vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(false, var_2.x, var_2.x)), select(!var_2, !var_2, vec3<bool>(var_2.x, var_2.x, var_2.x)), var_2)), func_1(_wgslsmith_sub_u32(func_3(vec4<u32>(arg_2.c.x, 1889u, u_input.b, u_input.b)) ^ 82401u, u_input.c.x), select(vec3<bool>(true, true, true), vec3<bool>(true, var_2.x, true), !var_2.x), func_1(func_3(u_input.c) >> (min(29388u, 29103u) % 32u), vec3<bool>(var_2.x, all(vec2<bool>(var_2.x, true)), true), Struct_3(false))));
    return var_0.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = u_input.c.x;
    let var_1 = ~7025u;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1858f, -1160f, 307f, -442f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-876f, -453f, 1895f, 1209f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(553f, 1000f, -516f, -689f) - vec4<f32>(-1033f, 116f, 726f, -151f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(613f, 154f, -911f, 762f), vec4<f32>(-344f, -1090f, 1841f, 1954f), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(160f, -2273f, 513f, 1221f), vec4<f32>(-1000f, 787f, -1524f, -556f)))))), vec4<bool>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(895f - -1000f)) > _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(step(343f, 1216f)))), true, all(!select(vec4<bool>(arg_1.a, arg_1.a, false, true), vec4<bool>(false, arg_1.a, arg_1.a, false), arg_1.a)))));
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.c.xx, _wgslsmith_sub_vec2_u32(arg_2.c.yx >> (arg_3.a.c.yy % vec2<u32>(32u)), vec2<u32>(arg_0.x, 0u)), _wgslsmith_sub_vec2_u32(~u_input.c.xy, abs(arg_2.c.zz))), select(arg_2.c.yz, arg_0, true), vec2<u32>(_wgslsmith_dot_vec3_u32(arg_3.a.c, _wgslsmith_sub_vec3_u32(arg_3.a.c, vec3<u32>(35340u, arg_3.a.c.x, var_0))), arg_3.a.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(~0u, func_2(vec3<i32>(-2147483647i, arg_3.a.e.x, 2147483647i), Struct_1(var_2.x), arg_2).d), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.a.d, 0u), select(vec2<u32>(arg_3.a.a, 0u), arg_0, true))) << (arg_0 % vec2<u32>(32u)));
    let var_4 = var_2.x;
    return _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(ceil(1018f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-968f, var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -660f)), 545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_2.x))), var_2.x)));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = ~(~max(u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.yz, ~u_input.c.wz)));
    var_0 = ~0u;
    let var_1 = 28658i;
    var var_2 = Struct_4(Struct_2(52279u, _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, var_1) >> (u_input.c.xx % vec2<u32>(32u)), reverseBits(vec2<i32>(1i, u_input.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(func_2(vec3<i32>(u_input.a, 3049i, 2147483647i), Struct_1(arg_1.x), Struct_2(u_input.c.x, vec2<i32>(16894i, u_input.a), vec3<u32>(32547u, 41234u, 42473u), 25230u, vec2<i32>(u_input.a, u_input.a))).c.x, func_2(vec3<i32>(14783i, 76072i, 0i), Struct_1(-490f), Struct_2(4294967295u, vec2<i32>(u_input.a, u_input.a), u_input.c.xwz, u_input.b, vec2<i32>(var_1, var_1))).a, select(14180u, 64419u, arg_0.x)), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.b), max(u_input.c.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(u_input.b, u_input.c.x)))), u_input.c.x, select(~vec2<i32>(60159i, 59140i), vec2<i32>(-32004i & u_input.a, u_input.a), !select(arg_0.ww, vec2<bool>(arg_0.x, true), arg_0.yx))));
    global0 = arg_2.a;
    return func_2(~((vec3<i32>(var_1, 32886i, var_1) << (firstTrailingBit(vec3<u32>(1u, var_2.a.a, 0u)) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(var_2.a.b.x, -1i, -2147483647i)), -vec3<i32>(var_1, var_1, 77807i))), arg_2, Struct_2(_wgslsmith_div_u32(abs(0u), var_2.a.d & 15191u), select(var_2.a.b, vec2<i32>(-1i) * -var_2.a.e, !(arg_0.x | true)), var_2.a.c, ~(firstLeadingBit(u_input.b) << (_wgslsmith_div_u32(var_2.a.a, 60259u) % 32u)), vec2<i32>(var_1, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(~u_input.c.wx, func_1(u_input.b, vec3<bool>(false, false, true), Struct_3(false)), func_2(vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(533f), Struct_2(u_input.b, vec2<i32>(1i, u_input.a), u_input.c.yzx, 10669u, vec2<i32>(u_input.a, -6439i))), Struct_4(Struct_2(21307u, vec2<i32>(1i, u_input.a), vec3<u32>(u_input.b, 0u, 37553u), u_input.b, vec2<i32>(u_input.a, 0i))))) * vec4<f32>(-1188f, 282f, _wgslsmith_f_op_f32(1407f - 418f), 1000f)), Struct_1(389f)));
    var var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(1i), _wgslsmith_mult_i32(0i, u_input.a)), ~u_input.a | abs(var_0.a.e.x), 0i, var_0.a.e.x)), vec4<i32>(-1i) * -vec4<i32>(-41728i, _wgslsmith_div_i32(-1i, 7143i), -1i, _wgslsmith_sub_i32(0i, -2147483647i)));
    let var_2 = func_5(select(select(vec4<bool>(true, false, true, any(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true)), true), true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1306f, -540f, -2824f, 675f))))))), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1391f, 286f) * -1489f), 1000f, false))));
    let var_3 = Struct_4(Struct_2(func_5(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), all(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1085f, 1258f, -1000f, 395f) * vec4<f32>(-590f, 910f, 518f, -1007f))), Struct_1(_wgslsmith_f_op_f32(trunc(-1354f)))).c.x, func_2(vec3<i32>(~var_0.a.b.x, -17425i, 55195i), Struct_1(-156f), var_0.a).b, ~u_input.c.wzz, ~_wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_add_u32(var_2.c.x, 16813u)), vec2<i32>(~(-u_input.a), var_2.b.x ^ (16597i >> (0u % 32u)))));
    global0 = 207f;
    let var_4 = Struct_4(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(~vec3<i32>(-1i, 0i, 80921i) << (vec3<u32>(1u, var_2.d, var_0.a.d) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(min(381f, -713f))), var_2).e.x);
}

