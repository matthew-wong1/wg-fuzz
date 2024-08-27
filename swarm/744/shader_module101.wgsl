struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: bool = false;

var<private> global2: bool = false;

var<private> global3: array<i32, 29> = array<i32, 29>(-51636i, -36225i, 16674i, 2147483647i, -18535i, -1i, i32(-2147483648), -1i, 1i, i32(-2147483648), 50340i, 1232i, 2147483647i, 1i, 2147483647i, -10840i, 2147483647i, -19560i, -1i, 0i, 0i, 2147483647i, -16673i, 78947i, 0i, -17766i, 2147483647i, 0i, -1i);

var<private> global4: Struct_1 = Struct_1(1i, vec3<u32>(0u, 0u, 4294967295u), true, -3352i, vec4<u32>(4294967295u, 29493u, 42145u, 103972u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = vec2<i32>(~global4.a, countOneBits(u_input.a.x));
    return !select(select(!vec3<bool>(true, arg_0.x, global0.x), arg_0.yxw, !(!arg_0.zyz)), select(arg_0.ywy, arg_0.zzy, global4.c), true | (global4.b.x <= max(global4.b.x, u_input.c)));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = -828f;
    return !func_2(vec4<bool>(global4.c, true, all(!vec3<bool>(false, global4.c, global4.c)), _wgslsmith_f_op_f32(var_0 + 326f) >= _wgslsmith_f_op_f32(-235f - var_0)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global4 = Struct_1(select(_wgslsmith_mod_i32(-1i, ~abs(47029i)), -_wgslsmith_add_i32(arg_2.a.x, min(arg_1.a, global4.a)), global0.x), ~_wgslsmith_clamp_vec3_u32(global4.b ^ global4.e.wzz, global4.b, global4.e.zyz), ~(~(~4294967295u)) >= ~global4.b.x, u_input.a.x, abs(firstLeadingBit(~global4.e)));
    var var_0 = arg_0.a.yzy;
    let var_1 = Struct_2(u_input.a, _wgslsmith_div_i32(firstTrailingBit(~firstLeadingBit(0i)), select(var_0.x, -global4.a, 0u > abs(u_input.c))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_1.b.x, global4.e.x, global4.e.x)), countOneBits(~global4.e.wzy)), arg_1.e.x);
    global2 = true & (false | global0.x);
    return _wgslsmith_add_i32(~(-20842i), 34429i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(!select(global0.x & global0.x, !global0.x, false), !(!global0.x), !global0.x), select(func_1(~(30931u << (global4.e.x % 32u))), func_1(u_input.c), (global4.a > max(global3[_wgslsmith_index_u32(u_input.c, 29u)], u_input.a.x)) || (global4.c == global0.x)), vec3<bool>(false, all(global0.zy), !(global4.c || false)));
    let var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(11652i, 0i, _wgslsmith_mult_i32(func_3(Struct_2(vec4<i32>(2147483647i, 0i, -2147483647i, -2147483647i), -23498i), Struct_1(-10951i, vec3<u32>(u_input.c, global4.e.x, u_input.c), global0.x, -31634i, vec4<u32>(u_input.c, 69020u, global4.b.x, 22045u)), Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(1u, 29u)], -53819i, -47532i, u_input.b), -1i)), 42681i), global3[_wgslsmith_index_u32(global4.b.x, 29u)]), u_input.a), global4.b, true, min(2147483647i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(abs(u_input.c), 29u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 29u)], 0i, global3[_wgslsmith_index_u32(79763u, 29u)], 5723i), ~u_input.a))), ~firstTrailingBit(select(vec4<u32>(36586u, 58091u, 0u, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(46887u, 4294967295u, 41003u, 1u), vec4<u32>(4294967295u, u_input.c, 36965u, 4294967295u), global4.e), vec4<bool>(global0.x, true, global0.x, global0.x))));
    var var_1 = _wgslsmith_mult_vec4_i32(u_input.a, u_input.a);
    var_1 = ~(~(~_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-1i, u_input.a.x, 2147483647i, global4.d))));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(max(_wgslsmith_mod_u32(5485u, var_0.b.x), 4294967295u), max(u_input.c, 29834u) & ~4294967295u), ~(~u_input.c ^ _wgslsmith_sub_u32(u_input.c, 4294967295u)), u_input.c, ~select(var_0.e.x, ~0u, !global0.x)), global4.e);
    var var_3 = 958f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1117f, -140f, 376f, 563f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1373f, -193f, -499f, 357f)), global4.c)))), 1000f);
}

