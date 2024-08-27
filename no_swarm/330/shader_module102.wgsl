struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1239f)))))), min(min(countOneBits(vec2<u32>(u_input.c, u_input.b.x)) << (min(vec2<u32>(u_input.c, 7134u), u_input.a.wx) % vec2<u32>(32u)), ~u_input.b), _wgslsmith_mod_vec2_u32(select(max(vec2<u32>(u_input.a.x, u_input.b.x), u_input.a.wx), ~vec2<u32>(u_input.c, u_input.b.x), true), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), ~u_input.a.yz))), select(true, false, u_input.b.x < u_input.c));
    global0 = array<vec3<f32>, 11>();
    var var_1 = 831f;
    let var_2 = var_0;
    let var_3 = 44106u;
    return var_0.a;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(arg_0.a * -558f))))), _wgslsmith_add_vec2_u32(((vec2<u32>(u_input.c, arg_0.b.x) << (vec2<u32>(4294967295u, 16980u) % vec2<u32>(32u))) | arg_0.b) ^ u_input.b, firstTrailingBit(~(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.yw % vec2<u32>(32u))))), select(u_input.d.x != u_input.d.x, arg_0.c, arg_0.c));
    var var_1 = 0u < arg_0.b.x;
    global1 = array<Struct_1, 20>();
    var var_2 = reverseBits(1u);
    global0 = array<vec3<f32>, 11>();
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = max(19814i, i32(-1i) * -11042i);
    var var_1 = min(u_input.b, select(vec2<u32>(arg_3.b.x, ~(~8264u)), min(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_3.b.x, 1u), min(arg_2.zw, vec2<u32>(arg_0.b.x, arg_3.b.x)), ~vec2<u32>(43799u, 0u)), _wgslsmith_add_vec2_u32(~vec2<u32>(1u, arg_2.x), arg_3.b ^ vec2<u32>(u_input.b.x, arg_2.x))), vec2<bool>(any(!vec3<bool>(arg_0.c, false, false)), select(true, u_input.d.x > 25603i, arg_3.c))));
    let var_2 = vec2<u32>(~23304u | _wgslsmith_mod_u32(~46975u, arg_0.b.x), ~(~(~15255u >> (func_2(Struct_1(arg_0.a, vec2<u32>(4294967295u, u_input.b.x), false)).b.x % 32u))));
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f - _wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)))), vec2<u32>(0u, _wgslsmith_add_u32(~59195u, var_1.x)), false));
    var_1 = vec2<u32>(~(countOneBits(arg_0.b.x) | var_1.x), min(~_wgslsmith_add_u32(1u, 97143u >> (arg_2.x % 32u)), ~var_2.x));
    return ~firstTrailingBit(-arg_1.x);
}

fn func_1() -> vec2<i32> {
    global0 = array<vec3<f32>, 11>();
    var var_0 = _wgslsmith_add_vec2_i32(~(~vec2<i32>(12863i, min(0i, u_input.d.x))), u_input.d.xy);
    var_0 = ~firstTrailingBit(_wgslsmith_div_vec2_i32(u_input.d.zy, -u_input.d.yx));
    let var_1 = _wgslsmith_mod_vec4_i32(-vec4<i32>(49042i, firstLeadingBit(var_0.x), 69450i, -13422i), (vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(var_0.x, -2147483647i, var_0.x, u_input.d.x))) << ((vec4<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.a.x), _wgslsmith_mod_u32(65853u, 28145u), 0u, ~40727u) ^ vec4<u32>(~u_input.b.x, 4294967295u, firstLeadingBit(u_input.b.x), u_input.a.x)) % vec4<u32>(32u)));
    var var_2 = global1[_wgslsmith_index_u32(~countOneBits(countOneBits(u_input.b.x)), 20u)];
    return ~vec2<i32>(~min(3795i, var_0.x), _wgslsmith_mult_i32(func_4(global1[_wgslsmith_index_u32(42645u, 20u)], var_1.yy, firstLeadingBit(vec4<u32>(var_2.b.x, var_2.b.x, u_input.b.x, u_input.a.x)), func_2(global1[_wgslsmith_index_u32(1u, 20u)])), u_input.d.x));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = 634i;
    global1 = array<Struct_1, 20>();
    var var_1 = -vec3<i32>(var_0, max(25361i, u_input.d.x) >> (reverseBits(u_input.c) % 32u), -firstTrailingBit(-2147483647i)) & _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.d.x, -1146i, -7215i), vec3<i32>(-37583i, ~arg_1.x, var_0)), _wgslsmith_sub_vec3_i32(~select(vec3<i32>(var_0, arg_1.x, 20581i), u_input.d, vec3<bool>(arg_0, false, arg_0)), vec3<i32>(var_0, arg_1.x & 6016i, var_0)));
    let var_2 = func_2(func_2(func_2(Struct_1(-205f, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.c, u_input.a.x)), false))));
    global0 = array<vec3<f32>, 11>();
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 11>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_5(!(!(u_input.b.x < u_input.c)), u_input.d.xy & _wgslsmith_div_vec2_i32(func_1(), -u_input.d.xx), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zxy, u_input.a.wzw), 11u)])), u_input.b, false);
    global0 = array<vec3<f32>, 11>();
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -1981f)), ~min(u_input.b, var_0.b), false));
    var var_2 = var_0.c;
    let var_3 = func_2(func_2(var_0));
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xzz, ~vec3<u32>(~u_input.b.x, select(0u, 1u, var_1.c), u_input.b.x)), 11u)], u_input.d, u_input.a);
}

