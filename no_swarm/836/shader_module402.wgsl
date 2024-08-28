struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-20734i, i32(-2147483648), 8737i, i32(-2147483648)), vec4<i32>(-3903i, -9993i, 2147483647i, i32(-2147483648)), vec4<i32>(20730i, -1i, 2147483647i, 2147483647i), vec4<i32>(70390i, -1i, -11940i, i32(-2147483648)), vec4<i32>(0i, 44830i, -1i, 0i), vec4<i32>(2147483647i, 1i, 8573i, 1i), vec4<i32>(2147483647i, 0i, 39434i, 2147483647i), vec4<i32>(40289i, 34895i, 0i, -22235i), vec4<i32>(0i, 8286i, -29070i, i32(-2147483648)), vec4<i32>(2147483647i, 54481i, 0i, 1i), vec4<i32>(2147483647i, -29502i, 1i, -8417i), vec4<i32>(-19220i, -31496i, -20230i, 9157i), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 28449i), vec4<i32>(36539i, 1i, 1i, -12215i), vec4<i32>(1i, i32(-2147483648), -44732i, -54855i), vec4<i32>(-65371i, 0i, -51839i, 2147483647i), vec4<i32>(2147483647i, 0i, 1i, 43753i), vec4<i32>(-16009i, 1i, 1i, -65212i), vec4<i32>(0i, 7021i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -25460i, -42123i, -9860i), vec4<i32>(-59731i, -23821i, 31952i, -1i), vec4<i32>(16003i, i32(-2147483648), -27090i, 0i), vec4<i32>(-4498i, -11086i, 2147483647i, -38114i), vec4<i32>(1i, 13146i, 15376i, -28491i), vec4<i32>(0i, 2147483647i, -31571i, 0i), vec4<i32>(-16564i, -1i, -40083i, 2147483647i), vec4<i32>(15063i, 1i, 37490i, 43013i), vec4<i32>(-19583i, 2147483647i, -17667i, 34873i), vec4<i32>(27901i, -63485i, 1i, 31610i));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_5) -> f32 {
    let var_0 = !select(select(select(!vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), arg_2.a.a && arg_0.a), vec2<bool>(select(true, arg_0.a, false), !arg_2.a.a), select(vec2<bool>(arg_2.a.a, true), vec2<bool>(true, arg_2.a.a), arg_2.a.a)), select(select(select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_2.a.a), vec2<bool>(true, arg_2.a.a)), select(vec2<bool>(arg_2.a.a, arg_2.a.a), vec2<bool>(true, true), vec2<bool>(false, arg_0.a)), select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_2.a.a), arg_2.a.a)), vec2<bool>(true, true), true), arg_0.a);
    global0 = array<vec4<i32>, 29>();
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(reverseBits(select(abs(arg_0.d.x), arg_2.a.c.x, any(vec4<bool>(arg_2.a.a, false, true, arg_2.a.a)))), 29u)]);
    global0 = array<vec4<i32>, 29>();
    let var_2 = arg_2.a;
    return arg_2.a.b;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    let var_0 = !select(vec2<bool>(select(true, arg_3.a, true), false), select(select(select(vec2<bool>(false, arg_3.a), vec2<bool>(false, false), true), select(vec2<bool>(true, arg_3.a), vec2<bool>(true, false), vec2<bool>(false, arg_0)), arg_0), select(!vec2<bool>(true, arg_0), select(vec2<bool>(false, true), vec2<bool>(true, true), arg_3.a), vec2<bool>(arg_3.a, false)), vec2<bool>(arg_0, !arg_3.a)), !(!select(vec2<bool>(false, true), vec2<bool>(arg_3.a, arg_3.a), vec2<bool>(true, arg_0))));
    global0 = array<vec4<i32>, 29>();
    global0 = array<vec4<i32>, 29>();
    var var_1 = Struct_1(var_0.x, _wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, -288f, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_3.c, vec2<u32>(arg_3.c.x, u_input.a), vec2<u32>(u_input.a, arg_3.d.x)), ~vec2<u32>(arg_3.e, arg_3.c.x), arg_3.d.zx | arg_3.c), ~(~arg_3.d), ~_wgslsmith_add_u32(arg_3.e, 0u)), arg_3.d.x, Struct_5(arg_3))), vec2<u32>(~(~u_input.a), _wgslsmith_div_u32(56527u, 17855u)), vec4<u32>(6918u, _wgslsmith_dot_vec3_u32(max(abs(arg_3.d.wzy), arg_3.d.yyw), vec3<u32>(u_input.a, 8578u, arg_3.e) << (reverseBits(arg_3.d.zyw) % vec3<u32>(32u))), ~(~(~u_input.a)), u_input.a), 1u);
    var var_2 = Struct_4(Struct_3(vec3<i32>(~(-1i), arg_2.a.x, -_wgslsmith_clamp_i32(arg_2.a.x, 0i, arg_2.a.x)), Struct_2(-(~vec4<i32>(61550i, arg_2.a.x, arg_2.a.x, arg_2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(266f)) * _wgslsmith_f_op_f32(round(var_1.b)))), vec2<bool>(all(var_0), var_0.x), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1523f)))))));
    return _wgslsmith_mod_i32(select(arg_2.a.x, firstTrailingBit(arg_2.a.x), (var_1.b > 310f) && (u_input.a == var_1.d.x)) | 2147483647i, arg_2.a.x);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: i32) -> vec4<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) * _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(150f - -1808f));
    var var_1 = Struct_2(arg_0.b.a);
    var_1 = Struct_2(select(abs(vec4<i32>(func_2(arg_0.d.x, arg_0.e, arg_0.b, Struct_1(arg_0.d.x, var_0.x, vec2<u32>(0u, 0u), vec4<u32>(19044u, 37402u, 5078u, 82020u), u_input.a)), -2147483647i, arg_2, arg_2 >> (22536u % 32u))), ~abs(vec4<i32>(0i, arg_0.a.x, arg_2, arg_2)), !(!any(vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x)))));
    var_1 = Struct_2(global0[_wgslsmith_index_u32(~(~arg_1.x), 29u)]);
    var_1 = arg_0.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, 2049f, _wgslsmith_f_op_f32(trunc(-1000f)), 964f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true));
    let var_1 = Struct_2(select(vec4<i32>(~(-41460i), _wgslsmith_mult_i32(~(-19423i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 13235i, 1i, -85834i), global0[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_mod_i32(-1i, -1859i), 1i >> (~u_input.a % 32u)), _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(0u, 29u)], vec4<i32>(0i, 1i, 2147483647i, i32(-1i) * -2147483647i)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-max(-1i, _wgslsmith_mult_i32(2147483647i, ~var_1.a.x)), var_1.a.x, _wgslsmith_add_u32(u_input.a, countOneBits(4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1600f, -556f, 516f, -178f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(vec3<i32>(2147483647i, var_1.a.x, -11417i), var_1, -578f, vec2<bool>(true, false), 359f), vec2<u32>(u_input.a, u_input.a), var_1.a.x)), vec4<f32>(-654f, 226f, -2009f, -1498f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(933f, 180f))), -1353f, _wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(898f)))))));
}

