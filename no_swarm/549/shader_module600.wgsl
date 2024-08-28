struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 29824i;

var<private> global2: f32 = -543f;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    global0 = Struct_1(global0.a, select(vec2<bool>(true, true), arg_1.c.yy, vec2<bool>(!any(vec4<bool>(false, arg_1.c.x, true, global0.b.x)), !global0.c || (false && arg_2.b.x))), arg_1.c.x, _wgslsmith_div_f32(-577f, _wgslsmith_f_op_f32(f32(-1f) * -1503f)), arg_1.c.x);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(582f * _wgslsmith_f_op_f32(abs(arg_2.d))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d, 273f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + global0.d)), _wgslsmith_f_op_f32(-808f + _wgslsmith_f_op_f32(f32(-1f) * -570f)), true)))));
    let var_0 = _wgslsmith_div_u32(~(16925u >> (_wgslsmith_clamp_u32(arg_1.a.x, 4294967295u, arg_2.a) % 32u)), u_input.a) < ~42153u;
    var var_1 = Struct_1(1u, select(select(!select(vec2<bool>(false, false), vec2<bool>(arg_2.b.x, false), false), select(select(arg_1.c.xz, vec2<bool>(arg_2.c, arg_0), arg_2.b), select(arg_1.c.xx, global0.b, arg_0), !vec2<bool>(arg_1.c.x, global0.b.x)), (52824u >> (arg_2.a % 32u)) > arg_2.a), select(vec2<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, false))), global0.b, !vec2<bool>(arg_1.c.x, true)), !any(arg_2.b) | !arg_1.c.x), global0.c, _wgslsmith_div_f32(1200f, arg_2.d), true);
    global1 = -1i;
    return select(arg_1.c, select(vec3<bool>(!arg_0, _wgslsmith_f_op_f32(-arg_2.d) > _wgslsmith_f_op_f32(f32(-1f) * -677f), (1277f < arg_2.d) & false), vec3<bool>(all(select(var_1.b, arg_2.b, var_0)), true, (var_1.c | true) == !global0.e), false), arg_1.c);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_mod_vec3_u32(arg_3.yxx, arg_3.zzx & vec3<u32>(u_input.a << (1u % 32u), select(u_input.a, 0u, global0.b.x), 125198u)), i32(-1i) * -u_input.e);
    var_0 = Struct_3(select(~(~var_0.a), arg_3.zww, select(!func_3(arg_1, Struct_2(var_0.a, arg_3.yw, vec3<bool>(true, arg_1, global0.e), u_input.a), arg_0), select(!vec3<bool>(global0.b.x, global0.b.x, global0.c), vec3<bool>(false, true, global0.b.x), -13048i == var_0.b), _wgslsmith_f_op_f32(arg_2 + arg_0.d) < _wgslsmith_f_op_f32(-arg_0.d))), ~(var_0.b >> (~(~10577u) % 32u)));
    var var_1 = 31682u;
    global0 = Struct_1(arg_0.a, !global0.b, any(func_3(arg_0.e, Struct_2(countOneBits(arg_3.zzx), _wgslsmith_add_vec2_u32(arg_3.ww, var_0.a.yy), vec3<bool>(true, arg_0.e, true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, global0.a))), Struct_1(_wgslsmith_sub_u32(u_input.a, 12120u), vec2<bool>(global0.e, global0.b.x), any(vec2<bool>(false, global0.e)), _wgslsmith_f_op_f32(abs(global0.d)), 35813u > arg_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -2976f), true);
    var var_2 = -_wgslsmith_mod_vec2_i32(min(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b, u_input.c.x), vec2<i32>(-2147483647i, u_input.c.x), u_input.c), ~u_input.c), -(u_input.c ^ u_input.c)), u_input.c);
    return vec4<bool>(false, min(~u_input.a, 41663u) > ~(global0.a & ~var_0.a.x), arg_1, true);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec3<i32>) -> vec3<u32> {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1107f)) + _wgslsmith_f_op_f32(-global0.d))))) * _wgslsmith_f_op_f32(sign(1068f)));
    var var_0 = Struct_1(_wgslsmith_div_u32(4294967295u >> (arg_2.a.x % 32u), arg_2.a.x), select(func_3(all(arg_0), Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a.x, 9533u, arg_2.a.x), arg_2.a), ~arg_2.a.zz, !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), min(4294967295u, arg_1)), Struct_1(firstLeadingBit(0u), vec2<bool>(true, true), !arg_0.x, global0.d, true)).xy, global0.b, global0.b), true, 157f, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.a, 4294967295u, arg_1), vec4<u32>(41105u, 4294967295u, arg_1, 0u)) == _wgslsmith_dot_vec2_u32(select(arg_2.a.zx, vec2<u32>(34012u, 3881u), vec2<bool>(true, false)), vec2<u32>(0u, max(global0.a, u_input.a))));
    var var_1 = arg_2;
    var var_2 = Struct_2(_wgslsmith_add_vec3_u32(~(var_1.a & firstTrailingBit(var_1.a)), abs(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_0.a, var_0.a), vec3<u32>(4294967295u, arg_2.a.x, u_input.a))))), arg_2.a.zy, func_3(true, Struct_2(~var_1.a ^ _wgslsmith_mult_vec3_u32(arg_2.a, vec3<u32>(97912u, var_0.a, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(42295u, global0.a) >> (var_1.a.yx % vec2<u32>(32u)), vec2<u32>(global0.a, 4294967295u)), vec3<bool>(!global0.b.x, var_0.b.x, func_3(false, Struct_2(vec3<u32>(29062u, 47738u, 49887u), vec2<u32>(arg_2.a.x, global0.a), vec3<bool>(true, global0.c, false), 0u), Struct_1(2488u, global0.b, arg_0.x, var_0.d, false)).x), (0u ^ u_input.a) ^ firstLeadingBit(4294967295u)), Struct_1(~27513u, select(func_3(false, Struct_2(arg_2.a, var_1.a.zz, vec3<bool>(true, true, true), arg_1), Struct_1(36111u, arg_0.zz, var_0.e, -331f, arg_0.x)).xx, vec2<bool>(arg_0.x, arg_0.x), select(global0.b, global0.b, true)), global0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-300f, var_0.d))), all(vec3<bool>(global0.e, global0.c, true)))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, global0.a), 1u), select(vec2<u32>(33760u, 4294967295u), var_1.a.xx, var_0.c) << (var_1.a.xx % vec2<u32>(32u))));
    let var_3 = vec2<i32>(u_input.d, 34754i);
    return _wgslsmith_clamp_vec3_u32(select((var_2.a & (vec3<u32>(var_1.a.x, 4294967295u, 58550u) ^ vec3<u32>(45195u, var_2.a.x, 91708u))) & vec3<u32>(var_1.a.x, _wgslsmith_dot_vec2_u32(var_1.a.zy, vec2<u32>(101278u, u_input.a)), var_0.a >> (0u % 32u)), arg_2.a, all(!vec4<bool>(var_2.c.x, var_2.c.x, true, false))), var_1.a & firstTrailingBit(arg_2.a), vec3<u32>(_wgslsmith_mult_u32(~var_0.a, global0.a) ^ abs(global0.a), countOneBits(u_input.a), var_2.d));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = -30446i;
    var var_1 = !vec2<bool>(!any(vec3<bool>(true, global0.c, false)) | (any(vec2<bool>(true, false)) && false), false);
    var_1 = !select(global0.b, !vec2<bool>(true, !global0.c), global0.b.x);
    var var_2 = Struct_1(arg_0.x, select(select(vec2<bool>(true, true), vec2<bool>(global0.b.x, true), global0.b), select(vec2<bool>(var_1.x, !var_1.x), global0.b, global0.b), vec2<bool>(false, false)), false, global0.d, !global0.b.x);
    var var_3 = 1805f;
    return Struct_2(func_4(select(select(vec4<bool>(true, false, var_2.e, true), func_2(Struct_1(23666u, var_2.b, false, global0.d, var_2.e), var_2.c, global0.d, vec4<u32>(global0.a, global0.a, global0.a, 1u)), vec4<bool>(var_2.e, false, false, var_1.x)), select(vec4<bool>(global0.b.x, var_2.c, true, true), select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(false, var_2.b.x, false, false), false), true), select(func_2(Struct_1(82745u, vec2<bool>(var_2.c, var_1.x), false, -325f, var_1.x), true, global0.d, vec4<u32>(u_input.a, u_input.a, 57791u, 51390u)), vec4<bool>(true, true, true, true), var_2.b.x && var_1.x)), u_input.a, Struct_3(vec3<u32>(3346u, 10904u, 4294967295u) << (vec3<u32>(var_2.a, 21442u, u_input.a) % vec3<u32>(32u)), -30373i), vec3<i32>(select(~(-1i), -u_input.b, any(vec4<bool>(false, false, false, var_2.c))), _wgslsmith_mult_i32(6145i, 1i) >> (1u % 32u), abs(-u_input.e))), vec2<u32>(46313u, 17717u) << (abs(vec2<u32>(1u, select(var_2.a, var_2.a, true))) % vec2<u32>(32u)), select(func_2(Struct_1(1u, var_2.b, var_2.b.x, _wgslsmith_f_op_f32(global0.d + -1122f), select(var_1.x, var_2.e, true)), var_1.x & (arg_0.x == 21895u), var_2.d, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0.x, var_2.a), ~vec4<u32>(u_input.a, u_input.a, 14891u, global0.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_0.x, global0.a, 1u), vec4<u32>(0u, u_input.a, var_2.a, 0u)))).xyx, vec3<bool>(true, func_2(Struct_1(var_2.a, vec2<bool>(var_2.e, true), true, 629f, var_2.c), !global0.b.x, _wgslsmith_div_f32(668f, global0.d), vec4<u32>(u_input.a, u_input.a, 23793u, global0.a)).x, all(select(vec3<bool>(global0.e, true, global0.c), vec3<bool>(false, global0.b.x, var_2.e), true))), true), 32005u);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(~_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(62929u, 4294967295u, 39906u)), abs(min(vec3<u32>(0u, arg_1, 0u), arg_0.a))), arg_0.a.xz, !arg_0.c, arg_0.d);
    let var_1 = true;
    global1 = u_input.d;
    let var_2 = arg_0;
    let var_3 = -firstLeadingBit(vec4<i32>(u_input.d, u_input.d, _wgslsmith_clamp_i32(6873i, u_input.d, _wgslsmith_mult_i32(0i, -2147483647i)), 0i));
    return Struct_1(~3940u, !vec2<bool>((var_2.b.x != arg_1) | false, true), abs(-12125i) >= u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d - -1000f) - -887f), !var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(reverseBits(select(select(vec3<u32>(u_input.a, global0.a, u_input.a), vec3<u32>(0u, 1u, 1u), vec3<bool>(false, global0.e, false)), vec3<u32>(13745u, u_input.a, global0.a) >> (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)), !vec3<bool>(global0.e, true, global0.e))), vec3<u32>(select(~global0.a, reverseBits(u_input.a), true), 0u ^ global0.a, reverseBits(global0.a)), vec3<bool>(!all(vec4<bool>(global0.b.x, false, true, global0.e)), all(!vec3<bool>(true, global0.b.x, global0.c)), true)), -u_input.e);
    global0 = func_5(func_1(~(~vec2<u32>(2094u, u_input.a) >> (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))), _wgslsmith_div_u32(global0.a, firstLeadingBit(firstTrailingBit(~31322u))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-524f)), 1f, global0.d) - vec3<f32>(506f, _wgslsmith_f_op_f32(max(-658f, global0.d)), -824f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.d, global0.d, global0.d))))))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * global0.d)), _wgslsmith_f_op_f32(select(-406f, _wgslsmith_div_f32(global0.d, -917f), !global0.c)), func_5(func_1(vec2<u32>(u_input.a, 1u)), ~global0.a).d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.d, global0.d, global0.d), vec3<f32>(372f, 117f, -1042f))))), vec3<f32>(global0.d, -176f, func_5(Struct_2(var_0.a, vec2<u32>(1u, 0u), vec3<bool>(global0.e, global0.e, true), 0u), var_0.a.x).d), vec3<bool>(true, global0.b.x, !global0.e))), false)));
    var var_2 = ~(var_0.a.zz ^ var_0.a.xy);
    global1 = ~(-max(-54576i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(_wgslsmith_mod_i32(-var_0.b, _wgslsmith_add_i32(-2147483647i, u_input.d))), -(vec4<i32>(i32(-1i) * -62192i, -u_input.c.x, 1i, var_0.b) & select(min(vec4<i32>(u_input.b, -32067i, var_0.b, -1i), vec4<i32>(var_0.b, u_input.d, 2147483647i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, 67709i, -66482i, u_input.b), vec4<i32>(1i, 0i, -1447i, 30866i)), global0.e)));
}

