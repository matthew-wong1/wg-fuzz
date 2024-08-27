struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<i32, 28> = array<i32, 28>(33003i, 0i, 36636i, 7261i, 49925i, -13634i, 2200i, i32(-2147483648), -1i, -1i, -17288i, i32(-2147483648), 1i, 4386i, 0i, -2390i, 42945i, -1i, -1i, 0i, i32(-2147483648), 5132i, -1i, 2147483647i, 38382i, 69339i, 0i, 47329i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    global2 = array<Struct_1, 18>();
    var var_0 = -1i;
    let var_1 = !select(select(select(select(vec3<bool>(true, arg_0.b.b.a, false), vec3<bool>(arg_0.a.a, arg_0.a.a, true), true), vec3<bool>(false, arg_0.a.a, true), select(vec3<bool>(true, false, false), vec3<bool>(arg_0.b.b.a, false, arg_0.a.a), vec3<bool>(arg_0.a.a, arg_0.b.b.a, true))), vec3<bool>(true, all(vec3<bool>(true, arg_0.b.d.a, true)), arg_0.b.c.x > 801f), arg_0.b.b.a), select(select(vec3<bool>(true, arg_0.b.d.a, arg_0.a.a), select(vec3<bool>(true, true, arg_0.b.b.a), vec3<bool>(true, arg_0.a.a, false), vec3<bool>(true, true, arg_0.a.a)), true), !select(vec3<bool>(true, arg_0.a.a, false), vec3<bool>(arg_0.a.a, arg_0.a.a, false), vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.b.d.a)), any(select(vec3<bool>(arg_0.b.d.a, true, true), vec3<bool>(arg_0.b.b.a, arg_0.b.b.a, false), arg_0.b.b.a))), select(!select(vec3<bool>(false, arg_0.a.a, arg_0.a.a), vec3<bool>(arg_0.b.d.a, false, true), false), !(!vec3<bool>(arg_0.b.b.a, true, arg_0.a.a)), !(!vec3<bool>(true, arg_0.b.d.a, arg_0.b.b.a))));
    var var_2 = countOneBits(0u) > u_input.b;
    var var_3 = vec2<u32>(~(~abs(u_input.b)), u_input.c);
    return ~abs(abs(~vec3<u32>(1u, u_input.b, 4294967295u)));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>) -> vec4<f32> {
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    let var_0 = Struct_3(Struct_1(true, -(~(~vec2<i32>(-41067i, u_input.a)))), global1[_wgslsmith_index_u32(u_input.b, 22u)]);
    let var_1 = var_0;
    let var_2 = ~(~_wgslsmith_sub_vec4_u32(abs(countOneBits(vec4<u32>(16051u, 6797u, 103154u, 57904u))), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 47828u, u_input.c, u_input.b), vec4<u32>(arg_1.x, 4294967295u, 1u, 41914u)) & vec4<u32>(9536u, 1u, u_input.b, u_input.c)));
    return _wgslsmith_f_op_vec4_f32(var_0.b.c + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -529f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.c.x, 960f) + _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(12875u, 2u)], var_1.b.c.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(max(-494f, var_1.b.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) * _wgslsmith_f_op_f32(step(-193f, 764f)))), _wgslsmith_div_f32(var_0.b.c.x, _wgslsmith_f_op_f32(sign(1261f)))));
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_1(all(vec3<bool>(true, true, true)) | (_wgslsmith_f_op_f32(trunc(-387f)) <= _wgslsmith_f_op_f32(-902f + global0[_wgslsmith_index_u32(u_input.c, 2u)])), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(~u_input.a, firstLeadingBit(-37015i)), -vec2<i32>(global3[_wgslsmith_index_u32(u_input.b, 28u)], -8603i))), Struct_2(vec3<i32>(~global3[_wgslsmith_index_u32(0u, 28u)], ~global3[_wgslsmith_index_u32(u_input.b, 28u)] >> (~u_input.b % 32u), abs(global3[_wgslsmith_index_u32(10867u, 28u)])), global2[_wgslsmith_index_u32(~(~u_input.b), 18u)], _wgslsmith_f_op_vec4_f32(func_4(countOneBits(min(58542i, 52579i)), vec3<u32>(u_input.b, u_input.c, 1u) | func_3(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.b, 22u)])))), global2[_wgslsmith_index_u32(~abs(abs(u_input.b)), 18u)]));
    var var_1 = ~u_input.b;
    let var_2 = var_0;
    global2 = array<Struct_1, 18>();
    let var_3 = var_2.b;
    return -(var_2.a.b.x ^ abs(-2086i));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = false;
    return Struct_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(29529i, 2147483647i, global3[_wgslsmith_index_u32(arg_0, 28u)]), vec3<i32>(13279i, global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(108955u, 28u)]), vec3<i32>(-7340i, u_input.a, global3[_wgslsmith_index_u32(arg_0, 28u)])), select(vec3<i32>(u_input.a, -27010i, 26606i), vec3<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(arg_0, 28u)]), select(vec3<bool>(true, true, true), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0)))), countOneBits(vec3<i32>(func_2(), -23708i, _wgslsmith_sub_i32(u_input.a, global3[_wgslsmith_index_u32(u_input.c, 28u)]))), ~_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(0u, 28u)], 12246i), vec3<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(arg_0, 28u)]), var_0), vec3<i32>(10714i, u_input.a, global3[_wgslsmith_index_u32(u_input.c, 28u)]))), global2[_wgslsmith_index_u32(~1u, 18u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], -1175f, -830f, -264f) - arg_1) + _wgslsmith_f_op_vec4_f32(-arg_1)))) * _wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1223f, -1527f, arg_1.x, arg_1.x)))))), global2[_wgslsmith_index_u32(min(~4294967295u, _wgslsmith_mod_u32(39127u, abs(~arg_0))), 18u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    global3 = array<i32, 28>();
    let var_1 = vec3<bool>(false == any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(23999u, 2u)] + _wgslsmith_f_op_f32(trunc(920f))) >= 1000f), true);
    let var_2 = u_input.a;
    global2 = array<Struct_1, 18>();
    var var_3 = func_1(u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 2u)] * global0[_wgslsmith_index_u32(var_0, 2u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4341u, 2u)]), -198f, 624f) * vec4<f32>(698f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 2u)], 860f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(30833u, 2u)], -1760f), _wgslsmith_f_op_f32(-429f - global0[_wgslsmith_index_u32(u_input.b, 2u)]))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-272f, _wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b, 2u)])), global0[_wgslsmith_index_u32(16391u, 2u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~(~(vec2<u32>(1u, 21889u) >> (vec2<u32>(2362u, var_0) % vec2<u32>(32u)))), vec2<u32>(47580u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(53375u, var_0, 0u), vec3<u32>(u_input.b, u_input.c, var_0), vec3<u32>(var_0, 1u, 1u)), vec3<u32>(0u, u_input.c, 47661u)))), var_2);
}

