struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
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

var<private> global0: array<u32, 16> = array<u32, 16>(1u, 12498u, 4294967295u, 55221u, 59361u, 53174u, 0u, 0u, 1u, 1u, 1u, 4294967295u, 1u, 1u, 1u, 52104u);

var<private> global1: f32 = 282f;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(0u, 1u), vec2<f32>(340f, -215f), 0u, vec2<bool>(true, true));

var<private> global3: array<u32, 18> = array<u32, 18>(51563u, 135859u, 3234u, 1u, 4294967295u, 1u, 37135u, 0u, 77869u, 10016u, 0u, 1u, 0u, 1u, 56737u, 1u, 4294967295u, 137444u);

var<private> global4: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    global3 = array<u32, 18>();
    let var_0 = arg_0;
    var var_1 = var_0;
    var var_2 = reverseBits(u_input.d.x);
    let var_3 = -2147483647i;
    return vec2<i32>(~(-2147483647i) >> (u_input.c % 32u), u_input.e.x);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: i32) -> bool {
    global3 = array<u32, 18>();
    global3 = array<u32, 18>();
    global0 = array<u32, 16>();
    let var_0 = !select(select(select(!vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, global2.d.x, arg_1)), !select(vec3<bool>(true, false, arg_1), vec3<bool>(global2.d.x, true, global2.d.x), vec3<bool>(true, arg_1, arg_1)), select(select(vec3<bool>(true, arg_1, global2.d.x), vec3<bool>(false, arg_1, true), vec3<bool>(false, true, true)), select(vec3<bool>(global2.d.x, global2.d.x, true), vec3<bool>(arg_1, arg_1, global2.d.x), true), vec3<bool>(arg_1, global2.d.x, arg_1))), vec3<bool>(all(select(vec3<bool>(global2.d.x, false, arg_1), vec3<bool>(true, false, true), vec3<bool>(arg_1, true, global2.d.x))), true, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 31791u, 0u), vec3<u32>(32242u, global4.x, global3[_wgslsmith_index_u32(global4.x, 18u)])) >= _wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(42307u, 16u)])), vec3<bool>(~global0[_wgslsmith_index_u32(26750u, 16u)] >= 18072u, all(vec3<bool>(global2.d.x, false, global2.d.x)) | true, arg_1));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_u32(~global2.a, global4.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -998f), _wgslsmith_f_op_f32(-1701f * -788f)) + _wgslsmith_f_op_vec2_f32(ceil(global2.b))), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global2.a.x, 16u)], 1u) | select(4294967295u, ~abs(0u), !global2.d.x), !var_0.yy);
    return arg_1;
}

fn func_1(arg_0: u32) -> vec4<bool> {
    global3 = array<u32, 18>();
    global1 = global2.b.x;
    global1 = -399f;
    var var_0 = vec4<bool>(global2.d.x, global2.d.x, !global2.d.x != true, global2.d.x);
    global3 = array<u32, 18>();
    return select(vec4<bool>(true, all(select(!vec4<bool>(false, true, var_0.x, var_0.x), select(vec4<bool>(global2.d.x, global2.d.x, global2.d.x, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(var_0.x, true, global2.d.x, true), vec4<bool>(false, false, true, true), vec4<bool>(global2.d.x, true, var_0.x, var_0.x)))), func_3(_wgslsmith_mult_vec2_i32(u_input.d.xy, u_input.d.yz) | func_2(Struct_1(vec2<u32>(3739u, u_input.a), vec2<f32>(global2.b.x, -631f), global4.x, vec2<bool>(global2.d.x, var_0.x))), any(!var_0.wzz), ~(~(-2147483647i))), false), !select(vec4<bool>(global2.d.x, all(var_0.wyw), true, true), vec4<bool>(var_0.x, select(var_0.x, var_0.x, false), all(vec4<bool>(global2.d.x, var_0.x, true, false)), true), select(!vec4<bool>(global2.d.x, true, false, false), !vec4<bool>(var_0.x, var_0.x, false, false), any(vec4<bool>(global2.d.x, global2.d.x, false, global2.d.x)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(func_1(4294967295u)), any(func_1(_wgslsmith_mod_u32(global4.x, global2.c)).wwz), all(global2.d));
    global2 = Struct_1(vec2<u32>(0u, 0u), vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global2.b.x)))))), firstLeadingBit(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global4.x, global3[_wgslsmith_index_u32(u_input.c, 18u)]), 18u)], global2.a.x)), vec2<bool>(global2.d.x, true));
    global2 = Struct_1(global4.xx, global2.b, ~(~16587u), global2.d);
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(max(countOneBits(vec2<u32>(global4.x, u_input.a)), ~global2.a & vec2<u32>(1u, global2.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(min(1u, 1u), 4294967295u), vec2<u32>(0u, ~global3[_wgslsmith_index_u32(0u, 18u)]), vec2<u32>(global3[_wgslsmith_index_u32(19270u, 18u)], 11215u) ^ reverseBits(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global4.x, 16u)])))), _wgslsmith_f_op_vec2_f32(step(global2.b, vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(global2.b.x + global2.b.x)))), _wgslsmith_div_u32(~abs(~global3[_wgslsmith_index_u32(22405u, 18u)]), 28109u), vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x);
}

