struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<u32, 25> = array<u32, 25>(1u, 1u, 1u, 1u, 4294967295u, 0u, 19162u, 112059u, 0u, 4504u, 4294967295u, 0u, 55302u, 0u, 56354u, 4294967295u, 11822u, 1u, 4858u, 16267u, 1u, 15829u, 8388u, 4294967295u, 48220u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> vec4<i32> {
    let var_0 = -2147483647i;
    global1 = array<u32, 25>();
    global0 = arg_0.b.xy;
    let var_1 = !all(arg_0.b.yx);
    var var_2 = u_input.a.x;
    return -(~(~((vec4<i32>(u_input.c.x, -24238i, var_0, var_0) >> (vec4<u32>(arg_0.a, 0u, 4294967295u, arg_0.a) % vec4<u32>(32u))) | vec4<i32>(-28851i, -1i, -29337i, var_0))));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(step(1000f, 1000f)) == _wgslsmith_f_op_f32(f32(-1f) * -412f), Struct_1(_wgslsmith_dot_vec4_u32(arg_0, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(u_input.a.x, arg_0.x, u_input.b, 3744u)), ~arg_0, arg_0)), vec3<bool>(true || (global1[_wgslsmith_index_u32(0u, 25u)] != 14427u), all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x)), !all(vec2<bool>(global0.x, global0.x)))), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-441f, 200f, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 649f, -1037f) * vec3<f32>(arg_1, arg_1, -1300f))))));
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(reverseBits(u_input.c.x), u_input.c.x), max(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c.x), -var_0.c, var_0.c), abs(vec3<i32>(-1850i, var_0.c, var_0.c)) | vec3<i32>(var_0.c, 43826i, 1i))));
    var var_2 = Struct_3(~(~(~arg_0.x)) ^ var_0.b.a, Struct_2(false || global0.x, var_0.b, u_input.c.x, var_0.d), vec4<u32>(~arg_0.x, ~_wgslsmith_add_u32(1u, ~global1[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_add_u32(~1u, u_input.b), firstTrailingBit(11010u << ((1u | u_input.b) % 32u))));
    var_1 = _wgslsmith_div_i32(var_0.c, -60136i);
    let var_3 = select(select(!(!select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, var_2.b.b.b.x, true, true))), !vec4<bool>(any(var_2.b.b.b.yz), select(var_2.b.a, var_0.a, global0.x), all(vec4<bool>(false, false, var_2.b.a, var_2.b.b.b.x)), false), vec4<bool>((var_0.d.x <= var_0.d.x) & true, var_0.b.a != ~var_0.b.a, true, any(!vec4<bool>(var_2.b.a, false, var_0.b.b.x, var_2.b.b.b.x)))), !select(vec4<bool>(false, false && global0.x, var_0.b.b.x | true, var_0.a & var_2.b.b.b.x), !select(vec4<bool>(var_2.b.a, true, true, var_0.b.b.x), vec4<bool>(true, true, false, false), true), select(!vec4<bool>(global0.x, false, false, true), vec4<bool>(false, true, true, global0.x), !vec4<bool>(var_0.b.b.x, var_0.a, false, false))), arg_1 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -697f))));
    return firstLeadingBit(vec4<u32>(~min(55821u, var_2.b.b.a) & ~(4294967295u | var_2.c.x), ~(~61591u), u_input.a.x, abs(reverseBits(25361u) & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_2.a, var_0.b.a, arg_0.x), vec4<u32>(57852u, var_0.b.a, arg_0.x, u_input.a.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = -firstTrailingBit(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), func_2(Struct_1(0u, vec3<bool>(arg_0.b.x, true, arg_3.b.x)), arg_3, true, arg_0.b)), 1i));
    let var_1 = -(~(~min(u_input.c.x, u_input.c.x)));
    global0 = select(arg_3.b.xy, !select(arg_0.b.yy, vec2<bool>(select(false, false, arg_0.b.x), arg_0.a < 1u), arg_1 != 492f), false);
    let var_2 = Struct_3(abs(countOneBits(firstLeadingBit(~1u))), Struct_2(true, Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 25u)], !select(vec3<bool>(global0.x, true, arg_0.b.x), arg_0.b, arg_0.b)), var_0.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-241f, arg_1, arg_2.x)))))), max(~func_3(vec4<u32>(arg_3.a, 0u, 4294967295u, arg_3.a), arg_2.x) & max(vec4<u32>(76284u, arg_0.a, 0u, 0u) ^ vec4<u32>(arg_0.a, 4294967295u, 6095u, u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(11438u, 25u)], global1[_wgslsmith_index_u32(arg_3.a, 25u)], 45481u, 89285u)), ~(~vec4<u32>(arg_0.a, u_input.a.x, 0u, arg_0.a)) << ((select(vec4<u32>(15679u, global1[_wgslsmith_index_u32(u_input.b, 25u)], 0u, 3185u), vec4<u32>(4294967295u, 4294967295u, 46528u, 1340u), true) | select(vec4<u32>(5412u, arg_3.a, 4294967295u, 4294967295u), vec4<u32>(arg_3.a, u_input.b, arg_0.a, arg_0.a), false)) % vec4<u32>(32u))));
    var var_3 = Struct_3(select(arg_0.a, ~func_3(var_2.c, arg_2.x).x, ~arg_0.a == arg_3.a), Struct_2(true, Struct_1(global1[_wgslsmith_index_u32(u_input.b, 25u)], vec3<bool>(false & arg_0.b.x, all(vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x, arg_3.b.x)), false)), var_1, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_div_f32(arg_2.x, arg_1), -1054f)))), max(~vec4<u32>(firstLeadingBit(u_input.b), 17450u, 14765u, countOneBits(u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(abs(22450u), ~arg_3.a, _wgslsmith_mult_u32(77690u, var_2.a), 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 25u)], 52451u), ~vec4<u32>(arg_0.a, 24891u, arg_3.a, 4294967295u)))));
    return var_3.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(80059u, vec3<bool>(global0.x, global0.x, global0.x)), -779f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-231f, -1000f))), Struct_1(global1[_wgslsmith_index_u32(62409u, 25u)], vec3<bool>(false, true, false))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(905f - 419f), _wgslsmith_f_op_f32(f32(-1f) * -900f), -1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-964f, -2270f, -1125f), vec3<f32>(958f, 1000f, 836f), vec3<bool>(global0.x, true, false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2168f, -1237f, -1000f))), vec3<bool>(false, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !global0.x))) - vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1678f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1114f, 492f))))));
    var var_1 = Struct_1(~1u, !vec3<bool>(false, global0.x, false));
    var var_2 = Struct_1(var_1.a, vec3<bool>((_wgslsmith_div_i32(-35426i, 20480i) <= _wgslsmith_div_i32(-20415i, u_input.c.x)) || !global0.x, ((u_input.c.x | u_input.c.x) << (global1[_wgslsmith_index_u32(var_1.a | var_1.a, 25u)] % 32u)) == 22924i, true));
    var_1 = Struct_1(var_2.a, var_2.b);
    let var_3 = _wgslsmith_mod_u32(4294967295u, ~(~685u));
    var_1 = Struct_1(var_3 & 59135u, !vec3<bool>(true, global0.x, var_2.b.x));
    var var_4 = global0.x;
    var var_5 = vec3<bool>(!var_1.b.x, global0.x, select(var_2.b.x, _wgslsmith_f_op_f32(-var_0.x) <= var_0.x, 231f > _wgslsmith_f_op_f32(step(-259f, _wgslsmith_f_op_f32(var_0.x - 2045f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec3<i32>(-3129i, u_input.c.x, u_input.c.x) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3, 4294967295u, 67581u), vec3<u32>(55632u, u_input.b, 0u), vec3<u32>(6168u, u_input.b, 4294967295u)) % vec3<u32>(32u)))), 538f, _wgslsmith_f_op_f32(-var_0.x));
}

