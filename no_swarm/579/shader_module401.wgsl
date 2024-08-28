struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: u32;

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = vec4<bool>(true, false, !select(!(u_input.a >= 21261u), arg_0.a.a.x, !arg_0.a.a.x || (u_input.a > 37611u)), select(global4.a.a.x, !(true | any(global4.a.a)), false));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-2166f + 319f), _wgslsmith_f_op_f32(select(-1525f, -130f, global1.x)), -425f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1019f, -1543f, 394f)), vec3<f32>(359f, -189f, 2067f), global1.wyy))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1735f), _wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(-135f + 1221f)) * vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(224f, 1108f, 603f), vec3<f32>(-513f, -1092f, 614f))))) + vec3<f32>(-1324f, _wgslsmith_f_op_f32(min(-762f, 1008f)), 491f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(global1.x, global1.x, true))), select(select(true, arg_0.a.a.x, global1.x), !any(select(vec4<bool>(true, false, false, global1.x), vec4<bool>(true, false, global4.a.a.x, global1.x), true)), arg_0.a.a.x)));
    let var_1 = vec3<bool>(true, arg_0.a.a.x, global4.a.a.x);
    var var_2 = !vec2<bool>(~(~u_input.a) >= 0u, any(!select(vec2<bool>(var_1.x, var_1.x), global1.zy, false)));
    let var_3 = Struct_1(arg_0.a.a);
    return arg_0.a.a.x;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(func_3(Struct_2(Struct_1(vec4<bool>(global1.x, true, global4.a.a.x, false)))), true | all(!vec2<bool>(global1.x, false)), true, global1.x));
    global1 = !select(vec4<bool>(global1.x, all(!vec4<bool>(false, false, global4.a.a.x, true)), true, true), !(!vec4<bool>(var_0.a.x, global1.x, true, global4.a.a.x)), global4.a.a.x);
    global2 = 62970u;
    var var_1 = Struct_2(Struct_1(global4.a.a));
    global1 = vec4<bool>(any(global4.a.a), false, true, min(arg_1.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.x, arg_1.x), i32(-1i) * -2147483647i)) >= max(arg_0, 0i));
    return Struct_1(global4.a.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global4 = Struct_2(func_2(-_wgslsmith_mod_i32(~0i, 37778i), _wgslsmith_add_vec3_i32(vec3<i32>(~58140i, abs(-4722i), 0i), select(firstTrailingBit(vec3<i32>(-2147483647i, -18602i, 0i)), ~vec3<i32>(-2147483647i, 1i, 2147483647i), !global4.a.a.yyw))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1658f, 278f, 161f, 129f))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-270f, 1007f, -304f, -704f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(745f, 474f, -2062f, -1032f))), vec4<f32>(-1344f, _wgslsmith_f_op_f32(step(431f, 1171f)), _wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(trunc(-1000f)))));
    global0 = select(max(23306i, -34192i), _wgslsmith_sub_i32(1i, -6721i), arg_0.a.a.x);
    var var_1 = func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) << (~vec4<u32>(u_input.a, 20406u, u_input.a, 0u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-16269i, -2881i, -19369i, -5085i)) & select(vec4<i32>(-2147483647i, 55593i, -24030i, 1i), vec4<i32>(9216i, 2147483647i, 1i, -21985i), false), vec4<i32>(-33880i, ~(-509i), 26832i, select(2147483647i, -2147483647i, true)))), _wgslsmith_mod_vec3_i32(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-24240i, -4795i, 20823i), vec3<i32>(33511i, -21213i, 7065i))), vec3<i32>(-1230i, ~1i, 1i)));
    let var_2 = ~(~reverseBits(vec2<u32>(4294967295u, ~0u)));
    return arg_0.a;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec4<bool> {
    global0 = -57897i;
    let var_0 = func_4(Struct_2(func_2(_wgslsmith_div_i32(arg_0, -arg_0), _wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(-18089i, arg_0, arg_1)))), Struct_2(func_2(_wgslsmith_mod_i32(countOneBits(1i), -1i), vec3<i32>(~2147483647i, 1i, arg_0))));
    global2 = u_input.a;
    global1 = select(func_4(Struct_2(func_2(arg_0, select(vec3<i32>(arg_1, arg_1, -1i), vec3<i32>(0i, arg_1, arg_1), vec3<bool>(false, var_0.a.x, var_0.a.x)))), Struct_2(global4.a)).a, global4.a.a, !any(vec3<bool>(any(var_0.a), true, arg_2.x <= 316f)));
    var var_1 = ~(i32(-1i) * -1i);
    return vec4<bool>((any(global4.a.a.xw) | !(1i <= arg_0)) == !((arg_0 | -2755i) <= firstTrailingBit(arg_0)), true, !global1.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!global4.a.a, vec4<bool>(!all(global1.zyy), any(global4.a.a.ywx), global4.a.a.x, (~u_input.a <= ~16643u) || false), select(vec4<bool>(true, global4.a.a.x, !global1.x, !(!global1.x)), global4.a.a, select(global4.a.a, global4.a.a, func_1(countOneBits(2147483647i), -42246i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1340f, 1067f, -937f) - vec3<f32>(-1037f, 366f, -1097f)), ~vec2<u32>(u_input.a, 26177u)))));
    global0 = ~2147483647i;
    let var_1 = ~max(countOneBits(_wgslsmith_mod_u32(~0u, u_input.a)), 89922u);
    var var_2 = Struct_2(global4.a);
    var var_3 = _wgslsmith_sub_vec3_u32(max(vec3<u32>(reverseBits(u_input.a), abs(var_1), 7658u), vec3<u32>(23088u, 1u, ~u_input.a)), _wgslsmith_mod_vec3_u32(abs(~vec3<u32>(var_1, u_input.a, var_1)), (vec3<u32>(u_input.a, var_1, var_1) | vec3<u32>(u_input.a, 100874u, var_1)) >> ((vec3<u32>(1u, var_1, u_input.a) ^ vec3<u32>(21937u, u_input.a, var_1)) % vec3<u32>(32u)))) ^ firstLeadingBit(vec3<u32>(~_wgslsmith_div_u32(var_1, var_1), u_input.a, ~1u));
    let var_4 = vec4<bool>(global1.x, false, all(vec3<bool>(!var_2.a.a.x, all(!global4.a.a), true)), func_3(Struct_2(Struct_1(var_0))));
    var_3 = vec3<u32>(var_3.x, ~((var_1 | 20421u) >> (var_3.x % 32u)), ~26626u);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

