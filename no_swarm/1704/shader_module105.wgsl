struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 22>;

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> vec3<i32> {
    let var_0 = any(vec4<bool>(!(!arg_1.d.x), true, any(vec3<bool>(global0.d.x, arg_1.a, arg_0)) && (_wgslsmith_f_op_f32(floor(1101f)) <= _wgslsmith_f_op_f32(sign(-325f))), global0.d.x));
    let var_1 = Struct_1(true, vec4<u32>(_wgslsmith_mult_u32(arg_1.c ^ 4294967295u, arg_2), _wgslsmith_div_u32(arg_2, 1u), ~(~0u & select(global0.b.x, 1u, true)), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.b.x, 22493u), 22u)] | global1[_wgslsmith_index_u32(~global0.b.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)])), 1u, arg_1.d);
    global1 = array<vec2<u32>, 22>();
    let var_2 = countOneBits(vec3<i32>(u_input.b, select(1i >> (~global0.b.x % 32u), -1i, !any(vec4<bool>(false, false, true, true))), u_input.b));
    var var_3 = select(global0.d, !(!vec2<bool>(any(vec2<bool>(false, false)), false & var_1.d.x)), global0.a | var_1.a);
    return -(var_2 | (vec3<i32>(-1i) * -(vec3<i32>(-16175i, -41103i, arg_3.x) ^ var_2)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, 1358f, arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-759f, arg_2, arg_2)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1248f, arg_2, arg_2)))))));
    var var_1 = -16343i;
    var var_2 = ~func_3(arg_0.d.x, arg_0, ~0u, -(~vec2<i32>(u_input.b, u_input.d))) ^ ~vec3<i32>(u_input.b, firstTrailingBit(-43812i) & ~0i, ~(~(-2147483647i)));
    var_2 = -select(~select(vec3<i32>(-2147483647i, var_2.x, var_2.x), vec3<i32>(18683i, 15388i, -18815i), arg_0.a), max(abs(vec3<i32>(14816i, 0i, var_2.x)), func_3(true, arg_0, arg_1.x, var_2.yy)), select(select(vec3<bool>(arg_0.a, false, false), vec3<bool>(global0.d.x, false, false), true), select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(arg_0.a, arg_0.a, global0.d.x), arg_0.a), 0u <= arg_0.b.x)) ^ func_3(false, Struct_1(!(!global0.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(19456u, global2.x, global2.x, 0u), vec4<u32>(arg_0.b.x, 0u, arg_1.x, 8063u)) >> (global0.b % vec4<u32>(32u)), ~firstLeadingBit(8915u), select(global0.d, vec2<bool>(global0.d.x, false), global0.d.x)), 9970u, ~countOneBits(var_2.xz));
    global1 = array<vec2<u32>, 22>();
    return vec4<bool>(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(662f * 2395f), _wgslsmith_f_op_f32(-arg_2)) != arg_2), arg_0.d.x, !select(!any(global0.d), true, global0.a), arg_0.d.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: f32) -> vec2<u32> {
    var var_0 = func_2(Struct_1(!global0.d.x, vec4<u32>(47682u, 4294967295u, ~(~4294967295u), 0u), arg_1.x, !vec2<bool>(global0.d.x || global0.d.x, select(global0.d.x, false, global0.a))), vec2<u32>(_wgslsmith_sub_u32(1u, arg_1.x), _wgslsmith_mod_u32(64511u, 7555u)), _wgslsmith_f_op_f32(min(1000f, arg_3)), global0.b.x);
    global2 = ~(~arg_1);
    global1 = array<vec2<u32>, 22>();
    var_0 = !(!vec4<bool>(any(vec4<bool>(false, global0.a, true, true)), global2.x < 1u, any(vec3<bool>(true, var_0.x, global0.a)), true));
    global2 = global1[_wgslsmith_index_u32(~4294967295u, 22u)];
    return vec2<u32>(4294967295u, 1853u) | vec2<u32>(~_wgslsmith_add_u32(firstTrailingBit(arg_1.x), arg_1.x), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(countOneBits(vec4<u32>(~(~global0.c), max(51889u, 9177u), ~(~global0.b.x), 102599u)), vec2<u32>(_wgslsmith_mult_u32(select(reverseBits(global0.c), ~1u, global0.a), global0.c), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 18665u), vec2<u32>(global2.x, global0.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(633f * -1476f))), -1135f, _wgslsmith_f_op_f32(f32(-1f) * -480f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 235f) - _wgslsmith_f_op_f32(f32(-1f) * -431f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(-208f, -1163f, -305f, -1386f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f))) + _wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1134f + 903f)))));
    global1 = array<vec2<u32>, 22>();
    let var_0 = Struct_1((true | !global0.d.x) && any(func_2(Struct_1(global0.a, vec4<u32>(0u, 1u, 21459u, 4294967295u), 1u, global0.d), firstTrailingBit(vec2<u32>(global0.b.x, global0.c)), _wgslsmith_f_op_f32(max(525f, -2433f)), global2.x).wzy), ~(vec4<u32>(1u, ~global2.x, global0.b.x, 45519u) >> (~(~vec4<u32>(0u, 15335u, 1u, global2.x)) % vec4<u32>(32u))), abs(~firstTrailingBit(71903u)) ^ 58379u, func_2(Struct_1(!all(vec3<bool>(global0.a, global0.a, false)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 4294967295u, global2.x)), countOneBits(global0.b), ~global0.b), _wgslsmith_sub_u32(7555u | global2.x, select(global2.x, 4461u, false)), vec2<bool>(all(vec2<bool>(global0.a, true)), any(vec3<bool>(true, true, false)))), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(global2.x, 4294967295u)), global0.b.xz, ~vec2<u32>(1u, global0.c)) & global1[_wgslsmith_index_u32(4294967295u, 22u)], 1035f, firstTrailingBit(_wgslsmith_mult_u32(global0.c, 24479u))).zz);
    global0 = var_0;
    global1 = array<vec2<u32>, 22>();
    global0 = Struct_1(false, max(~global0.b, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(50942u, var_0.c, global0.c, 49887u), _wgslsmith_add_vec4_u32(vec4<u32>(68736u, global0.b.x, global2.x, global2.x), vec4<u32>(1u, var_0.c, global2.x, 50329u))), var_0.b)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(global2.x, 56951u, var_0.c, 51302u))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(1u, 4294967295u, var_0.b.x, 4294967295u), vec4<u32>(10358u, global0.b.x, 4294967295u, 1u)), vec4<u32>(var_0.b.x, global2.x, global0.b.x, 20482u))), global2.x), vec2<bool>(any(select(vec3<bool>(true, true, global0.d.x), vec3<bool>(true, true, true), all(vec3<bool>(true, global0.a, var_0.a)))), _wgslsmith_mod_u32(5336u, _wgslsmith_clamp_u32(global2.x, 0u, var_0.b.x)) > min(global0.b.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u)), select(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, -92256i, u_input.b), vec4<i32>(u_input.c, u_input.d, -11040i, u_input.a)) ^ ~vec4<i32>(1512i, -1i, u_input.b, u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(40028i, u_input.b, u_input.b, 7786i), -vec4<i32>(u_input.a, -2147483647i, -37698i, 8937i))), vec4<i32>(10137i, -41673i, _wgslsmith_add_i32(u_input.a, 40000i), min(0i, abs(u_input.d))), !(!func_2(var_0, global1[_wgslsmith_index_u32(1u, 22u)], 1468f, var_0.c))));
}

