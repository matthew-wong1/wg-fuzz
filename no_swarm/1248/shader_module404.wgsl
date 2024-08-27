struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

var<private> global1: array<u32, 2>;

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<vec2<bool>, 21>();
    let var_0 = vec4<u32>(reverseBits(global1[_wgslsmith_index_u32(4294967295u, 2u)]), 1u, 8547u, 0u);
    return select(arg_0.a, arg_0.a, select(arg_0.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.wzz, var_0.wwz), ~var_0.zwy) != _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 2u)], global2.e, 38381u, global2.e), arg_1), !arg_2.a.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = vec3<i32>(~max(2147483647i, 0i), abs(-1i), 0i);
    global1 = array<u32, 2>();
    global2 = Struct_1(select(select(vec4<bool>(any(vec3<bool>(global2.a.x, true, global2.a.x)), true, all(global2.a), global2.a.x), select(global2.a, vec4<bool>(false, global2.a.x, false, global2.a.x), global2.a), global2.a.x), vec4<bool>(global2.a.x || !global2.a.x, false, false, abs(global2.e) == ~0u), !vec4<bool>(!global2.a.x, false, any(global2.a), global2.a.x)), arg_3.x, vec3<i32>(global2.c.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.x, 45730i, -1i), ~vec3<i32>(arg_2.x, arg_2.x, -4018i)), ~var_0.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.zww, arg_3.ywz), _wgslsmith_f_op_vec3_f32(floor(arg_3.xyw)))))), u_input.a);
    let var_1 = Struct_1(select(!vec4<bool>(!global2.a.x, !global2.a.x, global2.a.x, false), global2.a, func_3(Struct_1(vec4<bool>(global2.a.x, global2.a.x, false, global2.a.x), _wgslsmith_f_op_f32(select(arg_0.x, arg_3.x, false)), select(vec3<i32>(arg_2.x, arg_2.x, global2.c.x), vec3<i32>(var_0.x, -2147483647i, 39666i), false), _wgslsmith_f_op_vec3_f32(-arg_3.xzy), ~28904u), ~vec4<u32>(global2.e, 1u, 48854u, global2.e) << (~vec4<u32>(50626u, 35614u, 0u, 7652u) % vec4<u32>(32u)), Struct_1(vec4<bool>(global2.a.x, true, false, true), _wgslsmith_div_f32(arg_0.x, 766f), ~global2.c, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3.x, global2.b, arg_3.x))), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1884u, 2u)], 3989u)))), _wgslsmith_f_op_f32(f32(-1f) * -571f), var_0, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2.d - arg_3.yyw))) + global2.d))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55845u, 2u)], 2u)] ^ u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, arg_1.x, global2.e), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], arg_1.x, global2.e), false), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global2.e, 2u)], 12097u, global1[_wgslsmith_index_u32(43324u, 2u)]))), 1u), min(_wgslsmith_dot_vec4_u32(vec4<u32>(11131u, 63587u, 1u, 1u) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 2u)], u_input.a, 4294967295u) % vec4<u32>(32u)), vec4<u32>(6005u, global1[_wgslsmith_index_u32(14627u, 2u)], 17453u, 0u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 21269u, 63298u)), select(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(0u, 5457u, 0u), global2.a.zzz)))));
    var var_2 = _wgslsmith_f_op_f32(arg_0.x - arg_0.x);
    return 2147483647i;
}

fn func_1(arg_0: vec4<i32>) -> bool {
    var var_0 = ~_wgslsmith_mod_i32(global2.c.x, -global2.c.x >> (u_input.a % 32u));
    var var_1 = vec3<i32>(select(countOneBits(~global2.c.x), global2.c.x, (i32(-1i) * -34977i) != (global2.c.x >> (0u % 32u))), -1i, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.d.x, 279f, -1583f) * vec4<f32>(global2.d.x, 185f, -774f, 569f)), vec2<u32>(21782u, global2.e), ~_wgslsmith_add_vec3_i32(vec3<i32>(global2.c.x, 9287i, arg_0.x), global2.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(2716f, global2.d.x, -322f, 898f) * vec4<f32>(434f, global2.b, 664f, 603f)))) << ((select(_wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, u_input.a, global1[_wgslsmith_index_u32(55505u, 2u)]), vec3<u32>(u_input.a, global2.e, 37334u)), ~vec3<u32>(50144u, global2.e, 77145u)), vec3<u32>(0u, u_input.a, 0u) & vec3<u32>(global2.e, 1u, 0u), global2.a.x) << (_wgslsmith_mult_vec3_u32(~select(vec3<u32>(global2.e, 3829u, 15669u), vec3<u32>(u_input.a, 56342u, 6235u), global2.a.x), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, global1[_wgslsmith_index_u32(global2.e, 2u)], u_input.a), ~vec3<u32>(global2.e, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = Struct_1(func_3(Struct_1(vec4<bool>(any(vec4<bool>(false, global2.a.x, global2.a.x, false)), 0u <= u_input.a, global2.d.x <= global2.d.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.d.x, 435f)) * _wgslsmith_f_op_f32(f32(-1f) * -785f)), select(global2.c, arg_0.yxw << (vec3<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(32071u, 2u)]) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), global2.a.ywz, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, -158f, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, global2.b, 135f))), ~global2.e), vec4<u32>(~_wgslsmith_clamp_u32(0u, 0u, global2.e), reverseBits(1u), ~21684u, ~max(6152u, 5719u)), Struct_1(vec4<bool>(!global2.a.x, global2.a.x | global2.a.x, global2.a.x || true, global2.a.x), global2.d.x, _wgslsmith_clamp_vec3_i32(~vec3<i32>(global2.c.x, 72748i, -29128i), vec3<i32>(-9304i, -24892i, arg_0.x), min(vec3<i32>(var_1.x, -82117i, -123290i), global2.c)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -336f, 222f) + vec3<f32>(1425f, global2.b, -700f)))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global2.e, 2u)], 104015u), 2u)], 2u)])), 1667f, ~select(select(global2.c, _wgslsmith_div_vec3_i32(global2.c, vec3<i32>(-15100i, -1i, -5161i)), global2.a.zyx), vec3<i32>(firstTrailingBit(-1i), -1i, 23812i), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.b, _wgslsmith_f_op_f32(107f + -746f), global2.b), global2.d)), 0u);
    var var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(-global2.b), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_1.x >> (0u % 32u), global2.c.x | var_1.x), -(~vec3<i32>(-1i, -2147483647i, 0i)))), vec3<f32>(var_2.b, _wgslsmith_f_op_f32(var_2.d.x * 528f), _wgslsmith_f_op_f32(f32(-1f) * -2084f)), 4294967295u);
    return all(var_3.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(14921u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global2.e) >> ((vec2<u32>(global2.e, 8978u) >> (select(vec2<u32>(global2.e, 4294967295u), vec2<u32>(global2.e, 44084u), false) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(4294967295u), select(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 2u)], 0u), 34767u, true))), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], ~(~4294967295u ^ global2.e)), u_input.a);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1090f - _wgslsmith_f_op_f32(abs(global2.b))), _wgslsmith_f_op_f32(select(-608f, -117f, func_1(vec4<i32>(0i, -1i, 1i, 2147483647i) ^ vec4<i32>(global2.c.x, global2.c.x, -15274i, 2687i))))) >= global2.d.x;
    var_0 = firstTrailingBit(reverseBits(reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(9166u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], 0u), vec4<u32>(9675u, 0u, 33674u, global1[_wgslsmith_index_u32(0u, 2u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 101416u, 49383u, global2.e), vec4<u32>(u_input.a, 1u, 146252u, 4763u))))));
    var var_2 = !(!(!vec2<bool>(true, all(global2.a.zzy))));
    let var_3 = Struct_1(func_3(Struct_1(!vec4<bool>(false, global2.a.x, false, var_1), _wgslsmith_f_op_f32(ceil(-1238f)), global2.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, 934f, 776f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(252f, global2.b, -2505f)))), 18415u), vec4<u32>(_wgslsmith_div_u32(global2.e, global2.e), ~4294967295u, 0u, 4294967295u) ^ firstLeadingBit(vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 29951u, u_input.a)), Struct_1(vec4<bool>(!var_2.x, all(vec2<bool>(false, var_2.x)), global2.a.x, any(global2.a.yyz)), _wgslsmith_f_op_f32(floor(global2.d.x)), global2.c, global2.d, ~select(69658u, global2.e, true))), _wgslsmith_f_op_f32(f32(-1f) * -482f), global2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(106f * global2.d.x), _wgslsmith_f_op_f32(round(105f)), global2.d.x)))), global2.e);
    var_2 = vec2<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x)) < _wgslsmith_f_op_f32(max(-575f, var_3.d.x))) || (!(!var_2.x) && all(vec3<bool>(var_3.a.x, true, var_1))), !(var_1 & false));
    global0 = array<vec2<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(432f, var_3.b)), _wgslsmith_f_op_f32(-global2.d.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.d.x), -784f))), ~vec2<u32>(~_wgslsmith_sub_u32(var_3.e, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, global1[_wgslsmith_index_u32(40015u, 2u)] ^ var_0.x), 2u)]), -vec2<i32>(1i, countOneBits(var_3.c.x)), var_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) - var_3.b)));
}

