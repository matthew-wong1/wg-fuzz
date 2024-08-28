struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: array<vec2<i32>, 30>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: array<i32, 23>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_0.b.x, arg_0.a.yz, Struct_1(arg_1.c.a, vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1212f)), -1041f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-754f)) - 384f)), false));
    let var_1 = ~(~(~((vec4<u32>(arg_3.b.x, 4294967295u, u_input.e, 42599u) ^ vec4<u32>(arg_0.a.x, arg_1.b.x, u_input.e, 1u)) ^ vec4<u32>(70212u, 0u, 3576u, 40579u))));
    global0 = array<vec2<bool>, 20>();
    global2 = !select(vec3<bool>(!any(vec2<bool>(false, false)), all(select(vec4<bool>(arg_0.c, var_0.c.c, arg_0.c, true), vec4<bool>(true, var_0.c.c, true, true), arg_0.c)), true), select(!select(vec3<bool>(global2.x, arg_3.c.c, arg_3.c.c), vec3<bool>(arg_3.c.c, false, global2.x), vec3<bool>(arg_0.c, var_0.c.c, var_0.c.c)), !(!vec3<bool>(arg_3.c.c, false, arg_0.c)), select(select(vec3<bool>(arg_1.c.c, var_0.c.c, var_0.c.c), vec3<bool>(true, arg_0.c, false), false), vec3<bool>(false, true, arg_1.c.c), true)), true);
    let var_2 = u_input.d.wzy;
    return _wgslsmith_div_u32(~4294967295u >> (1u % 32u), _wgslsmith_mult_u32(var_0.b.x, _wgslsmith_add_u32(var_1.x, 1u) | arg_1.c.a.x));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_1.b.x), abs(min(arg_1.a.zy, firstTrailingBit(abs(vec2<u32>(1u, 4294967295u))))), arg_1);
    var var_1 = vec4<i32>(-10658i, u_input.c.x, -39054i, u_input.a.x);
    var_1 = vec4<i32>(-(var_1.x & 0i), 1i, global3[_wgslsmith_index_u32(arg_0, 23u)], u_input.b);
    global0 = array<vec2<bool>, 20>();
    var var_2 = 334f;
    return vec3<u32>(var_0.c.a.x, func_3(Struct_1(~(~vec3<u32>(1u, arg_0, 8995u)), _wgslsmith_f_op_vec4_f32(arg_1.b * vec4<f32>(320f, var_0.a, 951f, 1328f)), global2.x), Struct_2(_wgslsmith_f_op_f32(-var_0.a), vec2<u32>(~var_0.b.x, 1u), Struct_1(vec3<u32>(arg_1.a.x, 4294967295u, arg_1.a.x), _wgslsmith_f_op_vec4_f32(round(arg_1.b)), true)), ~var_1.x | _wgslsmith_add_i32(-22349i, ~30685i), Struct_2(arg_1.b.x, abs(select(var_0.c.a.xz, arg_1.a.zz, arg_1.c)), var_0.c)), ~(~4294967295u));
}

fn func_1() -> u32 {
    global0 = array<vec2<bool>, 20>();
    global2 = !select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, false, global2.x), true);
    let var_0 = _wgslsmith_f_op_f32(step(-311f, 196f));
    var var_1 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec3_u32(reverseBits(func_2(1u, Struct_1(vec3<u32>(22783u, u_input.e, u_input.e), vec4<f32>(449f, 778f, var_0, var_0), false))), ~(~vec3<u32>(u_input.e, 8600u, u_input.e)), select(vec3<u32>(21582u, 0u, 4294967295u), ~vec3<u32>(u_input.e, u_input.e, u_input.e), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-380f - -264f), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(292f + 1190f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * var_0), var_0), var_0) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, var_0, var_0, 284f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, var_0, -702f, -845f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(962f, 1235f, 953f, var_0), vec4<f32>(var_0, var_0, var_0, 763f))))), any(!(!vec2<bool>(global2.x, global2.x))) & (!any(vec3<bool>(global2.x, false, false)) && global2.x));
    let var_2 = var_1.b.xxw;
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 23>();
    let var_0 = u_input.e;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(1765f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(750f - -1102f))), ~(~vec2<u32>(var_0, ~65686u)), Struct_1(vec3<u32>(~5703u, func_1(), 15842u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-774f, -1360f, -251f, -163f), vec4<f32>(514f, -1081f, -1758f, -268f), false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, -629f, -968f, 862f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-623f, -2238f, -2112f, 2377f))))), global2.x));
    let var_2 = Struct_1(var_1.c.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.b.x, -239f) - var_1.c.b.x)), _wgslsmith_f_op_f32(abs(-275f)), -764f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(896f, var_1.c.b.x))))), ~firstLeadingBit(reverseBits(global3[_wgslsmith_index_u32(var_1.b.x, 23u)])) == global3[_wgslsmith_index_u32(select(abs(var_1.c.a.x), 36991u, true) >> (min(~var_0, func_3(Struct_1(vec3<u32>(51754u, 4294967295u, 0u), vec4<f32>(var_1.c.b.x, var_1.a, -395f, -660f), true), Struct_2(var_1.c.b.x, var_1.c.a.zy, var_1.c), u_input.b, Struct_2(var_1.a, vec2<u32>(0u, 44320u), var_1.c))) % 32u), 23u)]);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(abs(var_2.b.x)), ~(~min(var_2.a.xy, func_2(var_0, var_2).xx)), var_2);
    let var_4 = Struct_2(-239f, var_1.b, var_3.c);
    var var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-2147483647i), var_1.c.b.x, 1348u, 20754u, var_0);
}

