struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: vec2<u32> = vec2<u32>(32732u, 1u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -456f), global0[_wgslsmith_index_u32(global1.x, 29u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 29u)]), -770f)));
}

fn func_3() -> u32 {
    let var_0 = func_2();
    var var_1 = -1i;
    var var_2 = select(select(select(vec3<bool>(true, false, var_0.a.x != global0[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), 2230f >= var_0.a.x)), vec3<bool>(any(vec2<bool>(true, true)), !any(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(u_input.b <= u_input.a, u_input.b < 44938i, all(vec2<bool>(true, true))), true)), !(!vec3<bool>(any(vec3<bool>(true, true, false)), true, true)), vec3<bool>(!(any(vec2<bool>(true, true)) & true), !((u_input.a << (global1.x % 32u)) != u_input.a), any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), true))));
    var_2 = vec3<bool>(-_wgslsmith_div_i32(u_input.a, ~0i) != _wgslsmith_mult_i32(~u_input.a, 40577i), !var_2.x, var_2.x);
    global0 = array<f32, 29>();
    return reverseBits(reverseBits(28344u)) >> (abs(~(1u | global1.x) | global1.x) % 32u);
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~599u, ~_wgslsmith_mod_u32(23534u, 4294967295u)) << (~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(global1.x, global1.x)), ~global1.x) % vec2<u32>(32u)), abs(~(~(~vec2<u32>(4294967295u, global1.x)))), ~(~select(~vec2<u32>(global1.x, global1.x), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(1u, 76099u)), vec2<bool>(false, false))));
    var var_0 = func_2();
    let var_1 = 10309i;
    global1 = (vec2<u32>(func_3(), global1.x) << (vec2<u32>(32949u, 76650u) % vec2<u32>(32u))) << (vec2<u32>(~90386u, 1u) % vec2<u32>(32u));
    global0 = array<f32, 29>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(var_0.a.x, global0[_wgslsmith_index_u32(1u, 29u)], var_0.a.x, var_0.a.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))) * vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(), global1.x), 29u)], -1610f, global0[_wgslsmith_index_u32(16361u, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * global0[_wgslsmith_index_u32(35215u, 29u)]) - global0[_wgslsmith_index_u32(countOneBits(1u), 29u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 29u)], -1270f, -962f, -794f) + vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(7130u, 29u)], 686f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 29u)], -223f, global0[_wgslsmith_index_u32(global1.x, 29u)], -798f), vec4<f32>(-1462f, global0[_wgslsmith_index_u32(60961u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(global1.x, 29u)]))))), 0i, func_1());
    global1 = _wgslsmith_div_vec2_u32(vec2<u32>(~global1.x, _wgslsmith_clamp_u32(~global1.x >> (_wgslsmith_clamp_u32(global1.x, global1.x, global1.x) % 32u), global1.x, abs(3159u >> (global1.x % 32u)))), vec2<u32>(firstTrailingBit(~global1.x), 4294967295u));
    let var_1 = ~(reverseBits(~(vec2<u32>(global1.x, 4294967295u) >> (vec2<u32>(4294967295u, global1.x) % vec2<u32>(32u)))) ^ min(~_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, global1.x)), ~vec2<u32>(1u, global1.x)));
    let var_2 = u_input.c;
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(55940u, var_1.x, 4294967295u), ~abs(vec3<u32>(1u, 1u, 26184u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, ~_wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(1380i, -48424i, u_input.c.x, var_2.x), vec4<i32>(u_input.c.x, -2147483647i, -2147483647i, u_input.c.x)), vec4<i32>(firstTrailingBit(var_2.x), _wgslsmith_sub_i32(1i, u_input.a), -var_0.b, _wgslsmith_sub_i32(var_0.b, var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.x, 29u)])))), abs(var_1));
}

