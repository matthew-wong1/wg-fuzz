struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 24661u, 4294967295u, 46506u, 4294967295u, 29315u, 33464u, 72062u, 11769u, 0u, 32818u, 8972u, 35510u, 11641u, 1u, 4294967295u, 13787u, 34778u, 76671u, 19655u, 6899u, 4294967295u, 54672u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, true)), arg_0.x, (~select(vec2<u32>(14782u, 4294967295u), arg_0.zy, false) ^ ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)], u_input.a.x)) ^ ~max(reverseBits(vec2<u32>(1u, global0[_wgslsmith_index_u32(73625u, 23u)])), ~arg_0.zz));
    return !select(vec4<bool>(select(11883u >= u_input.a.x, var_0.a.a.x != true, any(vec4<bool>(true, var_0.a.a.x, false, true))), false, true, false), !select(select(vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, true), vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, true), vec4<bool>(false, false, var_0.a.a.x, var_0.a.a.x)), !vec4<bool>(false, var_0.a.a.x, false, true), u_input.a.x <= 53829u), !(!(!vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, var_0.a.a.x))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = vec2<bool>(!(select(1u, 23992u, false) <= 4294967295u), !(!all(func_3(vec3<u32>(1u, 17201u, global0[_wgslsmith_index_u32(34134u, 23u)])))));
    let var_1 = Struct_3(Struct_1(!(!var_0)));
    let var_2 = Struct_2(var_1.a, 1u, select(max(u_input.a, vec2<u32>(select(0u, 32801u, var_1.a.a.x), reverseBits(global0[_wgslsmith_index_u32(0u, 23u)]))), vec2<u32>(~(~0u), 33262u), vec2<bool>(var_1.a.a.x, !any(vec2<bool>(false, true)))));
    var var_3 = u_input.a.x;
    var var_4 = var_2;
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(~u_input.b.x, 837i);
    global0 = array<u32, 23>();
    global0 = array<u32, 23>();
    let var_1 = u_input.a.x;
    var var_2 = -11519i;
    return func_2(-1985f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = (vec4<u32>(arg_0.c.x, firstTrailingBit(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 23u)]), u_input.a.x, abs(0u)) ^ firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], ~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(20281u, 0u, u_input.a.x), vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(47777u, 23u)]))))) & firstLeadingBit(~(~vec4<u32>(11258u, arg_0.b, u_input.a.x, 3248u)));
    global0 = array<u32, 23>();
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1287f, -562f)) + _wgslsmith_f_op_f32(365f + -1070f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-708f))))).a;
    var var_2 = 640f;
    var_1 = Struct_1(vec2<bool>(any(!vec4<bool>(arg_0.a.a.x, false, true, arg_0.a.a.x)), var_1.a.x));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, select(_wgslsmith_f_op_f32(round(-198f)) < -627f, !any(vec3<bool>(false, true, false)) | (4294967295u >= (global0[_wgslsmith_index_u32(1u, 23u)] | 29429u)), true), true, !any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))));
    var var_1 = Struct_4(63896i);
    let var_2 = var_1.a;
    var var_3 = Struct_1(!(!vec2<bool>(false, all(var_0.wyz))));
    var var_4 = Struct_2(Struct_1(!select(select(var_0.xy, vec2<bool>(true, false), var_0.x), select(vec2<bool>(false, var_3.a.x), var_3.a, var_3.a), vec2<bool>(var_0.x, true))), firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, firstTrailingBit(global0[_wgslsmith_index_u32(1u, 23u)]), max(global0[_wgslsmith_index_u32(40297u, 23u)], 0u)))), max(u_input.a, vec2<u32>(func_4(func_1(vec4<f32>(-341f, -1147f, -1220f, -627f), u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), Struct_3(Struct_1(vec2<bool>(var_0.x, var_0.x))), true), ~56017u)));
    let var_5 = Struct_4(-1i);
    let var_6 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1296f), _wgslsmith_f_op_f32(step(1172f, 494f)))))).a.a);
    global0 = array<u32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-651f, -1000f, -986f, 1428f) - vec4<f32>(-1000f, 1090f, -2422f, 1667f)) * vec4<f32>(-614f, 1000f, 306f, -115f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(508f, -283f, -1603f, 1188f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-234f, 430f, -815f, 893f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), -23120i, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -1i, var_5.a), select(vec3<i32>(u_input.b.x, -2147483647i, 1i) | (vec3<i32>(u_input.b.x, u_input.b.x, 1i) & vec3<i32>(var_5.a, 51505i, u_input.b.x)), min(abs(vec3<i32>(u_input.b.x, 34177i, var_1.a)), vec3<i32>(var_5.a, 12712i, u_input.b.x) << (vec3<u32>(var_4.b, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), true)));
}

