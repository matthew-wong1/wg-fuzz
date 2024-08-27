struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: vec2<u32> = vec2<u32>(115455u, 1u);

var<private> global2: array<Struct_1, 17>;

var<private> global3: u32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2686f, -392f, false)));
    let var_1 = vec4<i32>(1i, 1i, 1i, 1i);
    global2 = array<Struct_1, 17>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-694f, -927f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1423f)) + _wgslsmith_f_op_f32(floor(211f))))));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, 63647u), 17u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1481f - 602f), _wgslsmith_f_op_f32(max(2318f, -313f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-320f)), 823f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-123f, 316f), 471f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1486f, 334f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(184f, 1098f)))) * vec2<f32>(_wgslsmith_f_op_f32(537f + -967f), 815f))), firstLeadingBit(select(~_wgslsmith_div_u32(55580u, 1u), global1.x, true)), false);
    return vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-234f, -734f)))))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = vec3<bool>(true, arg_0.e, true);
    global2 = array<Struct_1, 17>();
    var var_1 = vec3<bool>(false, true, all(vec4<bool>(false, arg_0.e, 15605u < global1.x, !(!arg_0.e))));
    global3 = arg_0.a.b;
    let var_2 = _wgslsmith_mult_u32(countOneBits(u_input.b), global1.x) >> (reverseBits(~(~select(global1.x, 28091u, arg_0.e))) % 32u);
    return Struct_3(Struct_1(countOneBits(_wgslsmith_mult_vec2_u32(~arg_0.a.a, countOneBits(vec2<u32>(0u, global1.x)))), ~(~0u) | var_2), Struct_1(~vec2<u32>(0u, select(global1.x, 71516u, false)), u_input.b), !var_1.zy, Struct_2(Struct_1(~vec2<u32>(arg_0.d, 1u), 0u), _wgslsmith_f_op_vec2_f32(ceil(arg_0.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3()))), max(4294967295u, 16389u), !(true | any(vec3<bool>(false, false, arg_0.e)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.b.x, arg_0.c.x, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, arg_0.b.x, -2554f) + vec3<f32>(arg_0.b.x, -1000f, 1000f))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_3) -> u32 {
    var var_0 = select(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(abs(vec4<u32>(27571u, 4294967295u, u_input.a, arg_0.b.a.x))), firstTrailingBit(vec4<u32>(1u, u_input.b, arg_3.d.a.b, u_input.a)) >> (firstLeadingBit(vec4<u32>(global1.x, u_input.b, 4294967295u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.d.a.a.x, ~arg_0.b.a.x, arg_0.a.a.x >> (u_input.b % 32u), max(58433u, 1u)), ~vec4<u32>(1u, 43924u, 24573u, 1u) & vec4<u32>(24247u, 4294967295u, global1.x, 46842u), vec4<u32>(10799u, u_input.b, arg_3.d.a.a.x ^ 1u, _wgslsmith_sub_u32(1u, 1u)))), !(any(select(vec4<bool>(false, true, arg_0.c.x, arg_0.c.x), vec4<bool>(true, arg_3.c.x, arg_2, true), vec4<bool>(true, false, true, true))) & arg_0.c.x));
    var var_1 = arg_0.b.b;
    var_1 = u_input.b;
    let var_2 = arg_0.b;
    var var_3 = func_2(Struct_2(Struct_1(vec2<u32>(~var_2.b, u_input.b), _wgslsmith_dot_vec2_u32(func_2(arg_3.d).d.a.a, arg_0.d.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-604f, 936f) * vec2<f32>(488f, arg_0.e.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.b.x, -1918f))), _wgslsmith_f_op_vec2_f32(-arg_0.d.c), _wgslsmith_dot_vec3_u32(abs(global0[_wgslsmith_index_u32(1u, 1u)]), firstLeadingBit(vec3<u32>(4294967295u, 1u, u_input.b))) & ~(global1.x & 4294967295u), true)).d;
    return var_3.a.b;
}

fn func_1() -> vec3<bool> {
    global1 = vec2<u32>(global1.x, ~(~u_input.a) >> (~func_4(Struct_3(global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(102006u, 17u)], vec2<bool>(false, false), Struct_2(global2[_wgslsmith_index_u32(global1.x, 17u)], vec2<f32>(1093f, 1045f), vec2<f32>(378f, 674f), global1.x, false), vec3<f32>(-764f, -731f, 1320f)), vec3<bool>(true, true, true), true, func_2(Struct_2(global2[_wgslsmith_index_u32(17308u, 17u)], vec2<f32>(-2167f, 1000f), vec2<f32>(-346f, -1240f), 91164u, false))) % 32u));
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(select(vec3<i32>(40450i, -2147483647i, 1i), vec3<i32>(-38669i, -18664i, -15130i), true)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -30033i, 18692i), vec3<i32>(1i, 1i, 1i))), vec3<i32>(1i, 1i, 1i)), -43735i);
    let var_1 = !(!vec2<bool>(global1.x != 0u, any(vec4<bool>(false, true, false, false)) | true));
    let var_2 = _wgslsmith_div_f32(306f, _wgslsmith_f_op_f32(f32(-1f) * -169f));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(floor(var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(f32(-1f) * -691f))) + var_2)));
    return vec3<bool>(false, true, !var_1.x | var_1.x);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: f32) -> vec3<i32> {
    global1 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), firstTrailingBit(~vec2<u32>(16226u, 1u)), firstLeadingBit(vec2<u32>(4294967295u, 0u) << (vec2<u32>(58097u, global1.x) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a, u_input.b & 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 31251u), vec2<u32>(36763u, global1.x), vec2<u32>(1u, u_input.b)) ^ vec2<u32>(u_input.b, 1u)));
    global2 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_3()))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, arg_0)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_3 + arg_3), -446f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-325f + arg_0), _wgslsmith_f_op_f32(exp2(arg_0))) + vec2<f32>(arg_0, _wgslsmith_f_op_f32(442f * arg_0))), arg_1))));
    global2 = array<Struct_1, 17>();
    global0 = array<vec3<u32>, 1>();
    return max(_wgslsmith_mult_vec3_i32((~vec3<i32>(arg_2, arg_2, arg_2) << (max(vec3<u32>(global1.x, 4294967295u, 4294967295u), global0[_wgslsmith_index_u32(14589u, 1u)]) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, 6505i, arg_2), vec3<i32>(-1i, 0i, -3760i)), vec3<i32>(5506i, -1534i, arg_2)), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 26450i), -vec2<i32>(arg_2, arg_2)), _wgslsmith_add_i32(arg_2, -arg_2), firstLeadingBit(_wgslsmith_mod_i32(arg_2, arg_2)))), -reverseBits(select(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, arg_2, arg_2), vec3<i32>(arg_2, arg_2, arg_2)), min(vec3<i32>(1432i, arg_2, arg_2), vec3<i32>(-86491i, arg_2, -1i)), any(vec4<bool>(true, arg_1, arg_1, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1132f)) - -379f), _wgslsmith_f_op_f32(f32(-1f) * -324f), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))))), !all(func_1()), -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(f32(-1f) * -1164f))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), -_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -78468i, -54144i), vec3<i32>(3788i, -2147483647i, 17124i), vec3<i32>(-471i, 21602i, 22332i)), vec3<i32>(-20122i, -50314i, -92040i)), ~vec3<i32>(1i, 1i, 1i) << (((vec3<u32>(0u, u_input.b, global1.x) & global0[_wgslsmith_index_u32(29611u, 1u)]) ^ ~vec3<u32>(u_input.b, 4294967295u, 0u)) % vec3<u32>(32u))), reverseBits(func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -670f), _wgslsmith_f_op_f32(f32(-1f) * -746f), any(vec2<bool>(true, false)))), select(21906u == global1.x, any(vec2<bool>(false, true)), true), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-31187i, -2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -27933i), vec2<i32>(-1i, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -578f) + _wgslsmith_f_op_f32(f32(-1f) * -1394f)))));
    var var_1 = Struct_2(func_2(Struct_2(global2[_wgslsmith_index_u32(global1.x, 17u)], vec2<f32>(1f, _wgslsmith_f_op_f32(min(-1000f, 156f))), vec2<f32>(645f, _wgslsmith_f_op_f32(select(-467f, 1277f, false))), ~(~31202u), any(vec3<bool>(true, false, false)))).b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(758f, -641f) + vec2<f32>(-916f, 975f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1032f, 384f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-136f, -278f))))), firstTrailingBit(_wgslsmith_add_u32(firstLeadingBit(~4294967295u), u_input.a | 1u)), true);
    let var_2 = var_1.a;
    global2 = array<Struct_1, 17>();
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 7469u), 17u)], vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_vec2_f32(func_3()), var_2.a.x, false);
    var var_4 = func_2(func_2(func_2(func_2(Struct_2(Struct_1(vec2<u32>(global1.x, 77097u), var_2.a.x), vec2<f32>(var_3.c.x, -273f), vec2<f32>(378f, 278f), var_2.b, true)).d).d).d).a;
    let var_5 = ~(-_wgslsmith_sub_vec4_i32(~(~vec4<i32>(var_0.x, 52881i, var_0.x, -2147483647i)), vec4<i32>(i32(-1i) * -2147483647i, -var_0.x, var_0.x, -1i)));
    var_4 = global2[_wgslsmith_index_u32(global1.x, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, var_3.a.a, var_1.b);
}

