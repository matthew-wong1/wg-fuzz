struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(80860u, vec2<bool>(true, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global2 = Struct_1(_wgslsmith_sub_u32(countOneBits(u_input.b), 6112u), vec2<bool>(!global0.b.x, global2.b.x));
    global1 = Struct_1(9274u, select(vec2<bool>(false, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), global0.b, vec2<bool>(global0.b.x, global1.b.x)), select(vec2<bool>(true, false), global2.b, vec2<bool>(false, global1.b.x))), true));
    var var_0 = Struct_1(global2.a, global0.b);
    var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(52191u, global2.a, 8351u, 15722u)), (vec4<u32>(47882u, 4468u, 1447u, global1.a) & vec4<u32>(global2.a, 31757u, global2.a, global1.a)) << (abs(vec4<u32>(global1.a, u_input.c, 4294967295u, global0.a)) % vec4<u32>(32u))), u_input.c), var_0.b);
    var var_1 = Struct_1(global2.a ^ (4294967295u | firstLeadingBit(u_input.b)), global0.b);
    return abs(76760u) != _wgslsmith_clamp_u32(var_0.a, 1u, 33918u);
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.d, -624f, arg_0.d, arg_0.d))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, arg_0.d, -480f, 197f))) - vec4<f32>(550f, _wgslsmith_f_op_f32(f32(-1f) * -1177f), arg_0.d, 942f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 439f, arg_0.d, arg_0.d)))))));
    global1 = arg_0.c;
    global0 = Struct_1(global1.a, arg_0.a.wx);
    global2 = Struct_1(global0.a, !select(global1.b, !vec2<bool>(global1.b.x, global1.b.x), !func_2(vec2<i32>(arg_0.b.x, 2147483647i))));
    let var_1 = Struct_2(arg_0.a, ~arg_0.b, Struct_1(~4294967295u, !(!vec2<bool>(arg_0.c.b.x, arg_0.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d))));
    return var_1.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(81548u, vec2<bool>((func_1(Struct_2(vec4<bool>(true, true, global1.b.x, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(1u, global0.b), -333f)) || all(vec4<bool>(true, false, false, true))) & false, true));
    let var_0 = min(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x, 0i, -2147483647i) | vec3<i32>(u_input.a.x, ~u_input.a.x, firstLeadingBit(u_input.a.x)), vec3<i32>(_wgslsmith_mult_i32(max(u_input.a.x, u_input.a.x), -u_input.a.x), -2147483647i, 18875i)), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -31497i), -vec3<i32>(-19196i, u_input.a.x, -11355i)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(4722i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-35973i, u_input.a.x, 2147483647i, 0i)), reverseBits(u_input.a.x)) & -firstTrailingBit(14364i), abs(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) >> (vec3<u32>(global2.a, 1365u, 20850u) % vec3<u32>(32u))))));
    var var_1 = _wgslsmith_mod_u32(~global0.a, min(global2.a, abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, global2.a), vec2<u32>(global2.a, 21114u)), 4294967295u))));
    var_1 = 99559u;
    var var_2 = max(_wgslsmith_clamp_vec3_i32(abs(var_0), _wgslsmith_mod_vec3_i32(var_0 ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, var_0.x), vec3<i32>(1i, 0i, -60603i)), (vec3<i32>(var_0.x, -1i, -23925i) >> (vec3<u32>(global1.a, 0u, global2.a) % vec3<u32>(32u))) ^ min(var_0, vec3<i32>(0i, 1i, var_0.x))), -var_0), _wgslsmith_div_vec3_i32(-max(var_0, var_0), abs(-vec3<i32>(-1i, var_0.x, -12144i) >> (vec3<u32>(u_input.c, 20724u, global2.a) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(abs(-u_input.a), var_0.zz), -firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, 23375i), vec4<i32>(3900i, u_input.a.x, var_2.x, var_0.x))));
}

