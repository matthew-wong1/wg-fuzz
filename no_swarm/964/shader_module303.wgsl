struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: array<f32, 24> = array<f32, 24>(1160f, -1076f, -918f, 370f, -1000f, 733f, -509f, 105f, 1090f, -746f, 1216f, 440f, 1946f, 294f, 1674f, 352f, -406f, 975f, 1595f, -1000f, 197f, 116f, -414f, 133f);

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, false, false), -455f, vec2<i32>(-5429i, i32(-2147483648)));

var<private> global4: bool = false;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    return false;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.c.xw, u_input.c.yw)), vec2<u32>(0u, ~u_input.d)), ~u_input.b.x, ~(~(~u_input.d))), u_input.b.x);
    global4 = any(vec4<bool>(any(global3.a), arg_1.x, arg_0.x, global3.a.x || arg_0.x));
    global0 = array<f32, 6>();
    let var_1 = ~(~(~abs(~u_input.c)));
    var var_2 = Struct_1(vec4<bool>(true, all(arg_0.yz), select(-151f > _wgslsmith_f_op_f32(global3.b - global0[_wgslsmith_index_u32(13661u, 6u)]), var_0.x > ~1u, true), any(vec2<bool>(false, false)) == select(global3.a.x, false | arg_1.x, 744f != global2[_wgslsmith_index_u32(u_input.c.x, 24u)])), -159f, vec2<i32>(1i, ~firstLeadingBit(global3.c.x) << (~u_input.b.x % 32u)));
    return Struct_1(global3.a, global0[_wgslsmith_index_u32(var_0.x, 6u)], vec2<i32>(~global3.c.x, u_input.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = func_3(func_3(!func_3(vec3<bool>(true, global3.a.x, global3.a.x), select(vec3<bool>(arg_0.a.x, arg_0.a.x, true), arg_0.a.wxy, arg_0.a.wzy)).a.wzw, arg_0.a.wzw).a.wxy, func_3(vec3<bool>(true, 47638u < _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.d, 68279u)), !all(arg_0.a.yy)), arg_0.a.xww).a.yzx);
    var var_1 = func_3(vec3<bool>(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a, var_0.c)) >= 82432i, !var_0.a.x, global3.a.x), !arg_0.a.yzy);
    let var_2 = var_1.a.x | false;
    global2 = array<f32, 24>();
    var var_3 = true;
    return Struct_1(select(vec4<bool>(var_0.c.x > global3.c.x, all(!global3.a.wyx), any(!var_1.a.zy), true), func_3(vec3<bool>(!global3.a.x, false, var_0.a.x), var_0.a.zxy).a, !(!(!arg_0.a))), global2[_wgslsmith_index_u32(4294967295u, 24u)], select(u_input.a, global3.c, !var_1.a.yy));
}

fn func_1() -> Struct_2 {
    global3 = func_4(func_3(!global3.a.zxz, select(vec3<bool>(global3.a.x, func_2(Struct_2(global0[_wgslsmith_index_u32(35005u, 6u)], -330f, u_input.b), global3.a.x, Struct_2(global0[_wgslsmith_index_u32(u_input.e, 6u)], global0[_wgslsmith_index_u32(57866u, 6u)], vec4<u32>(u_input.b.x, 67709u, 0u, u_input.b.x)), Struct_1(vec4<bool>(false, false, true, false), global3.b, vec2<i32>(global3.c.x, global3.c.x))), false), global3.a.yyy, global3.a.yyz)), _wgslsmith_clamp_u32(0u, 1u, firstLeadingBit(~4294967295u ^ _wgslsmith_clamp_u32(u_input.b.x, 23727u, 1u))));
    global0 = array<f32, 6>();
    var var_0 = func_4(func_4(func_4(func_3(select(global3.a.zyy, vec3<bool>(global3.a.x, false, global3.a.x), global3.a.x), func_4(Struct_1(global3.a, global3.b, global3.c), u_input.e).a.xzx), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.c.x, 106068u)), ~vec3<u32>(u_input.e, u_input.d, 33869u))), abs(10219u)), _wgslsmith_mod_u32(u_input.c.x, ~8024u)).a.x;
    var var_1 = 4294967295u >> (~(~_wgslsmith_sub_u32(u_input.b.x >> (48008u % 32u), u_input.c.x & 2155u)) % 32u);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(79604u, 6u)], _wgslsmith_f_op_f32(-global3.b)) + -767f), global2[_wgslsmith_index_u32(countOneBits(45761u), 24u)], u_input.b);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(global3.c, -(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a))) ^ 17230i;
    var_0 = u_input.a.x;
    global3 = Struct_1(vec4<bool>(all(vec4<bool>(select(false, global3.a.x, false), any(global3.a), any(vec4<bool>(global3.a.x, global3.a.x, false, true)), true)), all(select(select(vec3<bool>(true, false, true), global3.a.wxz, global3.a.yyx), vec3<bool>(false, false, global3.a.x), -1i != u_input.a.x)), select(true, _wgslsmith_mult_i32(global3.c.x, -2147483647i) < _wgslsmith_div_i32(global3.c.x, 8930i), global3.a.x), !global3.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(640f * _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.b.x, 24u)]))))))), _wgslsmith_div_vec2_i32(global3.c, vec2<i32>(_wgslsmith_clamp_i32(reverseBits(u_input.a.x), 0i, 1i), -global3.c.x)));
    let var_1 = func_1();
    var_0 = u_input.a.x;
    global1 = array<vec3<i32>, 14>();
    var var_2 = Struct_1(!func_3(func_3(vec3<bool>(false, global3.a.x, true), global3.a.zzz).a.yxx, !vec3<bool>(true, false, global3.a.x)).a, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(-324f))), ~max(global3.c, select(firstLeadingBit(global3.c), ~vec2<i32>(-1i, global3.c.x), true)));
    var var_3 = vec3<i32>(firstTrailingBit(-8554i), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 3147i, 38269i, 3714i), vec4<i32>(0i, var_2.c.x, -2554i, global3.c.x) | countOneBits(vec4<i32>(global3.c.x, 38772i, u_input.a.x, u_input.a.x))), global3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-max(var_2.c, ~(-var_3.yy)), -35211i);
}

