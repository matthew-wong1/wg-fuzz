struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<u32, 19> = array<u32, 19>(35496u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 1u, 74454u, 72311u, 1u, 4294967295u, 4294967295u, 3271u, 33415u, 15016u, 14362u, 0u, 16496u, 0u, 22633u);

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(vec4<u32>(4294967295u, 4294967295u, 28811u, 0u), vec3<f32>(1820f, -1038f, -2477f), vec3<bool>(true, false, true), false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    return 333f;
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(1u, ~global3.a.x)), 51375u), global2.a.x, arg_1), 28u)];
    let var_1 = Struct_4(Struct_2(min(global3.a, ~global2.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, 1823f) + var_0.a.b) + var_0.c.zww), select(select(vec3<bool>(global2.c.x, true, false), select(vec3<bool>(global2.c.x, false, true), global2.c, true), global3.c), var_0.a.c, !vec3<bool>(global2.d, true, global3.c.x)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 28u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.x, -344f, -195f, global3.b.x), vec4<f32>(-809f, -182f, global2.b.x, global2.b.x), vec4<bool>(global3.c.x, false, true, false)))), Struct_4(Struct_2(var_0.a.a, global3.b, var_0.a.c, var_0.d), _wgslsmith_f_op_f32(round(444f)), _wgslsmith_f_op_vec4_f32(var_0.c * var_0.c), var_0.e.a, Struct_1(var_0.e.b.x, var_0.e.b)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(global2.b.x, var_0.c.x), 1944f)), vec4<f32>(192f, -507f, _wgslsmith_f_op_f32(abs(-1084f)), -822f), var_0.e.b.x, Struct_1(global3.c.x | !any(var_0.e.b), vec4<bool>(!all(vec4<bool>(global3.c.x, var_0.d, global2.d, true)), false, select(false, any(var_0.e.b), all(vec4<bool>(var_0.e.b.x, global3.c.x, false, true))), false)));
    var var_2 = all(!var_0.e.b.zw);
    let var_3 = global0[_wgslsmith_index_u32(51551u, 28u)];
    global1 = array<u32, 19>();
    return !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(var_1.a.b.x + -815f)))) < _wgslsmith_div_f32(global3.b.x, global3.b.x));
}

fn func_1(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = ~u_input.b.x == u_input.b.x;
    global1 = array<u32, 19>();
    let var_1 = !select(!select(vec4<bool>(false, global2.d, true, global3.c.x), vec4<bool>(false, global2.d, true, global3.d), func_2(u_input.b.x, 23578u)), select(!select(vec4<bool>(global2.c.x, global3.c.x, false, global2.c.x), vec4<bool>(true, global2.d, global3.d, global3.c.x), false), !vec4<bool>(false, global2.c.x, global2.d, true), any(vec2<bool>(global3.c.x, global3.c.x))), !select(vec4<bool>(global2.c.x, false, global3.c.x, false), vec4<bool>(global2.d, global2.c.x, true, true), vec4<bool>(true, global3.c.x, true, true)));
    let var_2 = global3.c;
    var var_3 = Struct_3(-684f, Struct_1(all(!var_1), var_1), Struct_1(var_2.x, !var_1), Struct_1(all(global3.c) & true, !vec4<bool>(!var_1.x, global3.c.x, arg_0.x > -13236i, true)), Struct_2(global2.a, global2.b, global2.c, !global3.c.x));
    return select(vec4<bool>(global2.c.x, var_3.d.a, all(vec2<bool>(var_1.x, !var_2.x)), !(_wgslsmith_f_op_f32(trunc(var_3.a)) > _wgslsmith_f_op_f32(f32(-1f) * -1227f))), !(!select(var_3.b.b, !var_3.c.b, global2.d)), !select(vec4<bool>(true, global2.a.x >= 4294967295u, false, true), !select(vec4<bool>(true, false, false, var_2.x), var_1, vec4<bool>(var_2.x, global2.d, false, var_3.d.a)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x * global2.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(min(global2.b.x, 469f)), !global3.c.x)), -521f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, 443f, 919f, global3.b.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(102f, -1769f)) * _wgslsmith_f_op_f32(select(-1000f, -136f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -414f), -1304f, global3.b.x)));
    global2 = Struct_2(~(~(~(~vec4<u32>(global2.a.x, u_input.c.x, global1[_wgslsmith_index_u32(31347u, 19u)], u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1993f), var_0.x, var_0.x) * vec3<f32>(-741f, _wgslsmith_div_f32(global2.b.x, -714f), _wgslsmith_div_f32(202f, var_0.x)))), global3.c, true);
    let var_1 = Struct_1(global2.d, select(!select(!vec4<bool>(global3.d, false, global3.c.x, true), select(vec4<bool>(global2.d, global3.c.x, false, false), vec4<bool>(global2.c.x, true, false, global2.d), true), select(vec4<bool>(global3.d, global3.d, global2.d, global2.c.x), vec4<bool>(false, true, true, global2.c.x), vec4<bool>(false, true, false, global2.c.x))), select(!(!vec4<bool>(global3.d, global3.c.x, global2.d, false)), select(!vec4<bool>(global2.c.x, true, global3.d, global2.c.x), vec4<bool>(false, true, true, false), true), func_1(-u_input.b.xz)), !any(select(vec4<bool>(true, global2.c.x, global3.c.x, global3.d), vec4<bool>(global3.d, true, false, false), true))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.b.x ^ -12005i, -1i, u_input.b.x, ~u_input.b.x)), ~(~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b.x, -14361i, 1i, u_input.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -66510i, u_input.b.x), u_input.b))));
    var var_4 = global0[_wgslsmith_index_u32(~61221u, 28u)];
    global0 = array<Struct_4, 28>();
    var_4 = global0[_wgslsmith_index_u32(~(~max(~firstTrailingBit(63500u), 66660u)), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_dot_vec4_i32(u_input.b, var_3) ^ countOneBits(~u_input.b.x)));
}

