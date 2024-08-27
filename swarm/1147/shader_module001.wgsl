struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<u32>(4294967295u, 106331u, 1u, 1u));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(false, vec4<u32>(21538u, 12014u, 1u, 57015u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-414f, _wgslsmith_f_op_f32(sign(-727f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1175f)) + -1000f), -846f, 1000f != _wgslsmith_f_op_f32(step(136f, 904f)))), select(true, global1.a, max(_wgslsmith_mult_u32(1u, global1.b.x), ~arg_0.b.x) > _wgslsmith_clamp_u32(global0.b.x, 29415u, 67803u))));
    return Struct_1(~(~reverseBits(-16715i)) < (_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 24269i, -1i, -64064i), vec4<i32>(-46005i, -13979i, -12336i, -1i)), vec4<i32>(-1i, 1i, -2147483647i, 1270i) >> (global0.b % vec4<u32>(32u))) << (_wgslsmith_mod_u32(4294967295u, ~0u) % 32u)), arg_0.b & _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global0.b.x, 1u, 0u, 34181u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, 1u, 4294967295u, global1.b.x), vec4<u32>(arg_0.b.x, 4294967295u, global1.b.x, global0.b.x)), _wgslsmith_mult_vec4_u32(~global2.b, _wgslsmith_mod_vec4_u32(global0.b, vec4<u32>(28875u, global0.b.x, 4294967295u, arg_0.b.x)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(all(!(!(!vec2<bool>(global1.a, global0.a)))), ~min(abs(global0.b), global1.b) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x), _wgslsmith_add_vec4_u32(global0.b, global2.b)));
    let var_1 = vec4<u32>(4294967295u << (countOneBits(~global1.b.x) % 32u), u_input.a.x, 4294967295u, ~firstTrailingBit(~(~141463u)));
    var var_2 = vec3<i32>(1i, _wgslsmith_dot_vec3_i32(abs(firstTrailingBit(vec3<i32>(-1i, arg_0, arg_0))), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(arg_0, -2147483647i, arg_0)))) ^ arg_0, arg_0);
    global0 = var_0;
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(-2147483647i, var_2.x), max(15913i, var_2.x) << (var_0.b.x % 32u), _wgslsmith_mod_i32(var_2.x, firstTrailingBit(var_2.x)), -7838i), ~(~abs(vec4<i32>(1i, -36778i, 2147483647i, 14482i)))), select(-vec4<i32>(var_2.x, var_2.x, var_2.x, arg_0), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 0i, arg_0, -1i), vec4<i32>(-1i, 0i, var_2.x, var_2.x)), select(!vec4<bool>(global1.a, global0.a, var_0.a, global1.a), !vec4<bool>(false, var_0.a, global0.a, global0.a), true)) & reverseBits(abs(vec4<i32>(-2147483647i, var_2.x, 0i, arg_0))));
    return func_2(var_0);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    var var_0 = vec3<bool>(global2.a, true, !all(!vec2<bool>(true, global0.a)));
    var var_1 = func_2(arg_0);
    return _wgslsmith_dot_vec3_u32(global2.b.yxz, firstLeadingBit(firstLeadingBit(global2.b.zxz)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(true || (max(-33825i >> (global0.b.x % 32u), 1i) < -17466i), global0.b);
    var var_0 = func_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, firstTrailingBit(-1i), -3063i, -1i), vec4<i32>(49595i, i32(-1i) * -12237i, 1i, abs(21957i))), abs(vec4<i32>(1i, 1i, 1i, 1i))));
    var var_1 = 1u;
    var_0 = func_2(func_1(~max(0i, 0i)));
    global0 = func_1(12907i);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1038f);
    var var_3 = _wgslsmith_mult_vec4_u32(global1.b ^ (global1.b << (vec4<u32>(45335u, ~global2.b.x, var_0.b.x, 14446u >> (u_input.a.x % 32u)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(5393u, var_0.b.x, global1.b.x, 124194u), ~var_0.b), abs(var_0.b)));
    var var_4 = reverseBits(_wgslsmith_mult_vec4_u32(global2.b, vec4<u32>(func_1(-40921i).b.x ^ func_3(Struct_1(true, vec4<u32>(global1.b.x, 68227u, 15215u, var_0.b.x)), vec4<i32>(12060i, -1i, -34308i, -1i)), abs(_wgslsmith_add_u32(1u, 133146u)), countOneBits(~0u), global1.b.x)));
    var var_5 = ~global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(~global0.b.x, 1u, 62863u)), vec3<u32>(func_1(1i).b.x, ~22776u, ~_wgslsmith_dot_vec4_u32(global0.b, global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(531f)))), vec2<i32>(select(_wgslsmith_add_i32(0i, max(-39375i, 2147483647i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-19028i, 5678i), vec2<i32>(43814i, -30784i)), 1i), global2.a), -abs(firstLeadingBit(-1i))), vec3<i32>(2147483647i, _wgslsmith_add_i32(0i, -1235i), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(213i, 28315i, 34211i, -2147483647i), vec4<i32>(38659i, 2147483647i, -52598i, -2147483647i)))), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), vec3<i32>(~9353i, -43328i, _wgslsmith_mult_i32(-4476i, -32423i)) << (func_2(Struct_1(global0.a, vec4<u32>(28429u, var_0.b.x, var_4.x, 23574u))).b.yzz % vec3<u32>(32u))));
}

