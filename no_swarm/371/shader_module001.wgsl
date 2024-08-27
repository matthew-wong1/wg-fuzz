struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32> = vec3<i32>(31905i, -1i, -1i);

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec2<i32> {
    var var_0 = 396f;
    var var_1 = arg_1.a;
    let var_2 = arg_0;
    var var_3 = var_2;
    let var_4 = var_2;
    return ~min(vec2<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a, u_input.a.x, -2147483647i), vec3<i32>(arg_0.a, 2147483647i, u_input.a.x)), var_3.a ^ var_4.a), ~var_2.a), -vec2<i32>(-1i, _wgslsmith_sub_i32(58482i, 26746i)));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1073f * 1146f)))))));
    let var_1 = abs(-_wgslsmith_mod_vec2_i32(u_input.d, func_3(Struct_1(arg_0), Struct_2(arg_3))));
    let var_2 = Struct_1(var_1.x);
    global1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -select(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(34560i, u_input.a.x, global1.x), true), -countOneBits(-vec3<i32>(var_1.x, global1.x, -3156i))) << (arg_1.xzy % vec3<u32>(32u));
    let var_3 = global1.xz | (vec2<i32>(-2147483647i, firstTrailingBit(global1.x ^ 34999i)) & (vec2<i32>(7902i, 36959i) & (reverseBits(var_1) | ~vec2<i32>(9171i, -2147483647i))));
    return global1.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> vec3<i32> {
    global1 = abs(vec3<i32>(_wgslsmith_mod_i32(1i, ~u_input.b), -8269i, min(select(reverseBits(u_input.c), -global1.x, arg_0.x), firstLeadingBit(-1i))));
    global1 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a ^ global1.xy, global1.zx), -func_2(~0i, ~vec4<u32>(u_input.e, u_input.e, 32283u, u_input.e), 41809u, arg_0.x)), global1.x, _wgslsmith_clamp_i32(u_input.b, abs(reverseBits(select(global1.x, -25196i, arg_0.x))), u_input.d.x));
    var var_0 = _wgslsmith_clamp_u32(1u, u_input.e, 20957u);
    let var_1 = _wgslsmith_f_op_f32(max(-1989f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))));
    global2 = array<Struct_2, 10>();
    return max(vec3<i32>(global1.x, ~(global1.x ^ u_input.b), _wgslsmith_dot_vec2_i32(global1.yz, vec2<i32>(u_input.d.x, 0i))) << (vec3<u32>(~u_input.e, 4850u, u_input.e) % vec3<u32>(32u)), reverseBits(vec3<i32>(22127i, 1i, _wgslsmith_div_i32(0i, _wgslsmith_add_i32(u_input.a.x, global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-1730f + 514f);
    global0 = 1f;
    let var_0 = firstTrailingBit(select(func_1(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), Struct_2(true)), -(vec3<i32>(u_input.c, -24508i, -22576i) << (vec3<u32>(21624u, u_input.e, 1u) % vec3<u32>(32u))) & ~(-vec3<i32>(global1.x, global1.x, global1.x)), !select(true, true, true)));
    var var_1 = _wgslsmith_dot_vec3_u32(firstTrailingBit(select(~vec3<u32>(u_input.e, 4294967295u, u_input.e), _wgslsmith_mod_vec3_u32(select(vec3<u32>(60013u, 11264u, 1u), vec3<u32>(u_input.e, 4294967295u, u_input.e), true), vec3<u32>(u_input.e, 23642u, 4294967295u) << (vec3<u32>(71430u, u_input.e, u_input.e) % vec3<u32>(32u))), all(vec4<bool>(true, true, true, true)))), vec3<u32>(firstLeadingBit(12811u), ~_wgslsmith_mult_u32(~u_input.e, _wgslsmith_sub_u32(58810u, 18027u)), ~(_wgslsmith_add_u32(u_input.e, u_input.e) | _wgslsmith_mod_u32(45567u, 1u))));
    let var_2 = Struct_1(firstTrailingBit(0i));
    var var_3 = -vec4<i32>(func_3(var_2, Struct_2(true)).x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 1i, global1.x, 1567i), -vec4<i32>(41319i, var_2.a, 0i, var_2.a)), ~16357i), var_0.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_2.a, global1.x), vec3<i32>(-1i, 0i, -2147483647i)) << ((u_input.e & 26833u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(506f, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-19587i, var_3.x, global1.x, global1.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global1.x, -2147483647i, 21345i), vec4<i32>(-53586i, 2147483647i, global1.x, u_input.a.x), vec4<i32>(var_2.a, var_0.x, 2291i, var_3.x))), vec4<i32>(-1i, var_0.x, countOneBits(1i), _wgslsmith_div_i32(var_3.x, -2147483647i))), _wgslsmith_add_i32(global1.x, var_2.a) << (42362u % 32u), ~(~var_2.a ^ _wgslsmith_clamp_i32(31600i, 28378i, var_2.a)), -_wgslsmith_div_i32(var_2.a, _wgslsmith_div_i32(47081i, u_input.a.x))), u_input.e, ~vec3<i32>(func_1(vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(4294967295u, 10u)]).x, -2859i, select(1i, -2147483647i, true)) >> (~vec3<u32>(_wgslsmith_sub_u32(u_input.e, u_input.e), ~1u, select(66070u, u_input.e, false)) % vec3<u32>(32u)));
}

