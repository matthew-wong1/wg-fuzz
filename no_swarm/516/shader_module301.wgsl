struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<Struct_1, 18>;

var<private> global4: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(1u, 1u)];
    let var_1 = u_input.c;
    global0 = 1638f;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-641f, var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * -795f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 628f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + var_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -768f), var_0.b)));
    global3 = array<Struct_1, 18>();
    return 26329u;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> vec3<u32> {
    var var_0 = arg_0.zy;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(23863u, _wgslsmith_sub_u32(_wgslsmith_div_u32(~(~arg_1), arg_3.x), _wgslsmith_div_u32(19657u, 13577u))), 1u)];
    return arg_3.xyy;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32) -> i32 {
    global0 = _wgslsmith_f_op_f32(-106f - arg_2);
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, ~(arg_0 >> (19735u % 32u))), arg_0, -firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -22066i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, arg_0), vec2<i32>(54511i, arg_0), vec2<i32>(u_input.c, u_input.c)))));
    global1 = array<vec3<i32>, 22>();
    let var_1 = func_4(vec3<bool>(!(!(true || arg_1)), select(true, true, true), !arg_1), _wgslsmith_div_u32(_wgslsmith_add_u32(~func_3(), _wgslsmith_dot_vec2_u32(~u_input.a.yy, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(4294967295u, 40730u)))), ~35672u), ~_wgslsmith_mod_vec3_i32(reverseBits(select(vec3<i32>(arg_0, arg_0, -1i), global1[_wgslsmith_index_u32(u_input.b.x, 22u)], arg_1)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0, 0i, var_0), vec3<i32>(u_input.c, var_0, 4092i)) << (u_input.a % vec3<u32>(32u))), ~countOneBits(countOneBits(vec4<u32>(u_input.a.x, u_input.b.x, 1u, u_input.a.x))) & vec4<u32>(u_input.a.x, 46481u, _wgslsmith_mod_u32(func_3(), ~0u), u_input.b.x));
    var var_2 = vec3<bool>(true, !(false | arg_1), arg_1);
    return -1i;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_3.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(238f, arg_0)))))));
    var var_1 = vec3<i32>(reverseBits(-1i & _wgslsmith_mod_i32(29825i, min(-18058i, u_input.c))), 2419i & select(~func_2(u_input.c, false, arg_0), _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(2147483647i, -19362i)), arg_3.a.x), 16416i);
    var_1 = vec3<i32>(-33890i, arg_2, ~u_input.c << (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u));
    let var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x >> (4294967295u % 32u), 1u, ~u_input.a.x, ~u_input.b.x) | vec4<u32>(~(~u_input.a.x), (u_input.b.x ^ u_input.a.x) << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u), reverseBits(~u_input.a.x), _wgslsmith_div_u32(~u_input.b.x, 35376u)), reverseBits(abs(_wgslsmith_mult_vec4_u32(min(vec4<u32>(19849u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)), vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.b.x)))));
    global3 = array<Struct_1, 18>();
    return !all(!vec3<bool>(false, arg_1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!all(vec2<bool>(true, all(vec2<bool>(false, true)))), !(!(!func_1(3096f, vec4<bool>(false, false, false, true), 2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 1u)]))), true, true);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-378f, 1051f, -237f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1365f, 912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-455f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(835f, 618f, -1719f), vec3<f32>(1104f, -278f, -1000f), var_0.xxx))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-111f, 544f, -144f) + vec3<f32>(-364f, -1147f, -314f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1635f, -556f, -256f))))));
    let var_2 = Struct_2(vec3<bool>(true, !(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)) == _wgslsmith_f_op_f32(-var_1.x)), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f * 175f))) + var_1.x), select(!var_0, var_0, !any(!vec3<bool>(var_0.x, false, true))));
    global1 = array<vec3<i32>, 22>();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

