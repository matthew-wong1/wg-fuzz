struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 3> = array<i32, 3>(1i, 2147483647i, 2147483647i);

var<private> global2: array<u32, 6> = array<u32, 6>(1u, 1u, 0u, 19187u, 0u, 63008u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3406f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1335f + _wgslsmith_f_op_f32(floor(166f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(519f)), _wgslsmith_f_op_f32(select(-912f, -2245f, arg_0.a))))) - vec2<f32>(-874f, _wgslsmith_f_op_f32(-129f + _wgslsmith_f_op_f32(f32(-1f) * -533f))));
    var var_1 = vec2<f32>(var_0.x, -282f);
    var var_2 = true;
    global0 = reverseBits((firstLeadingBit(vec2<i32>(2147483647i, 0i)) | ~select(vec2<i32>(arg_0.b.x, -2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25981u, 6u)], 3u)], -18212i), false)) >> (~_wgslsmith_mod_vec2_u32(u_input.a.zz, ~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u)) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-559f, -1020f))));
    return arg_0.a;
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<i32> {
    var var_0 = vec4<bool>(true, !(!(!func_3(Struct_1(false, vec2<i32>(7891i, 11372i))))), true, ~(~_wgslsmith_div_u32(arg_0, arg_0)) >= 4294967295u);
    let var_1 = -13107i;
    global1 = array<i32, 3>();
    let var_2 = var_0.zxy;
    let var_3 = Struct_1(_wgslsmith_add_u32(~(~global2[_wgslsmith_index_u32(u_input.b.x, 6u)]), abs(_wgslsmith_dot_vec3_u32(u_input.a.wxy, vec3<u32>(u_input.b.x, 0u, global2[_wgslsmith_index_u32(1u, 6u)])))) < u_input.a.x, -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(u_input.c, global0.x) & vec2<i32>(13269i, global0.x)), -(vec2<i32>(global0.x, u_input.c) >> (u_input.d.wz % vec2<u32>(32u)))));
    return ~(-firstLeadingBit(vec2<i32>(~19426i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 6141i), var_3.b))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global0 = vec2<i32>(-4364i, 14184i) ^ arg_2;
    global2 = array<u32, 6>();
    var var_0 = arg_1;
    return Struct_1(arg_0.a, vec2<i32>(6426i, -1i));
}

fn func_1() -> Struct_1 {
    return func_4(Struct_1(true, -reverseBits(~vec2<i32>(-16258i, u_input.c))), Struct_1(false, vec2<i32>(-1i) * -func_2(u_input.a.x, true)), vec2<i32>(_wgslsmith_add_i32(reverseBits(~(-25892i)), -global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 6u)], 3u)]), i32(-1i) * -min(global0.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 6>();
    let var_0 = func_1();
    var var_1 = true;
    var var_2 = func_1();
    var var_3 = any(select(!(!select(vec2<bool>(var_0.a, false), vec2<bool>(false, var_2.a), vec2<bool>(var_0.a, false))), vec2<bool>((u_input.d.x <= 4294967295u) & var_2.a, !(!var_2.a)), all(!vec2<bool>(true, var_2.a)) || (global2[_wgslsmith_index_u32(u_input.d.x, 6u)] >= (global2[_wgslsmith_index_u32(4294967295u, 6u)] << (u_input.a.x % 32u)))));
    var var_4 = ~_wgslsmith_div_vec3_i32(-max(firstTrailingBit(vec3<i32>(-1i, var_0.b.x, 29799i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, 1i, -18034i), vec3<i32>(u_input.c, global0.x, -44574i))), vec3<i32>(_wgslsmith_mod_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.d.x, 3u)]) << (49567u % 32u), -1i, ~(global0.x >> (u_input.d.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.b.x, var_0.b.x, var_2.b.x), vec3<i32>(309i, u_input.c, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]) ^ vec3<i32>(var_4.x, u_input.c, u_input.c))), var_4.x), _wgslsmith_f_op_f32(trunc(-1102f)), _wgslsmith_mod_i32(global0.x, ~(-(~(-1i)))));
}

