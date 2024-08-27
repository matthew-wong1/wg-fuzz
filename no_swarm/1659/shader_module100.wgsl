struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 1> = array<u32, 1>(33415u);

var<private> global2: vec3<f32> = vec3<f32>(-487f, -144f, 187f);

var<private> global3: array<u32, 14>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> vec2<i32> {
    var var_0 = ~(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(3695u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], 1u)], 47095u, 16448u), vec4<u32>(global1[_wgslsmith_index_u32(35307u, 1u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10374u, 1u)], 1u)], 14u)], 0u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65084u, 1u)], 1u)], 14u)])), abs(~vec4<u32>(u_input.a, 1u, u_input.a, global0.c.x))) | ~_wgslsmith_add_vec4_u32(vec4<u32>(120647u, global0.c.x, 4294967295u, 37948u), ~vec4<u32>(0u, 0u, 0u, 0u)));
    var var_1 = global0.b;
    let var_2 = vec3<bool>(all(vec3<bool>(arg_1, true, true)), arg_1, !(any(vec3<bool>(false, false, arg_1)) & select(any(vec2<bool>(false, arg_1)), arg_1, all(vec4<bool>(false, arg_1, arg_1, false)))));
    var_0 = vec4<u32>(0u, ~(global1[_wgslsmith_index_u32(~(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 1u)] << (global1[_wgslsmith_index_u32(1397u, 1u)] % 32u)), 1u)] << (firstTrailingBit(~1u) % 32u)), ~0u, min(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(1u, global0.c.x, u_input.b.x), ~vec3<u32>(0u, global0.c.x, var_0.x)), vec3<u32>(11417u, countOneBits(var_0.x), var_0.x | 126217u)), ~(~(~var_0.x))));
    let var_3 = arg_0.x;
    return global0.a;
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(~countOneBits(global1[_wgslsmith_index_u32(arg_0.b.c.x >> (28034u % 32u), 1u)]), _wgslsmith_div_u32(~(~u_input.b.x), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(23496u, _wgslsmith_add_u32(u_input.b.x, global0.c.x)), 14u)])), 1u, global3[_wgslsmith_index_u32(u_input.a, 14u)]);
    global0 = Struct_1(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(select(arg_0.b.a, u_input.d, vec2<bool>(false, false)), vec2<i32>(global0.a.x, -2147483647i), func_3(arg_0.c, false)), _wgslsmith_add_i32(2147483647i, select(-2147483647i, -17846i, arg_0.c.x < -2704f)) | 2898i, _wgslsmith_mult_vec3_u32(var_0 ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, global0.c.x), vec3<u32>(43588u, arg_0.b.c.x, 4294967295u)), arg_0.b.c) >> (max(arg_0.a.c, ~select(arg_0.b.c, vec3<u32>(var_0.x, u_input.a, arg_0.b.c.x), false)) % vec3<u32>(32u)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(arg_0.c, arg_0.c))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), -663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-350f, 412f)) * arg_0.c.x)))));
    let var_1 = vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false))), true);
    global0 = arg_0.a;
    return 4294967295u;
}

fn func_4(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.a, vec2<i32>(global0.a.x, global0.b)), -vec2<i32>(global0.b, 0i)), 23065i), 2147483647i, abs(abs(global0.c << (vec3<u32>(global0.c.x, 93459u, 64579u) % vec3<u32>(32u))))), Struct_1(u_input.d, global0.a.x, vec3<u32>(arg_0.x, max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50760u, 14u)], 14u)], global1[_wgslsmith_index_u32(arg_0.x, 1u)]), ~arg_0.x) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(global0.c.x, 20996u, u_input.b.x), global0.c) % vec3<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, -1000f), vec3<f32>(global2.x, -426f, -260f), vec3<bool>(false, true, false))) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 457f, global2.x), vec3<f32>(global2.x, 301f, global2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global2.x, 989f) * vec3<f32>(global2.x, 124f, global2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -1409f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1509f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3780f + _wgslsmith_f_op_f32(trunc(1000f))) + _wgslsmith_f_op_f32(-149f - _wgslsmith_f_op_f32(sign(849f)))) * global2.x));
    var var_1 = -_wgslsmith_add_i32(firstTrailingBit(-abs(u_input.c)), 0i);
    var_1 = min(global0.b, firstTrailingBit(global0.a.x));
    var_0 = Struct_2(Struct_1(func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1319f, var_0.d, global2.x))), vec3<f32>(1927f, var_0.c.x, -447f), vec3<bool>(true, false, false))), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))), 2147483647i, var_0.a.c), var_0.b, vec3<f32>(-181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-var_0.c.x))), 581f);
    var_1 = i32(-1i) * -2147483647i;
    return var_0.b;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = reverseBits(4294967295u);
    var var_1 = Struct_1(~(-u_input.d), -39393i, global0.c);
    var_1 = Struct_1(-abs(u_input.d), -63857i, firstTrailingBit(global0.c) ^ _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(min(var_1.c, vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 1u)], global1[_wgslsmith_index_u32(global0.c.x, 1u)], var_1.c.x)), ~global0.c), var_1.c));
    global2 = arg_0;
    let var_2 = func_4(vec2<u32>(4294967295u, ~1u ^ select(u_input.b.x, func_2(Struct_2(Struct_1(u_input.d, global0.b, var_1.c), Struct_1(vec2<i32>(global0.b, global0.b), var_1.b, vec3<u32>(var_1.c.x, 4294967295u, 0u)), arg_0, arg_0.x)), true)));
    return Struct_2(var_2, var_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), global2.x) + arg_0), _wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(_wgslsmith_f_op_f32(899f + -1277f), _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1973f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 14>();
    var var_0 = global0.c.xy;
    var var_1 = (global0.a.x << (global1[_wgslsmith_index_u32(min((global0.c.x & 4294967295u) & global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 13173u), 1u)], ~u_input.b.x), 1u)] % 32u)) < global0.b;
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -907f, global2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x))) - vec3<f32>(372f, _wgslsmith_f_op_f32(min(232f, global2.x)), 239f)))));
    let var_3 = !(!vec3<bool>(var_2.b.a.x == ~var_2.a.b, any(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(~47827u);
}

