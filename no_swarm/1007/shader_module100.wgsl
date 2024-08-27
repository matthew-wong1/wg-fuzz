struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: i32) -> vec3<i32> {
    var var_0 = vec2<i32>(0i, ~51006i);
    global0 = !select(vec3<bool>(global1.x, false, global0.x), global1.yxw, any(vec4<bool>(true, all(vec2<bool>(true, true)), true, any(global1.www))));
    var_0 = max(vec2<i32>(arg_3, _wgslsmith_div_i32(-10699i, -3971i)), reverseBits(_wgslsmith_clamp_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(u_input.a, 0i)), min(reverseBits(vec2<i32>(-1777i, -2147483647i)), ~vec2<i32>(-7016i, var_0.x)), vec2<i32>(u_input.a >> (arg_2.x % 32u), _wgslsmith_div_i32(5992i, -45359i)))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(-1i, abs(_wgslsmith_add_i32(u_input.a << (4294967295u % 32u), -2147483647i))), max(~(~vec4<u32>(4294967295u, 0u, 0u, 30913u) & _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 65089u), vec4<u32>(16533u, arg_2.x, arg_2.x, arg_2.x))), vec4<u32>(~arg_2.x, 4294967295u, 17943u, min(0u, arg_2.x)) & reverseBits(abs(vec4<u32>(arg_2.x, arg_2.x, 0u, arg_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(615f, arg_0.x, -492f, -774f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, global1.x, false)))))), true);
    var var_2 = Struct_1(2147483647i, max(countOneBits(vec4<u32>(arg_2.x, 55713u, arg_2.x, 4294967295u)), ~var_1.b | ~var_1.b) ^ var_1.b, var_1.c, any(!(!vec4<bool>(var_1.d, false, var_1.d, global1.x))));
    return vec3<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.a, var_1.a)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -56274i), vec2<i32>(var_0.x, u_input.a), vec2<i32>(-1i, -8181i))), ~(-45155i), -2672i) >> ((vec3<u32>(var_1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(13466u, 4294967295u, var_1.b.x, var_2.b.x), ~var_1.b), 4294967295u) | ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.b.x, 0u, var_2.b.x), firstLeadingBit(vec3<u32>(1u, 4294967295u, var_2.b.x)))) % vec3<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = Struct_1(min(_wgslsmith_dot_vec3_i32(func_3(_wgslsmith_f_op_vec3_f32(-arg_3.zwz), -1i, vec2<u32>(arg_0, 1u), arg_2.x), max(arg_2.yxz, select(vec3<i32>(u_input.a, -1i, arg_2.x), arg_2.yww, vec3<bool>(false, arg_1.x, global0.x)))), 7131i), reverseBits(vec4<u32>(~44770u, arg_0, 0u, _wgslsmith_add_u32(arg_0, arg_0))) >> (abs(vec4<u32>(~1u, ~arg_0, arg_0, 120595u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) + vec4<f32>(1f, -364f, _wgslsmith_f_op_f32(f32(-1f) * -1431f), 2266f)), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(arg_2.x, arg_2.x, arg_2.x), -2147483647i) == min(_wgslsmith_clamp_i32(abs(arg_2.x), -u_input.a, select(arg_2.x, u_input.a, true)), max(~(-2147483647i), -2147483647i)));
    global1 = !(!select(!vec4<bool>(true, global0.x, false, false), select(select(vec4<bool>(var_0.d, global1.x, arg_1.x, true), vec4<bool>(true, false, var_0.d, arg_1.x), var_0.d), select(vec4<bool>(global1.x, false, false, true), vec4<bool>(global0.x, arg_1.x, false, arg_1.x), vec4<bool>(false, true, arg_1.x, var_0.d)), !vec4<bool>(global0.x, arg_1.x, var_0.d, var_0.d)), vec4<bool>(any(vec4<bool>(true, true, true, false)), true, any(vec2<bool>(arg_1.x, arg_1.x)), !var_0.d)));
    var var_1 = Struct_1(var_0.a, vec4<u32>(arg_0, arg_0, 1u, _wgslsmith_sub_u32(arg_0 >> (firstTrailingBit(0u) % 32u), ~(~var_0.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(max(1165f, -263f))), any(select(select(!global1.zy, !arg_1.zx, true), arg_1.yx, select(!vec2<bool>(true, global1.x), arg_1.yy, vec2<bool>(global1.x, true)))));
    let var_2 = var_0;
    global1 = !vec4<bool>(global0.x, var_1.d, all(vec4<bool>(all(vec4<bool>(var_0.d, true, true, var_2.d)), true, all(arg_1), false && global1.x)), !((arg_0 | 1u) != var_2.b.x));
    return var_2.b;
}

fn func_1() -> Struct_1 {
    let var_0 = !(!vec4<bool>(any(select(vec2<bool>(true, global1.x), global1.wx, false)), global1.x, all(!vec3<bool>(true, global0.x, false)), all(!vec4<bool>(true, false, global1.x, false))));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.a), ~2147483647i)), (-min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)) | _wgslsmith_mod_vec2_i32(vec2<i32>(-22774i, 11432i), -vec2<i32>(u_input.a, 22082i))) << (~vec2<u32>(~0u, 1u) % vec2<u32>(32u)));
    global1 = var_0;
    var var_2 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(-1i) * -(~vec3<i32>(var_1.x, var_1.x, u_input.a))), vec3<i32>(_wgslsmith_sub_i32(1i, min(u_input.a, var_1.x)), countOneBits(var_1.x), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-5994i, 23342i), vec2<i32>(var_1.x, u_input.a), var_0.yy), vec2<i32>(u_input.a, var_1.x))) & vec3<i32>(_wgslsmith_add_i32(u_input.a, 11892i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 6134u), vec4<u32>(111258u, 1u, 4294967295u, 54743u)) % 32u), ~(-var_1.x), _wgslsmith_sub_i32(var_1.x, ~u_input.a)));
    var_1 = max(_wgslsmith_sub_vec2_i32(vec2<i32>(-(i32(-1i) * -6369i), i32(-1i) * -6391i), var_2.yy), ~var_2.yz);
    return Struct_1(_wgslsmith_sub_i32(var_2.x, 2147483647i), ~(func_2(25515u, global1.zyx, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, var_1.x), vec4<i32>(-5650i, u_input.a, 0i, var_1.x)), vec4<f32>(-299f, 169f, 931f, -2666f)) | vec4<u32>(38579u, 6878u, _wgslsmith_mod_u32(1u, 33521u), min(124725u, 47477u))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-605f * 606f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1206f + _wgslsmith_div_f32(-1282f, -286f)), 428f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1171f, -1212f, -939f, _wgslsmith_f_op_f32(f32(-1f) * -850f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, 346f, -667f, 188f)), true))), select(true, global1.x, !any(global1.yw) && (!global1.x | any(vec4<bool>(true, true, global0.x, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    var var_0 = arg_0;
    global1 = select(vec4<bool>(global1.x, true, func_1().c.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(1605f - -214f), _wgslsmith_f_op_f32(floor(arg_0.c.x))), !(!var_0.d | select(true, true, global1.x))), vec4<bool>(all(select(vec4<bool>(var_0.d, false, false, true), vec4<bool>(arg_1.d, global0.x, true, true), any(vec3<bool>(false, false, arg_1.d)))), ~_wgslsmith_add_u32(29463u, arg_0.b.x) > (countOneBits(35933u) >> ((4294967295u ^ arg_1.b.x) % 32u)), true, true), select(select(!vec4<bool>(true, arg_1.d, global1.x, true), select(select(vec4<bool>(true, arg_1.d, arg_0.d, true), vec4<bool>(arg_1.d, true, false, true), false), vec4<bool>(arg_1.d, true, false, true), var_0.b.x >= arg_0.b.x), all(vec3<bool>(true, true, true))), vec4<bool>(_wgslsmith_mod_i32(-1i, arg_1.a) != firstTrailingBit(u_input.a), true, var_0.d, true), all(global1.xz)));
    let var_1 = true;
    let var_2 = true;
    var var_3 = 237f;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1274f, -1034f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1779f, 533f) - vec2<f32>(-1000f, 1130f)))), vec2<f32>(_wgslsmith_f_op_f32(363f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -780f))))));
    global0 = !(!vec3<bool>(false, any(select(vec4<bool>(true, global0.x, global1.x, global0.x), vec4<bool>(true, true, false, true), vec4<bool>(false, true, global1.x, global1.x))), global1.x));
    global0 = vec3<bool>(global0.x, func_4(func_1(), Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(-8702i, 17989i), u_input.a ^ -9213i), ~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, 1428f, -770f, var_0.x)))), global1.x), vec2<u32>(~17693u, 27480u)), all(!vec4<bool>(global0.x, all(vec3<bool>(global0.x, global1.x, global0.x)), global1.x, var_0.x == var_0.x)));
    var var_1 = global1.yxw;
    var var_2 = ~4294967295u << (_wgslsmith_dot_vec4_u32(func_2(0u, global1.zyx, vec4<i32>(_wgslsmith_div_i32(u_input.a, -40926i), firstLeadingBit(u_input.a), 2147483647i, u_input.a << (0u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1813f), -1000f, _wgslsmith_f_op_f32(420f + var_0.x), var_0.x)), max(vec4<u32>(func_1().b.x, ~4294967295u, ~1u, 4294967295u), select(~vec4<u32>(4294967295u, 1u, 43485u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 30102u, 34585u), vec4<u32>(33112u, 9192u, 26914u, 48893u)), select(vec4<bool>(true, global0.x, true, true), vec4<bool>(false, global1.x, false, global1.x), true)))) % 32u);
    let var_3 = 0u;
    global1 = !vec4<bool>(30239u < (func_2(91611u, global1.wyz, vec4<i32>(u_input.a, -36822i, u_input.a, 0i), vec4<f32>(-445f, var_0.x, var_0.x, -1000f)).x >> (var_3 % 32u)), var_1.x, any(global1.wxx), !(328f <= _wgslsmith_f_op_f32(-var_0.x)));
    var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(var_3, var_3, var_3, 4200u)), min(vec4<u32>(24558u, var_3, var_3, 42348u) ^ vec4<u32>(0u, 36386u, 1u, 6333u), vec4<u32>(4294967295u, 58022u, 73868u, var_3) >> (vec4<u32>(var_3, 0u, 1u, 54645u) % vec4<u32>(32u))) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(41257u, 4294967295u, var_3, var_3), vec4<u32>(3525u, 46619u, 1u, 35377u)) & vec4<u32>(var_3, 4294967295u, var_3, 4294967295u)) % vec4<u32>(32u))), vec4<u32>(var_3, 69076u << (_wgslsmith_mod_u32(reverseBits(var_3), 1u) % 32u), _wgslsmith_div_u32(71080u, var_3), func_1().b.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1000f, var_0.x, -1000f), _wgslsmith_mod_vec2_u32(~countOneBits(vec2<u32>(var_3, 1670u)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3, 20967u), firstLeadingBit(vec2<u32>(var_3, 27708u)))) | vec2<u32>(5848u, 0u), func_2(max(~var_3 & _wgslsmith_add_u32(var_3, var_3), 125842u), select(!vec3<bool>(var_1.x, var_1.x, true), global1.zwx, true), vec4<i32>(17796i, -22768i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), min(vec4<i32>(2147483647i, u_input.a, -38127i, -27374i), vec4<i32>(1i, 1i, -1i, -2147483647i)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), func_1().c.x, _wgslsmith_f_op_f32(max(var_0.x, 271f)), 253f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1097f, var_0.x, -1390f, 627f)))))).x, func_1().b.yyw, func_1().c);
}

