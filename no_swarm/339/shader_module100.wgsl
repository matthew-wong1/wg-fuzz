struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-47687i, 13380i, -1i), vec3<i32>(0i, 60246i, -289i), vec3<i32>(-39140i, -52042i, 1i), vec3<i32>(2147483647i, 2147483647i, -35871i), vec3<i32>(19734i, 2147483647i, 17546i), vec3<i32>(0i, -27798i, -31659i), vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(-17804i, 1i, 2147483647i), vec3<i32>(10478i, -14732i, -40655i), vec3<i32>(i32(-2147483648), 7487i, 11878i), vec3<i32>(2147483647i, -10169i, 2147483647i), vec3<i32>(-48911i, 47286i, 0i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(1i, 2147483647i, 8497i), vec3<i32>(4576i, -30056i, -1i), vec3<i32>(i32(-2147483648), -1i, -17646i), vec3<i32>(2147483647i, -41445i, i32(-2147483648)), vec3<i32>(-56544i, 2147483647i, 33338i), vec3<i32>(26211i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -11484i), vec3<i32>(0i, -1i, 0i), vec3<i32>(-1i, 14743i, 46179i), vec3<i32>(2147483647i, -12293i, -5424i), vec3<i32>(-615i, -47727i, 0i), vec3<i32>(0i, 2147483647i, 6333i), vec3<i32>(-12776i, -28102i, -24406i), vec3<i32>(1i, 1i, 2147483647i));

var<private> global2: array<Struct_1, 31>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec3<f32>(700f, 998f, 797f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -188f), 2670f)) + vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-609f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-624f - global0.b.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.b.x), global3.b.x))));
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 31u)];
    var var_2 = u_input.a;
    var var_3 = global2[_wgslsmith_index_u32(~0u, 31u)];
    var var_4 = Struct_1(!vec3<bool>(true, !global3.a.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2422f, 1204f, global3.b.x) + _wgslsmith_f_op_vec3_f32(sign(global0.b))))));
    return ~(~vec2<u32>(0u, var_2.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec4<f32> {
    global3 = Struct_1(vec3<bool>(true, true, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1000f, global0.b.x)), _wgslsmith_f_op_f32(-arg_0.x)), -1128f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1584f, global0.b.x))))) * vec3<f32>(1462f, global0.b.x, -450f)));
    var var_0 = all(global3.a.xx) && global3.a.x;
    let var_1 = Struct_1(select(!global3.a, select(global0.a, !(!global3.a), vec3<bool>(global3.a.x, all(vec4<bool>(false, false, true, false)), false)), global3.a), global0.b);
    var var_2 = firstTrailingBit(firstLeadingBit(global1[_wgslsmith_index_u32(~min(100188u, 29207u), 27u)] << (select(~u_input.a.xxw, vec3<u32>(22935u, 1u, 36368u), any(vec2<bool>(global3.a.x, false))) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global3.b.x)) * global0.b.x)), _wgslsmith_f_op_f32(arg_0.x + -287f), all(!select(!vec4<bool>(global3.a.x, global3.a.x, false, false), select(vec4<bool>(false, false, true, global3.a.x), vec4<bool>(true, true, false, global0.a.x), global0.a.x), true))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-388f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-119f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, var_1.b.x) * _wgslsmith_f_op_f32(ceil(-1339f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1888f, _wgslsmith_f_op_f32(893f * -1991f), _wgslsmith_f_op_f32(-1086f + var_1.b.x), _wgslsmith_f_op_f32(exp2(global3.b.x))) * arg_0))));
}

fn func_2() -> bool {
    global0 = Struct_1(vec3<bool>(global0.a.x, true, !global0.a.x), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1977f))))), -1746f));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-161f, -176f, global0.b.x, global0.b.x), vec4<f32>(-1000f, global0.b.x, 331f, -196f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, -563f, global3.b.x, -1421f)), vec4<f32>(-1378f, 279f, global3.b.x, global0.b.x)))) * _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-941f, -106f, 1000f, global0.b.x) - vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -1000f)))), func_3()))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-859f, 131f, 542f, global0.b.x), vec4<f32>(global0.b.x, global0.b.x, -611f, -1139f), select(true, global3.a.x, global0.a.x))))));
    let var_1 = -vec3<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-10942i, -1i)), vec2<i32>(1i, 1i)), _wgslsmith_add_i32(min(~0i, -12304i << (u_input.a.x % 32u)), max(2147483647i, -1i)), abs(1i));
    global2 = array<Struct_1, 31>();
    global2 = array<Struct_1, 31>();
    return global3.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> i32 {
    var var_0 = global0.a.x;
    var var_1 = arg_0;
    var_0 = true;
    global3 = arg_0;
    var_1 = Struct_1(select(!select(!global0.a, select(var_1.a, vec3<bool>(var_1.a.x, global0.a.x, global0.a.x), var_1.a), !var_1.a.x), vec3<bool>(!(global3.a.x != true), (arg_3.x & -2147483647i) >= _wgslsmith_mod_i32(1i, arg_1), _wgslsmith_f_op_f32(-arg_0.b.x) > arg_0.b.x), vec3<bool>(func_2(), !(global0.a.x & arg_0.a.x), all(vec4<bool>(global3.a.x, global0.a.x, false, var_1.a.x)) | true)), vec3<f32>(590f, -455f, arg_2.x));
    return -2147483647i;
}

fn func_5(arg_0: i32) -> StorageBuffer {
    global3 = Struct_1(!vec3<bool>(true, true, !global0.a.x), global3.b);
    let var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global3.b.x))), -1062f));
    var var_2 = global2[_wgslsmith_index_u32(~19189u, 31u)];
    let var_3 = !vec4<bool>(global0.a.x | true, all(select(var_2.a, select(vec3<bool>(false, global0.a.x, global3.a.x), vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), false), var_2.a)), var_2.a.x, true);
    return StorageBuffer(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), var_2.b, vec2<f32>(_wgslsmith_f_op_f32(-1385f * global3.b.x), _wgslsmith_f_op_f32(var_0.x + var_2.b.x)), (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(1u), ~u_input.a.x), 27u)] & vec3<i32>(arg_0, max(arg_0, 2147483647i), abs(arg_0))) & global1[_wgslsmith_index_u32(15353u << (u_input.a.x % 32u), 27u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 27>();
    global1 = array<vec3<i32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1642f, global3.b.x)) - _wgslsmith_div_f32(2023f, global0.b.x)))), 1479f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.b.x, 1735f)) - _wgslsmith_f_op_f32(floor(global3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b.x))))))));
    global2 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_f_op_f32(global3.b.x + global0.b.x);
    let x = u_input.a;
    s_output = func_5(-_wgslsmith_clamp_i32(-2147483647i & func_1(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], 33043i, vec3<f32>(-852f, -789f, -2325f), vec4<i32>(-5756i, 0i, 61665i, -2147483647i)), 1i, firstTrailingBit(abs(-2147483647i))));
}

