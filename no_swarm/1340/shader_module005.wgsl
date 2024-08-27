struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> u32 {
    global0 = -593f;
    var var_0 = ~vec4<u32>(firstLeadingBit(u_input.a), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_0.a.a, 26232u), vec3<u32>(u_input.b, 1u, 25989u))), _wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(1u, 0u)), arg_0.a.a), arg_0.a.a);
    var_0 = firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(103444u << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1139u, u_input.a, var_0.x), vec3<u32>(arg_0.a.a, var_0.x, 0u)), var_0.x, _wgslsmith_add_u32(var_0.x, 67782u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 3102u, 42768u, 0u), vec4<u32>(50416u, 1u, 0u, 69314u)) ^ vec4<u32>(22824u, arg_0.a.a, arg_0.a.a, var_0.x)) >> (~(~min(vec4<u32>(8875u, arg_0.a.a, 4294967295u, var_0.x), vec4<u32>(48253u, arg_0.a.a, 3085u, 14502u))) % vec4<u32>(32u)));
    let var_1 = arg_1;
    global1 = array<vec2<bool>, 12>();
    return min(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, firstTrailingBit(var_0.x)), _wgslsmith_mod_u32(~4294967295u, arg_0.a.a), 22849u << (arg_0.a.a % 32u)), firstTrailingBit(_wgslsmith_div_u32(abs(_wgslsmith_add_u32(0u, 26385u)), max(_wgslsmith_add_u32(var_0.x, u_input.c.x), arg_0.a.a))));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mod_u32(arg_1, _wgslsmith_sub_u32(max(49751u, arg_1), func_3(Struct_3(Struct_1(u_input.c.x), u_input.e.xxx), false)))), select(~u_input.e.wxw, vec3<i32>(~abs(u_input.e.x), 13047i, 1i), select(!(!vec3<bool>(false, arg_0, false)), vec3<bool>(arg_0, true, true), vec3<bool>(false, arg_0, true))));
    let var_1 = select(select(!select(select(vec3<bool>(arg_0, true, true), vec3<bool>(false, true, true), vec3<bool>(arg_0, true, false)), vec3<bool>(false, false, arg_0), true), select(vec3<bool>(arg_0, arg_0, false), !select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, true, arg_0), false), !any(vec2<bool>(arg_0, true))), true), select(vec3<bool>(arg_0, all(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, arg_0))), !select(true, false, arg_0)), select(vec3<bool>(arg_0 & false, false, arg_0), !(!vec3<bool>(arg_0, arg_0, arg_0)), select(!vec3<bool>(arg_0, false, true), vec3<bool>(true, true, arg_0), arg_0)), any(!(!vec4<bool>(arg_0, false, true, true)))), !select(select(!vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, false), arg_0)), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, false)), select(!vec3<bool>(true, true, arg_0), !vec3<bool>(true, arg_0, false), arg_0)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(799f, -1107f)), _wgslsmith_f_op_f32(ceil(818f))))))));
    var_0 = Struct_3(var_0.a, var_0.b);
    let var_3 = arg_0;
    return Struct_1(~0u);
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_1(0u);
    var var_1 = func_2(any(!select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), all(vec3<bool>(true, false, true)))), ~var_0.a ^ abs(0u));
    global1 = array<vec2<bool>, 12>();
    var var_2 = vec3<bool>(true, all(select(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), vec3<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, true)), false), !all(vec4<bool>(false, true, true, true)))), _wgslsmith_mult_i32(select(_wgslsmith_mult_i32(1i, 10575i), firstTrailingBit(u_input.e.x), true), select(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.b.x, u_input.e.x), vec3<i32>(u_input.e.x, -35971i, u_input.e.x)), i32(-1i) * -10380i, u_input.e.x >= -41448i)) > -u_input.e.x);
    let var_3 = Struct_2(func_2(false, 10948u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))) * 1749f), -_wgslsmith_add_i32(_wgslsmith_sub_i32(3803i, arg_0.b.x), arg_0.b.x) << (u_input.b % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(324f)))), -530f, true)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(765f, _wgslsmith_f_op_f32(func_4(Struct_3(func_2(true, u_input.a), vec3<i32>(u_input.e.x, 34574i, -2147483647i))))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-323f, 975f)) - _wgslsmith_f_op_f32(-1093f - -141f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1124f, 296f, -1350f) * vec3<f32>(-1150f, -695f, 1653f)), vec3<f32>(_wgslsmith_f_op_f32(-890f * -1871f), _wgslsmith_f_op_f32(round(366f)), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_1(u_input.c.x), vec3<i32>(28418i, u_input.e.x, u_input.e.x))))))))));
    var var_2 = all(select(!global1[_wgslsmith_index_u32(u_input.c.x, 12u)], vec2<bool>(var_0, false), select(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.d.x), vec2<u32>(u_input.c.x, u_input.c.x)), 12u)], !(!global1[_wgslsmith_index_u32(4294967295u, 12u)]), _wgslsmith_f_op_f32(var_1.x + var_1.x) < var_1.x)));
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, 55826u), ~(~u_input.d))), 30u)];
    let var_4 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, 168f))) > -846f, _wgslsmith_clamp_i32(-_wgslsmith_add_i32(-24147i, -19096i), ~u_input.e.x, -52103i) > ~1i, any(!select(vec4<bool>(true, var_0, var_0, true), vec4<bool>(false, var_0, var_0, var_0), var_0 && var_0)));
    return Struct_1(u_input.c.x | (21364u | _wgslsmith_clamp_u32(u_input.a, countOneBits(var_3.a.a), _wgslsmith_clamp_u32(8470u, 88606u, 26733u))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: f32) -> StorageBuffer {
    let var_0 = Struct_3(arg_2.a, u_input.e.wwy);
    let var_1 = -u_input.e.x | u_input.e.x;
    global0 = arg_3;
    let var_2 = global2[_wgslsmith_index_u32(arg_0.a.a, 30u)];
    var var_3 = var_0;
    return StorageBuffer(-u_input.e.yxz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(abs(abs(min(vec3<i32>(1i, -13324i, -2147483647i), vec3<i32>(22683i, -16493i, u_input.e.x)))), ~(~(~u_input.e.xyw)), false);
    let var_1 = all(select(vec4<bool>(false, !all(vec4<bool>(true, false, true, true)), true, min(var_0.x, -2147483647i) > 1i), !vec4<bool>(u_input.e.x != var_0.x, true, var_0.x >= 27709i, true), reverseBits(4294967295u | u_input.c.x) != 0u));
    let x = u_input.a;
    s_output = func_5(Struct_3(func_1(), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.e.x, 1993i, var_0.x)), u_input.e.zxw)), vec3<u32>(_wgslsmith_mult_u32(1u, u_input.d.x), u_input.d.x, abs(min(~0u, firstLeadingBit(u_input.d.x)))), Struct_3(Struct_1(14530u), abs(u_input.e.zzw)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) + _wgslsmith_f_op_f32(1966f - 1183f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(184f * -490f)))))));
}

