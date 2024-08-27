struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-588f, -1082f, 214f, 1000f);

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(1073f, vec3<i32>(i32(-2147483648), 0i, -1i), vec2<i32>(0i, -36489i), vec4<u32>(27282u, 30254u, 0u, 91600u));

var<private> global4: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = -660f;
    var var_1 = Struct_1(global0.x, ~global3.b, global3.c, u_input.c);
    let var_2 = Struct_1(_wgslsmith_div_f32(global3.a, global3.a), -abs(vec3<i32>(abs(1i), u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 31590i), vec3<i32>(-40338i, 2147483647i, var_1.b.x)))), reverseBits(global3.c), vec4<u32>(firstTrailingBit(u_input.c.x), 4294967295u, global3.d.x | ((var_1.d.x | 24737u) >> (reverseBits(global3.d.x) % 32u)), ~countOneBits(~4294967295u)));
    global2 = ~_wgslsmith_dot_vec2_i32(~(~(-vec2<i32>(74762i, var_2.b.x))), _wgslsmith_div_vec2_i32(vec2<i32>(-var_1.c.x, ~u_input.b), firstTrailingBit(_wgslsmith_mod_vec2_i32(var_2.b.zx, vec2<i32>(u_input.b, 17387i)))));
    global1 = array<vec3<u32>, 25>();
    return 186f;
}

fn func_2() -> f32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(func_3()), vec3<i32>(_wgslsmith_clamp_i32(-(i32(-1i) * -43007i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global3.b.x, -1i, u_input.b), firstTrailingBit(vec4<i32>(2147483647i, u_input.b, 1i, 0i))), i32(-1i) * -global3.c.x), 2351i, min(-1i, -1i)), vec2<i32>(abs(global3.c.x), 45532i), ~u_input.c);
    return -1311f;
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x);
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a * -1608f) * _wgslsmith_div_f32(178f, 370f))), -368f)), global3.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_div_f32(-525f, _wgslsmith_f_op_f32(-global3.a))))));
    global1 = array<vec3<u32>, 25>();
    let var_1 = Struct_1(global3.a, select(vec3<i32>(global3.b.x, global3.b.x, u_input.b), abs(min(vec3<i32>(-1i, global3.c.x, global3.c.x), global3.b)) << (vec3<u32>(92622u, 4294967295u << (u_input.c.x % 32u), u_input.a) % vec3<u32>(32u)), any(vec2<bool>(true, true))), abs(global3.c), global3.d);
    let var_2 = var_1.c.x;
    return ~var_1.b;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_1(global0.x, -vec3<i32>(reverseBits(global3.c.x), -u_input.b, u_input.b), firstLeadingBit(vec2<i32>(-23444i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global3.b.x), vec2<i32>(u_input.b, 2147483647i)) >> (reverseBits(0u) % 32u))), _wgslsmith_sub_vec4_u32(~(~u_input.c), vec4<u32>(~firstTrailingBit(4294967295u), 1u, 3745u, _wgslsmith_clamp_u32(0u ^ global3.d.x, arg_1.x, 10581u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 73050u;
    let var_1 = global3.b;
    global2 = var_1.x | (13337i ^ -global3.c.x);
    let var_2 = global3.a;
    var var_3 = vec3<f32>(-2222f, -1000f, _wgslsmith_f_op_f32(func_4(global0.x <= _wgslsmith_f_op_f32(1397f * -671f), global1[_wgslsmith_index_u32(u_input.c.x, 25u)], max(_wgslsmith_add_vec3_i32(-global3.b, -vec3<i32>(18172i, 2147483647i, 0i)), func_1()))));
    let var_4 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(21873i, ~(-2147483647i), -1i, u_input.b), (vec4<i32>(1i, u_input.b, global3.c.x, 2147483647i) >> (~vec4<u32>(global3.d.x, u_input.a, 57517u, 77003u) % vec4<u32>(32u))) >> (vec4<u32>(abs(83331u), countOneBits(4294967295u), 1u, select(global3.d.x, var_0, true)) % vec4<u32>(32u))), -1i | _wgslsmith_clamp_i32(countOneBits(_wgslsmith_div_i32(-22465i, var_1.x)), select(_wgslsmith_clamp_i32(var_1.x, var_1.x, global3.c.x), var_1.x, true), -abs(var_1.x)), func_1().x, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mult_i32(0i, 1i)), 1i));
    let var_5 = select(vec4<bool>(false, true, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, global3.d.x, var_0, 4294967295u), vec4<u32>(4332u, 1u, var_0, global3.d.x)) >= _wgslsmith_div_u32(u_input.a, 1u), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), u_input.a < _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.d.x, 71677u, var_0), vec3<u32>(63201u, 4294967295u, 0u)), 43625u));
    global2 = ~_wgslsmith_dot_vec4_i32(var_4, firstTrailingBit(vec4<i32>(30891i, ~20266i, 1i, -6120i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, 38174u, 33641u), vec3<u32>(global3.d.x, 42158u, var_0)), ~(0u << (global3.d.x % 32u))), ~u_input.c.wz), -abs(abs(~vec4<i32>(8426i, global3.c.x, u_input.b, -24881i))), vec3<u32>(127830u, u_input.c.x, countOneBits(reverseBits(global3.d.x))), _wgslsmith_f_op_vec2_f32(global0.yy * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1682f, -573f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.wx, vec2<f32>(var_3.x, -627f)))), ~var_0 > _wgslsmith_dot_vec4_u32(global3.d, vec4<u32>(u_input.c.x, 1u, 4294967295u, var_0))))), u_input.c.xz);
}

