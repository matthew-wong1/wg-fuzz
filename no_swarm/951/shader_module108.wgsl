struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
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

var<private> global0: array<bool, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = Struct_1(u_input.c, vec2<i32>(2147483647i, -1i));
    let var_1 = Struct_3(!arg_1.a);
    global0 = array<bool, 29>();
    let var_2 = !(-51028i <= firstTrailingBit(_wgslsmith_sub_i32(~var_0.b.x, -38685i & var_0.b.x)));
    let var_3 = Struct_1(vec2<u32>(u_input.a, _wgslsmith_add_u32(27826u, ~(~var_0.a.x))), ~var_0.b);
    return -1998f;
}

fn func_4(arg_0: f32, arg_1: f32) -> f32 {
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    var var_0 = u_input.a;
    let var_1 = u_input.b;
    let var_2 = select(vec2<bool>(all(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c.x, 29u)], any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)])), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)])))), global0[_wgslsmith_index_u32(~(~4294967295u), 29u)]), select(vec2<bool>(true && !global0[_wgslsmith_index_u32(u_input.c.x, 29u)], true), !vec2<bool>(select(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.c.x, 29u)], true), global0[_wgslsmith_index_u32(~u_input.c.x, 29u)]), select(vec2<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(26830u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], false)), all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false, false, global0[_wgslsmith_index_u32(u_input.c.x, 29u)]))), vec2<bool>(false, true), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false))), arg_0 <= arg_0);
    return _wgslsmith_f_op_f32(min(-885f, -1613f));
}

fn func_2() -> Struct_3 {
    var var_0 = ~(~vec3<i32>(0i, -(i32(-1i) * -11266i), u_input.b));
    let var_1 = Struct_1(abs(u_input.c), var_0.zy);
    global0 = array<bool, 29>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]), Struct_3(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(3529u, 29u)])), true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1067f + 567f), -707f)), 1413f, !any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_1.a.x, 29u)])))))), _wgslsmith_f_op_f32(round(744f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1372f), 684f)) + _wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false, true), global0[_wgslsmith_index_u32(~4294967295u, 29u)]), Struct_3(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 29u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], true, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), global0[_wgslsmith_index_u32(1u, 29u)])), select(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(32134u, 29u)], global0[_wgslsmith_index_u32(8830u, 29u)], global0[_wgslsmith_index_u32(65544u, 29u)])), global0[_wgslsmith_index_u32(~var_1.a.x, 29u)], all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 29u)], false, global0[_wgslsmith_index_u32(4294967295u, 29u)])))))));
    return Struct_3(select(select(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(var_1.a.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(var_1.a.x, 29u)])), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_1.a.x, 29u)], global0[_wgslsmith_index_u32(43760u, 29u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], true, global0[_wgslsmith_index_u32(1u, 29u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false, true, true)), ~u_input.a != 42815u), select(vec4<bool>(963f != var_2.x, false & global0[_wgslsmith_index_u32(var_1.a.x, 29u)], var_1.b.x == 1i, false), vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], false, false)), 31166u <= u_input.a, false && global0[_wgslsmith_index_u32(40499u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)] || global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), true), any(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 29u)])))));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global0 = array<bool, 29>();
    let var_0 = reverseBits(1i);
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    var var_1 = Struct_2(u_input.a);
    return Struct_2(~0u);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2();
    global0 = array<bool, 29>();
    var var_1 = max(~vec2<i32>(u_input.b, -(~u_input.b)), (firstTrailingBit(vec2<i32>(38782i, -43374i)) ^ vec2<i32>(u_input.b >> (4294967295u % 32u), reverseBits(10846i))) << (abs(u_input.c) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_sub_vec2_u32(u_input.c, min(~(firstTrailingBit(vec2<u32>(17745u, 41396u)) >> (u_input.c % vec2<u32>(32u))), max(u_input.c, vec2<u32>(16380u, ~u_input.a))));
    var_2 = vec2<u32>(arg_2.a, ~13661u);
    return Struct_2(_wgslsmith_dot_vec2_u32(~abs(_wgslsmith_mod_vec2_u32(u_input.c, u_input.c)), u_input.c));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    let var_0 = max(_wgslsmith_sub_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(13742u, u_input.a, 0u), vec3<u32>(4294967295u, arg_0.a.x, 22732u))), _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, 4294967295u), vec3<u32>(u_input.c.x, arg_0.a.x, 1u)), ~(vec3<u32>(u_input.c.x, arg_0.a.x, 4294967295u) << (vec3<u32>(0u, u_input.a, u_input.c.x) % vec3<u32>(32u))))), vec3<u32>(0u, arg_0.a.x, arg_0.a.x));
    var var_1 = var_0.x;
    let var_2 = func_6(arg_1.a.xy, vec2<bool>(false, true), func_5(func_2()));
    let var_3 = -628f;
    let var_4 = Struct_3(arg_1.a);
    return _wgslsmith_add_u32(var_2.a, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    var var_0 = Struct_1(select(vec2<u32>(_wgslsmith_add_u32(func_1(Struct_1(vec2<u32>(27228u, u_input.a), vec2<i32>(-1i, 19397i)), Struct_3(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 29u)], false, true))), abs(u_input.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), min(vec3<u32>(u_input.c.x, u_input.c.x, u_input.a), vec3<u32>(u_input.a, 22784u, 986u)))), ~((vec2<u32>(1u, 67616u) >> (u_input.c % vec2<u32>(32u))) & countOneBits(u_input.c)), vec2<bool>(false | global0[_wgslsmith_index_u32(u_input.c.x, 29u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], false)))), ~vec2<i32>(abs(~(-22651i)), u_input.b));
    var var_1 = func_2();
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(~(4294967295u << (u_input.a % 32u))), var_0.a.x), firstTrailingBit(max(u_input.a, u_input.a)));
    var_2 = _wgslsmith_sub_u32(1u, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b & ~var_0.b, ~(~0u));
}

