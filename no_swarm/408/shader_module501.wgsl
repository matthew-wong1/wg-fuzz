struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(180f, -355f, -1474f), vec3<i32>(1i, 2147483647i, 36308i), false, false));

var<private> global2: array<Struct_3, 15>;

var<private> global3: array<Struct_3, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-166f, global1.a.a.x)))) + _wgslsmith_f_op_f32(-global1.a.a.x)) + global1.a.a.x);
    global1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -1145f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f + -372f)), 1000f), vec3<i32>(_wgslsmith_div_i32(-2147483647i, ~2147483647i), -60381i, 9918i), global1.a.d | true, !global1.a.d));
    let var_1 = true;
    var var_2 = vec3<u32>(_wgslsmith_mod_u32(countOneBits(select(4294967295u, ~9007u, !var_1)), 1u), _wgslsmith_sub_u32(u_input.b.x ^ ~min(27538u, u_input.a), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a), ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(27592u, 29891u, 16122u))), u_input.b.x)), firstTrailingBit(0u));
    global1 = Struct_2(global1.a);
    return global1.a.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    let var_0 = 2147483647i;
    let var_1 = vec3<i32>(2147483647i, u_input.c, -23238i);
    global3 = array<Struct_3, 19>();
    var var_2 = arg_0.x;
    let var_3 = global0[_wgslsmith_index_u32(1u, 18u)];
    return Struct_2(Struct_1(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(max(1f, -1874f)), global1.a.a.x), vec3<i32>(1i, u_input.c, _wgslsmith_mult_i32(var_1.x & arg_1.e.b.x, 0i)), func_3(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.a.a.x))) == arg_1.e.a.x));
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = func_2(arg_0.zyz, global2[_wgslsmith_index_u32(4294967295u, 15u)], u_input.b.x);
    return global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 1u ^ ~(u_input.b.x ^ u_input.b.x)), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!vec4<bool>(true, any(vec4<bool>(global1.a.c, false, false, global1.a.c)), global1.a.c, all(select(vec2<bool>(global1.a.c, true), vec2<bool>(true, true), false))));
    global0 = array<vec2<f32>, 18>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.e.a.xx);
    var var_2 = var_0.b.x;
    let var_3 = Struct_3(func_2(select(!select(vec3<bool>(false, false, true), vec3<bool>(var_0.c.a.c, var_0.c.a.d, false), vec3<bool>(true, true, false)), vec3<bool>(true, var_0.a.a.c || true, true), all(vec3<bool>(global1.a.c, true, global1.a.d)) && true), Struct_3(func_2(!vec3<bool>(var_0.e.c, true, true), global3[_wgslsmith_index_u32(4294967295u, 19u)], 42853u), abs(var_0.b) >> ((var_0.b ^ vec4<u32>(var_0.b.x, 0u, var_0.b.x, 31288u)) % vec4<u32>(32u)), func_2(vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12474u, u_input.a), vec3<u32>(u_input.b.x, var_0.b.x, 4294967295u)), 15u)], var_0.b.x), _wgslsmith_mult_vec4_i32(var_0.d, -var_0.d), func_1(select(vec4<bool>(global1.a.c, global1.a.c, false, var_0.c.a.d), vec4<bool>(false, true, false, false), global1.a.d)).e), _wgslsmith_dot_vec2_u32(max(~u_input.b.zz, vec2<u32>(var_0.b.x, var_0.b.x)), var_0.b.yx | ~vec2<u32>(u_input.b.x, 6434u))), ~vec4<u32>(~75238u | ~var_0.b.x, 83564u, ~466u & ~u_input.a, ~42172u), Struct_2(global1.a), -vec4<i32>(_wgslsmith_dot_vec4_i32(~var_0.d, vec4<i32>(-55723i, 2147483647i, 6157i, global1.a.b.x)), _wgslsmith_mod_i32(func_1(vec4<bool>(true, true, true, true)).a.a.b.x, firstLeadingBit(-27217i)), ~1i, _wgslsmith_dot_vec4_i32(var_0.d, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 13287i, u_input.c, global1.a.b.x), vec4<i32>(-35384i, 7380i, -10706i, 0i)))), global1.a);
    global2 = array<Struct_3, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(var_3.b.x, _wgslsmith_add_u32(~var_0.b.x, abs(1u)) | _wgslsmith_mod_u32(var_0.b.x ^ var_3.b.x, var_0.b.x | 74918u), _wgslsmith_dot_vec3_u32(var_3.b.wxy, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, var_3.b.x), vec3<u32>(var_3.b.x, 25292u, 46862u))) ^ var_0.b.x), ~(~(~vec2<u32>(u_input.b.x, u_input.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.a.a.x, var_1.x, global1.a.d)) - _wgslsmith_f_op_f32(exp2(var_0.e.a.x))) + _wgslsmith_f_op_f32(func_1(vec4<bool>(var_0.e.c, false, true, true)).c.a.a.x - var_0.e.a.x)), var_1.x), var_0.d);
}

