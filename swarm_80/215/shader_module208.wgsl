struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(vec3<i32>(u_input.b.x, -1i, firstLeadingBit(-21758i)), false), _wgslsmith_add_vec4_u32(vec4<u32>(~(~67873u), 1u, ~(~4294967295u), 10708u), ~(select(vec4<u32>(12505u, 27986u, 0u, 4294967295u), vec4<u32>(18928u, 70719u, 1u, 4294967295u), global0.b) << (~vec4<u32>(96494u, 1u, 0u, 0u) % vec4<u32>(32u)))));
    global0 = Struct_1(max(vec3<i32>(-11868i, global0.a.x, _wgslsmith_mult_i32(~global0.a.x, _wgslsmith_mod_i32(u_input.a, 0i))), var_0.a.a), select(all(!select(vec3<bool>(true, var_0.a.b, true), vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), vec3<bool>(global0.b, global0.b, var_0.a.b))), all(!select(vec3<bool>(true, var_0.a.b, true), vec3<bool>(false, global0.b, true), false)), var_0.a.b));
    var var_1 = true;
    let var_2 = -1i;
    let var_3 = 2147483647i;
    return ~(~(~(~0u)));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = any(vec4<bool>(true, all(vec3<bool>(true, true, arg_0)), _wgslsmith_dot_vec3_u32(~vec3<u32>(73560u, 1u, 4294967295u), select(vec3<u32>(68690u, 4294967295u, 0u), vec3<u32>(8343u, 0u, 29370u), vec3<bool>(arg_0, global0.b, false))) < 0u, true));
    global0 = Struct_1(vec3<i32>(~(-1i >> (1u % 32u)), global0.a.x, _wgslsmith_div_i32(-2147483647i, reverseBits(-u_input.b.x))), !var_0);
    let var_1 = Struct_1(~_wgslsmith_sub_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(global0.a, vec3<i32>(1i, u_input.b.x, global0.a.x))) >> (~(vec3<u32>(1u, 64208u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), all(!select(!vec4<bool>(arg_0, true, true, true), select(vec4<bool>(var_0, global0.b, true, true), vec4<bool>(false, var_0, false, global0.b), false), !vec4<bool>(false, false, global0.b, var_0))));
    global0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(var_1.a), _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(-11645i, -2147483647i, -1i))), 21507i, 1i), !(all(select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), vec2<bool>(false, false))) || (_wgslsmith_f_op_f32(select(614f, -1655f, var_1.b)) != _wgslsmith_f_op_f32(f32(-1f) * -1107f))));
    var var_2 = vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-662f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 150f), 842f))));
    return vec3<u32>(abs(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 18803u, 33437u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(37733u, 4294967295u, 30439u))), ~vec3<u32>(1u, 4294967295u, 31789u))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(73708u, 0u, 1u)), vec3<u32>(1u, 1u, 1u)), select(~(~vec3<u32>(2774u, 46434u, 1u)), vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), !(!vec3<bool>(true, var_1.b, false)))), 89681u);
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(1i), global0.a.x, abs(select(global0.a.x, 20188i, false))), global0.a), global0.b);
    var var_0 = vec4<u32>(~0u, 21232u, ~1u << (select(0u, 1u, true) % 32u), _wgslsmith_mod_u32(func_2(), _wgslsmith_dot_vec3_u32(func_3(false), firstTrailingBit(vec3<u32>(14914u, 0u, 49018u)) >> (~vec3<u32>(26329u, 0u, 4294967295u) % vec3<u32>(32u)))));
    var_0 = ~firstTrailingBit(vec4<u32>(min(var_0.x, 4294967295u), 1u, 27649u, ~var_0.x));
    let var_1 = Struct_2(arg_0, abs(min(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, var_0.x), vec4<u32>(var_0.x, 3158u, var_0.x, var_0.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 31252u, 9146u, 1u)), max(var_0.x, 57408u), var_0.x >> (20983u % 32u), _wgslsmith_div_u32(var_0.x, var_0.x)))));
    global0 = arg_0;
    return 44427i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(4294967295u, 19217u)), vec2<u32>(1u, 1u)), ~_wgslsmith_sub_u32(1u >> (0u % 32u), _wgslsmith_div_u32(8323u, 49474u)), ~(~min(0u, 4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -384f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(469f, 236f) + -2298f)))) * 1008f);
    global0 = Struct_1(-vec3<i32>(17239i, _wgslsmith_dot_vec2_i32(vec2<i32>(-24201i, global0.a.x), u_input.b.xy), _wgslsmith_mult_i32(i32(-1i) * -1i, abs(21750i))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 36569u), 1u, abs(72100u)) <= 36300u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1236f) * _wgslsmith_f_op_f32(365f + -816f)))) * -415f), 407f);
    let var_3 = vec4<i32>(u_input.b.x, max(-2147483647i, 1i), global0.a.x, -_wgslsmith_mod_i32(~func_1(Struct_1(global0.a, true)), countOneBits(u_input.a)));
    var var_4 = countOneBits(~2147483647i);
    let var_5 = Struct_2(Struct_1(~u_input.b, !(!all(vec3<bool>(global0.b, false, false)))), ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 23753u, var_0.x, 1u)), select(vec4<u32>(var_0.x, var_0.x, 114542u, 22185u), vec4<u32>(var_0.x, var_0.x, var_0.x, 27755u), false)) & _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), countOneBits(vec4<u32>(var_0.x, 31505u, var_0.x, var_0.x))), abs(vec4<u32>(0u, 4294967295u, 1u, var_0.x))));
    var var_6 = Struct_2(var_5.a, var_5.b);
    var_0 = vec4<u32>(firstTrailingBit(var_5.b.x), 1u | _wgslsmith_sub_u32(~var_5.b.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_5.b.x, var_6.b.x, var_5.b.x, 4294967295u), var_5.b, vec4<bool>(true, true, var_6.a.b, false)), vec4<u32>(var_6.b.x, 1u, 6030u, var_0.x))), var_0.x, func_2());
    let x = u_input.a;
    s_output = StorageBuffer(var_6.b.zyx, var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_2.x) - var_2), _wgslsmith_f_op_vec2_f32(var_2 + var_2)) * var_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1919f, 1000f, 635f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(442f, var_2.x, 468f, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, 738f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_div_f32(-546f, var_2.x), -327f, -1000f))));
}

