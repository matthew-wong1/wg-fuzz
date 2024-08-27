struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 25>;

var<private> global2: array<vec2<f32>, 4>;

var<private> global3: Struct_4;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1() -> i32 {
    let var_0 = i32(-1i) * -25346i;
    global1 = array<u32, 25>();
    return (-abs(~global3.a.d.x) ^ 0i) << (1u % 32u);
}

fn func_3() -> bool {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3.a.d.x, 0i, 2147483647i, -35447i), u_input.a), vec4<i32>(global3.a.d.x, u_input.b, 4743i, global3.a.d.x)) | ~max(vec4<i32>(1i, global3.a.d.x, 1i, u_input.b), u_input.a), _wgslsmith_mod_vec4_i32(-global0.a << ((vec4<u32>(u_input.d.x, 37779u, u_input.d.x, 53130u) << (vec4<u32>(u_input.d.x, 30271u, 8996u, global1[_wgslsmith_index_u32(0u, 25u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-u_input.c.x, ~16861i, _wgslsmith_clamp_i32(-1i, 0i, global0.a.x), reverseBits(-1i))), max(u_input.a, ~vec4<i32>(1540i, 2147483647i, 61220i, global0.b.d.x))), Struct_1(_wgslsmith_dot_vec4_i32(abs(global0.a), select(global0.a, vec4<i32>(u_input.a.x, global3.a.d.x, global3.a.d.x, 2147483647i), vec4<bool>(global0.c, false, true, global3.a.a))) == _wgslsmith_div_i32(max(8600i, u_input.b), global0.a.x), vec2<f32>(global0.b.b.x, 2674f), _wgslsmith_f_op_vec4_f32(abs(global0.b.c)), vec2<i32>(~(-u_input.b), 2147483647i)), true);
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(var_0.b.d.x, -46275i & _wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(var_0.a.x, -33065i, -2147483647i)), var_0.a.x), global0.b.d.x, 23447i);
    var_0 = Struct_2(~vec4<i32>(1i, (u_input.c.x & var_1.x) & 19140i, firstTrailingBit(_wgslsmith_div_i32(global0.a.x, global0.b.d.x)), 7175i), global3.a, (var_0.b.c.x != 831f) && (var_1.x != 2201i));
    let var_2 = ~(-var_0.a.x) << (0u % 32u);
    global0 = Struct_2(~(~vec4<i32>(var_1.x, reverseBits(-180i), _wgslsmith_mult_i32(-2147483647i, var_2), u_input.c.x ^ 26388i)), Struct_1(true, global0.b.c.wz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b.c - var_0.b.c))), -var_1.zx), firstTrailingBit(u_input.d.x | ~0u) <= u_input.d.x);
    return any(select(select(select(vec2<bool>(var_0.c, global0.c), vec2<bool>(global3.a.a, true), vec2<bool>(false, true)), vec2<bool>(var_0.b.a, true), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_f_op_f32(min(var_0.b.b.x, global0.b.c.x)) == _wgslsmith_f_op_f32(max(global3.a.c.x, global3.a.b.x)), select(!var_0.b.a, true, global3.a.a || true)), all(!select(vec2<bool>(global3.a.a, false), vec2<bool>(false, var_0.c), global3.a.a))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: u32) -> i32 {
    var var_0 = ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(~(~arg_1.x) << (arg_3 % 32u)), 25u)], 25u)];
    let var_1 = Struct_3(vec4<bool>(true, true, func_3() != global0.c, global0.b.a), arg_1.x, vec2<bool>(all(vec3<bool>(true, global3.a.a, false || global3.a.a)), any(vec2<bool>(true, true)) | true));
    global2 = array<vec2<f32>, 4>();
    global1 = array<u32, 25>();
    var var_2 = abs(arg_2 >> (1u % 32u));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec4<i32>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.a.b.x)) * -1000f), _wgslsmith_add_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 25u)], u_input.d.x, 1u, global1[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 1u, 4294967295u, u_input.d.x), vec4<u32>(10052u, global1[_wgslsmith_index_u32(580u, 25u)], u_input.d.x, 1u))), func_1(), ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(u_input.d.x, 25u)])), ((0i >> (u_input.d.x % 32u)) & _wgslsmith_clamp_i32(10689i, 0i, global3.a.d.x)) ^ _wgslsmith_sub_i32(~(-1404i), abs(u_input.b)), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global0.a, vec4<i32>(-2147483647i, 0i, -63250i, global3.a.d.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.d.x, 0i, global3.a.d.x, 1i), global0.a, vec4<i32>(1i, 3696i, u_input.a.x, 1i))), _wgslsmith_clamp_i32(firstTrailingBit(1i), -(~global0.b.d.x), 41486i)), global0.b, select(global3.a.b.x >= global3.a.b.x, true, !global3.a.a));
    global3 = Struct_4(Struct_1(all(select(vec3<bool>(false, false, false), select(vec3<bool>(global3.a.a, false, false), vec3<bool>(global0.c, false, false), global3.a.a), vec3<bool>(false, true, global0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(u_input.d.x, 4u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.c.zw - vec2<f32>(global0.b.b.x, global0.b.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a.b.x, -627f))), 776f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.b.c.x, global3.a.b.x))), _wgslsmith_f_op_f32(min(global0.b.c.x, 900f))), abs(global0.b.d)));
    var var_0 = Struct_4(global3.a);
    let var_1 = !any(select(select(vec2<bool>(false, var_0.a.a), select(vec2<bool>(global3.a.a, false), vec2<bool>(global0.c, false), false), !vec2<bool>(global3.a.a, true)), vec2<bool>(false, var_0.a.c.x == global3.a.b.x), !vec2<bool>(global3.a.a, false)));
    let var_2 = ~select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 25u)], global1[_wgslsmith_index_u32(u_input.d.x, 25u)]), ~vec2<u32>(1u, u_input.d.x), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 49021u), u_input.d)) >> (u_input.d % vec2<u32>(32u)), vec2<u32>(u_input.d.x, u_input.d.x), !vec2<bool>(!global3.a.a, false));
    global1 = array<u32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.b.x);
}

