struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-16906i, 50919i, 1i);

var<private> global1: f32;

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<bool, 15>;

var<private> global4: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(5114u, 14910u, 0u), vec3<u32>(71349u, 49357u, 0u), vec3<u32>(25529u, 13392u, 9120u), vec3<u32>(0u, 4203u, 0u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(56335u, 61046u, 4294967295u), vec3<u32>(54019u, 14772u, 0u), vec3<u32>(1u, 4294967295u, 41380u), vec3<u32>(9263u, 0u, 1u), vec3<u32>(77035u, 4294967295u, 83568u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1261f)), -437f, _wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-108f)), -282f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(292f, 1383f, -1000f, -440f)))))))));
    var var_1 = vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 15u)], all(vec4<bool>(true || global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 24608u, 10656u), vec4<u32>(50678u, 5583u, 24730u, 18455u)), 15u)], all(vec2<bool>(true, true)), false, true)));
    let var_2 = !select(vec4<bool>(all(vec3<bool>(true, true, true)), all(select(var_1.zx, vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true))), true, global3[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(11102u, 1u)), 15u)], _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) >= -1433f, (var_0.a.x < var_0.a.x) && false, false), !vec4<bool>(!global3[_wgslsmith_index_u32(57860u, 15u)], !var_1.x, select(var_1.x, false, true), !global3[_wgslsmith_index_u32(54992u, 15u)]));
    let var_3 = countOneBits(arg_0);
    global1 = _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.a.x))))))));
    return global0.x;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    global4 = array<vec3<u32>, 10>();
    let var_0 = ~(~countOneBits(~37350u));
    let var_1 = arg_0;
    let var_2 = global2[_wgslsmith_index_u32(1u, 16u)];
    global0 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, _wgslsmith_mult_i32(u_input.a, 9609i), countOneBits(-44252i)) | vec3<i32>(u_input.a, u_input.b, 40815i), vec3<i32>(1i, func_3(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 0i, 0i), vec3<i32>(global0.x, 0i, -31187i)))), u_input.a), vec3<i32>(~(-u_input.a), 1i, u_input.a));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_2.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-954f, -258f)))), _wgslsmith_f_op_f32(528f + 1058f), _wgslsmith_div_f32(_wgslsmith_div_f32(1047f, var_1), -508f)) * var_2.a), !vec2<bool>(!global3[_wgslsmith_index_u32(var_0, 15u)], _wgslsmith_mod_i32(-1i, 2837i) > global0.x), u_input.a);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = 24942u;
    var var_2 = arg_1;
    let var_3 = Struct_1(arg_1.a, !select(select(vec2<bool>(arg_1.b.x, arg_1.b.x), !var_0.b, true), func_2(_wgslsmith_f_op_f32(f32(-1f) * -910f), vec2<f32>(1000f, var_0.a.x)).b, var_0.b.x), _wgslsmith_sub_i32(u_input.b, arg_1.c));
    let var_4 = 2147483647i;
    return ~(~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1, 4294967295u) << (vec2<u32>(var_1, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(39862u, var_1) & vec2<u32>(var_1, var_1)));
}

fn func_1() -> vec3<bool> {
    var var_0 = (~(~select(vec2<u32>(0u, 0u), vec2<u32>(0u, 0u), vec2<bool>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(32028u, 15u)]))) & (vec2<u32>(1u, _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(52200u, 10u)], vec3<u32>(97848u, 81417u, 1u))) << (_wgslsmith_mod_vec2_u32(select(vec2<u32>(52225u, 39379u), vec2<u32>(111155u, 0u), true), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))) << (min(firstLeadingBit(vec2<u32>(1u, 1u)), ~func_4(vec2<bool>(global3[_wgslsmith_index_u32(0u, 15u)], false), func_2(-1254f, vec2<f32>(964f, 1681f)), 1732f)) % vec2<u32>(32u));
    global4 = array<vec3<u32>, 10>();
    let var_1 = _wgslsmith_f_op_f32(round(-434f));
    let var_2 = func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), -675f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(587f, var_1) * vec2<f32>(-348f, var_1)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(588f, var_1), vec2<f32>(-1000f, -2232f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, var_1))))), vec2<bool>(global3[_wgslsmith_index_u32(var_0.x, 15u)], !global3[_wgslsmith_index_u32(var_0.x, 15u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, 1000f), vec2<f32>(491f, var_1), global3[_wgslsmith_index_u32(var_0.x, 15u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))));
    var var_3 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0.x, 55448u)), max(vec2<u32>(var_0.x, 0u) ^ vec2<u32>(var_0.x, var_0.x), abs(vec2<u32>(var_0.x, 17139u)))), _wgslsmith_sub_u32(reverseBits(firstLeadingBit(var_0.x)), select(40108u << (var_0.x % 32u), var_0.x | var_0.x, func_2(-725f, var_2.a.zz).b.x)));
    return !vec3<bool>(!global3[_wgslsmith_index_u32(var_0.x ^ ~1u, 15u)], all(!vec3<bool>(var_2.b.x, global3[_wgslsmith_index_u32(var_0.x, 15u)], global3[_wgslsmith_index_u32(15466u, 15u)])), (min(-2147483647i, 6320i) > firstTrailingBit(-2147483647i)) | global3[_wgslsmith_index_u32(var_0.x, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, abs(1u)), 15u)], true, !global3[_wgslsmith_index_u32(~1u, 15u)]);
    var var_1 = select(var_0.zzw, !vec3<bool>(!global3[_wgslsmith_index_u32(1u, 15u)], false, -u_input.b > u_input.a), any(func_1()) | all(vec2<bool>(true, true)));
    var var_2 = vec4<i32>(_wgslsmith_add_i32(u_input.a, ~4494i), u_input.b, (-2147483647i ^ ~global0.x) | -_wgslsmith_mult_i32(1i, -global0.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, global0.x), u_input.a & -1i, func_2(2004f, vec2<f32>(-653f, -1519f)).c), select(vec3<i32>(-23002i, 1i, global0.x) ^ vec3<i32>(11263i, u_input.a, 2147483647i), vec3<i32>(global0.x, u_input.a, u_input.b), vec3<bool>(var_1.x, true, false))), ~((vec3<i32>(-1i, global0.x, 1i) ^ vec3<i32>(-73642i, -36853i, global0.x)) ^ vec3<i32>(u_input.b, u_input.a, global0.x))));
    global3 = array<bool, 15>();
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(_wgslsmith_div_u32(0u, 45971u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39205u), vec2<u32>(2084u, 70894u)))), abs(~vec2<u32>(1u, 1u))), 16u)];
    var var_4 = select(-(vec4<i32>(-1i) * -countOneBits(vec4<i32>(-64591i, u_input.b, 2147483647i, global0.x))), vec4<i32>(var_2.x, func_2(_wgslsmith_f_op_f32(var_3.a.x * var_3.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(2183f, var_3.a.x), vec2<f32>(var_3.a.x, -416f))).c << (min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 212u, 4294967295u, 0u), vec4<u32>(1u, 33172u, 1u, 4294967295u)), ~0u) % 32u), 2147483647i >> (_wgslsmith_clamp_u32(min(1u, 28863u), ~13588u, ~55660u) % 32u), max(29237i, _wgslsmith_mod_i32(2147483647i, -52663i)) & (_wgslsmith_add_i32(var_2.x, 3808i) ^ global0.x)), select(vec4<bool>(var_1.x, true, global3[_wgslsmith_index_u32(4294967295u, 15u)], !global3[_wgslsmith_index_u32(0u, 15u)] && var_0.x), select(var_0, !var_0, true), select(var_0, var_0, vec4<bool>(false, any(var_1.yx), global3[_wgslsmith_index_u32(6013u, 15u)], var_1.x))));
    let var_5 = ~select(-(var_4.wx >> (countOneBits(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))), ~(-vec2<i32>(0i, 0i)), !(-2147483647i <= _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_4.x, 13513i, u_input.a), vec4<i32>(33187i, -22967i, -13920i, u_input.b))));
    let var_6 = func_2(_wgslsmith_div_f32(1f, var_3.a.x), var_3.a.yw);
    var_4 = countOneBits(-select(select(vec4<i32>(9282i, 1i, var_4.x, 2147483647i), vec4<i32>(u_input.a, global0.x, u_input.a, global0.x) ^ vec4<i32>(-4827i, 0i, 31345i, global0.x), true), reverseBits(countOneBits(vec4<i32>(-23558i, 48926i, var_6.c, -27930i))), select(!var_0, vec4<bool>(var_1.x, false, var_6.b.x, false), vec4<bool>(false, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mod_u32(_wgslsmith_mult_u32(67524u, 0u), countOneBits(4294967295u)), ~0u, all(var_1.yy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) - _wgslsmith_f_op_f32(min(var_6.a.x, 503f))), _wgslsmith_f_op_f32(min(-619f, _wgslsmith_f_op_f32(trunc(-716f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * func_2(var_6.a.x, var_6.a.zw).a.x), _wgslsmith_f_op_f32(-var_3.a.x))));
}

