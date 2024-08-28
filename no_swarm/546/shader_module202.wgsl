struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

var<private> global1: array<f32, 30> = array<f32, 30>(-621f, -1306f, 2344f, -1000f, -116f, 457f, 1485f, 930f, 231f, 742f, -1000f, 1319f, 1041f, -355f, 2364f, -601f, -230f, -2633f, -496f, 1245f, 619f, -669f, -194f, -360f, -563f, 136f, -385f, 492f, 1118f, 1489f);

var<private> global2: array<Struct_3, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-854f * global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), global1[_wgslsmith_index_u32(u_input.b.x, 30u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 30u)] + 765f))))));
    global0 = array<vec3<bool>, 12>();
    var var_1 = -((reverseBits(firstLeadingBit(vec2<i32>(2147483647i, u_input.a))) ^ (reverseBits(vec2<i32>(-13256i, u_input.a)) ^ countOneBits(vec2<i32>(arg_1, 25530i)))) << ((vec2<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 9389u)) >> (~abs(vec2<u32>(779u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], 1524f, global1[_wgslsmith_index_u32(22467u, 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)])))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 30u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(70783u, 30u)]), _wgslsmith_f_op_f32(var_0.x + -626f), _wgslsmith_f_op_f32(trunc(var_0.x)))))));
    var var_3 = u_input.b.x;
    return firstLeadingBit(select(var_1.x ^ var_1.x, var_1.x | ~abs(-47002i), false));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<bool>, arg_3: i32) -> Struct_3 {
    global0 = array<vec3<bool>, 12>();
    return Struct_3(vec4<i32>(27131i, arg_3, func_3(Struct_1(vec3<bool>(false, true, false)), _wgslsmith_add_i32(-4923i, -1848i)) ^ ((u_input.a & 1i) | u_input.a), ~arg_1));
}

fn func_1() -> Struct_3 {
    global1 = array<f32, 30>();
    let var_0 = -1329f;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), u_input.c.x), 12u)];
    let var_2 = _wgslsmith_f_op_f32(abs(var_0));
    var var_3 = -2147483647i;
    return func_2(~vec2<u32>(u_input.b.x, u_input.c.x), 0i, !vec2<bool>(true, (u_input.b.x > 1u) == var_1.x), -(~2147483647i));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)]);
    global2 = array<Struct_3, 32>();
    let var_1 = u_input.a;
    var var_2 = 1i << (min(select(5958u, u_input.b.x & min(33775u, 0u), arg_0), u_input.b.x) % 32u);
    global1 = array<f32, 30>();
    return vec4<f32>(_wgslsmith_f_op_f32(-1158f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1137f), _wgslsmith_div_f32(920f, global1[_wgslsmith_index_u32(0u, 30u)])))), 199f, 664f, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(24796u, _wgslsmith_clamp_u32(reverseBits(~u_input.c.x), u_input.b.x, firstTrailingBit(_wgslsmith_div_u32(38852u, 1u)))), 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, 1038f, global1[_wgslsmith_index_u32(24902u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-658f, 1266f, 432f, -315f), vec4<f32>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], 266f, 394f), vec4<bool>(true, false, true, false))))), _wgslsmith_f_op_vec4_f32(func_4(true, func_1(), any(vec2<bool>(true, false)), vec3<i32>(u_input.a, u_input.a, 1i))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), _wgslsmith_f_op_f32(sign(-373f)), true)), -1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(52252u, 30u)]), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.c.x, u_input.c.x), 30u)]), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), u_input.c.x > 4294967295u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], -660f, 1160f, global1[_wgslsmith_index_u32(u_input.b.x, 30u)]))))));
    let var_2 = ~(-21080i & ~u_input.a);
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(-1i, ~u_input.a), -2147483647i, ~(2147483647i << (0u % 32u))));
}

