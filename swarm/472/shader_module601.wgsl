struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> i32 {
    let var_0 = vec4<i32>(16257i, arg_0.a.e, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~1i, ~(-2147483647i)), arg_0.a.e), firstLeadingBit(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 14556i, arg_0.a.e), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a.e, arg_0.a.e, arg_0.a.e), vec3<i32>(arg_0.a.e, arg_0.a.e, arg_0.a.e)))) << (u_input.a % 32u));
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    var var_1 = Struct_1(!select(select(select(vec2<bool>(arg_0.a.b.b, arg_0.a.d.a.b), vec2<bool>(true, true), arg_0.a.d.a.a.x), vec2<bool>(false, arg_0.a.b.b), select(arg_0.a.d.a.a, vec2<bool>(arg_0.a.c.a.a.x, true), arg_0.a.c.a.a)), select(arg_0.a.b.a, arg_0.a.b.a, select(arg_0.a.b.a, vec2<bool>(true, false), arg_0.a.c.a.a)), true), any(select(vec3<bool>(arg_0.a.b.a.x, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)] > 1u), !select(vec3<bool>(arg_0.a.c.a.a.x, true, false), arg_0.a.a, true), any(!vec4<bool>(arg_0.a.c.a.b, arg_0.a.d.a.b, false, false)))));
    global1 = array<vec4<bool>, 27>();
    return 35404i;
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = arg_0.a;
    global0 = array<u32, 14>();
    let var_1 = Struct_2(arg_0.b);
    let var_2 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, _wgslsmith_mult_u32(88788u, 1u), ~(~global0[_wgslsmith_index_u32(0u, 14u)])), ~vec4<u32>(_wgslsmith_mult_u32(84200u, u_input.a), countOneBits(u_input.a), _wgslsmith_mult_u32(11378u, u_input.a), ~u_input.a));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1810f, _wgslsmith_f_op_f32(-466f - _wgslsmith_f_op_f32(f32(-1f) * -562f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(283f, _wgslsmith_f_op_f32(min(-939f, 448f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(597f - -1245f)))) - _wgslsmith_f_op_f32(step(1f, -1513f)));
    return select(select(arg_0.a, vec3<bool>(all(var_1.a.a), any(!vec3<bool>(false, true, arg_0.d.a.b)), false), all(vec3<bool>(false, var_0.x, false)) && var_0.x), !vec3<bool>(arg_0.b.a.x, arg_0.c.a.b, arg_0.b.a.x), all(vec3<bool>(arg_0.c.a.b, true, true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: bool, arg_3: bool) -> bool {
    global1 = array<vec4<bool>, 27>();
    var var_0 = Struct_2(Struct_1(select(select(!vec2<bool>(false, arg_3), !vec2<bool>(true, arg_2), select(vec2<bool>(arg_3, true), vec2<bool>(arg_3, true), false)), vec2<bool>(true, all(vec2<bool>(arg_2, false))), vec2<bool>(true, all(vec3<bool>(arg_2, true, false)))), arg_2));
    let var_1 = Struct_4(Struct_3(func_4(Struct_3(vec3<bool>(true, true, true), var_0.a, Struct_2(Struct_1(var_0.a.a, true)), Struct_2(var_0.a), func_3(Struct_4(Struct_3(vec3<bool>(false, var_0.a.b, true), Struct_1(var_0.a.a, arg_3), Struct_2(Struct_1(vec2<bool>(arg_3, arg_3), false)), Struct_2(Struct_1(vec2<bool>(arg_3, var_0.a.a.x), true)), 1i)), -514f))), var_0.a, Struct_2(Struct_1(!var_0.a.a, arg_3)), Struct_2(Struct_1(var_0.a.a, arg_2)), -arg_1));
    let var_2 = var_1.a.c;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f - _wgslsmith_f_op_f32(f32(-1f) * -1388f))), _wgslsmith_f_op_f32(f32(-1f) * -1029f), 1226f);
    return var_1.a.a.x;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    return select(select(vec2<bool>(select(false, true, func_2(vec2<i32>(-1i, 13988i), -11561i, false, false)), (u_input.a >> (1u % 32u)) >= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(32374u, 14u)]))), vec2<bool>(func_4(Struct_3(vec3<bool>(true, true, true), Struct_1(vec2<bool>(true, true), true), Struct_2(Struct_1(vec2<bool>(true, false), false)), Struct_2(Struct_1(vec2<bool>(true, true), false)), 2938i)).x, (arg_0 & -1i) != _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0, arg_0, arg_0), vec4<i32>(25246i, arg_0, 0i, arg_0))), select(vec2<bool>(true, 0i > arg_0), vec2<bool>(true, true), true || func_2(vec2<i32>(arg_0, arg_0), 2147483647i, true, true))), vec2<bool>(any(vec3<bool>(true, func_2(vec2<i32>(arg_0, arg_0), arg_0, false, false), 4294967295u > u_input.a)), true), !select(!func_4(Struct_3(vec3<bool>(true, true, false), Struct_1(vec2<bool>(true, false), true), Struct_2(Struct_1(vec2<bool>(true, true), true)), Struct_2(Struct_1(vec2<bool>(false, true), true)), arg_0)).zy, vec2<bool>(true, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1i;
    let var_1 = Struct_1(func_1(-48747i), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(min(countOneBits(-1i), abs(-4792i)) >> (_wgslsmith_div_u32(u_input.a, ~40927u) % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(abs(4936i), select(-1i, -1i, true)), min(1i, -7959i))), global0[_wgslsmith_index_u32(0u, 14u)]);
}

