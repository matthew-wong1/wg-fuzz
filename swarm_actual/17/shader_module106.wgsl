struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let var_0 = Struct_1(-(~u_input.d.x) | arg_0, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 11370i, 26905i), vec3<i32>(-9501i, 1i, u_input.e)), u_input.d.xwx), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.d.x, arg_0, 2147483647i)), vec3<i32>(-2850i, ~(-9748i), 0i))), -499f);
    return u_input.b;
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    global0 = array<Struct_2, 32>();
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_0));
    return -826f;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(433f, 545f, 1000f) * vec3<f32>(-248f, 1097f, 764f)), _wgslsmith_div_vec3_f32(vec3<f32>(1889f, -153f, 1242f), vec3<f32>(-281f, 286f, -345f)))) + vec3<f32>(-1057f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-295f, -214f))), -415f)), vec3<f32>(959f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1682f, -1000f))) - -971f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1562f, 761f))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2287f));
    global0 = array<Struct_2, 32>();
    var var_2 = Struct_4(func_2(_wgslsmith_dot_vec2_i32(u_input.d.zy, vec2<i32>(~(-24945i), firstTrailingBit(u_input.a)))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(46583u, u_input.c.x), 32u)], Struct_3(!select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec4<bool>(true, true, true, true))), var_0.zx, vec2<i32>(-_wgslsmith_sub_i32(0i, 18662i), u_input.d.x), global0[_wgslsmith_index_u32(0u, 32u)]), Struct_2(_wgslsmith_div_f32(-259f, _wgslsmith_f_op_f32(func_3(1f, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))))), Struct_1(u_input.a, -u_input.d.yww, -1375f), firstTrailingBit(u_input.d.wwx)));
    var var_3 = true;
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32((_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 15105u, 1u, u_input.b), vec4<u32>(1u, 4294967295u, 21543u, u_input.c.x)), ~vec4<u32>(u_input.b, u_input.b, u_input.c.x, u_input.b)) >> (vec4<u32>(func_1(), abs(4294967295u), _wgslsmith_sub_u32(1u, 1u), func_2(1i)) % vec4<u32>(32u))) & ~min(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 17544u), select(vec4<u32>(u_input.c.x, 33360u, u_input.c.x, 10346u), vec4<u32>(u_input.c.x, 48587u, u_input.b, u_input.c.x), vec4<bool>(true, false, false, true))), ~(~countOneBits(vec4<u32>(42539u, u_input.b, u_input.c.x, u_input.b)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 1u, 70351u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 31856u, u_input.c.x, 0u))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(850i, u_input.e), 1i, abs(44158i), -2147483647i), max(firstLeadingBit(vec4<i32>(u_input.a, 2147483647i, 0i, -2147483647i)), u_input.d ^ u_input.d)), max(_wgslsmith_sub_vec4_i32(u_input.d ^ u_input.d, u_input.d), vec4<i32>(u_input.d.x, -2147483647i, _wgslsmith_mult_i32(-3121i, u_input.d.x), _wgslsmith_mult_i32(u_input.a, u_input.a)))), firstTrailingBit(-firstLeadingBit(vec4<i32>(0i, u_input.e, u_input.d.x, u_input.a))));
    var var_2 = var_1.x;
    let var_3 = Struct_1(~var_1.x, _wgslsmith_mod_vec3_i32(vec3<i32>(~var_1.x, -1i, -36562i), -select(select(var_1.xxw, u_input.d.zzy, false), firstLeadingBit(vec3<i32>(47466i, -3273i, -4395i)), true)), _wgslsmith_f_op_f32(func_3(1209f, !select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, false), true))));
    var var_4 = !(!any(vec4<bool>(true, false, true, true)) || true);
    var_2 = -21777i;
    global0 = array<Struct_2, 32>();
    var_4 = ((all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)) && true) & true) == !((u_input.c.x | u_input.b) < ~abs(27371u));
    var_2 = 30497i;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~1u, ~firstTrailingBit(1u), _wgslsmith_sub_u32(u_input.b, 121839u & var_0.x), u_input.c.x), ~min(select(var_0, var_0, vec4<bool>(false, true, false, true)), vec4<u32>(var_0.x, 43329u, u_input.b, var_0.x) | var_0), var_1.x > countOneBits(-u_input.a)), _wgslsmith_mult_u32(u_input.c.x, u_input.b), -var_3.b.zx, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.c, 2302f), vec2<f32>(754f, var_3.c))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.c, var_3.c))))))));
}

