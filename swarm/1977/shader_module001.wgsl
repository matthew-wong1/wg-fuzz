struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    let var_0 = _wgslsmith_mod_u32(0u, ~19304u);
    global0 = array<vec2<bool>, 30>();
    var var_1 = Struct_1(359f);
    return Struct_1(var_1.a);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.a, -360f, arg_1.a.a), vec3<f32>(arg_2.a.a, -750f, arg_2.a.a), vec3<bool>(true, false, false))) - vec3<f32>(167f, -1793f, arg_2.a.a)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a, -713f, arg_2.a.a) * vec3<f32>(arg_2.a.a, -288f, 341f))))) + vec3<f32>(1000f, func_2().a, _wgslsmith_f_op_f32(-161f + _wgslsmith_f_op_f32(-arg_2.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a, arg_2.a.a, arg_1.a.a))))));
    let var_1 = u_input.a;
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    return all(vec4<bool>(select(max(2147483647i, arg_1.b.x), min(-2147483647i, arg_1.b.x), any(vec4<bool>(true, false, false, true))) > _wgslsmith_add_i32(i32(-1i) * -27169i, 39007i), true, true, (select(false, true, true) | (1598f == arg_1.a.a)) || true));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var var_1 = ~(vec4<u32>(4366u, 97523u, firstLeadingBit(0u), countOneBits(1u)) << (vec4<u32>(27856u, ~(~30283u), 4294967295u, select(43226u, ~4294967295u, func_3(vec4<u32>(4294967295u, 3728u, 0u, 2430u), Struct_2(Struct_1(438f), vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x)), Struct_2(Struct_1(var_0.a), vec4<i32>(-2147483647i, 1i, u_input.a.x, u_input.a.x))))) % vec4<u32>(32u)));
    var var_2 = ~(~abs(vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x) >> (vec4<u32>(36938u, var_1.x, 45727u, var_1.x) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(0u, var_1.x, var_1.x, var_1.x)), firstTrailingBit(~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x))) % vec4<u32>(32u)));
    global0 = array<vec2<bool>, 30>();
    var var_3 = Struct_2(func_2(), -(~(-min(vec4<i32>(-1i, u_input.a.x, 7286i, 72951i), vec4<i32>(-1i, -22334i, 49812i, u_input.a.x)))));
    return Struct_1(-816f);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = ~_wgslsmith_mod_vec2_i32(min(~vec2<i32>(u_input.a.x, 2147483647i), countOneBits(reverseBits(vec2<i32>(2147483647i, u_input.a.x)))), arg_1.b.yz);
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.a - 204f), -937f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -989f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1705f, 121f, -926f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a, -1330f, arg_1.a.a)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2.yz), var_2.zz)));
    var var_4 = _wgslsmith_add_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(2169u, 1u, 1u, 5203u), vec4<u32>(1u, 56105u, 0u, 4294967295u), true)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 7876u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mod_u32(~4294967295u | firstTrailingBit(1u), ~29820u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 19780u), vec2<u32>(0u, 1u)), abs(1u)), 4294967295u, 1u));
    return var_4.x;
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> StorageBuffer {
    global0 = array<vec2<bool>, 30>();
    var var_0 = vec3<f32>(-1843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.a + _wgslsmith_f_op_f32(arg_3.a.a - _wgslsmith_f_op_f32(max(arg_3.a.a, 311f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2146f) * arg_3.a.a));
    let var_1 = _wgslsmith_mult_u32(arg_1.x, arg_1.x);
    var_0 = vec3<f32>(-1000f, -292f, _wgslsmith_f_op_f32(floor(656f)));
    global0 = array<vec2<bool>, 30>();
    return StorageBuffer(var_0.x, vec2<i32>(abs(abs(arg_3.b.x) & arg_3.b.x), -(~(i32(-1i) * -12973i))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1245f, arg_3.a.a, var_0.x, var_0.x))))))), countOneBits(0u), 52353u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1170f, 1903f, false)))))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-308f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1963f))))));
    global0 = array<vec2<bool>, 30>();
    var var_1 = Struct_1(-954f);
    var_0 = 165f;
    let var_2 = _wgslsmith_div_vec3_i32(-vec3<i32>(i32(-1i) * -1i, u_input.a.x, 2147483647i), u_input.a);
    let x = u_input.a;
    s_output = func_5(func_4(vec3<bool>(true, true, true), Struct_2(func_1(), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.a.x), vec4<i32>(-1i, 2147483647i, -4704i, 2147483647i)))), vec3<u32>(~(~0u), select(~1u, _wgslsmith_mult_u32(39168u, 1u), true), min(firstLeadingBit(15671u), ~45850u)) << (_wgslsmith_div_vec3_u32(select(~vec3<u32>(0u, 6261u, 80916u), ~vec3<u32>(40197u, 54818u, 0u), false), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 360u, 43400u)), ~vec3<u32>(5453u, 4294967295u, 3752u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 0u, 12072u), vec3<u32>(4294967295u, 0u, 69307u)))) % vec3<u32>(32u)), vec4<i32>(-3151i, max(u_input.a.x, -1i), i32(-1i) * -_wgslsmith_dot_vec3_i32(var_2, vec3<i32>(u_input.a.x, u_input.a.x, var_2.x)), -40693i), Struct_2(Struct_1(var_1.a), select(vec4<i32>(var_2.x >> (51913u % 32u), 1i, _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, u_input.a.x), u_input.a.x), select(vec4<i32>(var_2.x, 2147483647i, -5523i, var_2.x), -vec4<i32>(u_input.a.x, -31642i, 2147483647i, 8369i), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, false))))));
}

