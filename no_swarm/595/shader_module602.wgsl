struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, false), Struct_1(37988i, 137f, vec4<bool>(true, true, true, true)), vec2<u32>(31228u, 1u), vec4<bool>(true, false, false, true), Struct_1(2147483647i, 204f, vec4<bool>(true, false, false, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    return global0.b.a & 0i;
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(select(!select(select(global0.d.wy, global0.b.c.xz, global0.e.c.x), !global0.a, vec2<bool>(global0.d.x, global0.a.x)), global0.d.zy, !select(!global0.d.wz, select(vec2<bool>(true, false), vec2<bool>(global0.b.c.x, global0.e.c.x), false), true)), Struct_1(_wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(-413f + global0.b.b), vec4<f32>(104f, global0.e.b, global0.b.b, -793f)), u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.b, -2185f)) - global0.e.b) + _wgslsmith_f_op_f32(f32(-1f) * -883f)), vec4<bool>(any(!global0.b.c.yx), true, any(select(global0.d.xxw, global0.e.c.yww, vec3<bool>(global0.b.c.x, global0.e.c.x, true))), true)), _wgslsmith_clamp_vec2_u32((vec2<u32>(global0.c.x, 2875u) << ((global0.c ^ vec2<u32>(0u, u_input.c.x)) % vec2<u32>(32u))) | vec2<u32>(abs(40052u), 154295u), ~(vec2<u32>(49905u, 25410u) << (global0.c % vec2<u32>(32u))), ~u_input.c.yx), select(!global0.d, global0.d, vec4<bool>(global0.d.x | global0.d.x, true, !(50285u < u_input.c.x), true)), Struct_1(global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b, 578f))), select(!vec4<bool>(true, false, global0.b.c.x, global0.e.c.x), global0.d, -u_input.a <= _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 5771i, u_input.a), vec3<i32>(-1i, u_input.a, -1i)))));
    let var_0 = -398f;
    var var_1 = Struct_2(!(!global0.a), Struct_1(0i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-global0.b.b)) - global0.b.b), vec4<bool>(true, global0.a.x, global0.e.c.x, false)), abs(~((vec2<u32>(u_input.b.x, 19291u) | vec2<u32>(u_input.c.x, 4294967295u)) ^ max(u_input.c.yz, u_input.c.xz))), !global0.e.c, global0.e);
    var var_2 = 1u;
    let var_3 = global0.b;
    return Struct_2(select(vec2<bool>(any(select(vec3<bool>(var_3.c.x, global0.b.c.x, false), var_3.c.www, vec3<bool>(global0.a.x, var_3.c.x, false))), false), select(vec2<bool>(var_1.e.c.x, var_3.c.x), !var_3.c.wx, !var_3.c.zx), all(select(var_1.d, select(vec4<bool>(true, var_1.e.c.x, var_1.e.c.x, true), global0.d, vec4<bool>(true, false, global0.a.x, global0.b.c.x)), select(global0.e.c, vec4<bool>(true, global0.a.x, true, global0.e.c.x), global0.e.c)))), var_1.e, vec2<u32>(global0.c.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, u_input.c.x), ~1u), ~reverseBits(4294967295u))), vec4<bool>(!var_3.c.x == false, global0.d.x == true, true && all(select(var_1.b.c.xyx, global0.b.c.wyx, vec3<bool>(false, var_1.e.c.x, var_3.c.x))), true), var_1.b);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = global0.e;
    global0 = func_2();
    global0 = func_2();
    global0 = func_2();
    return ~global0.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(global0.b.b, global0.b.b);
    let var_1 = ~firstLeadingBit(u_input.c.x);
    var var_2 = vec2<i32>(reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.a, global0.b.a, 2147483647i), firstLeadingBit(vec3<i32>(u_input.d, 19766i, global0.e.a)))), -80910i);
    var_2 = -vec2<i32>(7296i, var_2.x | func_1(countOneBits(vec4<u32>(0u, global0.c.x, var_1, var_1)), reverseBits(vec2<i32>(global0.b.a, 9023i))));
    global0 = Struct_2(vec2<bool>(true, global0.a.x), func_2().e, _wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(var_1, 23797u))), ~(vec2<u32>(var_1, 21992u) | vec2<u32>(4294967295u, u_input.b.x))), global0.b.c, global0.e);
    var var_3 = ~(~_wgslsmith_dot_vec3_u32(u_input.b, u_input.c));
    var var_4 = ~_wgslsmith_sub_vec4_u32(firstLeadingBit(~firstLeadingBit(vec4<u32>(global0.c.x, 1u, 0u, u_input.c.x))), firstLeadingBit(vec4<u32>(var_1, _wgslsmith_div_u32(u_input.c.x, 36386u), u_input.e, max(1568u, global0.c.x))));
    let var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~func_2().c.x, var_2.x);
}

