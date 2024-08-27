struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -297f);

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<Struct_3, 32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<u32>(44878u, 1u, 83456u);
    var var_1 = global0.x;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(firstTrailingBit(var_0.x)), var_0.x, 52300u & select(_wgslsmith_sub_u32(var_0.x, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, 1u, 45170u), vec4<u32>(4294967295u, 4294967295u, 43789u, var_0.x)), true), _wgslsmith_add_u32(91082u, abs(min(var_0.x, 52848u)))), countOneBits(vec4<u32>(abs(var_0.x), 46114u, var_0.x, max(1u, _wgslsmith_add_u32(1u, var_0.x)))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 231f);
    let var_4 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-426f, -2851f) - var_3.x) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, var_3.x) - _wgslsmith_f_op_f32(select(global0.x, 600f, false))))));
    return select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -699f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(exp2(global0.x))), true, !select(false, false, false) & true), any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), true)));
}

fn func_4(arg_0: f32, arg_1: bool) -> bool {
    global1 = true;
    var var_0 = Struct_3(360f);
    global2 = array<Struct_1, 2>();
    global3 = array<Struct_3, 32>();
    var var_1 = reverseBits(countOneBits(firstTrailingBit(1u)));
    return (_wgslsmith_f_op_f32(f32(-1f) * -735f) > arg_0) || arg_1;
}

fn func_2() -> bool {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(56391u, 40560u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)))), 2u)];
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1806f)), any(select(vec4<bool>(u_input.a.x < -35080i, true, true, var_0.a <= -1048f), func_3(), func_3())));
    var var_2 = vec3<bool>(var_1, true, select(!(!var_1), any(vec2<bool>(!var_1, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, var_0.b.x, var_0.b.x), vec4<i32>(-11955i, var_0.b.x, var_0.b.x, 1i) << (vec4<u32>(71806u, 0u, 4294967295u, 1u) % vec4<u32>(32u))) != u_input.a.x));
    var var_3 = global3[_wgslsmith_index_u32(select(~22713u, ~max(~4294967295u, min(0u, 1u)), any(select(!vec3<bool>(true, false, var_2.x), select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, true, var_1), vec3<bool>(true, var_1, true)), !var_1))) << (~_wgslsmith_div_u32(~_wgslsmith_div_u32(0u, 23506u), _wgslsmith_dot_vec4_u32(vec4<u32>(94178u, 61895u, 1u, 4294967295u), reverseBits(vec4<u32>(0u, 855u, 26614u, 1u)))) % 32u), 32u)];
    let var_4 = global3[_wgslsmith_index_u32(~(4294967295u >> (max(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 4294967295u, 10757u), vec3<u32>(4294967295u, 49731u, 10156u), true), ~vec3<u32>(18193u, 38832u, 1u)), abs(~4294967295u)) % 32u)), 32u)];
    return -(_wgslsmith_div_i32(~var_0.b.x, i32(-1i) * -9429i) & var_0.b.x) > u_input.a.x;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global1 = func_2();
    var var_0 = _wgslsmith_f_op_f32(exp2(global0.x));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, u_input.a.x), arg_0.b.wz), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1225f)), _wgslsmith_f_op_f32(-global0.x), false)))), select(arg_0.b, arg_0.b, vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, 779f)), vec4<i32>(_wgslsmith_mod_i32(~arg_0.b.x, -47226i), 0i, reverseBits(1i ^ arg_0.b.x), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(arg_0.b.x, 0i)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, firstTrailingBit(0u)), ~firstLeadingBit(vec2<u32>(1u, 65784u)), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(34013u, 46679u))))), select(func_3(), select(func_3(), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true));
    global1 = ((i32(-1i) * -45857i) != _wgslsmith_mult_i32(select(var_1.c.b.x | -41767i, abs(u_input.b.x), any(var_1.e.xz)), abs(2147483647i))) & var_1.e.x;
    let var_2 = 1878f;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 2>();
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(11116u, 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(459f, 508f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-729f, global0.x), global0.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(502f, global0.x) * vec2<f32>(-1146f, global0.x)))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, -1338f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(-1029f, 1459f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 177f), vec2<f32>(global0.x, global0.x), vec2<bool>(false, false))))))));
    global1 = !(any(select(vec2<bool>(true, true), func_3().xz, vec2<bool>(true, false))) & true);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(global0.x + global0.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-610f, global0.x, _wgslsmith_f_op_f32(1591f - -905f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1353f, 190f) + vec3<f32>(global0.x, 383f, global0.x)))) * vec3<f32>(global0.x, -1032f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-911f, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1718f, -1219f, 679f))))))), true));
    let var_1 = i32(-1i) * -66588i;
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.xz))), var_0.zy, false)))), _wgslsmith_f_op_vec2_f32(-var_0.zx), vec2<bool>(true, true)));
    global1 = func_2();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~abs(0u), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 737f)), ~(~(~select(vec3<u32>(0u, 31179u, 65909u), vec3<u32>(33880u, 6659u, 0u), true))));
}

