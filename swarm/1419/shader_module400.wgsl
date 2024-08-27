struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-782f, -140f, -684f);

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 0u, 41445u), vec3<u32>(30460u, 1u, 1u), vec3<u32>(10374u, 46742u, 29993u), vec3<u32>(0u, 81245u, 18686u), vec3<u32>(4255u, 0u, 19914u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 60037u), vec3<u32>(32673u, 0u, 4294967295u), vec3<u32>(58696u, 4294967295u, 59394u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(9944u, 44180u, 0u), vec3<u32>(4294967295u, 16985u, 4294967295u), vec3<u32>(1u, 4294967295u, 62458u), vec3<u32>(4294967295u, 34695u, 94673u), vec3<u32>(87053u, 1u, 60197u), vec3<u32>(32683u, 1u, 6519u), vec3<u32>(0u, 14557u, 4294967295u), vec3<u32>(27966u, 1u, 15521u), vec3<u32>(4294967295u, 16881u, 69943u), vec3<u32>(30134u, 3924u, 91077u), vec3<u32>(72109u, 0u, 0u), vec3<u32>(0u, 58882u, 0u), vec3<u32>(9923u, 4294967295u, 2267u), vec3<u32>(13110u, 25872u, 0u), vec3<u32>(14328u, 26501u, 67794u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 41882u, 67997u), vec3<u32>(41328u, 83728u, 2594u), vec3<u32>(5778u, 17618u, 31055u), vec3<u32>(55637u, 12445u, 4294967295u));

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec3<bool> {
    let var_0 = arg_0;
    var var_1 = Struct_3(~(-40574i ^ firstTrailingBit(-1220i)) != (i32(-1i) * -firstTrailingBit(-2147483647i)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f), global0.x)), 546f, _wgslsmith_f_op_f32(1186f - _wgslsmith_f_op_f32(sign(global0.x)))), -_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, 64456i, 25068i), reverseBits(vec3<i32>(-23218i, 9271i, -2147483647i))) >> (select(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(1u, 62707u)), 31u)], global1[_wgslsmith_index_u32(abs(17882u), 31u)], vec3<bool>(var_0.x, !var_0.x, select(arg_0.x, false, false))) % vec3<u32>(32u)), vec2<bool>(true, true), countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(54858i, -1i)), -vec2<i32>(-1i, 31725i)), vec2<i32>(1i, 1i))));
    var var_2 = _wgslsmith_f_op_f32(sign(var_1.b.x));
    var var_3 = Struct_2(-1000f, Struct_1(2147483647i, -_wgslsmith_add_i32(-18055i, var_1.c.x) << (4294967295u % 32u), _wgslsmith_f_op_vec3_f32(-var_1.b.xxz)), Struct_1(_wgslsmith_div_i32(var_1.c.x & var_1.c.x, var_1.e), var_1.e, var_1.b.xyw), var_1.b.x);
    var_1 = Struct_3(false, vec4<f32>(-641f, _wgslsmith_f_op_f32(ceil(480f)), global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0.x, var_1.b.x))))), vec3<i32>((i32(-1i) * -var_1.e) >> (_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(1u, 31u)], vec3<u32>(u_input.b, arg_1, 1453u)) % 32u), var_3.c.b, min(-var_3.c.a, ~(~var_1.c.x))), var_0, 2147483647i);
    return !select(select(select(vec3<bool>(arg_0.x, false, var_1.d.x), vec3<bool>(var_1.d.x, false, true), arg_0.x), vec3<bool>(true, true, true), !select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, true, true), vec3<bool>(arg_0.x, true, var_1.d.x))), !vec3<bool>(arg_0.x, any(var_0), !arg_0.x), var_0.x);
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = select(!func_3(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(false, false)), u_input.b), !vec3<bool>(all(vec3<bool>(true, true, true)), false, true), !vec3<bool>(true, !all(vec4<bool>(true, true, false, false)), false));
    var_0 = !(!(!vec3<bool>(u_input.b == 0u, true, true)));
    global2 = array<Struct_2, 30>();
    let var_1 = 138f;
    let var_2 = Struct_1(-_wgslsmith_sub_i32(arg_0, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -26952i, arg_0), vec3<i32>(arg_0, -24273i, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0, 2147483647i, arg_0), vec4<i32>(arg_0, -1i, -2147483647i, -7764i)), min(arg_0, arg_0))), select(_wgslsmith_mod_i32(countOneBits(0i), -(i32(-1i) * -1i)), arg_0, var_0.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-702f, global0.x, _wgslsmith_f_op_f32(-121f * var_1)), vec3<f32>(_wgslsmith_f_op_f32(floor(-566f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(sign(var_1))))))));
    return var_2.c.x;
}

fn func_1() -> vec3<i32> {
    global1 = array<vec3<u32>, 31>();
    global0 = vec3<f32>(_wgslsmith_f_op_f32(floor(809f)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1174f, global0.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-(~(-28230i))))));
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1207f)), global0.x), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 2030f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))), 590f);
    let var_0 = Struct_3(true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, global0.x, -1160f, global0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2403f, -1331f, global0.x, global0.x), vec4<f32>(251f, global0.x, global0.x, global0.x))), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1642f, -3409f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, -1629f, global0.x, 1000f), vec4<f32>(global0.x, -672f, 1250f, -1749f)))))))), vec3<i32>(-_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, 0i, -1924i)), vec3<i32>(1i, 1i, 1i)), i32(-1i) * -92371i, i32(-1i) * -116091i), select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), !vec2<bool>(all(vec2<bool>(false, false)), -1226f < global0.x), !select(vec2<bool>(true, true), vec2<bool>(true, true), true)), countOneBits(1i));
    global2 = array<Struct_2, 30>();
    return var_0.c;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(1u, select(u_input.a.x, ~(_wgslsmith_mod_u32(4294967295u, u_input.a.x) & 1u), false), arg_3);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * 801f) - _wgslsmith_div_f32(3107f, _wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-global0.x)))), Struct_1(-2147483647i, 29240i, vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 1179f) + 405f))), Struct_1(arg_0.x, 1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, arg_2, arg_2))), vec3<f32>(arg_2, global0.x, 967f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1783f, arg_2, -545f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(963f, -1000f, arg_2))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), true)))), 157f);
    var var_2 = arg_0;
    let var_3 = Struct_3(true, vec4<f32>(var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + _wgslsmith_f_op_f32(arg_2 * var_1.b.c.x)), var_1.c.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2484f)), -2855f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.x, 173f)), _wgslsmith_f_op_f32(var_1.d - 1000f))), ~u_input.a.x != arg_3)), _wgslsmith_f_op_f32(func_2(~var_2.x))), arg_0 >> ((global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(4294967295u, var_0), 31u)] | firstTrailingBit(global1[_wgslsmith_index_u32(~0u, 31u)])) % vec3<u32>(32u)), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), abs(countOneBits(-52331i)));
    let var_4 = 0i;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-791f * -501f), func_4(~(func_1() << ((global1[_wgslsmith_index_u32(0u, 31u)] ^ global1[_wgslsmith_index_u32(0u, 31u)]) % vec3<u32>(32u))), firstLeadingBit(reverseBits(-1i)), _wgslsmith_f_op_f32(-global0.x), firstTrailingBit(~(~u_input.b))), func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, _wgslsmith_div_i32(55110i, -94363i), _wgslsmith_div_i32(0i, -1i)), ~(-vec3<i32>(-21443i, -1i, 172i))), -46425i, 493f, ~((u_input.b | 0u) ^ _wgslsmith_sub_u32(42357u, 25237u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-213f + global0.x) + -120f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))) - _wgslsmith_f_op_f32(-var_0.a)))));
    let var_2 = var_0.c.b;
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.c.c))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1696f), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, var_0.c.c.x)))))), !vec3<bool>(true, all(vec4<bool>(true, true, false, true)), any(vec2<bool>(true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(max(~vec4<u32>(u_input.b, 33099u, 1u, u_input.a.x), reverseBits(vec4<u32>(18553u, u_input.a.x, 79792u, u_input.a.x))), _wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.b, 89087u, 49814u, 0u), vec4<u32>(36647u, 4294967295u, 92330u, u_input.b)), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)), vec4<bool>(true, false, true, any(vec3<bool>(false, false, false)))), 34057u);
}

