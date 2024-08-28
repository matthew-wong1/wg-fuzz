struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, false, false, true, true, true, true, true, true, true, true, true, false, true, false, false, false, true, false, false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    var var_0 = ~arg_2.a;
    global0 = array<bool, 21>();
    let var_1 = vec2<i32>(u_input.a, -(u_input.b.x >> (_wgslsmith_div_u32(~arg_2.d, _wgslsmith_mod_u32(18104u, 48665u)) % 32u)));
    return arg_2.b;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> vec4<bool> {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(950f)), arg_0, 282f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2449f, arg_0, 1000f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-367f, arg_0, -429f)), vec3<f32>(arg_0, arg_0, 1000f), true)))), _wgslsmith_clamp_u32(0u | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 8811u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(8793u, arg_1.d, arg_2), arg_1.b.b.xzz)), _wgslsmith_mod_u32(arg_2, ~0u), 75980u), Struct_3(arg_1.a, arg_1.b, false, (26338u >> (0u % 32u)) >> (_wgslsmith_div_u32(31571u, 39400u) % 32u)));
    global0 = array<bool, 21>();
    let var_1 = arg_1.b.a;
    global0 = array<bool, 21>();
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(sign(arg_0))))), _wgslsmith_f_op_f32(select(arg_0, 1000f, select(func_2(vec3<f32>(arg_0, arg_0, -1000f), arg_2, Struct_3(vec2<u32>(arg_1.d, 1u), Struct_1(true, arg_1.b.b, false, 19478i), global0[_wgslsmith_index_u32(arg_2, 21u)], arg_1.b.b.x)).a, any(vec4<bool>(false, true, false, true)), all(vec2<bool>(false, true))))), arg_0)));
    return vec4<bool>(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) - var_2)), 54907u, Struct_3(~vec2<u32>(arg_2, var_0.b.x), arg_1.b, true, ~24084u)).a, !var_0.a, -(var_0.d & -21988i) >= _wgslsmith_clamp_i32(arg_1.b.d, -6093i, -2199i), func_2(_wgslsmith_f_op_vec3_f32(min(var_2, vec3<f32>(-446f, arg_0, _wgslsmith_f_op_f32(max(arg_0, arg_0))))), 1u, Struct_3(~var_0.b.ww | _wgslsmith_add_vec2_u32(var_0.b.xy, var_0.b.xy), func_2(_wgslsmith_f_op_vec3_f32(select(var_2, vec3<f32>(-333f, arg_0, -157f), vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 21u)], arg_1.c, var_1))), _wgslsmith_dot_vec3_u32(arg_1.b.b.zyy, vec3<u32>(arg_1.a.x, arg_2, var_0.b.x)), arg_1), global0[_wgslsmith_index_u32(~1u, 21u)], 0u)).a);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    var var_0 = select(select(vec4<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 21u)], true, false, true)), arg_2.a, any(vec2<bool>(true, true)), arg_2.c), func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-366f, 625f)), -434f)), Struct_3(arg_2.b.zx, func_2(vec3<f32>(-448f, 1088f, 821f), arg_0.x, Struct_3(arg_0, arg_2, arg_2.a, 0u)), true, ~arg_0.x), arg_0.x), _wgslsmith_sub_i32(u_input.b.x, -arg_2.d) <= _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, -35580i), 1i)), func_3(1148f, Struct_3(~(~arg_2.b.wy), arg_2, arg_2.c, 0u), _wgslsmith_add_u32(firstLeadingBit(7022u), arg_2.b.x)), any(!(!func_3(148f, Struct_3(arg_2.b.xw, Struct_1(false, arg_1, true, 2147483647i), arg_2.a, 29062u), 118495u).wy)));
    var var_1 = Struct_3(vec2<u32>(33807u, firstLeadingBit(countOneBits(_wgslsmith_mult_u32(arg_1.x, 40091u)))), arg_2, all(!func_3(-1040f, Struct_3(vec2<u32>(43110u, arg_2.b.x), arg_2, false, arg_1.x), _wgslsmith_div_u32(arg_1.x, 1u))), ~func_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(978f)), _wgslsmith_f_op_f32(min(1000f, 628f)), -708f), 0u, Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, arg_0.x), vec2<u32>(49102u, arg_0.x), vec2<u32>(98953u, arg_0.x)), func_2(vec3<f32>(1000f, 1351f, 1248f), arg_0.x, Struct_3(arg_0, arg_2, false, 34814u)), false, abs(1u))).b.x);
    var var_2 = -vec3<i32>(u_input.a, 2147483647i, _wgslsmith_div_i32(arg_2.d, ~firstTrailingBit(-17738i)));
    global0 = array<bool, 21>();
    let var_3 = ~_wgslsmith_dot_vec2_u32(arg_2.b.xy, vec2<u32>(4294967295u, ~_wgslsmith_sub_u32(arg_0.x, 4294967295u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2227f - 150f), -223f), _wgslsmith_f_op_f32(-484f - 2545f), !func_2(vec3<f32>(-1354f, 459f, -467f), arg_2.b.x, Struct_3(arg_2.b.zx, Struct_1(global0[_wgslsmith_index_u32(var_1.d, 21u)], arg_2.b, arg_2.a, arg_2.d), global0[_wgslsmith_index_u32(arg_1.x, 21u)], arg_2.b.x)).c)) + 1f) <= _wgslsmith_f_op_f32(f32(-1f) * -1090f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = u_input.a;
    var var_2 = !(!select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(37366u, 21u)], true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], false, global0[_wgslsmith_index_u32(7772u, 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(37596u, 21u)], false, false, true)), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(17512u, 21u)], global0[_wgslsmith_index_u32(29628u, 21u)], global0[_wgslsmith_index_u32(19498u, 21u)]), select(vec4<bool>(false, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], false, false, global0[_wgslsmith_index_u32(25915u, 21u)]), global0[_wgslsmith_index_u32(47786u, 21u)]), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)])), global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(53712u, 51627u, 47994u, 48354u), vec4<u32>(41259u, 2144u, 1u, 0u)), _wgslsmith_clamp_u32(1u, 0u, 0u), true), 21u)]));
    var_0 = _wgslsmith_clamp_u32(~(~1u), 0u, reverseBits(max(~72344u, 1u)));
    var_2 = !(!select(vec4<bool>(var_1 >= 35051i, true, func_1(vec2<u32>(23989u, 56571u), vec4<u32>(50672u, 1u, 0u, 4294967295u), Struct_1(var_2.x, vec4<u32>(0u, 1u, 11768u, 7407u), var_2.x, -26608i)), true), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(27016u, 21u)], global0[_wgslsmith_index_u32(1727u, 21u)]), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(10125u, 21u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(4086u, 21u)], true, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), true)));
    let var_3 = 99240u;
    global0 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(-105f, _wgslsmith_div_f32(-140f, _wgslsmith_f_op_f32(round(165f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1050f, 757f)))), vec2<f32>(1f, 1f), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_3, 21u)]))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(833f + 999f))), _wgslsmith_sub_i32(countOneBits(var_1), -firstTrailingBit(u_input.b.x) >> (var_3 % 32u)), u_input.b);
}

