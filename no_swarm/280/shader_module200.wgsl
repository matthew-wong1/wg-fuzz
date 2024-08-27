struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(0u, i32(-2147483648), vec2<i32>(0i, 39700i), vec2<u32>(1u, 0u)), Struct_1(17307u, -1i, vec2<i32>(-6365i, -18142i), vec2<u32>(72333u, 1u)), Struct_1(0u, -7669i, vec2<i32>(-1i, 730i), vec2<u32>(0u, 18862u)), Struct_1(0u, 2147483647i, vec2<i32>(0i, 1i), vec2<u32>(1u, 90771u)), Struct_1(1u, -1i, vec2<i32>(62902i, 14790i), vec2<u32>(41184u, 58889u)), Struct_1(65323u, -1i, vec2<i32>(-65102i, i32(-2147483648)), vec2<u32>(1u, 0u)), Struct_1(52365u, -5799i, vec2<i32>(1512i, -24865i), vec2<u32>(0u, 1u)), Struct_1(41360u, -2577i, vec2<i32>(26058i, -20473i), vec2<u32>(4294967295u, 1u)), Struct_1(27662u, 1i, vec2<i32>(30504i, -16846i), vec2<u32>(0u, 33708u)), Struct_1(0u, i32(-2147483648), vec2<i32>(-32886i, -54104i), vec2<u32>(0u, 1u)), Struct_1(2815u, -1i, vec2<i32>(-977i, -13127i), vec2<u32>(0u, 25197u)), Struct_1(76650u, -7512i, vec2<i32>(0i, 1i), vec2<u32>(1u, 1u)), Struct_1(1u, 73472i, vec2<i32>(i32(-2147483648), -48217i), vec2<u32>(1u, 24819u)), Struct_1(4294967295u, 3484i, vec2<i32>(i32(-2147483648), 16053i), vec2<u32>(1u, 22444u)), Struct_1(1u, i32(-2147483648), vec2<i32>(-5058i, 2147483647i), vec2<u32>(0u, 44640u)), Struct_1(19002u, 1i, vec2<i32>(6197i, 0i), vec2<u32>(0u, 4294967295u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = any(!vec4<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -122f) == _wgslsmith_div_f32(arg_3, -253f), !(arg_3 <= -1455f), !any(vec2<bool>(false, true))));
    var var_1 = _wgslsmith_add_vec2_i32(arg_1.c, arg_1.c << (vec2<u32>(19357u, countOneBits(global0[_wgslsmith_index_u32(~u_input.b, 17u)])) % vec2<u32>(32u)));
    let var_2 = vec4<i32>(arg_1.c.x, 1i, _wgslsmith_sub_i32(select(_wgslsmith_mod_i32(u_input.c, reverseBits(u_input.c)), _wgslsmith_mult_i32(13274i, 1i << (global0[_wgslsmith_index_u32(23056u, 17u)] % 32u)), any(vec3<bool>(false, false, false))), countOneBits(2147483647i)), 2147483647i);
    let var_3 = _wgslsmith_f_op_f32(round(-1266f));
    let var_4 = ~(~(~arg_1.d));
    return _wgslsmith_add_i32(i32(-1i) * -35027i, var_1.x);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> i32 {
    global0 = array<u32, 17>();
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~76744u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 5690u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9960u, 17u)], 17u)], 36813u), vec4<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 17u)], u_input.a)) | _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), 5885u), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 17u)], 17u)], u_input.b, 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<u32>(u_input.b, u_input.a, 1u, u_input.b), vec4<bool>(false, var_0, true, var_0)), firstTrailingBit(vec4<u32>(16383u, 42815u, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(7591u, 17u)])))), -(~(-u_input.c)), arg_2.ww, select(vec2<u32>(1u, u_input.a & abs(22045u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], 34042u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.b, 17u)])), select(vec2<bool>(true, true), !vec2<bool>(var_0, var_0), _wgslsmith_div_f32(265f, 121f) > _wgslsmith_f_op_f32(round(247f)))));
    global1 = array<Struct_1, 16>();
    global1 = array<Struct_1, 16>();
    return var_1.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x) <= 548f;
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-u_input.c | ~31843i, ~u_input.c), abs(reverseBits(select(1i, 2147483647i, true))), -43119i);
    global0 = array<u32, 17>();
    var var_2 = -vec2<i32>(firstLeadingBit(-1i), ~u_input.c);
    var_1 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~(vec3<i32>(arg_2.c.x, u_input.c, -2147483647i) << (arg_1 % vec3<u32>(32u))), vec3<i32>(-2147483647i, func_3(arg_0.x, vec3<f32>(arg_0.x, -1600f, -402f), vec4<i32>(var_1.x, 0i, var_2.x, 32707i)), countOneBits(var_2.x))), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(u_input.c, var_1.x, -75089i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(-35241i, 4766i, 2432i), vec3<i32>(arg_2.c.x, 1i, var_1.x)), -(~vec3<i32>(0i, var_1.x, arg_2.b))), vec3<i32>(func_3(_wgslsmith_f_op_f32(1000f + arg_0.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, 1020f, 737f))), vec4<i32>(u_input.c, 1i, u_input.c, -1i)), -2147483647i, -20265i));
    return abs((arg_1.xy >> ((~vec2<u32>(7657u, u_input.a) ^ vec2<u32>(29323u, 46063u)) % vec2<u32>(32u))) << (arg_2.d % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-850f * -2595f);
    var var_1 = Struct_1(0u, min(1i ^ (u_input.c ^ u_input.c), _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.c, func_1(vec4<f32>(510f, -640f, -1399f, 1532f), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16719u, 17u)], 17u)], -15867i, vec2<i32>(23586i, 0i), vec2<u32>(7822u, 0u)), -174f, -617f)), ~firstLeadingBit(u_input.c))), vec2<i32>(1475i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c, 0i, u_input.c) ^ ~u_input.c, 2147483647i)), abs(~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-490f, -509f, 633f)), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(36692u, 17u)], 1u) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], 17u)], 17u)], 1u, u_input.b) % vec3<u32>(32u)), Struct_1(4294967295u, u_input.c, vec2<i32>(2147483647i, u_input.c), vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(1u, 17u)])), _wgslsmith_div_u32(u_input.a, u_input.a))));
    let var_2 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8333u, 17u)], 16u)];
    let var_3 = Struct_1(58747u, select(-8712i, -2147483647i, !(41467u != select(79568u, global0[_wgslsmith_index_u32(1u, 17u)], false))), var_2.c, min(~vec2<u32>(var_2.d.x, u_input.a & var_1.a), vec2<u32>(~8010u, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(var_2.d.x), var_3.d.x), firstLeadingBit(select(-23443i, -31437i, false)), select(vec2<i32>(1i, reverseBits(1i)), -vec2<i32>(var_3.c.x, var_1.c.x), vec2<bool>(select(true, true, false), true)) >> ((vec2<u32>(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(1u, 17u)]), var_2.d.x | var_1.a) | var_3.d) % vec2<u32>(32u)), ~(-vec2<i32>(var_1.b, 6540i) | var_1.c));
}

