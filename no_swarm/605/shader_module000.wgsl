struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 11980u, 1u);

var<private> global2: bool = false;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec4<bool> {
    global0 = array<vec4<bool>, 17>();
    let var_0 = true;
    let var_1 = (max(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(38705u, global1.x, global1.x, 18614u), vec4<u32>(1u, 0u, global1.x, 4558u), vec4<u32>(global1.x, 4294967295u, 0u, global1.x)), vec4<u32>(global1.x, 4294967295u, 1u, global1.x), var_0), vec4<u32>(~global1.x, 0u, _wgslsmith_dot_vec2_u32(global1.xw, global1.wx), ~0u)) ^ ~(~max(vec4<u32>(1u, 4592u, global1.x, global1.x), vec4<u32>(global1.x, 0u, global1.x, 9003u)))) & max(~abs(~vec4<u32>(global1.x, 8095u, global1.x, 0u)), ~vec4<u32>(global1.x, ~global1.x, abs(global1.x), min(global1.x, global1.x)));
    global2 = false;
    global2 = any(select(!(!select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), false)), select(select(vec2<bool>(false, var_0), !vec2<bool>(true, var_0), !vec2<bool>(false, var_0)), !select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), vec2<bool>(false, var_0)), select(select(vec2<bool>(true, var_0), vec2<bool>(false, true), vec2<bool>(var_0, var_0)), vec2<bool>(false, true), true)), select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)), vec2<bool>(var_0, var_0), var_0 && false), select(select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)), vec2<bool>(true, false), !vec2<bool>(true, var_0)), all(vec3<bool>(false, var_0, var_0)))));
    return global0[_wgslsmith_index_u32(~global1.x, 17u)];
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_3(Struct_1(33343i), Struct_1(i32(-1i) * -(~1i)));
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = select(func_3(_wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(max(u_input.a, vec4<i32>(arg_0, 0i, -20573i, arg_0)), -vec4<i32>(1i, 1i, 2147483647i, var_0.b.a)))), !func_3(u_input.a), !vec4<bool>(all(select(var_1.www, var_1.wzx, false)), reverseBits(1i) != _wgslsmith_mod_i32(arg_0, 2147483647i), true, all(func_3(u_input.a))));
    let var_3 = !var_1.zw;
    return var_2.x;
}

fn func_1() -> vec3<i32> {
    global2 = func_2(-(~u_input.b.x));
    let var_0 = !(!(!any(vec2<bool>(true, true))));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1909f))))), _wgslsmith_f_op_f32(-217f * _wgslsmith_f_op_f32(sign(-871f)))), -1589f, -1204f);
    var var_2 = var_0;
    global2 = false;
    return ~min(u_input.a.zyw, u_input.a.yyw);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1() ^ (abs(-u_input.a.ywz) ^ u_input.a.ywz), global1.x, max(select(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -13900i, 2147483647i, -46493i)), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-14142i, 36810i, u_input.a.x, 4386i), u_input.a, global0[_wgslsmith_index_u32(1u, 17u)]), ~vec4<i32>(u_input.a.x, -16978i, -23386i, u_input.b.x), select(vec4<i32>(2147483647i, u_input.a.x, -25395i, 0i), u_input.a, vec4<bool>(true, true, false, false))), global0[_wgslsmith_index_u32(~select(global1.x, global1.x, false), 17u)]), u_input.a), _wgslsmith_sub_u32(~(81939u >> (_wgslsmith_dot_vec3_u32(global1.xzy, global1.zxy) % 32u)), 87454u));
}

