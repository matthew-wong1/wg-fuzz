struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(0u, vec2<f32>(-2038f, -1000f), Struct_1(false), Struct_1(false));

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<u32, 13> = array<u32, 13>(38543u, 0u, 1u, 36417u, 0u, 7374u, 1u, 0u, 109088u, 105341u, 10615u, 0u, 0u);

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = abs(u_input.d.ww);
    global3 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.zy + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -322f) - global0.b)) + arg_1.xx))), _wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(1011f, global0.b.x))));
    let var_2 = ~(-vec4<i32>(13694i << (abs(0u) % 32u), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.x, var_0.x, -18805i), -1569i << (global0.a % 32u)), _wgslsmith_mult_i32(34898i ^ var_0.x, abs(-2147483647i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d))));
    let var_3 = Struct_2(max(~(~global0.a), _wgslsmith_add_u32(min(_wgslsmith_sub_u32(24350u, 0u), abs(74827u)), u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-346f, -346f)))) - vec2<f32>(1f, global0.b.x)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1472f, global0.b.x)), global0.b))), Struct_1(true), global0.c);
    return 1u;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec2<i32>(~u_input.c, 21011i);
    return ~_wgslsmith_mult_u32(arg_1.a, u_input.a | 1u) | _wgslsmith_div_u32(u_input.a >> (func_3(arg_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-418f, -1000f, -911f))) % 32u), _wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(arg_1.a, 13u)] ^ 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a, global0.a, 1u), min(vec3<u32>(u_input.a, 1u, global0.a), vec3<u32>(global0.a, 1u, 0u)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = u_input.d.zzw;
    var var_1 = ~(~_wgslsmith_sub_u32(~1u << (global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(global0.a, 13u)]), 13u)] % 32u), func_2(-vec4<i32>(u_input.c, u_input.d.x, var_0.x, -1i), Struct_2(arg_1, vec2<f32>(2091f, 2034f), global0.d, Struct_1(global0.d.a)))));
    global3 = array<Struct_1, 11>();
    var var_2 = _wgslsmith_sub_vec3_u32(~(~(~min(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a, 13u)], 13u)]), vec3<u32>(u_input.a, 89956u, 89698u)))), ~_wgslsmith_div_vec3_u32(~(vec3<u32>(arg_1, 10004u, arg_1) << (vec3<u32>(global0.a, global2[_wgslsmith_index_u32(global0.a, 13u)], global0.a) % vec3<u32>(32u))), max(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(0u, arg_1, u_input.a)))));
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -2147483647i, -2147483647i, ~u_input.b), -_wgslsmith_mult_vec4_i32(abs(u_input.d), (u_input.d ^ vec4<i32>(-4446i, u_input.c, 2147483647i, var_0.x)) ^ (u_input.d | vec4<i32>(0i, 4070i, -43540i, var_0.x))));
    return Struct_2(75453u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zy - vec2<f32>(-472f, -910f))), global0.c, Struct_1(arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, global0.b.x, 921f, global0.b.x)))))), max(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(7514u, 1u, 21518u) | vec3<u32>(global0.a, global2[_wgslsmith_index_u32(u_input.a, 13u)], 36383u)), ~(~vec3<u32>(1u, 0u, 26868u))), ~global0.a ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 23010u), vec2<u32>(1u, 84703u))), vec4<bool>(any(select(select(vec2<bool>(global0.d.a, false), vec2<bool>(true, global0.c.a), false), vec2<bool>(global1.a, global0.d.a), !vec2<bool>(global0.c.a, global1.a))), global0.c.a, global1.a != !any(vec2<bool>(global1.a, global0.d.a)), global1.a));
    var var_0 = u_input.d.wxw;
    global0 = Struct_2(u_input.a, global0.b, func_1(vec4<f32>(337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2066f * global0.b.x))), 25869u, !(!select(vec4<bool>(global1.a, true, false, global1.a), vec4<bool>(global1.a, true, global1.a, false), global0.c.a))).c, Struct_1(!(!global1.a)));
    let var_1 = 1f;
    var var_2 = _wgslsmith_add_u32(~94092u, _wgslsmith_add_u32(~(~global2[_wgslsmith_index_u32(u_input.a, 13u)]), u_input.a | firstLeadingBit(u_input.a))) >> (global2[_wgslsmith_index_u32(36741u, 13u)] % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(global2[_wgslsmith_index_u32(~28809u, 13u)] >> (_wgslsmith_sub_u32(min(global2[_wgslsmith_index_u32(global0.a, 13u)], 30314u), 1u) % 32u)), 67669u, ~(~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(global0.a, 13u)], 0u, 88673u)), abs(vec3<u32>(u_input.a, u_input.a, 34289u)))), reverseBits(select(countOneBits(38224u), ~1u, true) >> ((53609u ^ reverseBits(global2[_wgslsmith_index_u32(u_input.a, 13u)])) % 32u)));
}

