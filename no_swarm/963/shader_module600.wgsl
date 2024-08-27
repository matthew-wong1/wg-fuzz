struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

var<private> global1: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(i32(-2147483648), -6106i, -36696i, 44134i), vec4<i32>(2147483647i, 0i, -29728i, -48204i));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 31705u, 50478u), false, vec3<i32>(7147i, 0i, -1i), vec4<f32>(-997f, -1501f, -305f, -2598f)), false);

var<private> global3: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec3<u32>(83922u, 6378u, 1u), false, vec3<i32>(40914i, 19125i, 22432i), vec4<f32>(-231f, -1111f, 416f, -246f)), false), Struct_2(Struct_1(vec3<u32>(0u, 23865u, 1629u), false, vec3<i32>(-1i, 0i, 2147483647i), vec4<f32>(1655f, -1050f, -913f, 1335f)), false), Struct_2(Struct_1(vec3<u32>(47347u, 0u, 4294967295u), false, vec3<i32>(1i, -47667i, -3604i), vec4<f32>(-401f, -329f, 1419f, -1000f)), true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(global2.a, global2.b);
    global3 = array<Struct_2, 3>();
    global3 = array<Struct_2, 3>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1270f)) - 404f)))) >= -826f;
    var_1 = var_0.b;
    return vec4<bool>(_wgslsmith_f_op_f32(var_0.a.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.a.d.x)))) != _wgslsmith_f_op_f32(var_0.a.d.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1085f * global2.a.d.x)))), !global2.b, false, !var_0.b);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<bool>, arg_3: f32) -> vec4<u32> {
    global1 = array<vec4<i32>, 2>();
    let var_0 = u_input.d;
    global0 = array<vec3<f32>, 25>();
    var var_1 = any(func_3());
    global2 = Struct_2(global2.a, arg_2.x);
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u >> (u_input.b % 32u)), firstTrailingBit(_wgslsmith_div_u32(0u, arg_1)), _wgslsmith_add_u32(~arg_1, 4294967295u), _wgslsmith_mod_u32(global2.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(58150u, 0u, 4294967295u, 29983u), vec4<u32>(u_input.a, arg_1, 0u, 0u)))), select(reverseBits(vec4<u32>(8637u, arg_1, global2.a.a.x, u_input.c.x)), ~countOneBits(vec4<u32>(global2.a.a.x, 4294967295u, u_input.c.x, 4294967295u)), !arg_2.x));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(~14293i, -(~4015i), ~(~469i), -1i), ~vec4<i32>(arg_0.a.c.x, -arg_0.a.c.x, 1i << (global2.a.a.x % 32u), min(0i, u_input.d))) >> (~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_add_u32(83249u << (u_input.b % 32u), ~4294967295u), !(!vec3<bool>(arg_0.b, false, global2.a.b)), _wgslsmith_f_op_f32(-735f + _wgslsmith_f_op_f32(ceil(arg_0.a.d.x)))) % vec4<u32>(32u));
    let var_1 = global3[_wgslsmith_index_u32(~min(global2.a.a.x, firstTrailingBit(23136u)), 3u)];
    global2 = arg_0;
    var var_2 = Struct_1(max(countOneBits(arg_0.a.a), ~_wgslsmith_div_vec3_u32(arg_0.a.a, ~var_1.a.a)), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.x)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.a.d.x)))), all(vec4<bool>(all(vec2<bool>(var_1.a.b, false)), !arg_0.a.b, -9180i == global2.a.c.x, !arg_0.b)), global2.b), vec3<i32>(-1i) * -var_1.a.c, vec4<f32>(var_1.a.d.x, _wgslsmith_f_op_f32(361f - _wgslsmith_div_f32(var_1.a.d.x, -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d.x + arg_0.a.d.x)))), arg_1));
    let var_3 = global2.a.a.x;
    return 14931u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(abs(~(~global2.a.a)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.a, global2.a.a.x), vec3<u32>(func_1(global3[_wgslsmith_index_u32(global2.a.a.x, 3u)], -225f), u_input.b, firstLeadingBit(u_input.b)))), !(global2.a.c.x <= global2.a.c.x), countOneBits(~(-global2.a.c)), vec4<f32>(_wgslsmith_f_op_f32(-989f + global2.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f - _wgslsmith_f_op_f32(global2.a.d.x - -1310f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.d.x, 553f))), -586f))));
    global3 = array<Struct_2, 3>();
    var var_1 = u_input.c.yz;
    var var_2 = Struct_1(~var_0.a, true, min(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -1i, 24674i), global2.a.c), 1i, global2.a.c.x | var_0.c.x)), global2.a.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.a.d * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1509f, 257f, global2.a.d.x, -754f), vec4<f32>(-1557f, global2.a.d.x, 391f, var_0.d.x), vec4<bool>(global2.b, true, var_0.b, var_0.b)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x - 1017f), var_0.d.x, _wgslsmith_f_op_f32(-1242f * global2.a.d.x), 516f))));
    global2 = global3[_wgslsmith_index_u32(~(~max(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 1u, global2.a.a.x), vec4<u32>(31661u, var_1.x, 1u, 2071u)))), 3u)];
    var var_3 = -(~(~(max(u_input.d, -16318i) << (_wgslsmith_clamp_u32(71197u, 32884u, var_0.a.x) % 32u))));
    let var_4 = Struct_1(~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.a.x, var_2.a.x, 1u, global2.a.a.x), vec4<u32>(728u, u_input.a, global2.a.a.x, var_0.a.x)), 1u, u_input.b)), any(vec2<bool>(global2.a.b, !all(vec2<bool>(false, var_2.b)))), -firstLeadingBit(~vec3<i32>(2147483647i, -1i, 32282i)), _wgslsmith_f_op_vec4_f32(var_2.d * _wgslsmith_f_op_vec4_f32(-var_0.d)));
    global3 = array<Struct_2, 3>();
    var var_5 = -var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, -(~_wgslsmith_mult_i32(max(var_2.c.x, var_2.c.x), ~global2.a.c.x)), ~(~abs(83956u)), (min(vec4<u32>(22817u, 24054u, var_1.x, 0u), vec4<u32>(global2.a.a.x, 16466u, global2.a.a.x, 26394u) >> (vec4<u32>(4294967295u, 29711u, 2014u, global2.a.a.x) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(func_2(1815f, 16050u, vec3<bool>(global2.b, true, var_0.b), var_4.d.x), ~vec4<u32>(4294967295u, var_0.a.x, 48654u, 63409u), func_2(1000f, 4294967295u, vec3<bool>(var_2.b, var_0.b, false), var_2.d.x))) << (~(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.a.x, var_0.a.x, var_2.a.x, var_1.x), vec4<u32>(1u, var_4.a.x, var_0.a.x, var_2.a.x)) & vec4<u32>(var_1.x, 1586u, var_0.a.x, var_0.a.x)) % vec4<u32>(32u)));
}

