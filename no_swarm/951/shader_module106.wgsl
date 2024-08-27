struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(1u, 0u, 0u, 19525u), vec4<u32>(11633u, 1u, 1u, 4294967295u), vec4<u32>(28903u, 0u, 8367u, 1u), vec4<u32>(47565u, 4294967295u, 0u, 1u));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32) -> vec3<bool> {
    return vec3<bool>(false, !any(vec2<bool>(true, false)), true);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = u_input.a;
    var var_1 = vec2<u32>(45764u << (_wgslsmith_add_u32(reverseBits(~0u), ~u_input.a) % 32u), _wgslsmith_add_u32(~u_input.a, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(u_input.a, 56933u, u_input.a)))));
    return select(select(!(!select(vec4<bool>(false, arg_2, true, arg_3.a.x), vec4<bool>(arg_3.a.x, arg_3.a.x, false, arg_3.a.x), arg_2)), !select(!vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(arg_3.a.x, arg_3.a.x, arg_2, arg_2), global0[_wgslsmith_index_u32(u_input.a, 18u)] < global0[_wgslsmith_index_u32(1u, 18u)]), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, arg_2, true, false), vec4<bool>(true, arg_3.a.x, arg_2, arg_2)), !(!vec4<bool>(arg_3.a.x, arg_2, true, arg_3.a.x)), vec4<bool>(all(vec4<bool>(arg_2, arg_2, true, true)), any(arg_3.a), true, false))), vec4<bool>(arg_3.a.x, arg_2, select(arg_2, arg_3.a.x, any(vec2<bool>(true, arg_3.a.x))), arg_3.a.x & arg_3.a.x), !(!vec4<bool>(!arg_3.a.x, true, arg_3.a.x != true, arg_3.a.x)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = !select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), true), vec4<bool>(true, true, true, true), false), vec4<bool>(func_1(_wgslsmith_f_op_f32(min(arg_0.x, 1029f))).x, u_input.b >= max(u_input.b, u_input.b), true, true), all(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_2(var_0.xxx);
    return Struct_1(var_1.a.x, 2026f, !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)] > 1000f, false, true, !var_0.x)), func_3(vec3<i32>(u_input.b, abs(~u_input.b), u_input.b), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, u_input.b, -19629i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(u_input.b, -45285i, u_input.b))), ~vec3<i32>(-2147483647i, -18975i, u_input.b)), var_1.a.x, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!func_1(-375f));
    let var_1 = func_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2737f + global0[_wgslsmith_index_u32(u_input.a, 18u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 18u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 18u)]) + -1307f)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 18u)];
    var var_3 = vec2<u32>(4294967295u ^ (firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 1u)) & ~max(u_input.a, u_input.a)), 31925u);
    let var_4 = vec2<i32>(-_wgslsmith_mult_i32(-1i >> (~u_input.a % 32u), -8847i), u_input.b);
    let var_5 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-2628i, 32120i), -14451i), var_4);
    let var_6 = all(!(!func_2(vec2<f32>(443f, 112f)).c.zw));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(u_input.a, 4294967295u) >> (~(~vec2<u32>(60367u, 27286u)) % vec2<u32>(32u))), ~70u, firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, var_3.x), 4294967295u), ~84994u, _wgslsmith_add_u32(9421u, var_3.x), 1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, ~1u, u_input.a), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 39046u), vec2<u32>(var_3.x, 16400u)), min(1u, var_3.x), 31570u)) ^ (~(~vec3<u32>(4294967295u, var_3.x, u_input.a)) & vec3<u32>(~1u, var_3.x, ~4294967295u)), _wgslsmith_div_u32(u_input.a, ~u_input.a));
}

