struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<vec2<u32>, 15>;

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(1u, vec2<bool>(true, true), 31161u, 4294967295u, true), Struct_3(12673u, vec2<bool>(false, true), 0u, 9130u, true), Struct_3(4294967295u, vec2<bool>(false, false), 0u, 3570u, true), Struct_3(1u, vec2<bool>(true, true), 0u, 4294967295u, true));

var<private> global3: vec3<f32> = vec3<f32>(457f, 1000f, -609f);

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<f32>(-740f, 441f, -710f, 877f), vec2<i32>(-1i, -1i)), Struct_1(vec4<f32>(-450f, 587f, -360f, -394f), vec2<i32>(-1i, 0i)), Struct_1(vec4<f32>(698f, -620f, 854f, 150f), vec2<i32>(17599i, -5975i)), Struct_1(vec4<f32>(859f, -567f, 1098f, 922f), vec2<i32>(-6718i, 6954i)), Struct_1(vec4<f32>(-1000f, 1057f, -1535f, -277f), vec2<i32>(1i, -1440i)), Struct_1(vec4<f32>(142f, 1120f, -476f, -452f), vec2<i32>(-8726i, -44969i)), Struct_1(vec4<f32>(667f, 240f, 705f, 2224f), vec2<i32>(1i, 1i)), Struct_1(vec4<f32>(787f, 1997f, 1070f, -1107f), vec2<i32>(14391i, -8239i)), Struct_1(vec4<f32>(955f, -1169f, -422f, 1394f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec4<f32>(207f, -2064f, 1543f, 1962f), vec2<i32>(10961i, 2147483647i)), Struct_1(vec4<f32>(-470f, -2115f, -1000f, -315f), vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<f32>(-625f, 647f, -337f, -232f), vec2<i32>(1i, 3002i)), Struct_1(vec4<f32>(1048f, 714f, 149f, 519f), vec2<i32>(9168i, -11969i)), Struct_1(vec4<f32>(257f, 1090f, 489f, -1701f), vec2<i32>(-57542i, 0i)), Struct_1(vec4<f32>(-156f, -1000f, -932f, 907f), vec2<i32>(74029i, 0i)), Struct_1(vec4<f32>(-450f, 435f, -1100f, -448f), vec2<i32>(i32(-2147483648), -5581i)), Struct_1(vec4<f32>(-1000f, 715f, -762f, 1098f), vec2<i32>(12204i, 2147483647i)), Struct_1(vec4<f32>(-1062f, 794f, 526f, -1308f), vec2<i32>(1i, 7021i)), Struct_1(vec4<f32>(596f, 249f, 154f, -982f), vec2<i32>(2147483647i, 23594i)), Struct_1(vec4<f32>(872f, -404f, -181f, -395f), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec4<f32>(2346f, 525f, 810f, -245f), vec2<i32>(-23216i, 9079i)), Struct_1(vec4<f32>(535f, -326f, 623f, -190f), vec2<i32>(2762i, -11909i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: u32) -> bool {
    var var_0 = Struct_4(arg_2, vec2<u32>(select(~min(arg_3, 34057u), global0[_wgslsmith_index_u32(firstTrailingBit(58805u), 16u)], any(select(vec2<bool>(false, arg_2), vec2<bool>(true, arg_2), arg_2))), 0u), abs(u_input.b.yzy), u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1875f, global3.x, 1385f, 1000f), _wgslsmith_f_op_vec4_f32(-arg_0), vec4<bool>(false, true, arg_2, arg_2))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))) + _wgslsmith_f_op_vec4_f32(trunc(arg_0))));
    let var_1 = Struct_2(!select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, false)), vec4<bool>(!var_0.a, all(vec3<bool>(true, arg_2, arg_2)), !arg_2, true), select(select(vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, var_0.a, arg_2, arg_2), true), !vec4<bool>(true, arg_2, arg_2, var_0.a), true)), arg_2, _wgslsmith_div_vec3_u32(~(~vec3<u32>(var_0.b.x, 87536u, arg_3)), _wgslsmith_add_vec3_u32(abs(u_input.a.zyw), ~vec3<u32>(4347u, 1u, 0u))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(544f, -427f, global3.x, global3.x) - arg_0))), select(-firstLeadingBit(vec2<i32>(-1i, -1i)), var_0.c.xz, select(!arg_2, true, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(var_0.e.zz));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.d.a.wyy, var_0.e.zzw)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3128f, var_0.e.x, -412f)))))));
    var var_3 = abs(u_input.a.yzz);
    return !(firstLeadingBit(min(~global0[_wgslsmith_index_u32(arg_3, 16u)], 1u << (u_input.a.x % 32u))) == _wgslsmith_sub_u32(_wgslsmith_mod_u32(~4294967295u, var_1.c.x), var_1.c.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(~(~(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.yxw, vec3<u32>(4294967295u, 34806u, global0[_wgslsmith_index_u32(0u, 16u)])), arg_1) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(49062u, 0u, 1u), arg_0))), 15u)];
    let var_1 = Struct_2(vec4<bool>(((var_0.x <= arg_0.x) || func_3(vec4<f32>(2225f, global3.x, global3.x, 2014f), u_input.c.x, true, global0[_wgslsmith_index_u32(arg_0.x, 16u)])) || false, true, !select(any(vec3<bool>(false, false, true)), true, true), !any(vec4<bool>(true, true, true, true))), false, vec3<u32>(var_0.x, u_input.a.x, ~1u), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32((1u | arg_1) | ~global0[_wgslsmith_index_u32(u_input.a.x, 16u)], min(_wgslsmith_sub_u32(arg_1, arg_0.x), ~4294967295u)), select(_wgslsmith_div_u32(arg_0.x << (1u % 32u), 1u), 28125u, true)), 22u)]);
    var var_2 = vec2<f32>(944f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.x - 1f), 1000f, !(!var_1.a.x))))));
    var var_3 = firstTrailingBit(u_input.a);
    global1 = array<vec2<u32>, 15>();
    return !var_1.b;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    var var_0 = !select(vec4<bool>(true, _wgslsmith_f_op_f32(step(-154f, global3.x)) != arg_0.e.x, true, true), vec4<bool>(1u < global0[_wgslsmith_index_u32(abs(arg_0.d), 16u)], arg_0.a, true, arg_0.a), func_2(_wgslsmith_add_vec3_u32(u_input.a.zwy, _wgslsmith_clamp_vec3_u32(u_input.a.zxx, u_input.a.zyw, u_input.a.xzw)), ~arg_0.d));
    global0 = array<u32, 16>();
    var_0 = select(select(!(!vec4<bool>(true, false, var_0.x, arg_0.a)), vec4<bool>((arg_1.b.x ^ arg_1.b.x) < 2147483647i, arg_0.e.x >= -1025f, !arg_0.a, !arg_0.a), arg_0.a), select(!vec4<bool>(var_0.x, var_0.x, arg_0.e.x < 1000f, -1138f != arg_1.a.x), select(vec4<bool>(!arg_0.a, true, false | var_0.x, arg_0.a), vec4<bool>(var_0.x, arg_0.a, !var_0.x, false), vec4<bool>(false, true, var_0.x, !var_0.x)), all(select(select(vec4<bool>(var_0.x, arg_0.a, arg_0.a, var_0.x), vec4<bool>(var_0.x, false, true, true), false), vec4<bool>(var_0.x, false, true, arg_0.a), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false), vec4<bool>(true, true, arg_0.a, arg_0.a))))), vec4<bool>(true, all(var_0.xxz), false, var_0.x));
    let var_1 = true;
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.yzw + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(arg_0.e.wxx))))) - arg_0.e.www) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-383f + arg_0.e.x), -537f, _wgslsmith_f_op_f32(arg_0.e.x + arg_1.a.x))) + arg_0.e.xxx));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 4>();
    var var_0 = !select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), vec3<bool>(false, true, abs(9078i) == min(u_input.c.x, u_input.c.x)), abs(105018u) == ~func_1(Struct_4(false, global1[_wgslsmith_index_u32(37754u, 15u)], u_input.c, 0u, vec4<f32>(200f, 301f, 1808f, global3.x)), Struct_1(vec4<f32>(global3.x, -458f, 152f, global3.x), u_input.c.xz)));
    global1 = array<vec2<u32>, 15>();
    global2 = array<Struct_3, 4>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-302f, global3.x, -1171f, global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global3.x)))));
}

