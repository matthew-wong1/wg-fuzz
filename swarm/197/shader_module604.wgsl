struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 327f;

var<private> global1: vec3<i32> = vec3<i32>(30881i, 1i, 5237i);

var<private> global2: Struct_1 = Struct_1(vec2<f32>(297f, 2220f));

var<private> global3: array<Struct_4, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    var var_0 = countOneBits(_wgslsmith_div_vec4_u32(~(vec4<u32>(arg_2.b, arg_2.b, 4294967295u, 3546u) & vec4<u32>(u_input.a, 4294967295u, u_input.a, arg_3.b)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_3.b, arg_3.b, 1u, u_input.a), abs(vec4<u32>(26573u, 4277u, u_input.a, arg_3.b))))) & firstLeadingBit(~(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, arg_3.b))));
    let var_1 = _wgslsmith_mod_u32(max(50910u, ~1u ^ arg_2.b) & 1u, u_input.a);
    var var_2 = select(select(select(!(!vec4<bool>(true, arg_1.a.x, arg_1.a.x, false)), select(select(vec4<bool>(arg_2.a.a.x, arg_3.a.a.x, arg_1.a.x, arg_2.a.a.x), arg_2.a.a, arg_3.a.a), !arg_1.a, vec4<bool>(false, arg_1.a.x, false, false)), vec4<bool>(var_1 <= 0u, arg_2.a.a.x, arg_1.a.x, true)), select(arg_1.a, !arg_2.a.a, false), select(vec4<bool>(arg_2.a.a.x || true, true, !arg_1.a.x, true), arg_1.a, any(vec2<bool>(false, false)))), vec4<bool>(any(select(arg_2.a.a.zx, !arg_1.a.yw, select(vec2<bool>(arg_3.a.a.x, arg_1.a.x), arg_2.a.a.wx, vec2<bool>(arg_1.a.x, arg_3.a.a.x)))), true, all(select(vec3<bool>(true, true, true), select(arg_1.a.zwx, arg_1.a.yxy, arg_2.a.a.x), select(vec3<bool>(false, false, arg_1.a.x), arg_1.a.xzx, arg_1.a.wwy))), false == all(!arg_3.a.a.zw)), false);
    var var_3 = -_wgslsmith_div_vec3_i32(-(max(vec3<i32>(global1.x, 0i, global1.x), vec3<i32>(global1.x, -28638i, global1.x)) << (var_0.zzz % vec3<u32>(32u))), vec3<i32>(global1.x, 33767i, _wgslsmith_div_i32(global1.x, max(arg_0.x, arg_0.x))));
    var var_4 = ~_wgslsmith_mult_vec3_i32(~(-_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, arg_0.x), vec3<i32>(global1.x, -1i, 2147483647i))), -(vec3<i32>(global1.x, arg_0.x, -46145i) >> (vec3<u32>(0u, arg_3.b, var_1) % vec3<u32>(32u))) & vec3<i32>(arg_0.x, 0i, select(global1.x, 1i, false)));
    return -638f;
}

fn func_2() -> vec2<f32> {
    var var_0 = vec2<i32>(abs(global1.x << (~(~48474u) % 32u)), 1i);
    var_0 = global1.yx;
    let var_1 = true;
    var var_2 = vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -979f), 280f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global2.a.x)), global2.a.x, true)));
    let var_3 = global1.x;
    return _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(~(-global1.yy), Struct_3(vec4<bool>(var_1, var_1, true, false)), Struct_4(Struct_3(vec4<bool>(var_1, var_1, var_1, var_1)), 55514u), global3[_wgslsmith_index_u32(~(~61644u), 32u)])), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.a)) * global2.a) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 747f) - vec2<f32>(170f, var_2.x))))) + global2.a)));
}

fn func_1() -> StorageBuffer {
    global3 = array<Struct_4, 32>();
    let var_0 = Struct_2(307f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(149f)))), Struct_1(_wgslsmith_f_op_vec2_f32(func_2())), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, -1460f) - global2.a), vec2<f32>(312f, global2.a.x)))));
    let var_1 = Struct_2(var_0.a, var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(1817f + -178f))))));
    var var_2 = 1i & (~_wgslsmith_clamp_i32(global1.x, -2147483647i, _wgslsmith_div_i32(-1198i, 27502i)) ^ -15919i);
    var var_3 = var_0.c;
    return StorageBuffer(2147483647i, reverseBits(vec4<u32>(4294967295u, ~81367u, ~(u_input.a | u_input.a), 0u)), var_0.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

