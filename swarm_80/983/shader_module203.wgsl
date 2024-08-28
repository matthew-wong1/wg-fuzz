struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_4,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(22931u, 12795u, 3138u), vec3<u32>(93588u, 41643u, 14669u), vec3<u32>(19971u, 4294967295u, 1429u), vec3<u32>(0u, 1u, 46840u), vec3<u32>(22223u, 1837u, 1u), vec3<u32>(0u, 27799u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 0u, 92056u), vec3<u32>(101577u, 14032u, 0u), vec3<u32>(5882u, 37792u, 1u), vec3<u32>(84856u, 0u, 4294967295u), vec3<u32>(4294967295u, 1428u, 30792u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 71086u, 0u), vec3<u32>(46754u, 0u, 89501u), vec3<u32>(1u, 0u, 41624u), vec3<u32>(1u, 4294967295u, 22285u), vec3<u32>(9282u, 4294967295u, 40632u), vec3<u32>(52125u, 32982u, 35534u), vec3<u32>(1u, 1u, 1u), vec3<u32>(2845u, 4294967295u, 4294967295u), vec3<u32>(1u, 44247u, 0u), vec3<u32>(561u, 898u, 1u), vec3<u32>(0u, 12560u, 4294967295u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 38382u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(28621u, 4294967295u, 19701u), vec3<u32>(14558u, 37681u, 4294967295u), vec3<u32>(4294967295u, 55614u, 1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_5) -> i32 {
    global1 = array<vec3<u32>, 31>();
    var var_0 = arg_3.c.e.c.e;
    var var_1 = 52553i;
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.e)), _wgslsmith_f_op_f32(trunc(-2522f)), _wgslsmith_f_op_f32(trunc(arg_2.e)), _wgslsmith_f_op_f32(step(-1251f, 1000f))))));
    return _wgslsmith_mod_i32(arg_3.c.e.c.a.a.x, 0i);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_5 {
    var var_0 = u_input.a;
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_1(arg_1.ywz);
    let var_3 = ~_wgslsmith_mult_vec3_u32(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 25388u), vec2<u32>(18215u, 58059u))), 31u)], global1[_wgslsmith_index_u32(1u, 31u)], false), ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(min(4294967295u, 0u), 29164u), 31u)]);
    var var_4 = Struct_3((firstLeadingBit(_wgslsmith_clamp_i32(var_2.a.x, u_input.a, -1i)) == -u_input.a) || (true || any(!vec2<bool>(var_1.x, false))), any(vec3<bool>(arg_2.x, !all(arg_2.zxx), !global0.x)), Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(arg_1.ywy, vec3<i32>(arg_1.x, 17062i, u_input.a)) & arg_1.zyw), ~global1[_wgslsmith_index_u32(72560u, 31u)], _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 91661u, var_3.x, 0u), vec4<u32>(0u, var_3.x, var_3.x, 0u)) | ~vec4<u32>(1u, var_3.x, 1u, var_3.x), ~(vec4<u32>(var_3.x, 53298u, 31706u, var_3.x) ^ vec4<u32>(var_3.x, var_3.x, 4294967295u, 21887u))), ~(-min(arg_1.yww, vec3<i32>(29731i, 1i, -2147483647i))), 116f), false, Struct_1(_wgslsmith_add_vec3_i32(select(vec3<i32>(var_2.a.x, arg_1.x, 1i), max(vec3<i32>(-3117i, u_input.a, var_2.a.x), var_2.a), var_1), arg_1.zxx)));
    return Struct_5(4519u, 2147483647i, Struct_4(_wgslsmith_f_op_f32(-794f - _wgslsmith_f_op_f32(trunc(-393f))), vec3<f32>(var_4.c.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_4.c.e, var_4.c.e, global0.x)), _wgslsmith_f_op_f32(-2243f - -165f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.c.e))), _wgslsmith_f_op_f32(1665f * _wgslsmith_f_op_f32(min(-1011f, _wgslsmith_f_op_f32(var_4.c.e + var_4.c.e)))), var_4.e.a.x, Struct_3(global0.x, var_4.d, var_4.c, !(!global0.x), var_4.c.a)), _wgslsmith_dot_vec3_u32(max(var_3, ~global1[_wgslsmith_index_u32(var_4.c.c.x, 31u)]), (var_3 & vec3<u32>(4294967295u, var_3.x, 0u)) & _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_4.c.b, vec3<u32>(var_4.c.c.x, var_3.x, 2980u)), max(global1[_wgslsmith_index_u32(var_3.x, 31u)], global1[_wgslsmith_index_u32(var_4.c.c.x, 31u)]))), var_4.c.c);
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    var var_0 = func_3(true, vec4<i32>(1i, 57248i, select(func_2(vec2<bool>(global0.x, false), all(vec4<bool>(true, false, global0.x, true)), Struct_2(Struct_1(vec3<i32>(1i, -2147483647i, -2147483647i)), vec3<u32>(0u, 4294967295u, 0u), vec4<u32>(4744u, 74926u, 18615u, 1u), vec3<i32>(30436i, 1i, u_input.a), arg_0.x), Struct_5(110305u, u_input.a, Struct_4(721f, vec3<f32>(arg_0.x, 622f, arg_0.x), 1995f, -1i, Struct_3(true, true, Struct_2(Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(21768u, 1u, 1u), vec4<u32>(21383u, 1u, 4294967295u, 4294967295u), vec3<i32>(-1i, u_input.a, u_input.a), -858f), global0.x, Struct_1(vec3<i32>(34808i, u_input.a, 0i)))), 0u, vec4<u32>(1813u, 0u, 4294967295u, 0u))), u_input.a, all(!vec2<bool>(false, global0.x))), -18006i), !vec4<bool>(true, global0.x, true, any(!vec4<bool>(global0.x, false, true, false))));
    let var_1 = var_0.c.e;
    var_0 = func_3(!(select(var_0.c.e.d, var_0.c.e.d, true) == func_3(var_0.c.e.b, -vec4<i32>(var_1.e.a.x, var_1.c.d.x, -783i, var_0.b), vec4<bool>(false, global0.x, var_0.c.e.b, var_0.c.e.b)).c.e.d), _wgslsmith_sub_vec4_i32(-(vec4<i32>(u_input.a, var_1.e.a.x, -1i, 2147483647i) >> (vec4<u32>(var_1.c.b.x, 4294967295u, var_0.d, 7664u) % vec4<u32>(32u))) >> (var_1.c.c % vec4<u32>(32u)), vec4<i32>(-36502i | var_1.e.a.x, u_input.a, func_2(vec2<bool>(true, true), var_1.d, Struct_2(Struct_1(vec3<i32>(-26086i, var_0.c.d, 42501i)), vec3<u32>(var_1.c.b.x, var_1.c.b.x, 0u), var_1.c.c, vec3<i32>(var_1.e.a.x, 7618i, -1i), 1172f), func_3(true, vec4<i32>(34349i, u_input.a, u_input.a, -1i), vec4<bool>(true, var_0.c.e.b, true, true))), 44272i)), select(select(vec4<bool>(var_0.c.e.a, var_1.a | var_0.c.e.a, true, all(vec4<bool>(true, global0.x, false, false))), !select(vec4<bool>(false, global0.x, global0.x, var_0.c.e.d), vec4<bool>(false, var_1.a, false, var_1.a), var_1.b), true), vec4<bool>(var_1.a, !var_1.b, !any(vec2<bool>(var_0.c.e.a, global0.x)), false), select(select(!vec4<bool>(var_0.c.e.b, false, var_1.b, true), vec4<bool>(true, true, var_0.c.e.a, false), false | var_1.a), select(vec4<bool>(true, var_0.c.e.b, false, false), select(vec4<bool>(global0.x, true, var_0.c.e.d, false), vec4<bool>(true, global0.x, false, false), false), select(vec4<bool>(false, true, var_1.a, var_0.c.e.d), vec4<bool>(global0.x, true, var_0.c.e.b, false), vec4<bool>(true, var_0.c.e.d, true, true))), select(!vec4<bool>(false, global0.x, var_1.b, var_0.c.e.b), !vec4<bool>(var_1.a, true, var_0.c.e.a, false), !vec4<bool>(global0.x, true, true, false)))));
    let var_2 = ~vec3<i32>(-19490i, _wgslsmith_sub_i32(var_0.c.d, 1i), max(~2147483647i, abs(-19182i))) ^ _wgslsmith_sub_vec3_i32(abs(abs(vec3<i32>(u_input.a, 18790i, -2147483647i) | vec3<i32>(var_0.b, 0i, 2312i))), firstTrailingBit(vec3<i32>(var_0.c.e.e.a.x, var_1.e.a.x, -78043i) | var_1.e.a));
    var var_3 = -1i >> (0u % 32u);
    return var_1.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(select(!select(vec2<bool>(false, true), vec2<bool>(global0.x, true), false), vec2<bool>(!global0.x, all(vec3<bool>(global0.x, global0.x, true))), !(!vec2<bool>(global0.x, true))), select(select(vec2<bool>(true, false), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), global0.x), all(vec2<bool>(true, false))), vec2<bool>(u_input.a >= u_input.a, global0.x), vec2<bool>(select(global0.x, global0.x, true), true)), global0.x);
    var var_0 = Struct_3(-674f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(-642f, -476f, -873f, -1000f))) - _wgslsmith_f_op_f32(round(-1018f))), 273f)), all(!vec3<bool>(true, global0.x, true)), Struct_2(Struct_1(-firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 0i))), ~((global1[_wgslsmith_index_u32(4294967295u, 31u)] & vec3<u32>(4294967295u, 4294967295u, 4294967295u)) << ((vec3<u32>(1u, 33211u, 13069u) ^ global1[_wgslsmith_index_u32(38675u, 31u)]) % vec3<u32>(32u))), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(41828u, 0u, 50643u, 2822u)), ~vec4<u32>(1u, 1u, 1u, 1u)), min(abs(vec3<i32>(-58555i, 1i, u_input.a) ^ vec3<i32>(-1i, 31641i, -32598i)), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(u_input.a, 2147483647i, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1491f)) + _wgslsmith_f_op_f32(303f * -677f))), global0.x & all(vec2<bool>(global0.x, false)), Struct_1(select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(-4271i, -64936i, u_input.a), vec3<i32>(6891i, u_input.a, u_input.a) & vec3<i32>(1i, 3125i, -1i)), vec3<i32>(u_input.a, u_input.a, -88145i), true)));
    var_0 = Struct_3(!var_0.d, true, var_0.c, global0.x, var_0.c.a);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.c.c, var_0.c.c), 45311u & var_0.c.c.x)), ~(vec2<u32>(var_0.c.c.x, 0u) | var_0.c.b.zy) | _wgslsmith_add_vec2_u32(vec2<u32>(32488u, 0u), min(vec2<u32>(var_0.c.c.x, 17647u), vec2<u32>(var_0.c.c.x, 4294967295u)))), var_0.c.b.x | _wgslsmith_dot_vec2_u32(var_0.c.c.xx, vec2<u32>(~135996u, 12450u)), 4294967295u, ~var_0.c.b.x);
    var_0 = Struct_3(!global0.x, global0.x, Struct_2(var_0.e, vec3<u32>(0u, (var_0.c.c.x ^ var_0.c.b.x) >> (var_1.x % 32u), func_3(!global0.x, vec4<i32>(var_0.c.a.a.x, 2147483647i, -46762i, -2147483647i) >> (vec4<u32>(1u, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u)), select(vec4<bool>(false, global0.x, false, var_0.d), vec4<bool>(true, global0.x, true, var_0.d), vec4<bool>(false, global0.x, false, false))).a), vec4<u32>(~(~var_0.c.c.x), var_0.c.b.x, var_0.c.c.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53356u, 20054u, var_0.c.c.x), vec4<u32>(var_1.x, 1u, 1u, 0u)), _wgslsmith_dot_vec3_u32(var_0.c.c.xxx, vec3<u32>(1u, 0u, var_1.x)))), -(var_0.e.a >> ((vec3<u32>(var_1.x, var_1.x, var_0.c.b.x) << (vec3<u32>(4294967295u, 4294967295u, 23604u) % vec3<u32>(32u))) % vec3<u32>(32u))), var_0.c.e), true, var_0.e);
    let var_2 = 20233u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1483f) * _wgslsmith_div_f32(419f, 232f)), -1286f)), -(i32(-1i) * -39670i));
}

