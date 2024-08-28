struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
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

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<f32, 5>;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(0u, ~4294967295u & reverseBits(u_input.b.x)), ~(countOneBits(u_input.a ^ u_input.b.x) >> ((_wgslsmith_mod_u32(u_input.b.x, u_input.a) >> (1u % 32u)) % 32u)), ~_wgslsmith_sub_u32(u_input.c.x >> ((1u ^ u_input.a) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, 0u, u_input.a), vec4<u32>(14381u, 0u, u_input.b.x, u_input.c.x))));
    return global2[_wgslsmith_index_u32(var_0, 3u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = global2[_wgslsmith_index_u32(u_input.b.x ^ u_input.c.x, 3u)];
    global0 = vec3<bool>(func_2(arg_0, func_2(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, u_input.a), 3u)], Struct_1(arg_0.a, false), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-1i, 56880i), vec2<i32>(2488i, -25131i)), Struct_1(vec2<f32>(arg_0.a.x, 862f), arg_1.x)), ~(-vec2<i32>(47573i, -6246i)), func_2(func_2(Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(4438u, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), arg_1.x), global2[_wgslsmith_index_u32(u_input.a, 3u)], vec2<i32>(1i, 0i), Struct_1(arg_0.a, false)), func_2(global2[_wgslsmith_index_u32(u_input.a, 3u)], Struct_1(vec2<f32>(148f, var_0.a.x), false), vec2<i32>(0i, -35465i), Struct_1(arg_0.a, false)), _wgslsmith_mult_vec2_i32(vec2<i32>(-22568i, -2907i), vec2<i32>(-1i, 39879i)), func_2(arg_0, Struct_1(var_0.a, arg_0.b), vec2<i32>(-2147483647i, 17329i), global2[_wgslsmith_index_u32(u_input.a, 3u)]))).b & global0.x, any(!select(vec4<bool>(true, false, false, false), !vec4<bool>(var_0.b, global0.x, false, true), true)), true);
    let var_1 = Struct_1(vec2<f32>(-962f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(u_input.b.x)), 5u)] - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(516f * global1[_wgslsmith_index_u32(u_input.a, 5u)])))), all(global0.zx));
    global0 = select(vec3<bool>(true, arg_0.b, false), !select(select(!vec3<bool>(false, var_0.b, arg_0.b), vec3<bool>(false, var_0.b, arg_1.x), !vec3<bool>(global0.x, var_1.b, arg_0.b)), vec3<bool>(any(vec4<bool>(arg_1.x, false, true, true)), true, any(vec3<bool>(var_1.b, var_0.b, var_1.b))), var_1.a.x > -1115f), !select(vec3<bool>(global0.x, var_1.b, false), select(select(vec3<bool>(arg_1.x, var_0.b, true), vec3<bool>(false, var_1.b, var_0.b), arg_1.x), !vec3<bool>(arg_1.x, false, true), u_input.b.x >= u_input.c.x), select(!vec3<bool>(arg_0.b, true, var_1.b), !vec3<bool>(true, arg_1.x, var_0.b), vec3<bool>(true, true, true))));
    global0 = !(!vec3<bool>(var_0.b, (u_input.a <= u_input.c.x) | !var_1.b, arg_1.x));
    return select(!(!vec2<bool>(arg_0.b == true, true)), select(global0.xx, select(global0.zx, !select(vec2<bool>(var_0.b, true), vec2<bool>(global0.x, var_1.b), false), global0.xy), vec2<bool>(select(arg_0.b, arg_0.b, !var_1.b), true)), select(global0.zx, select(vec2<bool>(true, arg_0.b & global0.x), global0.yz, vec2<bool>(false, global0.x)), all(!select(vec4<bool>(global0.x, true, true, arg_0.b), vec4<bool>(true, false, true, var_1.b), true))));
}

fn func_1() -> vec2<bool> {
    var var_0 = ~select(vec3<i32>(1i, 1i, 1i) >> ((~u_input.c.wyw >> (vec3<u32>(64051u, u_input.a, 37362u) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -73279i), vec2<i32>(-1i, 12416i)), ~8107i, ~32208i)), !global0.x);
    var var_1 = u_input.c.zyx;
    let var_2 = select(select(!func_3(func_2(global2[_wgslsmith_index_u32(12996u, 3u)], global2[_wgslsmith_index_u32(59866u, 3u)], vec2<i32>(var_0.x, 19138i), global2[_wgslsmith_index_u32(u_input.c.x, 3u)]), global0.zx), global0.yy, global0.x), !vec2<bool>(global0.x, global0.x && all(vec4<bool>(false, global0.x, false, global0.x))), global0.x);
    let var_3 = ~(u_input.c.x | abs(1u));
    global1 = array<f32, 5>();
    return global0.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-314f, global1[_wgslsmith_index_u32(~0u, 5u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 5u)]))), -584f)));
    let var_1 = select(func_1(), vec2<bool>(!func_3(global2[_wgslsmith_index_u32(u_input.a, 3u)], !global0.zz).x, global0.x), !global0.x);
    let var_2 = vec3<u32>(20529u, u_input.c.x, u_input.a);
    var var_3 = i32(-1i) * -23185i;
    let var_4 = firstTrailingBit(u_input.b.x) | _wgslsmith_mod_u32(var_2.x, _wgslsmith_sub_u32(19263u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 79804u, var_2.x, 25144u), ~vec4<u32>(0u, 32135u, var_2.x, u_input.b.x))));
    let var_5 = -(~0i);
    var_3 = -66103i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_5));
}

