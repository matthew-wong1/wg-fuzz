struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(646f, -1161f, -930f, 109f, -144f, -561f, 258f, -834f, -497f, -1035f, 1080f, 610f, -126f, 1000f, 769f, 1527f, -439f, 1000f, -515f, 224f, -261f, -819f, -262f, 1157f, 306f, -1325f, 1222f, -481f, 779f, 451f, -1314f, -263f);

var<private> global1: array<vec4<bool>, 28>;

var<private> global2: vec3<f32> = vec3<f32>(-672f, -200f, -641f);

var<private> global3: Struct_1 = Struct_1(vec2<i32>(0i, 4508i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<f32> {
    global1 = array<vec4<bool>, 28>();
    let var_0 = ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.d);
    let var_1 = arg_0.x;
    var var_2 = any(!(!select(global1[_wgslsmith_index_u32(~0u, 28u)], select(vec4<bool>(true, arg_0.x, false, var_1), vec4<bool>(arg_0.x, true, false, true), true), vec4<bool>(false, true, var_1, true))));
    let var_3 = Struct_1(vec2<i32>(u_input.e.x, -2069i));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1384f, 568f, global0[_wgslsmith_index_u32(1u, 32u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global0[_wgslsmith_index_u32(21639u, 32u)], -1000f) + vec3<f32>(-202f, 807f, 744f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-395f, -720f, -354f) + vec3<f32>(772f, 1441f, global0[_wgslsmith_index_u32(0u, 32u)]))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, global2.x, 1557f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.x, 32u)], global2.x, global2.x)))), true)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 32u)], global2.x)), global2.x, global2.x)))));
}

fn func_2() -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, true), Struct_1(vec2<i32>(0i, u_input.e.x))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(874f, -350f, 1000f) - vec3<f32>(1000f, -1387f, -368f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(49599u, 32u)], -1489f)), _wgslsmith_f_op_f32(f32(-1f) * -302f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1263f) - vec3<f32>(198f, -1351f, 295f))))));
    let var_0 = u_input.b;
    global3 = Struct_1(~vec2<i32>(global3.a.x, 2009i));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~53937u, 32u)])));
    let var_2 = -730f;
    return false;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), !vec3<bool>(true, all(vec3<bool>(false, false, true)), true)), !vec3<bool>(!func_2(), select(true, true, false) | true, true), vec3<bool>(true, true, false));
    let var_1 = _wgslsmith_mult_i32(0i, (_wgslsmith_add_i32(abs(arg_0.a.x), arg_0.a.x) & 0i) | (-arg_0.a.x & 1i));
    let var_2 = true;
    let var_3 = arg_0;
    var var_4 = 29748u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(~(~(-vec2<i32>(global3.a.x, 0i)))));
    var_0 = Struct_1(var_0.a);
    global0 = array<f32, 32>();
    let var_1 = Struct_1(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2280i, -31811i, -1i), vec4<i32>(global3.a.x, global3.a.x, u_input.e.x, -1i)), ~3217i), min(vec2<i32>(var_0.a.x, u_input.e.x), vec2<i32>(var_0.a.x, global3.a.x)) | abs(global3.a), ~_wgslsmith_add_vec2_i32(global3.a, vec2<i32>(32288i, var_0.a.x))), vec2<i32>(firstTrailingBit(~var_0.a.x), max(_wgslsmith_dot_vec2_i32(global3.a, u_input.e), ~u_input.e.x)), vec2<bool>(false, true)));
    var var_2 = vec3<u32>(4294967295u, ~_wgslsmith_clamp_u32(u_input.c, u_input.c ^ _wgslsmith_mult_u32(11788u, 50127u), ~u_input.d), 823u << (~_wgslsmith_sub_u32(min(u_input.d, 48158u), countOneBits(193u)) % 32u));
    var var_3 = Struct_1(u_input.e);
    var var_4 = select(!select(vec3<bool>(true, global2.x >= global0[_wgslsmith_index_u32(4294967295u, 32u)], all(vec4<bool>(true, true, false, false))), vec3<bool>(true, true, true), all(vec4<bool>(false, false, true, false))), vec3<bool>(select(all(vec2<bool>(true, true)), true, any(global1[_wgslsmith_index_u32(~4294967295u, 28u)])), true, true), vec3<bool>(true, _wgslsmith_f_op_f32(min(1397f, _wgslsmith_f_op_f32(-global2.x))) < _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, true), Struct_1(vec2<i32>(-6966i, u_input.e.x)))).x)), !(~u_input.e.x >= 25580i)));
    var var_5 = Struct_1(firstLeadingBit(select(vec2<i32>(select(u_input.e.x, u_input.e.x, true), max(var_1.a.x, u_input.e.x)), ~_wgslsmith_mult_vec2_i32(var_1.a, var_0.a), vec2<bool>(!var_4.x, var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_mult_i32(~(var_3.a.x & 2147483647i) & -var_5.a.x, _wgslsmith_mult_i32(var_5.a.x, global3.a.x)), vec2<u32>(var_2.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstTrailingBit(var_2.x), var_2.x), 7157u, ~21172u)), vec3<i32>(~u_input.e.x, ~var_3.a.x, i32(-1i) * -6553i));
}

