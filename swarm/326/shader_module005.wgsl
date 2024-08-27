struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(4294967295u, 26002u, 4294967295u, 2240u, 1172u, 0u, 28332u, 0u, 0u, 0u, 0u, 20129u, 0u, 4294967295u, 7704u, 2766u, 4294967295u, 4294967295u, 35956u, 84606u, 4294967295u, 0u, 39400u, 1u);

var<private> global1: vec3<u32> = vec3<u32>(7584u, 0u, 93336u);

var<private> global2: Struct_1 = Struct_1(true, -1213f);

var<private> global3: vec3<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = global2.b;
    return arg_3;
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<u32, 24>();
    let var_0 = Struct_2(Struct_1(-2147483647i > arg_0, -1065f), Struct_1(any(!(!vec2<bool>(global2.a, true))), global2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(413f, _wgslsmith_f_op_f32(-1721f + _wgslsmith_f_op_f32(trunc(1187f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global2.b)))), global2.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, global2.b, 1359f) + vec4<f32>(333f, -814f, global2.b, 733f)))))), global2.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(365f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -483f)))), _wgslsmith_f_op_f32(-var_0.a.b), 1132f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, _wgslsmith_f_op_f32(trunc(-619f)), _wgslsmith_f_op_f32(f32(-1f) * -191f))), var_0.c.zxx)));
    var var_2 = Struct_2(Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.b)) * _wgslsmith_f_op_f32(-var_0.c.x)) + _wgslsmith_f_op_f32(ceil(985f)))), var_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.b, 1299f), 1566f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_0.c.x - var_1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1893f + var_1.x))));
    let var_3 = select(global0[_wgslsmith_index_u32(min(~(~43548u & global3.x), countOneBits(firstTrailingBit(61337u)) | max(63311u, ~0u)), 24u)], abs(1u), var_2.a.a);
    return 99284u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global2 = arg_0;
    var var_0 = func_3(0i);
    var var_1 = vec3<i32>(~(-max(0i, 2147483647i)), _wgslsmith_sub_i32(u_input.a.x, countOneBits(_wgslsmith_add_i32(_wgslsmith_add_i32(1i, 0i), 0i))), u_input.a.x);
    var var_2 = arg_1;
    let var_3 = select(vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(1i, 14874i), abs(u_input.a.x), firstTrailingBit(u_input.a.x)), -u_input.a.x, i32(-1i) * -70370i), u_input.a, select(select(!(!vec3<bool>(true, var_2.a, true)), vec3<bool>(arg_0.a, !arg_0.a, true), var_2.a), vec3<bool>(!select(false, false, true), any(select(vec3<bool>(false, false, arg_1.a), vec3<bool>(arg_1.a, var_2.a, arg_0.a), vec3<bool>(false, false, true))), true), all(!(!vec3<bool>(arg_1.a, global2.a, true)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, vec2<u32>(global1.x, 0u), Struct_2(Struct_1(global2.a, global2.b), Struct_1(global2.a, 726f), vec4<f32>(global2.b, -715f, global2.b, global2.b), -422f), global2.b)) * _wgslsmith_f_op_f32(562f - global2.b)))), Struct_1(!all(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, false, global2.a), vec3<bool>(false, global2.a, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1448f)))))));
    let var_0 = ~vec4<u32>(~firstLeadingBit(global1.x), 7504u << (1u % 32u), 0u, _wgslsmith_mult_u32(~13150u >> (_wgslsmith_mult_u32(global3.x, 84764u) % 32u), ~1u));
    global2 = Struct_1(any(!vec4<bool>(true, !global2.a, true, !global2.a)), 221f);
    var var_1 = select(!(!select(select(vec4<bool>(false, true, global2.a, global2.a), vec4<bool>(global2.a, true, true, true), false), vec4<bool>(false, global2.a, global2.a, global2.a), select(vec4<bool>(global2.a, false, global2.a, global2.a), vec4<bool>(global2.a, false, global2.a, global2.a), global2.a))), !(!(!select(vec4<bool>(global2.a, false, global2.a, true), vec4<bool>(true, false, global2.a, false), vec4<bool>(global2.a, global2.a, false, false)))), select(vec4<bool>(func_2(Struct_1(global2.a, global2.b), Struct_1(true, global2.b)).a, all(select(vec4<bool>(true, global2.a, global2.a, true), vec4<bool>(true, true, true, false), true)), global2.a, global2.a), !select(vec4<bool>(global2.a, global2.a, global2.a, false), vec4<bool>(true, global2.a, false, true), true), !(!select(vec4<bool>(false, global2.a, true, true), vec4<bool>(global2.a, global2.a, false, false), false))));
    var var_2 = select(select(select(var_1.ywy, select(vec3<bool>(global2.a, true, false), select(var_1.wxw, vec3<bool>(global2.a, var_1.x, global2.a), vec3<bool>(true, global2.a, false)), true), !(!var_1.yxx)), select(select(select(var_1.yyy, var_1.yyx, vec3<bool>(true, global2.a, true)), !vec3<bool>(true, true, global2.a), true), vec3<bool>(select(global2.a, global2.a, global2.a), func_2(Struct_1(false, global2.b), Struct_1(true, -1031f)).a, true), !vec3<bool>(true, var_1.x, false)), var_1.wxz), vec3<bool>(!any(vec4<bool>(global2.a, var_1.x, false, global2.a)) && any(vec4<bool>(false, var_1.x, true, var_1.x)), global2.a, !(global0[_wgslsmith_index_u32(~2706u, 24u)] >= 25334u)), any(!select(var_1.xz, vec2<bool>(global2.a, true), !var_1.xx)));
    var var_3 = vec2<u32>(~abs(~(~1u)), global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~var_0 & ~vec4<u32>(4294967295u, var_3.x, var_3.x, 1u), vec4<u32>(global1.x, global0[_wgslsmith_index_u32(global3.x, 24u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 76306u, var_0.x), var_0.xwy), global3.x | global0[_wgslsmith_index_u32(1u, 24u)]), var_0) >> (abs(~vec4<u32>(4294967295u, 4294967295u, global3.x, 60469u) & (var_0 << (vec4<u32>(1u, 11751u, var_0.x, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)), -32697i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, global2.b, global2.b), vec3<f32>(-289f, global2.b, -369f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1533f, 309f, 1000f) - vec3<f32>(global2.b, global2.b, -965f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b, 1058f, global2.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, global2.b, 620f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(131f, global2.b, -940f)))))));
}

