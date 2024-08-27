struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 10065u), -976f, vec2<u32>(0u, 1u), -44992i, 0i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> vec2<u32> {
    let var_0 = firstTrailingBit(global1.d);
    global1 = Struct_1(~(~vec2<u32>(1u, 1u) ^ (abs(vec2<u32>(u_input.c.x, 1u)) ^ (global1.a ^ vec2<u32>(u_input.d.x, 33783u)))), global1.b, ~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1.a.x, 4294967295u) ^ vec2<u32>(global1.a.x, u_input.b.x), vec2<u32>(global1.a.x, global1.a.x)), reverseBits(~global1.c)), global1.e, ~(-_wgslsmith_div_i32(var_0, 1i)) >> (~global1.a.x % 32u));
    let var_1 = global0[_wgslsmith_index_u32(global1.c.x, 4u)];
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 4u)];
    global0 = array<Struct_1, 4>();
    return ~global1.a;
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(func_1().x, 4u)];
    global1 = global0[_wgslsmith_index_u32(1u, 4u)];
    let var_1 = -1000f;
    var var_2 = Struct_1(var_0.a & vec2<u32>(0u, 1u), var_0.b, _wgslsmith_mod_vec2_u32(global1.c, vec2<u32>(~(~0u), 15237u)), _wgslsmith_mod_i32(-global1.d, var_0.d), -23983i);
    let var_3 = Struct_1(global1.c, _wgslsmith_f_op_f32(-var_1), ~func_1() & reverseBits(~_wgslsmith_clamp_vec2_u32(u_input.b.yx, global1.c, var_0.c)), abs(-1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(var_2.d, var_2.d, var_2.d)), ~vec3<i32>(-2147483647i, -2147483647i, var_0.e)), vec3<i32>(~var_2.d, var_0.e << (u_input.b.x % 32u), -var_0.d)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.d, -47669i, var_0.d, 1i), -vec4<i32>(global1.d, global1.d, -32863i, -10256i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.e, 16258i, var_2.e, global1.e), vec4<i32>(0i, var_0.e, global1.d, 4486i)))));
    return -879f;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(vec2<u32>(u_input.b.x, 1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(488f, arg_0.b, true)))), _wgslsmith_f_op_f32(func_3(true)))))), arg_0.c, arg_0.e, arg_0.d);
    let var_1 = ~max(69483u, u_input.d.x);
    var var_2 = ~vec4<i32>(_wgslsmith_mod_i32(-(74245i ^ arg_0.e), abs(~21747i)), var_0.e | 49008i, global1.e, min(~var_0.d, countOneBits(arg_0.e)));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(var_0.c.x), var_1), 4u)];
    var var_4 = Struct_1(var_3.a, -1714f, ~(~_wgslsmith_sub_vec2_u32(~var_0.c, ~var_0.a)), _wgslsmith_mod_i32(abs(-13506i), arg_0.d), -6715i);
    return -5385i;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = !vec2<bool>(!select(any(vec2<bool>(arg_0.x, true)), true, arg_0.x), global1.d > 1i);
    let var_1 = arg_2;
    var var_2 = firstTrailingBit((arg_2.a.x << (~abs(4294967295u) % 32u)) >> (max(abs(abs(arg_1.a.x)), firstLeadingBit(global1.a.x)) % 32u));
    global1 = Struct_1(arg_1.c, 909f, min(firstTrailingBit(~(vec2<u32>(u_input.b.x, global1.c.x) >> (global1.c % vec2<u32>(32u)))), ~(~(~vec2<u32>(arg_1.a.x, arg_2.a.x)))), ~arg_2.e, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.d, -5446i), vec2<i32>(arg_1.e, arg_2.d)), vec2<i32>(var_1.e, global1.d)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.e, 0i, global1.e), vec3<i32>(-2147483647i, 2147483647i, var_1.d))), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(20875i, abs(var_1.e)))));
    var var_3 = arg_1;
    return arg_3 > arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(-abs(-global1.d), min(global1.d, 51829i)), abs(global1.d), _wgslsmith_sub_i32(global1.d & 2147483647i, -(_wgslsmith_mult_i32(2460i, global1.d) ^ -global1.d)), _wgslsmith_mod_i32(~(~_wgslsmith_mod_i32(38702i, global1.d)), 1i));
    let var_1 = vec3<bool>(true, true, func_4(vec2<bool>(true, true), Struct_1(func_1() << (vec2<u32>(u_input.d.x, 10291u) % vec2<u32>(32u)), global1.b, vec2<u32>(func_1().x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.c.x, global1.a.x), vec3<u32>(global1.c.x, 38652u, global1.a.x))), min(~var_0.x, func_2(global0[_wgslsmith_index_u32(global1.a.x, 4u)])), global1.e), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 36504u), 0u), 4u)], global1.b));
    var var_2 = select(var_1, vec3<bool>(all(!vec3<bool>(var_1.x, var_1.x, var_1.x)), true, false), vec3<bool>(all(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), select(_wgslsmith_f_op_f32(min(global1.b, -222f)) > _wgslsmith_f_op_f32(f32(-1f) * -187f), any(!vec4<bool>(var_1.x, true, true, var_1.x)), true || (global1.e == 20956i)), all(vec4<bool>(var_1.x, any(var_1.xy), var_1.x | var_1.x, true))));
    let var_3 = Struct_1(~vec2<u32>(global1.a.x, 0u) & ~reverseBits(~vec2<u32>(4294967295u, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.b, 1000f)))), vec2<u32>(~(global1.c.x >> (1u % 32u)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(93189u, u_input.a, global1.c.x), vec3<u32>(u_input.b.x, 13184u, u_input.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(30349u, 53320u, 10489u), vec3<u32>(17381u, 0u, global1.a.x)))), select(17840i, -6749i, false), 0i);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1536f * _wgslsmith_f_op_f32(max(340f, var_4.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(-1930f - 1011f))), 1854f, -1116f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, -1220f, var_3.b)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.b, var_3.b, _wgslsmith_f_op_f32(var_4.b * var_4.b), 641f), vec4<f32>(var_3.b, 2010f, 578f, _wgslsmith_f_op_f32(151f + var_3.b))))), -_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(i32(-1i) * -7499i, ~1i, _wgslsmith_div_i32(global1.e, -1i), _wgslsmith_mult_i32(-1i, 10297i))), vec2<u32>(_wgslsmith_dot_vec3_u32(~u_input.c.zww, _wgslsmith_add_vec3_u32(u_input.c.wyy, vec3<u32>(0u, var_3.a.x, var_4.c.x))) | var_3.c.x, u_input.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_4.b), var_3.b, _wgslsmith_f_op_f32(var_4.b * global1.b)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, var_3.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, var_3.b, 1111f) * vec3<f32>(1117f, -312f, 273f))), vec3<bool>(var_1.x, true, true)))));
}

