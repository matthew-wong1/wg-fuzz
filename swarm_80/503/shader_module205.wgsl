struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(1147f, 699f, 1371f, 628f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_1.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(1937f + -256f))), !vec2<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(arg_1.b.c.x, arg_1.b.c.x, true))), arg_1.b.d), (~(~arg_1.b.d) | _wgslsmith_sub_vec2_u32(arg_1.b.d, vec2<u32>(48905u, u_input.c))) & countOneBits(arg_1.b.d));
    let var_1 = arg_1.b;
    var_0 = Struct_2(arg_1.b, vec2<u32>(_wgslsmith_mod_u32(var_1.d.x, _wgslsmith_mult_u32(65740u, var_0.a.d.x)), min(~(~u_input.c), ~(u_input.c | 0u))));
    var var_2 = ~37335i & ~u_input.a;
    let var_3 = Struct_2(Struct_1(var_0.a.b, _wgslsmith_f_op_f32(max(-659f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.b + 1000f), _wgslsmith_f_op_f32(sign(arg_0.x)))))), vec2<bool>(all(vec3<bool>(true, true, true)), true), vec2<u32>(_wgslsmith_add_u32(1u, 12757u << (var_1.d.x % 32u)), ~(~arg_1.b.d.x))), var_0.a.d);
    return var_0.a.c;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = arg_2;
    global0 = array<vec4<f32>, 1>();
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(select(var_0.a, 571f, var_0.c.x));
    return var_1.b;
}

fn func_2() -> vec3<i32> {
    global0 = array<vec4<f32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(155f * 182f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(823f))), -1008f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_0, func_3(vec2<f32>(-1314f, 1514f), Struct_3(vec3<i32>(u_input.b, u_input.b, u_input.a), Struct_1(-1388f, -122f, vec2<bool>(var_0, var_0), vec2<u32>(u_input.c, u_input.c)), global0[_wgslsmith_index_u32(u_input.c, 1u)])), Struct_1(1266f, 281f, vec2<bool>(true, true), vec2<u32>(1u, u_input.c)), Struct_3(vec3<i32>(u_input.b, u_input.a, 46334i), Struct_1(-1534f, -1558f, vec2<bool>(var_0, var_0), vec2<u32>(1u, 44220u)), global0[_wgslsmith_index_u32(79613u, 1u)]))))), -1000f, select(vec2<bool>(var_0, var_0), vec2<bool>(true, -832f != _wgslsmith_f_op_f32(ceil(1767f))), false), abs(abs(min(vec2<u32>(1u, 4128u), vec2<u32>(52117u, 4294967295u) | vec2<u32>(19299u, u_input.c)))));
    var var_2 = min(firstLeadingBit(min(vec3<u32>(var_1.d.x, 33734u, 1u), vec3<u32>(max(13577u, 4294967295u), 32031u, ~1u))), ~vec3<u32>(u_input.c, 1u, ~abs(var_1.d.x)));
    var var_3 = var_1.b;
    return vec3<i32>(~(~(_wgslsmith_div_i32(1i, u_input.b) >> (var_2.x % 32u))), _wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(1i, u_input.a, 57590i, u_input.a)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-63713i, u_input.a, -9414i, u_input.b), firstTrailingBit(vec4<i32>(3775i, -12451i, 1i, u_input.a)))) & -abs(-u_input.b), -((u_input.a ^ u_input.b) ^ -u_input.a) | u_input.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: bool) -> StorageBuffer {
    global0 = array<vec4<f32>, 1>();
    let var_0 = select(vec3<bool>(any(!vec4<bool>(arg_3, arg_3, false, arg_3)), arg_3, true), !(!(!vec3<bool>(arg_3, false, arg_3))), !vec3<bool>(!arg_3, all(select(vec4<bool>(true, arg_3, false, false), vec4<bool>(true, arg_3, false, true), arg_3)), !(!arg_3)));
    var var_1 = ~(-firstTrailingBit(func_2()) << (~reverseBits(abs(vec3<u32>(u_input.c, 94185u, u_input.c))) % vec3<u32>(32u)));
    var var_2 = arg_2;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(251f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f * arg_0.x))), arg_0.x, select(vec2<bool>(select(var_0.x, var_0.x, false), select(var_0.x, false, var_0.x)), var_0.xy, false), vec2<u32>(u_input.c, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, u_input.c), 4294967295u))), ~select(_wgslsmith_mod_vec2_u32(max(vec2<u32>(4294967295u, 77467u), vec2<u32>(101868u, 0u)), vec2<u32>(1u, u_input.c) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))), ~select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c), var_0.x), !var_0.xy));
    return StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 22586i, _wgslsmith_mod_i32(~2147483647i, -u_input.a)), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, -2147483647i, -5958i) & vec3<i32>(arg_1.x, u_input.a, -2147483647i), firstLeadingBit(vec3<i32>(arg_1.x, -2147483647i, var_1.x)))), vec4<u32>(52365u, var_3.b.x, select(u_input.c, u_input.c, var_3.a.c.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_3.b.x, 109186u, u_input.c, u_input.c), ~vec4<u32>(0u, u_input.c, 7846u, var_3.a.d.x), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, true, true, false), var_0.x)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.c, 33031u, 0u, var_3.b.x), vec4<u32>(1u, var_3.a.d.x, var_3.a.d.x, 4294967295u), vec4<bool>(var_3.a.c.x, var_0.x, var_0.x, true)), ~vec4<u32>(1u, u_input.c, 1u, u_input.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.a, arg_0.x, arg_2, arg_2) * _wgslsmith_f_op_vec4_f32(-arg_0)))), _wgslsmith_div_vec2_u32(vec2<u32>(var_3.a.d.x, reverseBits(50995u) << (u_input.c % 32u)), (var_3.b ^ ~var_3.b) | ~var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(!(any(vec2<bool>(true, false)) == select(false, false, true)), false);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.c, 1u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1109f))), -1734f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)), 1276f))), firstTrailingBit(abs(vec2<i32>(reverseBits(-20667i), -1i))), 578f, !var_0.x);
}

