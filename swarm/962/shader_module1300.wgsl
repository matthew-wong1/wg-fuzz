struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26>;

var<private> global1: array<vec3<bool>, 11>;

var<private> global2: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(4294967295u, 67068u, 4294967295u), vec3<u32>(66870u, 61843u, 73852u), vec3<u32>(4294967295u, 37671u, 1u), vec3<u32>(1u, 1u, 37341u), vec3<u32>(1u, 21490u, 1u), vec3<u32>(38711u, 4294967295u, 29990u), vec3<u32>(0u, 1u, 0u), vec3<u32>(35784u, 4294967295u, 7466u), vec3<u32>(49073u, 1u, 1u), vec3<u32>(1u, 47317u, 58359u), vec3<u32>(62450u, 19717u, 74178u), vec3<u32>(52749u, 4294967295u, 4294967295u), vec3<u32>(8973u, 0u, 0u), vec3<u32>(13195u, 4294967295u, 4294967295u), vec3<u32>(11905u, 1u, 24868u), vec3<u32>(1u, 15670u, 0u), vec3<u32>(4294967295u, 23702u, 4294967295u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(41573u, 1u, 3984u), vec3<u32>(32592u, 11365u, 136998u), vec3<u32>(85513u, 0u, 0u), vec3<u32>(35260u, 10545u, 0u), vec3<u32>(1u, 4294967295u, 18107u), vec3<u32>(3945u, 19673u, 3341u), vec3<u32>(0u, 1u, 0u), vec3<u32>(13820u, 43093u, 11053u), vec3<u32>(5269u, 25216u, 0u), vec3<u32>(4904u, 4552u, 1u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    global2 = array<vec3<u32>, 28>();
    global2 = array<vec3<u32>, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-351f, -813f, 317f, -562f), global0[_wgslsmith_index_u32(0u, 26u)]), global0[_wgslsmith_index_u32(~35491u, 26u)])))));
    let var_1 = arg_2;
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 472f);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(5721u, 4294967295u, arg_0.b), vec3<u32>(arg_0.b, u_input.c, arg_1.b)) >> (max(vec3<u32>(u_input.a.x, arg_0.b, arg_0.b), vec3<u32>(4294967295u, arg_0.b, 25712u)) % vec3<u32>(32u)), u_input.a.wwy), 41216u);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -820f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-505f)), _wgslsmith_f_op_f32(trunc(1034f))))))));
    let var_2 = ~vec3<i32>(select(arg_0.a, i32(-1i) * -7760i, u_input.d.x < arg_0.a), -189i, _wgslsmith_dot_vec2_i32(~u_input.d, firstTrailingBit(vec2<i32>(2147483647i, 52694i)))) & (abs(u_input.b.xyx) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(17462i, -2147483647i), ~u_input.e), reverseBits(-arg_0.a), firstLeadingBit(-u_input.e.x)));
    var_0 = ~(_wgslsmith_mult_u32(0u << (u_input.c % 32u), 18446u) ^ _wgslsmith_add_u32(1u, arg_1.b >> (21309u % 32u))) | 1u;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(1070f, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_div_f32(-545f, -878f), -121f)));
    return 1u;
}

fn func_2() -> bool {
    global1 = array<vec3<bool>, 11>();
    global0 = array<vec4<f32>, 26>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(569f, 292f, false))))))));
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), 1095f, func_3(Struct_2(abs(-15557i), ~4294967295u), Struct_2(-80509i, 4068u)));
    var var_2 = -1i;
    return (u_input.b.x | ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, 23527i, u_input.e.x), -42791i)) < min(abs(u_input.b.x), 16612i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(56857u, 0u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(var_0.x, abs(vec3<u32>(u_input.c, u_input.c, 1u)), Struct_2(~u_input.e.x, ~u_input.c), ~select(vec3<i32>(-9392i, u_input.e.x, 51546i), vec3<i32>(-11208i, -12727i, u_input.e.x), false))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f * 304f) - _wgslsmith_f_op_f32(1000f + -609f))))), -2762f);
    var var_2 = vec3<bool>(!(!func_2()), false, any(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    let var_3 = Struct_2(u_input.b.x << (_wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, 114921u) << (1u % 32u), 1u) % 32u), u_input.c);
    var var_4 = select(~(~(abs(u_input.a) | u_input.a)), u_input.a, vec4<bool>(var_2.x, false, var_2.x, true));
    var var_5 = select(true & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 840f)) <= _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))), func_2(), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, 1474f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, var_1.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_1(0u, global2[_wgslsmith_index_u32(1u, 28u)] | vec3<u32>(4294967295u, 0u, 4294967295u), Struct_2(var_3.a, 5183u), abs(u_input.b.wxy))))));
}

