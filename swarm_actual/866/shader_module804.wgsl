struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32 = -27957i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> i32 {
    global0 = !select(vec2<bool>(false, !all(vec3<bool>(false, false, global0.x))), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), all(vec2<bool>(false, global0.x))), global0.x);
    var var_0 = _wgslsmith_mult_vec2_i32(~u_input.a, u_input.a);
    global0 = !select(!select(!vec2<bool>(true, global0.x), vec2<bool>(false, global0.x), arg_1.b.c.x >= 0u), vec2<bool>(true, select(global0.x, global0.x == true, false)), vec2<bool>(global0.x, false));
    global1 = i32(-1i) * -var_0.x;
    var_0 = abs(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, u_input.a.x), vec2<i32>(var_0.x, u_input.a.x)) | firstLeadingBit(vec2<i32>(var_0.x, var_0.x)))) ^ u_input.a;
    return i32(-1i) * -_wgslsmith_mod_i32(1i >> (abs(arg_1.b.b.x) % 32u), var_0.x);
}

fn func_3() -> i32 {
    var var_0 = reverseBits(u_input.a.x);
    let var_1 = ~vec4<u32>(abs(43317u), firstTrailingBit(4294967295u), 4294967295u, 41404u);
    var var_2 = ~firstTrailingBit(_wgslsmith_sub_vec4_u32(~var_1, countOneBits(~vec4<u32>(4294967295u, var_1.x, 0u, 96629u))));
    var_2 = _wgslsmith_clamp_vec4_u32(var_1 << (var_1 % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~var_1, vec4<u32>(~countOneBits(var_2.x), 44676u, 0u, 16882u)), abs(abs(~var_1)) << (var_1 % vec4<u32>(32u)));
    return firstLeadingBit(-(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(2147483647i, 72566i, 9910i))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<u32> {
    global1 = -abs(firstLeadingBit(-58478i));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)));
    let var_1 = -vec4<i32>(-8197i, u_input.a.x | -func_2(arg_1.x, Struct_4(arg_1.xw, Struct_1(1842f, vec3<u32>(1u, 36154u, 0u), vec3<u32>(4294967295u, 37806u, 0u)))), -func_3(), _wgslsmith_div_i32(_wgslsmith_mult_i32(countOneBits(u_input.a.x), u_input.a.x << (18700u % 32u)), u_input.a.x));
    var var_2 = vec3<i32>(-2147483647i, ~_wgslsmith_add_i32(~u_input.a.x, 1i), i32(-1i) * -1i);
    let var_3 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(-var_1, ~vec4<i32>(var_1.x, var_2.x, -12990i, var_1.x)), _wgslsmith_dot_vec4_i32(select(abs(var_1), firstLeadingBit(var_1), !global0.x), var_1), var_1.x);
    return ~_wgslsmith_add_vec3_u32(select(vec3<u32>(~1u, ~21868u, 1u), ~(~vec3<u32>(28309u, 40505u, 4294967295u)), !all(vec4<bool>(global0.x, arg_0.a.x, arg_0.a.x, true))), abs(vec3<u32>(_wgslsmith_mult_u32(71506u, 0u), _wgslsmith_clamp_u32(6370u, 0u, 0u), ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_i32((min(max(vec3<i32>(76806i, -2147483647i, 2147483647i), vec3<i32>(u_input.a.x, 1i, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(0i, -1i, -560i))) << (func_1(Struct_3(vec2<bool>(global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(965f, 2620f, 894f, 482f), vec4<f32>(837f, -1000f, 728f, -3035f)))) % vec3<u32>(32u))) & ~(firstTrailingBit(vec3<i32>(u_input.a.x, -8079i, -32318i)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, 66102i, 41802i))), firstTrailingBit(vec3<i32>(u_input.a.x, abs(firstLeadingBit(u_input.a.x)), 1i)));
    global1 = func_3();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1752f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(-349f))) - _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(firstTrailingBit(0u), 3129u, select(71262u, 0u, global0.x))) & select(vec3<u32>(4294967295u, ~3112u, abs(5999u)), vec3<u32>(~75013u, 4294967295u, ~0u), select(!vec3<bool>(true, global0.x, false), !vec3<bool>(true, false, global0.x), !vec3<bool>(true, true, global0.x))), firstLeadingBit(firstTrailingBit(vec3<u32>(38088u, 27266u, 54111u))) ^ _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 23470u, 1u), abs(vec3<u32>(1u, 1u, 64490u))), abs(vec3<u32>(6859u, 15833u, 4417u))));
    var var_2 = !(!vec4<bool>(false, global0.x || true, (var_1.c.x << (0u % 32u)) != var_1.b.x, false));
    var var_3 = select(firstTrailingBit(vec3<u32>(0u >> (var_1.b.x % 32u), 0u, var_1.c.x | var_1.c.x)) ^ ~vec3<u32>(~4294967295u, 1u, 4294967295u & var_1.c.x), _wgslsmith_sub_vec3_u32(var_1.c, ~reverseBits(var_1.b)), all(select(vec2<bool>(global0.x, true), select(!var_2.xy, var_2.zy, select(vec2<bool>(true, global0.x), var_2.yx, vec2<bool>(false, var_2.x))), false)));
    let x = u_input.a;
    s_output = StorageBuffer(198f, vec2<i32>(reverseBits(22690i), ~func_3()), var_1.c.zy | var_3.xx, var_3.x);
}

