struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(true), Struct_1(false), vec2<i32>(i32(-2147483648), 0i), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), vec2<i32>(2147483647i, -1i), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(true), vec2<i32>(0i, i32(-2147483648)), Struct_1(true)), Struct_2(Struct_1(true), Struct_1(false), vec2<i32>(i32(-2147483648), -3540i), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), vec2<i32>(0i, 52892i), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec2<i32>(9972i, -15319i), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), vec2<i32>(2147483647i, 0i), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), vec2<i32>(-1i, -1428i), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), vec2<i32>(0i, 10111i), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), vec2<i32>(i32(-2147483648), 1714i), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), vec2<i32>(-28031i, 2221i), Struct_1(false)), Struct_2(Struct_1(false), Struct_1(false), vec2<i32>(-15434i, 1i), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(false), vec2<i32>(5427i, i32(-2147483648)), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), vec2<i32>(0i, 2147483647i), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), vec2<i32>(-74690i, -14587i), Struct_1(true)), Struct_2(Struct_1(false), Struct_1(true), vec2<i32>(2147483647i, 10789i), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), vec2<i32>(5505i, -12929i), Struct_1(true)));

var<private> global2: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<f32> {
    global1 = array<Struct_2, 17>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1516f), _wgslsmith_f_op_f32(f32(-1f) * -331f), 598f)))));
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(false);
    var var_3 = ~(~select(vec4<u32>(30493u, select(var_1, 1u, true), var_1, firstTrailingBit(0u)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1, u_input.b, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, u_input.b, var_1)), vec4<bool>(true, true & var_2.a, any(arg_1.wyw), true)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1249f), -1211f, -1207f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-713f, -626f, -662f), vec3<f32>(122f, 158f, -257f), arg_1.xxx)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, 536f, 137f)))));
}

fn func_2() -> u32 {
    var var_0 = abs(firstLeadingBit(vec4<u32>(u_input.b, 1u, ~u_input.a.x, u_input.b)));
    var var_1 = Struct_2(Struct_1(true), Struct_1(global0.b.a), global0.c, Struct_1(true));
    var var_2 = global1[_wgslsmith_index_u32(308u, 17u)];
    let var_3 = !vec2<bool>(true, global0.b.a);
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(516f, 1470f, 485f) - vec3<f32>(-1000f, 324f, -134f)) * vec3<f32>(2182f, _wgslsmith_f_op_f32(-218f - -431f), _wgslsmith_f_op_f32(step(-931f, 278f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_1.a, Struct_1(false), var_2.c, var_2.d), vec4<bool>(true, global0.a.a, true, true)))))));
    return var_0.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> vec4<u32> {
    global1 = array<Struct_2, 17>();
    return firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(10424u, u_input.a.x), u_input.a.x, func_2(), min(64005u, 0u)), vec4<u32>((u_input.a.x & 4294967295u) << (abs(0u) % 32u), max(u_input.b, u_input.a.x), 62664u, ~_wgslsmith_mod_u32(u_input.a.x, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1755f) - _wgslsmith_f_op_f32(-915f + -1156f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-151f)) + _wgslsmith_f_op_f32(-194f - 359f))) * -546f), -317f);
    let var_1 = select(min(select(firstTrailingBit(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec4_u32(func_1(vec2<bool>(true, false), -193f), firstLeadingBit(vec4<u32>(u_input.b, 8526u, 4294967295u, u_input.b)), vec4<u32>(0u, u_input.b, u_input.b, 0u)), true), vec4<u32>(countOneBits(~u_input.b), ~u_input.b, 1u, 18020u)), vec4<u32>(abs(4294967295u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(21189u, u_input.b)) | _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, u_input.b)), ~u_input.a.x), _wgslsmith_sub_u32(~func_1(vec2<bool>(false, global0.d.a), var_0.x).x, 1u), ~(~firstTrailingBit(1u))), all(!vec3<bool>(true, any(vec3<bool>(true, global0.b.a, global0.a.a)), true)));
    var var_2 = !(!(!select(vec2<bool>(true, true), !vec2<bool>(global0.a.a, false), true)));
    global0 = Struct_2(Struct_1(global0.b.a), Struct_1(!(select(var_2.x, var_2.x, global0.d.a) && global0.d.a)), -abs(vec2<i32>(global0.c.x, 41632i)), global0.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(func_3(Struct_2(global0.a, global0.b, vec2<i32>(~_wgslsmith_clamp_i32(global0.c.x, 24871i, global0.c.x), select(_wgslsmith_mult_i32(0i, -14666i), -global0.c.x, all(vec3<bool>(var_2.x, var_2.x, false)))), Struct_1(!var_2.x)), select(!select(vec4<bool>(var_2.x, global0.d.a, false, var_2.x), vec4<bool>(global0.b.a, false, false, global0.b.a), var_2.x & true), select(vec4<bool>(-432f >= var_0.x, any(vec4<bool>(global0.b.a, global0.b.a, global0.d.a, var_2.x)), global0.a.a, var_0.x <= var_0.x), vec4<bool>(var_2.x, !var_2.x, global0.c.x < -38284i, all(vec4<bool>(var_2.x, true, var_2.x, var_2.x))), var_2.x), vec4<bool>(var_2.x, ~u_input.a.x < ~u_input.b, any(vec2<bool>(false, var_2.x)) && (true | var_2.x), any(vec2<bool>(var_2.x, global0.b.a)))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(global0.c)), -2147483647i, ~vec4<u32>(83075u, ~u_input.a.x, 0u, _wgslsmith_mult_u32(65359u, 0u)) | max(firstTrailingBit(~vec4<u32>(u_input.b, 25045u, u_input.a.x, var_1.x)), vec4<u32>(1u, u_input.a.x, 79109u, var_1.x) >> (max(vec4<u32>(var_1.x, u_input.a.x, 1u, 1u), vec4<u32>(0u, var_1.x, var_1.x, u_input.a.x)) % vec4<u32>(32u))));
}

