struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<u32>, 7>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    global2 = array<vec3<u32>, 7>();
    global0 = array<vec3<bool>, 5>();
    let var_0 = Struct_2(select(all(select(select(vec3<bool>(arg_0.a, arg_1.a, false), vec3<bool>(arg_0.a, true, arg_0.a), arg_1.a), global0[_wgslsmith_index_u32(~4294967295u, 5u)], any(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)))), true, firstTrailingBit(reverseBits(u_input.d)) > 1u), Struct_1(all(global0[_wgslsmith_index_u32(4294967295u, 5u)])), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, global1.x, global1.x) & vec3<u32>(global1.x >> (global1.x % 32u), countOneBits(u_input.d), _wgslsmith_mult_u32(global1.x, u_input.a.x)), firstTrailingBit(_wgslsmith_mult_vec3_u32(global1.xwy ^ vec3<u32>(u_input.a.x, u_input.c, u_input.c), ~vec3<u32>(32418u, 0u, 37811u)))));
    var var_1 = vec2<f32>(599f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(593f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1066f, 838f))))) - _wgslsmith_div_f32(1000f, 1823f)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return -u_input.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> bool {
    global0 = array<vec3<bool>, 5>();
    let var_0 = 705f;
    let var_1 = vec3<i32>(-(~min(u_input.b.x, -1i)), -17014i, u_input.b.x);
    let var_2 = firstLeadingBit(func_3(Struct_1(true), Struct_1(true | any(vec4<bool>(true, false, false, true))), -abs(-u_input.b.x)));
    global1 = u_input.e;
    return true;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -324f))))), -303f, 457f, -623f)));
    let var_1 = select(select(vec2<bool>(true, !all(vec2<bool>(false, false))), !vec2<bool>(func_2(vec2<u32>(1u, 4168u), 0u), true), (~u_input.b.x >= _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)) & false), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))), true);
    var var_2 = select(any(vec2<bool>(true, true)), !(!(40336i > u_input.b.x)), var_1.x & any(!var_1)) & var_1.x;
    let var_3 = !select(!(!vec2<bool>(var_1.x, false)), vec2<bool>(true, var_1.x), var_1);
    var var_4 = -u_input.b.x;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = ~16360u;
    var var_1 = firstLeadingBit(u_input.b);
    global2 = array<vec3<u32>, 7>();
    var var_2 = Struct_2(arg_1.x, Struct_1(!(!(0i > u_input.b.x))), ~(~vec3<u32>(var_0, _wgslsmith_add_u32(30377u, 28759u), u_input.c)));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(498f, 1078f, -122f, 887f))))));
    return var_3;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_2 {
    global2 = array<vec3<u32>, 7>();
    global1 = vec4<u32>(86862u, global1.x, countOneBits(~(~global1.x)), u_input.d);
    var var_0 = Struct_1(any(select(func_1(), !(!vec2<bool>(arg_1.a, arg_1.a)), !all(vec4<bool>(arg_1.b.a, false, false, false)))));
    global1 = _wgslsmith_sub_vec4_u32(~u_input.e, u_input.e);
    var_0 = Struct_1(!(!arg_1.b.a));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 5>();
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(false), func_1(), reverseBits(4294967295u) | _wgslsmith_add_u32(global1.x, 4294967295u), vec2<u32>(24846u, ~39423u)))), Struct_2(true, Struct_1(-u_input.b.x > 1i), global2[_wgslsmith_index_u32(14009u, 7u)]));
    var var_1 = u_input.b;
    let var_2 = 62472u;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(868f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1803f, -237f))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(func_5(vec4<f32>(1431f, 470f, 952f, -1236f), Struct_2(var_0.b.a, Struct_1(true), u_input.e.xyy)).b, !vec2<bool>(true, var_0.b.a), _wgslsmith_add_u32(var_2, var_0.c.x), ~vec2<u32>(global1.x, 23459u))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1576f + 1993f) - _wgslsmith_div_f32(-666f, -1042f)))));
}

