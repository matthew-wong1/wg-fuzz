struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: Struct_2;

var<private> global2: array<i32, 3> = array<i32, 3>(36441i, 0i, 10551i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: u32) -> u32 {
    global1 = Struct_2(arg_1.x, firstTrailingBit(~_wgslsmith_mod_i32(1i, min(1550i, global1.b))));
    let var_0 = Struct_2(!all(arg_1), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(~51908u, 3u)], max(0i, global2[_wgslsmith_index_u32(arg_2, 3u)] >> (4294967295u % 32u))));
    global1 = var_0;
    let var_1 = var_0;
    global2 = array<i32, 3>();
    return u_input.b;
}

fn func_1() -> u32 {
    var var_0 = (~_wgslsmith_mod_i32(reverseBits(u_input.a.x), -2147483647i) >> (1u % 32u)) << (~global0[_wgslsmith_index_u32(func_2(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b, u_input.a.x, global1.b, global2[_wgslsmith_index_u32(56669u, 3u)]), vec4<i32>(u_input.a.x, -38316i, global1.b, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(29401u, 3u)], 20087i, u_input.a.x, -1i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 3u)], 1i, -1311i, global2[_wgslsmith_index_u32(u_input.c, 3u)]))), !vec4<bool>(true, global1.a, global1.a, global1.a), ~(~38807u)), 5u)] % 32u);
    return firstTrailingBit(global0[_wgslsmith_index_u32(min(4294967295u, ~4028u), 5u)]);
}

fn func_3(arg_0: u32) -> i32 {
    global1 = Struct_2(any(vec4<bool>(!global1.a, global1.a, true, global1.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(global2[_wgslsmith_index_u32(30911u, 3u)], u_input.a.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 5u)], 3u)])), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-8467i, global1.b, u_input.a.x), vec3<i32>(35132i, 11331i, -60112i)))), -min(abs(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 5u)], 3u)], -27578i)), vec3<i32>(-15675i, global2[_wgslsmith_index_u32(arg_0, 3u)], 1i) << (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)))));
    let var_0 = ~u_input.c != 4294967295u;
    var var_1 = Struct_3(!vec3<bool>(true, global1.a, true), Struct_2(true, _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14159u, 5u)], 3u)], u_input.a.x), vec3<i32>(global1.b, u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 3u)])) << (~vec3<u32>(45560u, u_input.b, 79536u) % vec3<u32>(32u)), -vec3<i32>(u_input.a.x, -14323i, 1i) | (vec3<i32>(u_input.a.x, 0i, u_input.a.x) << (vec3<u32>(global0[_wgslsmith_index_u32(arg_0, 5u)], 37132u, 29730u) % vec3<u32>(32u))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(975f)), _wgslsmith_f_op_f32(f32(-1f) * -970f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, 626f)) - vec2<f32>(_wgslsmith_f_op_f32(1462f - -271f), 1000f))), Struct_2(true, select(firstLeadingBit(select(28862i, u_input.a.x, global1.a)), reverseBits(min(u_input.a.x, -1i)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, var_0), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(293f - 1930f) + 1099f));
    var var_2 = -_wgslsmith_dot_vec2_i32(abs(u_input.a), u_input.a) >> (24534u % 32u);
    var var_3 = 1477f;
    return countOneBits(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 3>();
    var var_0 = global1.a;
    global0 = array<u32, 5>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -203f);
    let var_2 = true;
    global1 = Struct_2(any(!(!vec4<bool>(var_2, global1.a, var_2, false))), -(i32(-1i) * -38201i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, -116f, _wgslsmith_div_f32(var_1, var_1), _wgslsmith_div_f32(249f, var_1))))), ~vec3<u32>(abs(_wgslsmith_mod_u32(31055u, 4294967295u)), max(~u_input.c, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 4294967295u)), _wgslsmith_add_u32(u_input.b, ~75919u)), ~(~abs(select(vec4<i32>(global2[_wgslsmith_index_u32(45115u, 3u)], u_input.a.x, u_input.a.x, -1i), vec4<i32>(7017i, global1.b, 38888i, -2147483647i), var_2))), -(~vec2<i32>(-global1.b, 1i)), vec2<i32>(~u_input.a.x, func_3(~0u | func_1())));
}

