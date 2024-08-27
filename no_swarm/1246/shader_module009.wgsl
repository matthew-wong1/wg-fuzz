struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(46418u, 57861u, 34902u, 0u, 2965u, 0u, 36870u, 1u, 0u, 0u, 0u, 24175u, 70762u, 79223u, 83426u, 34888u, 5187u, 12110u, 44120u, 1u, 17591u, 21277u, 11680u, 33134u, 66327u, 4294967295u, 33167u, 1u, 0u);

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_4, arg_3: f32) -> Struct_3 {
    return arg_2.b;
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = reverseBits(~firstLeadingBit(~50236i));
    var var_1 = any(vec4<bool>(false, arg_0, true, false));
    let var_2 = Struct_4(4294967295u, Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e * global1.e) - vec3<f32>(global1.e.x, -1039f, global1.e.x)))), _wgslsmith_f_op_f32(-global1.e.x), Struct_2(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(11946u, 29u)], _wgslsmith_sub_u32(0u, global1.a)), _wgslsmith_div_u32(~abs(global0[_wgslsmith_index_u32(0u, 29u)]), global0[_wgslsmith_index_u32(max(4294967295u, 4294967295u) >> ((1u | global0[_wgslsmith_index_u32(global1.a, 29u)]) % 32u), 29u)]), global1.c, global1.d, global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -2233f)))))));
    let var_3 = var_2;
    var var_4 = var_2.d;
    return any(var_3.d.d.zx);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_1 {
    return Struct_1(max(global1.a, global0[_wgslsmith_index_u32(47344u, 29u)]), vec4<bool>(global1.d.x, func_3(!(!global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), global1.e.x > arg_1.a.x, !select(true, 2269f <= arg_1.a.x, false)), arg_0.xy, vec4<bool>(global1.d.x, any(vec4<bool>(true, global1.d.x, global1.c.x >= global1.c.x, 0u == global0[_wgslsmith_index_u32(135305u, 29u)])), func_3(true || global1.d.x, 399f) & !global1.d.x, true), ~(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 29u)], 38249u, 8606u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 29u)], 29u)]), vec4<u32>(68544u, global0[_wgslsmith_index_u32(global1.a, 29u)], global0[_wgslsmith_index_u32(global1.a, 29u)], 17979u)) & (~vec4<u32>(global1.a, global1.b, 3004u, 1u) << (min(vec4<u32>(1u, 14825u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.b, 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), vec4<u32>(global1.a, global1.a, 48041u, global0[_wgslsmith_index_u32(4234u, 29u)])) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> vec3<u32> {
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    return min(vec3<u32>(24346u, ~arg_2.d.a, arg_2.a), ~abs(vec3<u32>(func_2(global1.c, Struct_3(global1.e)).a, global1.a, ~65847u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.yx;
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.a, global0[_wgslsmith_index_u32(global1.a, 29u)], global1.b), _wgslsmith_add_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(137937u, 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(55975u, 29u)], global1.b), firstLeadingBit(vec3<u32>(0u, 4526u, 62538u)))), func_4(func_2(vec4<i32>(global1.c.x, u_input.a.x, -1i, u_input.a.x), func_1(global1.d.ww, Struct_2(global1.b, 2473u, u_input.a, global1.d, vec3<f32>(286f, 2020f, global1.e.x)), Struct_4(global1.b, Struct_3(vec3<f32>(-434f, global1.e.x, 1000f)), global1.e.x, Struct_2(global1.a, global1.b, global1.c, vec4<bool>(false, true, false, true), global1.e), global1.e.x), global1.e.x)), func_1(global1.d.wy, Struct_2(7219u, global0[_wgslsmith_index_u32(12331u, 29u)], global1.c, global1.d, vec3<f32>(-1574f, global1.e.x, global1.e.x)), Struct_4(49883u, Struct_3(global1.e), -563f, Struct_2(global1.b, 45889u, vec4<i32>(-18881i, u_input.a.x, 0i, global1.c.x), vec4<bool>(true, var_0.x, false, false), global1.e), global1.e.x), 788f), Struct_4(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 29u)], 29u)], Struct_3(vec3<f32>(1325f, global1.e.x, -1000f)), 1f, Struct_2(4294967295u, 7649u, global1.c, global1.d, vec3<f32>(1087f, -717f, -968f)), _wgslsmith_f_op_f32(abs(-1383f))), func_1(!global1.d.xw, Struct_2(4294967295u, global1.a, vec4<i32>(u_input.a.x, global1.c.x, u_input.a.x, u_input.a.x), vec4<bool>(var_0.x, true, true, false), vec3<f32>(global1.e.x, global1.e.x, 1270f)), Struct_4(4294967295u, Struct_3(global1.e), global1.e.x, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 29u)], 0u, global1.c, global1.d, global1.e), global1.e.x), -1401f))), vec3<u32>(~(~_wgslsmith_sub_u32(global1.a, 0u)), func_4(func_2(global1.c << (vec4<u32>(global1.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 126345u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)]) % vec4<u32>(32u)), func_1(global1.d.wy, Struct_2(global0[_wgslsmith_index_u32(global1.b, 29u)], global1.a, vec4<i32>(-1525i, u_input.a.x, 1i, u_input.a.x), global1.d, vec3<f32>(957f, 740f, global1.e.x)), Struct_4(global1.a, Struct_3(vec3<f32>(209f, -1672f, global1.e.x)), -1449f, Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 4294967295u, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), global1.d, vec3<f32>(152f, 1840f, global1.e.x)), -676f), -1320f)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, -318f, global1.e.x))), Struct_4(max(59802u, 127098u), func_1(global1.d.zy, Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], global1.a, u_input.a, vec4<bool>(global1.d.x, false, false, global1.d.x), vec3<f32>(global1.e.x, global1.e.x, global1.e.x)), Struct_4(4294967295u, Struct_3(vec3<f32>(global1.e.x, global1.e.x, 1026f)), -804f, Struct_2(global0[_wgslsmith_index_u32(global1.b, 29u)], 10581u, u_input.a, global1.d, vec3<f32>(global1.e.x, 465f, global1.e.x)), global1.e.x), global1.e.x), -385f, Struct_2(15578u, global1.b, vec4<i32>(u_input.a.x, global1.c.x, global1.c.x, u_input.a.x), global1.d, vec3<f32>(global1.e.x, 1550f, -1963f)), 1000f), Struct_3(_wgslsmith_f_op_vec3_f32(trunc(global1.e)))).x, countOneBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39985u, 29u)], 29u)], 29u)]) >> (1u % 32u)));
    let var_2 = reverseBits(0i);
    let var_3 = 9025u;
    let var_4 = vec4<i32>(max(var_2, max(~0i, -24565i)), -1i, _wgslsmith_div_i32(u_input.a.x, -_wgslsmith_add_i32(var_2, 11169i)) ^ ~u_input.a.x, -var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x)), ~(~func_4(Struct_1(var_1.x, global1.d, u_input.a.yz, global1.d, vec4<u32>(1u, global0[_wgslsmith_index_u32(35112u, 29u)], var_1.x, global0[_wgslsmith_index_u32(71287u, 29u)])), Struct_3(vec3<f32>(1090f, -561f, global1.e.x)), Struct_4(global1.b, Struct_3(vec3<f32>(global1.e.x, global1.e.x, 457f)), global1.e.x, Struct_2(0u, 6006u, u_input.a, global1.d, global1.e), 890f), Struct_3(vec3<f32>(-594f, -1163f, global1.e.x))).x >> (~firstTrailingBit(20054u) % 32u)), -853f);
}

