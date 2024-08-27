struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: bool = true;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = array<Struct_2, 11>();
    let var_0 = Struct_1(select(_wgslsmith_add_u32(0u, firstTrailingBit(4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x << (4294967295u % 32u), u_input.b.x), min(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), ~(~1u) != u_input.b.x), vec2<u32>(24785u, ~u_input.b.x), _wgslsmith_clamp_u32(~(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) >> ((73493u << (u_input.b.x % 32u)) % 32u)), 4294967295u, _wgslsmith_clamp_u32(31425u | u_input.b.x, 4294967295u, _wgslsmith_add_u32(~u_input.b.x, firstTrailingBit(47583u)))), -_wgslsmith_mult_i32(arg_0, _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0, arg_0), _wgslsmith_clamp_i32(-2147483647i, u_input.d.x, -4137i))));
    var var_1 = !any(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), false));
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(_wgslsmith_mod_u32(abs(1u) | _wgslsmith_sub_u32(0u, var_0.c), ~select(u_input.b.x, var_0.c, false)))), 11u)];
    global0 = array<Struct_2, 11>();
    return min(u_input.b.x, u_input.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = select(!(!vec2<bool>(any(vec3<bool>(false, true, false)), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), true);
    var var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 28960u), 4294967295u, 28593u), select(_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_1, 21052u, arg_1, arg_1), vec4<u32>(1u, 0u, u_input.b.x, arg_1), var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 36338u, u_input.b.x, 54550u), vec4<u32>(arg_1, 48076u, arg_1, u_input.b.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(93967u, u_input.b.x, 3865u, 1u), vec4<u32>(arg_1, 4689u, 0u, u_input.b.x), vec4<u32>(1u, u_input.b.x, 0u, arg_1) << (vec4<u32>(arg_1, 1091u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), !vec4<bool>(true, var_0.x, true, true))) ^ ~(~abs(vec4<u32>(arg_1, arg_1, 95347u, arg_1) | vec4<u32>(arg_1, 0u, 32680u, 1u)));
    global1 = any(select(vec2<bool>(true, var_0.x), !vec2<bool>(!var_0.x, var_0.x), select(select(!vec2<bool>(false, var_0.x), !var_0, !var_0), vec2<bool>(true, all(vec3<bool>(false, var_0.x, false))), arg_2 < _wgslsmith_f_op_f32(round(arg_2)))));
    var var_2 = u_input.b;
    var var_3 = true;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f)))))), arg_2, any(!select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, true, true, false)), !vec4<bool>(var_0.x, true, var_0.x, false), any(vec4<bool>(true, true, var_0.x, var_0.x))))));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    let var_0 = select(u_input.a, reverseBits(~vec3<i32>(-1i, i32(-1i) * -3729i, arg_3.x)), 47983u > firstTrailingBit(min(reverseBits(u_input.b.x), ~4294967295u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(reverseBits(arg_3 | var_0), func_3(2147483647i), 416f)));
    var var_2 = Struct_1(u_input.b.x, ~vec2<u32>(u_input.b.x, ~1u) >> (~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.b.x, 1u)), ~vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), u_input.b.x, -1i);
    let var_3 = Struct_2(all(select(select(vec4<bool>(true, true, false, arg_0), vec4<bool>(false, false, arg_0, false), false), vec4<bool>(false, true, true, arg_0), select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(true, arg_0, false, true), arg_0))) & arg_0, Struct_1(0u, ~select(_wgslsmith_mod_vec2_u32(var_2.b, var_2.b), firstLeadingBit(vec2<u32>(0u, var_2.c)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), true)), countOneBits(var_2.b.x), var_2.d));
    let var_4 = -1471f;
    return u_input.b.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = Struct_2(!arg_0, arg_1);
    let var_1 = arg_1;
    global1 = arg_0;
    var var_2 = Struct_1(func_2(all(!select(vec4<bool>(arg_0, true, false, var_0.a), vec4<bool>(var_0.a, true, arg_0, var_0.a), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), vec3<f32>(-131f, 328f, -455f))) - vec3<f32>(-1762f, _wgslsmith_f_op_f32(max(1049f, -899f)), 702f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1591f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(619f, -2392f))))), vec3<i32>(-2147483647i, ~7537i | (36768i & var_1.d), 5919i)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a >> (var_0.b.b.x % 32u), abs(arg_1.b.x)) | reverseBits(arg_1.b), var_1.b), 122100u, -var_0.b.d);
    var var_3 = var_0;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-614f, 215f, -1084f, 812f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 341f, 1530f, -517f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-988f, -437f, 1000f, -356f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-496f, -1312f, 277f, -2021f)))), _wgslsmith_mult_vec3_i32(~u_input.a, select(countOneBits(u_input.a), u_input.c, select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)) | max(firstTrailingBit(u_input.a), vec3<i32>(u_input.a.x, u_input.e, -59599i))), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-2611i), -func_1(true, Struct_1(u_input.b.x, u_input.b, 64398u, u_input.e), -66450i), -(u_input.d.x << (u_input.b.x % 32u)), func_1(false, Struct_1(91960u, u_input.b, 80521u, -5183i), u_input.e | u_input.d.x)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, 42062i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, -1294i, u_input.c.x, 47878i) << (vec4<u32>(1u, 89835u, 1u, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.e, 72714i, u_input.a.x, u_input.d.x)))), vec2<i32>(u_input.c.x, 2147483647i));
}

