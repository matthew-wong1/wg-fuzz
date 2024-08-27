struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4;

var<private> global2: array<f32, 15>;

var<private> global3: Struct_2;

var<private> global4: vec4<f32> = vec4<f32>(-1000f, -177f, 1140f, -951f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, 624f) * vec2<f32>(1000f, 347f)))));
    let var_1 = arg_0;
    return true;
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3) -> Struct_4 {
    var var_0 = reverseBits(countOneBits(vec2<u32>((global1.a.b.x | 4294967295u) & 1u, 8785u)));
    let var_1 = arg_2;
    let var_2 = !select(!var_1.c.b.xxz, !select(select(vec3<bool>(var_1.c.b.x, true, true), global1.c.xzw, vec3<bool>(true, arg_2.c.b.x, var_1.c.b.x)), vec3<bool>(false, true, true), !vec3<bool>(false, global1.c.x, false)), select(vec3<bool>(!var_1.c.b.x, !arg_2.c.b.x, arg_2.b.x >= arg_0.x), vec3<bool>(any(var_1.c.b), true, any(var_1.c.b)), !(!vec3<bool>(arg_2.c.b.x, true, true))));
    global1 = Struct_4(global1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(435f - -695f))))), vec4<bool>(arg_1 <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.x * 837f))), any(select(vec4<bool>(var_1.c.b.x, true, false, true), select(arg_2.c.b, vec4<bool>(false, true, var_2.x, arg_2.c.b.x), false), true)), all(arg_2.c.b), true));
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b.x, 29927u, abs(global3.b.x)), _wgslsmith_div_vec4_u32(~(~u_input.b) & vec4<u32>(min(79022u, 4294967295u), var_0.x, 1u, u_input.b.x), vec4<u32>(abs(firstLeadingBit(arg_2.a)), _wgslsmith_clamp_u32(~0u, 11286u ^ var_0.x, _wgslsmith_div_u32(global3.b.x, global3.b.x)), arg_2.a, arg_2.a)));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a.a * global1.a.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1806f, arg_2.c.a.x, global4.x))) + _wgslsmith_f_op_vec4_f32(sign(global3.a))), global3.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_2.c.a.x, -1077f)), _wgslsmith_f_op_f32(trunc(-1212f)), true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-3197f)), _wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1318f)) * -1178f))), select(select(arg_2.c.b, !select(vec4<bool>(false, var_1.c.b.x, var_1.c.b.x, arg_2.c.b.x), var_1.c.b, arg_2.c.b), !var_1.c.b), !arg_2.c.b, true));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = func_3(u_input.a, arg_0.a.x, Struct_3(select(global1.a.b.x, 1u, func_2(Struct_3(u_input.b.x, u_input.a.yw, Struct_1(vec2<f32>(arg_1, global1.a.a.x), vec4<bool>(true, false, true, false))))) | 4079u, u_input.a.xy, Struct_1(global3.a.xx, !select(global1.c, vec4<bool>(arg_2.x, false, arg_2.x, false), arg_2.x))));
    var var_1 = vec2<u32>(~global1.a.b.x, ~(~1u));
    let var_2 = select(vec4<bool>(!func_2(Struct_3(4294967295u, u_input.a.xz, Struct_1(var_0.a.a.yz, vec4<bool>(arg_2.x, var_0.c.x, true, true)))), false, global1.c.x, arg_2.x), !func_3(-select(u_input.c, vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), false), global1.b, Struct_3(arg_0.b.x, u_input.a.ww, Struct_1(global1.a.a.zx, arg_2))).c, !select(vec4<bool>(false | arg_2.x, true, func_3(vec4<i32>(u_input.c.x, 47268i, -24029i, u_input.a.x), arg_0.a.x, Struct_3(global3.b.x, vec2<i32>(-28026i, -1i), Struct_1(var_0.a.a.yz, vec4<bool>(arg_2.x, false, true, true)))).c.x, global1.c.x), vec4<bool>(var_0.a.a.x > global4.x, false, arg_2.x || global1.c.x, global1.a.b.x == 1u), arg_2.x));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(arg_1 - 359f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.a.b.x, 15u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.x)))))), global3.a.x);
    var_0 = func_3(firstTrailingBit(vec4<i32>(u_input.a.x << (~24559u % 32u), -firstTrailingBit(0i), -_wgslsmith_mult_i32(8323i, 3352i), ~u_input.a.x)), 1665f, Struct_3(global3.b.x, -(~(vec2<i32>(1i, -3364i) << (arg_0.b.xy % vec2<u32>(32u)))), Struct_1(vec2<f32>(804f, 238f), var_0.c)));
    return global1.a.b.xw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-181f - 672f)))), _wgslsmith_f_op_f32(-105f + -103f))), _wgslsmith_f_op_f32(-global1.b));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global3.a.yz))), vec4<bool>(!all(!vec3<bool>(global1.c.x, false, true)), global1.c.x, any(global1.c.xxx) || global1.c.x, true));
    let var_2 = _wgslsmith_clamp_vec2_u32(func_1(global1.a, -536f, vec4<bool>(global1.c.x, true, true == (13975u < global1.a.b.x), true)), global3.b.yz, u_input.b.yy);
    global3 = global1.a;
    var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(~global3.b.x), 15u)]);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - -860f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-450f - global4.x))), global1.b, global4.x));
}

