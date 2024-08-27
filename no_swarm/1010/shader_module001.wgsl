struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = -(~(-vec2<i32>(2147483647i, u_input.a)) & ~_wgslsmith_clamp_vec2_i32(min(vec2<i32>(-16541i, -29575i), vec2<i32>(-23032i, u_input.a)), firstTrailingBit(vec2<i32>(13416i, 1i)), vec2<i32>(0i, -46319i)));
    let var_1 = _wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(~max(abs(vec2<u32>(25119u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(50265u, 23176u))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(40190u, 4294967295u), reverseBits(vec2<u32>(1u, 4294967295u))), firstTrailingBit(select(vec2<u32>(1888u, 53998u), vec2<u32>(46754u, 4294967295u), vec2<bool>(true, false))))), abs(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(60528u, 19839u)), vec2<u32>(1u, 1u))));
    var var_2 = vec2<f32>(947f, arg_0.x);
    var_0 = (vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, var_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 1i)))) | _wgslsmith_clamp_vec2_i32(max(select(vec2<i32>(21496i, var_0.x), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, 0i)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<i32>(-1i) * -vec2<i32>(var_0.x, var_0.x)), vec2<i32>(1i, u_input.a), -min(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -7829i), vec2<i32>(var_0.x, 9034i)), countOneBits(vec2<i32>(-52783i, -37618i))));
    var var_3 = firstTrailingBit(1i);
    return !vec3<bool>(~abs(var_0.x) <= -10565i, !(true != any(vec3<bool>(true, false, false))), any(vec2<bool>(true, true)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: u32) -> vec3<bool> {
    global0 = array<vec3<f32>, 2>();
    var var_0 = !func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 561f) * vec4<f32>(1557f, arg_0, -1000f, 196f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_1.x, 1946f, arg_0)))));
    let var_1 = Struct_3(firstTrailingBit(select(vec2<i32>(u_input.a, -1128i), -vec2<i32>(u_input.a, 80721i), var_0.zx) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-19197i, -2147483647i) << (vec2<u32>(0u, arg_2) % vec2<u32>(32u)), vec2<i32>(u_input.a, 0i))), ~(min(firstTrailingBit(vec4<u32>(arg_2, arg_2, 4037u, arg_2)), _wgslsmith_sub_vec4_u32(vec4<u32>(17217u, 4294967295u, arg_2, 0u), vec4<u32>(arg_2, 0u, arg_2, arg_2))) >> (vec4<u32>(firstTrailingBit(1u), max(arg_2, arg_2), abs(29188u), 1u & arg_2) % vec4<u32>(32u))), Struct_1(vec3<u32>(arg_2, 54256u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2, 1u), vec3<u32>(arg_2, arg_2, 1u)))));
    let var_2 = Struct_2(any(!(!vec2<bool>(var_0.x, false))));
    global0 = array<vec3<f32>, 2>();
    return !func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, 946f, 1371f), vec4<f32>(1512f, 803f, 155f, 1022f), var_0.x))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> vec2<u32> {
    global0 = array<vec3<f32>, 2>();
    return firstLeadingBit(select(~(_wgslsmith_clamp_vec2_u32(arg_1.a.xy, vec2<u32>(arg_2.b.x, arg_1.a.x), vec2<u32>(105860u, arg_1.a.x)) >> (arg_2.c.a.xz % vec2<u32>(32u))), vec2<u32>(arg_1.a.x, arg_1.a.x), all(!func_2(254f, global0[_wgslsmith_index_u32(arg_2.c.a.x, 2u)], 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 2>();
    global0 = array<vec3<f32>, 2>();
    let var_0 = Struct_1(vec3<u32>(firstTrailingBit(~_wgslsmith_mult_u32(1u, 29556u)), _wgslsmith_clamp_u32(firstTrailingBit(8098u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(29479u, 4294967295u)), func_1(Struct_2(true), Struct_1(vec3<u32>(98343u, 9028u, 0u)), Struct_3(vec2<i32>(34258i, -2147483647i), vec4<u32>(5758u, 0u, 79996u, 98159u), Struct_1(vec3<u32>(0u, 4294967295u, 53160u))))), countOneBits(_wgslsmith_add_u32(0u, 1u))), ~1u));
    let var_1 = vec2<f32>(552f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1166f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(910f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f))))));
    global0 = array<vec3<f32>, 2>();
    var var_2 = func_2(var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-374f, -1464f, var_1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1687f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))) - global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(72863u, var_0.a.x)), 2u)])), var_0.a.x);
    global0 = array<vec3<f32>, 2>();
    var_2 = !(!(!func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1162f, -143f, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_1.x, 1f)), var_1, ~(-16028i), 0i);
}

