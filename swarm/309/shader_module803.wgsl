struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(39383u, 1u, 17118u, 4294967295u, 22403u, 34094u, 96188u, 25534u, 4294967295u, 47488u, 23078u, 1600u, 7629u, 47521u, 4219u, 0u, 28012u, 1u, 35138u, 0u, 0u, 1u, 4294967295u);

var<private> global1: array<vec3<f32>, 15>;

var<private> global2: array<vec3<f32>, 3>;

var<private> global3: f32 = -538f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = vec3<i32>(abs(max(0i, -21762i)), -1i, max(arg_0.x, arg_0.x));
    global2 = array<vec3<f32>, 3>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(arg_1.b.yy, _wgslsmith_div_vec2_f32(arg_1.b.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 107f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, 260f))))), arg_1.a));
    global3 = var_1.x;
    var var_2 = arg_1.a;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.b.x))))), 1426f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_div_f32(arg_1.b.x, var_1.x)))))) * vec4<f32>(1032f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b.x, arg_1.b.x) + 260f), arg_1.b.x, _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(-u_input.c, _wgslsmith_f_op_f32(317f + _wgslsmith_f_op_f32(-1f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(761f, var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))), -1137f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.a, Struct_3(false, global1[_wgslsmith_index_u32(u_input.d.x, 15u)])))) + vec4<f32>(var_0.b, _wgslsmith_f_op_f32(floor(var_0.b)), 838f, -2435f)))));
    global3 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-740f, var_0.b, false)), _wgslsmith_f_op_f32(f32(-1f) * -366f)))), -187f));
    global1 = array<vec3<f32>, 15>();
    let var_2 = reverseBits(global0[_wgslsmith_index_u32(u_input.b, 23u)]);
    return 8711u;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(false, global1[_wgslsmith_index_u32(4294967295u, 15u)]);
    var var_1 = ~arg_1.a.xx;
    var var_2 = ~min(~vec4<u32>(_wgslsmith_mult_u32(arg_1.a.x, var_1.x), 1u << (arg_1.a.x % 32u), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 23u)], max(global0[_wgslsmith_index_u32(var_1.x, 23u)], var_1.x)), vec4<u32>(abs(func_2()), 1u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(57407u, _wgslsmith_mod_u32(1u, u_input.d.x), 4294967295u), 23u)], _wgslsmith_mult_u32(var_1.x, ~var_1.x)));
    global2 = array<vec3<f32>, 3>();
    var var_3 = select(12014u, select(_wgslsmith_add_u32(0u, var_1.x ^ ~var_2.x), u_input.b, true), arg_1.c.b < var_0.b.x);
    return ~(~vec4<u32>(~8804u, 4294967295u << (_wgslsmith_mult_u32(arg_1.a.x, 14140u) % 32u), _wgslsmith_add_u32(~4294967295u, ~global0[_wgslsmith_index_u32(var_2.x, 23u)]), var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 15>();
    global1 = array<vec3<f32>, 15>();
    let var_0 = select(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 23u)], 0u, 0u), ~vec4<u32>(u_input.d.x, u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global0[_wgslsmith_index_u32(6331u, 23u)])), countOneBits(countOneBits(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(106361u, 23u)], 1u, global0[_wgslsmith_index_u32(1u, 23u)], 1u))))), func_1(0i, Struct_2(vec3<u32>(87434u, 1u, ~u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_1(u_input.c, _wgslsmith_f_op_f32(-1000f - -1229f)))), !(!vec4<bool>(true, 45463u <= global0[_wgslsmith_index_u32(4294967295u, 23u)], false, any(vec3<bool>(true, true, false)))));
    global2 = array<vec3<f32>, 3>();
    global3 = -307f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zw, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(1i, u_input.a, 38648i), Struct_3(false, global1[_wgslsmith_index_u32(0u, 15u)]))).x, -386f, 1105f), vec3<f32>(-1911f, _wgslsmith_f_op_f32(max(-272f, -993f)), -499f))))));
}

