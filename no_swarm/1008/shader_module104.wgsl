struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(4294967295u, 4294967295u, 0u, 43288u, 62067u, 1u, 10226u, 8420u, 34792u, 0u, 4294967295u, 1u, 39670u, 4294967295u, 19183u, 0u, 1u, 0u, 4294967295u, 14211u, 0u, 4294967295u, 1u, 0u, 20374u, 4294967295u, 55884u, 4294967295u, 60945u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32) -> bool {
    let var_0 = arg_0.wxx;
    global0 = array<u32, 30>();
    let var_1 = Struct_2(vec2<bool>(false, !all(vec3<bool>(true, true, true))), _wgslsmith_sub_i32(arg_0.x, min(~(~arg_0.x), arg_0.x)), Struct_1(vec4<bool>(true, true, true, true), !vec2<bool>(any(vec3<bool>(true, true, true)), true), ~vec4<u32>(_wgslsmith_clamp_u32(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 30u)], 5502u), 14641u & u_input.a, 1u, u_input.a & u_input.a)), 832f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(342f, 1118f), arg_1.wx, var_1.c.a.yy))) + vec2<f32>(arg_1.x, arg_2)), _wgslsmith_f_op_vec2_f32(arg_1.zz * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_1.wx * vec2<f32>(arg_2, -366f))))), true | any(!var_1.c.a.xyx))));
    var var_3 = abs((_wgslsmith_mult_i32(0i, -3732i) ^ var_1.b) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a, 30u)], 30u)] % 32u)) ^ var_0.x;
    return var_1.c.a.x;
}

fn func_2() -> f32 {
    global0 = array<u32, 30>();
    var var_0 = any(vec3<bool>(!(_wgslsmith_div_f32(687f, -748f) != _wgslsmith_f_op_f32(round(261f))), true, true));
    var_0 = true;
    let var_1 = Struct_1(!vec4<bool>(select(any(vec4<bool>(false, false, true, false)), true, true), func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 22624i, -59911i, 20939i), vec4<i32>(-2564i, -9981i, -18208i, -47778i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, 1000f, -252f, -486f)), _wgslsmith_div_f32(2151f, 2759f)), false, true), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true))), ~(~(abs(vec4<u32>(53966u, 1u, 49834u, u_input.a)) & vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], 67027u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1357f, 705f, -166f) + vec3<f32>(-558f, 1000f, 812f)))))));
    return var_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(154f, -183f, arg_1.a.x)) + _wgslsmith_f_op_f32(round(-1060f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1512f) + _wgslsmith_f_op_f32(-1920f - -909f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1550f + 819f))))));
    let var_1 = firstLeadingBit(vec4<i32>(~0i, 1i, i32(-1i) * -60184i, min(~_wgslsmith_dot_vec4_i32(vec4<i32>(-21253i, -1i, -1i, -1i), vec4<i32>(2147483647i, -9914i, -18345i, 11017i)), -13585i)));
    let var_2 = Struct_2(!vec2<bool>(false, any(arg_0.a) | arg_1.b.x), _wgslsmith_add_i32(~reverseBits(-19049i), -2147483647i), Struct_1(vec4<bool>(arg_1.a.x, any(arg_1.a.zwz), _wgslsmith_f_op_f32(step(-1733f, var_0.x)) > _wgslsmith_f_op_f32(-var_0.x), !(arg_0.b.x && true)), !(!select(arg_0.b, vec2<bool>(arg_0.a.x, false), arg_0.b)), vec4<u32>(~abs(0u), (arg_0.c.x & 0u) | ~1u, 1u, _wgslsmith_sub_u32(6205u, 0u) << (global0[_wgslsmith_index_u32(~0u, 30u)] % 32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-149f)), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(583f + _wgslsmith_f_op_f32(var_2.d + -135f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1338f - _wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f + var_2.d))))), arg_1.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0.c;
    global0 = array<u32, 30>();
    let var_1 = !select(!vec4<bool>(!var_0.a.x, false, false, all(vec2<bool>(arg_0.a.x, true))), var_0.a, select(arg_0.c.a, vec4<bool>(true, arg_0.d < arg_0.d, true, false), !var_0.b.x));
    let var_2 = _wgslsmith_dot_vec2_i32(arg_1.zw, vec2<i32>(arg_1.x, 65590i));
    let var_3 = Struct_1(select(var_0.a, vec4<bool>((var_0.c.x <= 8575u) || false, all(vec4<bool>(arg_0.a.x, arg_0.c.a.x, true, arg_0.a.x)), false, true), !select(!vec4<bool>(var_0.a.x, var_1.x, arg_0.a.x, var_1.x), !vec4<bool>(arg_0.c.b.x, var_0.a.x, false, false), select(false, true, var_0.b.x))), vec2<bool>(var_1.x || arg_0.a.x, var_0.b.x), vec4<u32>(global0[_wgslsmith_index_u32(~(~1u), 30u)], u_input.a, _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(u_input.a & 1u, 30u)], u_input.a), firstLeadingBit(~firstTrailingBit(50248u))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    let var_0 = func_4(Struct_2(!vec2<bool>(true, all(vec4<bool>(true, true, true, false))), ~(-1i), Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, false), ~vec4<u32>(global0[_wgslsmith_index_u32(17492u, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 30u)], 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(25482u, 30u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, true), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], u_input.a)))), _wgslsmith_f_op_f32(1205f + 2145f), true)), -856f, false))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) ^ vec4<i32>(2147483647i, abs(35083i), _wgslsmith_dot_vec2_i32(vec2<i32>(58003i, -1i), vec2<i32>(1i, -27471i)), -6924i), firstLeadingBit(vec4<i32>(firstTrailingBit(1i), abs(8072i), _wgslsmith_mult_i32(-1i, 0i), select(2147483647i, -2147483647i, true)))));
    var var_1 = func_4(var_0, -(vec4<i32>(var_0.b, 1i, var_0.b, var_0.b) & min(_wgslsmith_div_vec4_i32(vec4<i32>(17831i, var_0.b, -29136i, -17086i), vec4<i32>(28652i, var_0.b, var_0.b, var_0.b)), countOneBits(vec4<i32>(-48143i, var_0.b, var_0.b, var_0.b))))).c.a.wzz;
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -129f)))));
}

