struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: u32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(163f, vec3<f32>(447f, -714f, -1000f), 63245u);

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec2<f32>(1882f, 1001f)), Struct_3(vec2<f32>(-1432f, -286f)), Struct_3(vec2<f32>(-204f, 678f)), Struct_3(vec2<f32>(825f, -1032f)), Struct_3(vec2<f32>(-159f, 554f)), Struct_3(vec2<f32>(824f, 1155f)), Struct_3(vec2<f32>(-507f, 1492f)), Struct_3(vec2<f32>(-1444f, 917f)), Struct_3(vec2<f32>(-469f, -512f)), Struct_3(vec2<f32>(-529f, -2110f)), Struct_3(vec2<f32>(2054f, 882f)), Struct_3(vec2<f32>(1076f, 1160f)), Struct_3(vec2<f32>(-232f, -1160f)), Struct_3(vec2<f32>(972f, -1000f)), Struct_3(vec2<f32>(-566f, 821f)), Struct_3(vec2<f32>(-595f, 952f)), Struct_3(vec2<f32>(464f, -102f)), Struct_3(vec2<f32>(2002f, 924f)), Struct_3(vec2<f32>(109f, 1043f)), Struct_3(vec2<f32>(963f, -839f)), Struct_3(vec2<f32>(-1596f, -505f)), Struct_3(vec2<f32>(876f, -621f)), Struct_3(vec2<f32>(160f, 501f)), Struct_3(vec2<f32>(1466f, 540f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = !vec3<bool>(~global0.c == 6736u, true, false);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(trunc(-118f))) - arg_1.x))), _wgslsmith_f_op_vec3_f32(max(global0.b, _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, 350f, -1078f))))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.x, arg_0.x), ~global0.c)) & 1u);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(153f, _wgslsmith_f_op_f32(-global0.a)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1094f), _wgslsmith_f_op_f32(floor(var_1.a)))) + _wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(_wgslsmith_f_op_f32(706f * var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(1256f))))), abs(arg_0.x));
    var var_2 = Struct_2(var_1.c, _wgslsmith_div_u32(countOneBits(global0.c), var_1.c), _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(abs(u_input.c.x), ~firstLeadingBit(4654u))), !any(!vec2<bool>(var_0.x, false)), vec3<bool>(false, ~min(var_1.c, u_input.c.x) <= (arg_0.x ^ 60881u), select(select(any(vec3<bool>(true, var_0.x, false)), select(true, var_0.x, var_0.x), true), any(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), all(var_0.yz))));
    let var_3 = false;
    return 0u;
}

fn func_2(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_2(0u, ~func_3(abs(u_input.c) ^ ~u_input.c, global0.b.xz), u_input.c.x, true, !select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), arg_0.x <= -42105i), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))));
    let var_1 = ~83883u << (max(4294967295u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(1u, u_input.c.x, _wgslsmith_sub_u32(63600u, u_input.c.x)))) % 32u);
    global1 = array<Struct_3, 24>();
    var var_2 = Struct_2(var_0.a | ~var_1, 103876u, u_input.c.x, false, var_0.e);
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(1592f)), global0.b, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 33827u, 1u, u_input.c.x), ~vec4<u32>(1u, global0.c, 0u, 44774u))));
    return var_0.e.yy;
}

fn func_1() -> StorageBuffer {
    let var_0 = !func_2(-(~vec3<i32>(u_input.b.x, 1i, -2147483647i)) << (firstLeadingBit(vec3<u32>(4431u, 64500u, 1u)) % vec3<u32>(32u)));
    let var_1 = var_0;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-global0.b.x)), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.x))))), abs(_wgslsmith_add_u32(_wgslsmith_add_u32(26078u, global0.c), 1u)));
    return StorageBuffer(_wgslsmith_div_u32(global0.c, u_input.c.x), 41693i, -(u_input.b.x >> (global0.c % 32u)), _wgslsmith_mult_vec2_i32(abs(-reverseBits(u_input.b)), ~(u_input.b >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(global0.c, u_input.c.x), u_input.c.yy) % vec2<u32>(32u)))), 87228u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

