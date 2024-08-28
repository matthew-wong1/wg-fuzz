struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false));

var<private> global3: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(87093u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0.a, arg_0.b.a), vec3<u32>(34484u, arg_0.a, arg_0.b.a))) | (arg_0.b.a << (~49417u % 32u))) & _wgslsmith_div_u32(63529u, arg_0.b.a ^ 21460u);
    let var_1 = select(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(66404u, arg_0.b.a, arg_0.a, arg_0.b.a)), countOneBits(vec4<u32>(arg_0.b.a, arg_0.b.a, arg_0.b.a, arg_0.b.a)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(71033u, 0u, 34162u, 42691u), vec4<u32>(0u, 1u, arg_0.a, arg_0.b.a)) % vec4<u32>(32u))), arg_0.b.a), vec3<u32>(abs(select(~arg_0.b.a, countOneBits(arg_0.a), 24816i < global0[_wgslsmith_index_u32(1u, 9u)])), 69585u, 1u), vec3<bool>(true, true, any(vec3<bool>(true, select(true, true, true), true))));
    let var_2 = false;
    global0 = array<i32, 9>();
    var_0 = max(1u, 23716u);
    return _wgslsmith_mult_u32(~select(~firstLeadingBit(4294967295u), _wgslsmith_div_u32(arg_0.a, max(arg_0.b.a, 38617u)), any(global2[_wgslsmith_index_u32(var_1.x, 21u)])), 4294967295u);
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> u32 {
    global1 = array<Struct_1, 12>();
    global0 = array<i32, 9>();
    global1 = array<Struct_1, 12>();
    let var_0 = vec2<bool>(reverseBits(2147483647i | u_input.a.x) != (-2147483647i ^ ~arg_3), !(!(all(vec4<bool>(true, true, arg_2.b, false)) | (arg_2.b | arg_1))));
    var var_1 = Struct_2(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(47115u, 71943u, 15109u, 0u), vec4<u32>(9074u, 89663u, 1u, 80533u)), abs(vec4<u32>(3978u, 0u, 39458u, 47570u))) << (26874u % 32u)));
    return var_1.a;
}

fn func_2() -> vec3<i32> {
    global1 = array<Struct_1, 12>();
    let var_0 = -min(global0[_wgslsmith_index_u32(3863u, 9u)], 2147483647i);
    let var_1 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1366f, global3.x), -531f, false)))) > global3.x);
    var var_2 = Struct_3(func_4(-570f, var_0 != global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(8953u, 1u), 9u)], global1[_wgslsmith_index_u32(firstTrailingBit(func_3(Struct_3(8128u, Struct_2(35955u)))), 12u)], _wgslsmith_add_i32(19614i, ~u_input.a.x)) ^ 1u, Struct_2(select(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 51919u)), vec2<u32>(41477u, 45284u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(5402u, 20032u, 12957u, 0u), ~vec4<u32>(4294967295u, 86851u, 64335u, 44828u)), var_1 || (global3.x != -503f))));
    let var_3 = select(vec3<bool>(var_1, !(!var_1) | all(!vec3<bool>(false, false, var_1)), var_1 != !(127f < global3.x)), vec3<bool>(var_1, var_1, true), vec3<bool>(!(!select(var_1, var_1, false)), false, var_1));
    return ~(vec3<i32>(global0[_wgslsmith_index_u32(var_2.b.a, 9u)], var_0, _wgslsmith_clamp_i32(41812i, i32(-1i) * -15728i, var_0)) >> (vec3<u32>(func_4(global3.x, var_1, Struct_1(vec4<f32>(435f, global3.x, -1110f, global3.x), var_3.x), u_input.a.x), _wgslsmith_mod_u32(var_2.a, 1u) << (4294967295u % 32u), ~77663u) % vec3<u32>(32u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_3 {
    global0 = array<i32, 9>();
    let var_0 = select(vec3<bool>(false, arg_1.x, true), !(!(!select(vec3<bool>(true, true, arg_1.x), vec3<bool>(false, false, arg_3.x), true))), arg_3.yxz);
    global0 = array<i32, 9>();
    var var_1 = -54241i;
    var var_2 = vec2<bool>(false, !(!(!arg_1.x)) | true);
    return Struct_3(_wgslsmith_clamp_u32(48882u, countOneBits(1u), ~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 51252u), firstTrailingBit(vec2<u32>(32606u, 28600u)))), Struct_2(4294967295u));
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(~max(vec3<i32>(max(0i, u_input.a.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1062u, 4294967295u, 12009u), vec3<u32>(0u, 1u, 44422u)), 9u)], global0[_wgslsmith_index_u32(10157u, 9u)]), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a.x, u_input.a.x, -23576i), u_input.a, true), func_2(), u_input.a)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), global1[_wgslsmith_index_u32(~select(27777u, 1u, select(all(vec2<bool>(true, true)), true, true)), 12u)], global2[_wgslsmith_index_u32(~1u, 21u)]);
    global3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global3.x, 850f)), _wgslsmith_f_op_f32(global3.x - 824f), true)), global3.x))), global3.x, 540f);
    var var_1 = u_input.a;
    global2 = array<vec4<bool>, 21>();
    let var_2 = Struct_2(~var_0.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<bool>(all(select(select(global2[_wgslsmith_index_u32(4294967295u, 21u)], vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), global2[_wgslsmith_index_u32(4294967295u, 21u)], false)), select(vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(var_0.a, 21u)], true), all(global2[_wgslsmith_index_u32(4294967295u, 21u)]))), ~var_0.b.a == var_0.b.a, any(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.a >> (func_3(var_0) % 32u), 4294967295u | _wgslsmith_mult_u32(var_0.b.a, var_0.a)), 21u)]), all(vec3<bool>(true, true, true)));
    global0 = array<i32, 9>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-364f, -1860f, global3.x, -702f)))))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global3.x, global3.x))), 1804f, -358f, -1356f))));
    var var_2 = _wgslsmith_mult_u32(~(~var_0.a), ~4294967295u);
    var var_3 = _wgslsmith_mod_u32(~countOneBits(var_0.b.a), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x);
}

