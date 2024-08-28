struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(1000f, 9913i), Struct_2(-426f, 2158i), Struct_2(1217f, 36837i), Struct_2(180f, i32(-2147483648)), Struct_2(1717f, -1i), Struct_2(-482f, 1i), Struct_2(340f, 2147483647i), Struct_2(-1879f, -1i), Struct_2(2630f, -54161i), Struct_2(442f, 7760i), Struct_2(-973f, -1919i), Struct_2(-1151f, i32(-2147483648)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = ~abs(abs(0u));
    global0 = array<Struct_2, 12>();
    let var_1 = vec2<f32>(1f, 1f);
    let var_2 = vec4<u32>(arg_0 >> (~arg_0 % 32u), max(3837u, arg_0), arg_0, u_input.a.x);
    global0 = array<Struct_2, 12>();
    return u_input.d.x & u_input.d.x;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-915f, -1661f), vec2<f32>(-932f, -572f), true))))));
    global0 = array<Struct_2, 12>();
    var var_1 = vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -303f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(197f - -646f))), _wgslsmith_div_f32(-1594f, _wgslsmith_f_op_f32(-346f + var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, var_0.x, -279f, var_0.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, 236f, var_0.x, -224f) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 729f), vec4<f32>(var_0.x, var_0.x, var_0.x, -669f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(var_0.x - 266f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -267f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))));
    return Struct_3(firstLeadingBit(-27473i), firstTrailingBit(~_wgslsmith_clamp_vec3_i32(~vec3<i32>(-22271i, u_input.d.x, var_1.x), vec3<i32>(var_1.x, 2147483647i, 0i), countOneBits(vec3<i32>(0i, 1i, -32759i)))), Struct_2(var_0.x, func_3(1u) >> ((~u_input.c >> (~50387u % 32u)) % 32u)), vec2<bool>(true, true));
}

fn func_1() -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -369f), 24164i);
    var var_1 = -(~_wgslsmith_div_i32(_wgslsmith_mult_i32(0i, 22057i), -u_input.d.x)) | 8809i;
    var var_2 = Struct_4(_wgslsmith_sub_i32(0i, ~22178i | _wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, var_0.b), 1i)));
    var var_3 = func_2();
    var_1 = -var_0.b;
    return true;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = true;
    var_0 = (-1848f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-671f * _wgslsmith_f_op_f32(min(-707f, 690f))))) && false;
    let var_1 = u_input.d;
    let var_2 = global0[_wgslsmith_index_u32(max(20629u, firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 52623u, 5645u, 87358u), vec4<u32>(0u, arg_2.x, 8209u, 0u)), reverseBits(vec4<u32>(1u, 4294967295u, 0u, arg_2.x) << (vec4<u32>(1908u, arg_2.x, 51822u, u_input.a.x) % vec4<u32>(32u)))))), 12u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, var_2.a, var_2.a, arg_3.x), vec4<f32>(var_2.a, var_2.a, var_2.a, -999f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-759f, -1403f, 1328f, 267f), vec4<f32>(var_2.a, var_2.a, -536f, 676f)))))));
    return global0[_wgslsmith_index_u32(firstTrailingBit(~arg_2.x), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-select(u_input.d.x, u_input.d.x, all(vec3<bool>(true, true, true))), -(~vec3<i32>(-1i >> (u_input.a.x % 32u), 1i, ~u_input.d.x)), func_4(!any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), false & func_1(), u_input.a << (_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 1u), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.c, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.e, u_input.e, vec2<u32>(0u, 1u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-786f, -705f, 596f))))), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), func_2().d));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.c, _wgslsmith_div_u32(~u_input.b, min(_wgslsmith_sub_u32(u_input.c, u_input.a.x), ~u_input.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(~14929u, 1u), u_input.e)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.e.x, ~1u, u_input.c), _wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.c, u_input.e.x, 4294967295u), vec3<u32>(u_input.c, 10388u, 1u), var_0.d.x), vec3<u32>(u_input.a.x, 4294967295u, 23440u) >> (vec3<u32>(u_input.a.x, u_input.b, 1u) % vec3<u32>(32u)))), abs(_wgslsmith_div_vec3_u32(min(vec3<u32>(4969u, 1u, u_input.e.x), vec3<u32>(u_input.c, 4294967295u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 56003u, u_input.b), vec3<u32>(4294967295u, u_input.e.x, 4294967295u))))));
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 94124u), vec3<u32>(1u, u_input.c, u_input.e.x)) & ~67925u, _wgslsmith_sub_u32(abs(u_input.b), _wgslsmith_sub_u32(16577u, var_1.x)), 20992u, _wgslsmith_clamp_u32(min(var_1.x, 62511u), var_1.x << (var_1.x % 32u), _wgslsmith_mult_u32(1u, 1u))), _wgslsmith_clamp_vec4_u32(abs(reverseBits(vec4<u32>(1u, var_1.x, 1330u, 36294u)) ^ vec4<u32>(var_1.x, 28838u, 50794u, u_input.e.x)), countOneBits(vec4<u32>(~var_1.x, u_input.b, firstTrailingBit(4294967295u), ~var_1.x)), vec4<u32>(0u, var_1.x, 4294967295u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_1.x, 2207u, 33094u), vec3<u32>(var_1.x, u_input.c, var_1.x)), max(vec3<u32>(22813u, var_1.x, u_input.a.x), vec3<u32>(u_input.b, var_1.x, 28003u))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -994f));
    let var_4 = reverseBits(vec2<i32>(~reverseBits(_wgslsmith_mult_i32(u_input.d.x, 26858i)), _wgslsmith_clamp_i32(u_input.d.x, min(~(-5805i), _wgslsmith_sub_i32(var_0.b.x, -16990i)), ~_wgslsmith_div_i32(u_input.d.x, u_input.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x | abs(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_4.x, u_input.d.x, -17298i, var_4.x)), ~vec4<i32>(u_input.d.x, u_input.d.x, -16893i, -1i))));
}

