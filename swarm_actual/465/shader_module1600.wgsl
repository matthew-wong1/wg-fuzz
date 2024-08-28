struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    global0 = 2147483647i;
    global0 = -countOneBits(-2147483647i);
    global0 = -28994i;
    let var_0 = _wgslsmith_sub_i32(reverseBits(abs(-(u_input.a.x ^ u_input.a.x))), 1i);
    return _wgslsmith_add_u32(countOneBits(1u), ~38411u);
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    let var_0 = ~(~14742u);
    return Struct_2(Struct_1(func_3(Struct_1(false, vec4<u32>(4294967295u, u_input.b.x, var_0, u_input.b.x), -1153f), Struct_1(true, vec4<u32>(u_input.b.x, var_0, 25249u, var_0), -190f), u_input.b.x & 11742u, Struct_1(false, vec4<u32>(u_input.b.x, u_input.b.x, 12295u, 11812u), 117f)) >= ~23923u, ~(~(vec4<u32>(10443u, 0u, 36504u, 33749u) >> (vec4<u32>(var_0, 18451u, u_input.b.x, var_0) % vec4<u32>(32u)))), -281f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1858f, -1251f, true)), _wgslsmith_f_op_f32(sign(1675f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1321f - 1738f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(535f)))), -1741f, 1392f), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-29068i), -2147483647i, -2831i, firstLeadingBit(u_input.c)), abs(vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 45890i), vec3<i32>(-2147483647i, u_input.a.x, 2354i)), u_input.a.x, 2147483647i))), -u_input.d.x, _wgslsmith_mult_i32(~_wgslsmith_mult_i32(-757i, u_input.d.x) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i) >> (vec2<u32>(var_0, u_input.b.x) % vec2<u32>(32u)), reverseBits(u_input.a)), _wgslsmith_mult_i32(-u_input.c, ~(-58607i))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    global0 = 21308i;
    let var_0 = vec2<bool>(true, !(arg_2.a == false) & true);
    let var_1 = 0u;
    var var_2 = Struct_1(false, ~(~(~(~arg_2.b))), -848f);
    let var_3 = _wgslsmith_f_op_f32(floor(1093f));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-60073i, firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), Struct_1(any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))) == true, ~vec4<u32>(select(u_input.b.x, u_input.b.x, false), u_input.b.x, ~24800u, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1385f))) - _wgslsmith_div_f32(-1038f, 1141f))));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.b.x, ~abs(max(45489u, u_input.b.x)), 57216u, _wgslsmith_add_u32(1u, var_0.a.b.x)), ~var_0.a.b);
    var var_2 = global1[_wgslsmith_index_u32(15504u, 32u)];
    var var_3 = -_wgslsmith_div_vec3_i32(vec3<i32>(-21139i, -u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.d.x, ~8481i));
    var var_4 = !(!vec4<bool>(func_1(1i >> (var_0.a.b.x % 32u), var_0.a.b.x, global1[_wgslsmith_index_u32(var_2.b.x & 58685u, 32u)]).a.a, false, any(select(vec2<bool>(true, false), vec2<bool>(true, var_2.a), vec2<bool>(false, var_0.a.a))), true));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(select(1596f, var_0.b.x, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), var_2.c, _wgslsmith_f_op_f32(max(1210f, 493f)))), vec3<bool>(false, var_4.x, var_0.a.a))));
}

