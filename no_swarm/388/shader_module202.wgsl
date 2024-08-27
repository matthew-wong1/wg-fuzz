struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 19>;

var<private> global2: array<bool, 6> = array<bool, 6>(false, false, true, false, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(~((vec3<i32>(u_input.a, -1i, global0.c) & u_input.b.xyw) & vec3<i32>(u_input.a, _wgslsmith_mult_i32(u_input.b.x, 41455i), 22697i)), global0.d.a, i32(-1i) * -44411i, Struct_1(_wgslsmith_f_op_vec2_f32(global0.b - global0.b), select(_wgslsmith_div_u32(global0.d.c, ~0u), global0.d.c, true), 4294967295u));
    global0 = Struct_2(~(-global0.a) & -_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.x, -28362i, -304i), -vec3<i32>(global0.a.x, global0.c, global0.c)), global0.b, i32(-1i) * -(~2147483647i), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b.x, -1069f))) * global0.d.a), 20214u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(26554u, global0.d.b), global0.d.b) << (global0.d.b % 32u)));
    global1 = array<Struct_3, 19>();
    return global0.d;
}

fn func_3() -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 6u)];
    var var_1 = ~vec3<u32>(_wgslsmith_div_u32(0u >> ((global0.d.b >> (global0.d.b % 32u)) % 32u), 0u), _wgslsmith_add_u32(~31044u, _wgslsmith_mod_u32(1u ^ global0.d.c, global0.d.b)), 5627u);
    let var_2 = -418f;
    global1 = array<Struct_3, 19>();
    let var_3 = Struct_2(u_input.b.yzy, _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_f32(abs(729f))))), vec2<f32>(global0.b.x, -1323f)), firstTrailingBit(1i), global0.d);
    return (-global0.c >> (~var_1.x % 32u)) ^ _wgslsmith_sub_i32(-_wgslsmith_mod_i32(abs(global0.a.x), _wgslsmith_add_i32(1i, u_input.a)), ~(-15046i));
}

fn func_1() -> Struct_1 {
    global2 = array<bool, 6>();
    var var_0 = Struct_2(global0.a, _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-618f, -236f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, global0.d.a.x))), global0.d.a))), u_input.a, func_2());
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.a) - func_2().a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a.x, 1824f)) - _wgslsmith_f_op_vec2_f32(-var_0.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.d.a, vec2<f32>(161f, 2024f))) - vec2<f32>(452f, var_0.d.a.x))), any(!(!vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.d.b, 6u)], global2[_wgslsmith_index_u32(1u, 6u)]))))), (-var_0.a.x ^ ~(i32(-1i) * -1i)) << (4294967295u % 32u), global0.d);
    var var_1 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d.a.x, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, -1000f))))), _wgslsmith_f_op_vec2_f32(min(global0.b, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.d.a.x, -1479f))))), ~(global0.c >> (global0.d.c % 32u)) != countOneBits(1i & var_0.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(min(func_3(), 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, -59399i, var_0.c, global0.c), vec4<i32>(global0.a.x, 57293i, 0i, 1i))), var_0.a.zz), func_2());
    let var_2 = func_2();
    return var_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = u_input.b;
    global2 = array<bool, 6>();
    global0 = arg_1;
    global1 = array<Struct_3, 19>();
    global0 = Struct_2(u_input.b.zzy, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.a.x, _wgslsmith_f_op_f32(-arg_1.d.a.x))))), -firstTrailingBit(reverseBits(arg_1.c)), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.d.a))), firstTrailingBit(0u), ~((global0.d.c & 73570u) >> (firstTrailingBit(global0.d.b) % 32u))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 1071f) + vec2<f32>(-622f, 299f)))), ~12870u, firstLeadingBit(_wgslsmith_sub_u32(~4294967295u, global0.d.b))));
    let var_2 = Struct_3(var_1.a);
    global0 = func_4(4392i, Struct_2(vec3<i32>(-1i) * -vec3<i32>(22369i, -2147483647i, -2777i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, 1148f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -556f), _wgslsmith_f_op_f32(-1096f + var_1.a.a.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-14083i, 1i), u_input.b.yw >> (vec2<u32>(var_0.c, 1u) % vec2<u32>(32u))), ~u_input.b.wy), func_1()));
    global1 = array<Struct_3, 19>();
    let var_3 = vec4<u32>(var_1.a.b, 75595u, ~(~_wgslsmith_mult_u32(var_0.b, 101398u) | ~44787u), 16924u);
    global1 = array<Struct_3, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yyy);
}

