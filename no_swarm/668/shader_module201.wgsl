struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(-38503i, 2147483647i), vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(-8517i, 1i), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(-59558i, -1i), vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(2147483647i, 0i), vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(-2488i, 1i), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(545i, 16797i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(-2653i, 56835i), vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(-8527i, i32(-2147483648)), vec4<bool>(true, false, false, true)), Struct_1(vec2<i32>(-7156i, 2147483647i), vec4<bool>(true, false, true, false)), Struct_1(vec2<i32>(44349i, 2147483647i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(-1i, 24576i), vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(-45828i, 0i), vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(46330i, 9225i), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(10423i, -20325i), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(-42960i, -29890i), vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(28423i, -1i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(2147483647i, 22179i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(1i, 0i), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(-30211i, -2826i), vec4<bool>(true, true, true, true)), Struct_1(vec2<i32>(1i, -72762i), vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(0i, 0i), vec4<bool>(true, true, false, true)), Struct_1(vec2<i32>(-21046i, -1i), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(-36289i, 2147483647i), vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(46382i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(vec2<i32>(0i, -19054i), vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(1i, 13724i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(0i, 0i), vec4<bool>(true, false, true, false)));

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<i32> {
    global0 = global2[_wgslsmith_index_u32(~(~(~0u)), 10u)];
    global2 = array<Struct_1, 10>();
    var var_0 = 1u;
    let var_1 = firstTrailingBit(1u);
    var var_2 = Struct_1(~_wgslsmith_add_vec2_i32(~(global0.a | vec2<i32>(u_input.a.x, global0.a.x)), vec2<i32>(~343i, global0.a.x)), select(select(!(!vec4<bool>(false, true, global0.b.x, global0.b.x)), select(vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x), global0.b, select(global0.b.x, global0.b.x, global0.b.x)), true), !vec4<bool>(false, any(global0.b.zy), true, global0.b.x), global0.b));
    return vec2<i32>(0i, _wgslsmith_sub_i32(select(u_input.a.x, _wgslsmith_sub_i32(1i, i32(-1i) * -2147483647i), true), u_input.a.x & var_2.a.x));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_i32(func_3(), u_input.a.yy) | global0.a;
    var var_1 = global2[_wgslsmith_index_u32(13095u, 10u)];
    var var_2 = firstTrailingBit(~countOneBits(vec4<u32>(abs(arg_2), arg_2 >> (24761u % 32u), arg_2 ^ arg_2, arg_2 & arg_2)));
    return global2[_wgslsmith_index_u32(arg_2, 10u)];
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-657f, -1337f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1183f)))))));
    var var_2 = 0i;
    global1 = array<Struct_1, 27>();
    var var_3 = Struct_1(select(vec2<i32>(arg_0.a.x, func_3().x), (vec2<i32>(-2147483647i, arg_1) >> (vec2<u32>(142793u, 4294967295u) % vec2<u32>(32u))) ^ ~arg_0.a, arg_2.b.x) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, func_2(u_input.a.x, 0i, 1u).a.x), arg_2.a, ~(~vec2<i32>(arg_2.a.x, 9767i))), vec4<bool>(true, global0.b.x, true, all(select(vec4<bool>(true, arg_2.b.x, false, true), !vec4<bool>(var_0.b.x, false, false, true), any(var_0.b.zz)))));
    return Struct_1(~(~(~vec2<i32>(u_input.a.x, global0.a.x))), global0.b);
}

fn func_1() -> vec3<f32> {
    global0 = func_4(func_2(global0.a.x, -_wgslsmith_mod_i32(global0.a.x, ~(-9976i)), ~7424u), global0.a.x, Struct_1(~countOneBits(-vec2<i32>(u_input.a.x, u_input.a.x)), select(func_2(-global0.a.x, max(u_input.a.x, global0.a.x), _wgslsmith_clamp_u32(0u, 0u, 1u)).b, global0.b, global0.b)));
    let var_0 = any(global0.b);
    global0 = Struct_1((vec2<i32>(-11863i, -1i) | vec2<i32>(-1i ^ global0.a.x, ~u_input.a.x)) ^ func_4(Struct_1(vec2<i32>(global0.a.x, 0i), !global0.b), _wgslsmith_dot_vec4_i32(min(vec4<i32>(1i, 1i, 94771i, global0.a.x), vec4<i32>(-7781i, global0.a.x, global0.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(4741i, global0.a.x, -6069i, global0.a.x), vec4<i32>(1i, 1i, global0.a.x, 1i))), func_2(_wgslsmith_clamp_i32(u_input.a.x, 0i, global0.a.x), _wgslsmith_div_i32(global0.a.x, u_input.a.x), abs(48005u))).a, vec4<bool>(global0.b.x, false, func_4(func_2(-2147483647i, select(global0.a.x, 2147483647i, var_0), reverseBits(18665u)), _wgslsmith_mod_i32(global0.a.x, i32(-1i) * -32631i), Struct_1(vec2<i32>(u_input.a.x, -2474i), vec4<bool>(global0.b.x, var_0, var_0, var_0))).b.x, global0.b.x));
    var var_1 = !global0.b.yw;
    var var_2 = global1[_wgslsmith_index_u32(~0u, 27u)];
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1307f - _wgslsmith_f_op_f32(min(214f, -1134f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)), 364f)), -1539f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-709f, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) + vec3<f32>(var_0.x, var_0.x, -705f)))))));
    global0 = Struct_1(vec2<i32>(reverseBits(u_input.a.x), 1i), global0.b);
    let var_1 = vec3<u32>(1u, ~1u, ~40467u);
    var_0 = vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(331f, var_0.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) | vec3<i32>(1724i, -2147483647i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, 26241i, global0.a.x), -vec3<i32>(global0.a.x, 2147483647i, global0.a.x))) | ~(select(vec3<i32>(-1i, global0.a.x, global0.a.x), vec3<i32>(-40030i, u_input.a.x, u_input.a.x), true) | ~vec3<i32>(43401i, 44199i, -10705i)), _wgslsmith_div_vec4_f32(vec4<f32>(-999f, var_0.x, _wgslsmith_f_op_f32(step(-1012f, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1371f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -500f, 1000f) + vec4<f32>(588f, var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1644f) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, _wgslsmith_f_op_f32(sign(251f)))))));
}

