struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(1u, 0u, 12128u), vec3<u32>(10689u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(73622u, 12964u, 1u), vec3<u32>(39387u, 1u, 48342u), vec3<u32>(96155u, 49741u, 4871u), vec3<u32>(18049u, 12755u, 10515u), vec3<u32>(1u, 15267u, 1u), vec3<u32>(1u, 34557u, 9120u), vec3<u32>(4294967295u, 1u, 58067u), vec3<u32>(43903u, 10206u, 15358u), vec3<u32>(4294967295u, 43308u, 3638u), vec3<u32>(65293u, 0u, 22558u), vec3<u32>(1u, 0u, 24465u), vec3<u32>(70807u, 40604u, 0u), vec3<u32>(27826u, 4294967295u, 161u), vec3<u32>(2670u, 0u, 4294967295u), vec3<u32>(52756u, 31814u, 19734u), vec3<u32>(9725u, 37711u, 4294967295u));

var<private> global1: array<i32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = any(vec2<bool>(any(vec4<bool>(arg_3.a.x || arg_3.a.x, false, select(false, arg_0, false), arg_3.a.x)), 1780f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(-arg_2))));
    var var_1 = Struct_1(select(vec4<bool>(false, any(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_0, arg_1.x), arg_3.a.x)), all(select(vec3<bool>(false, arg_1.x, arg_3.a.x), vec3<bool>(true, true, false), false)), any(select(arg_1.xzx, vec3<bool>(false, true, arg_1.x), arg_1.wyw))), vec4<bool>(-global1[_wgslsmith_index_u32(u_input.a, 19u)] == u_input.b.x, any(vec4<bool>(false, true, false, true)), true, true), !(!(!arg_1))), _wgslsmith_div_vec3_u32(~global0[_wgslsmith_index_u32(50127u, 19u)], ~(~(~global0[_wgslsmith_index_u32(u_input.a, 19u)]))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1378f)), _wgslsmith_f_op_f32(1077f * arg_2))), _wgslsmith_f_op_f32(trunc(arg_2)))), 1000f));
    global1 = array<i32, 19>();
    let var_3 = Struct_1(select(select(!vec4<bool>(true, arg_3.a.x, arg_1.x, arg_0), vec4<bool>(true, true, true, true), select(var_1.a, var_1.a, var_1.a)), select(arg_1, !var_1.a, false), true), select(global0[_wgslsmith_index_u32(~(~(~49245u)), 19u)], vec3<u32>(0u, u_input.a, var_1.b.x) ^ ~vec3<u32>(132584u, 1u, 19004u), select(arg_1.xxy, arg_1.zzw, var_1.a.x)));
    return !any(var_3.a.xy);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    global1 = array<i32, 19>();
    var var_0 = Struct_2(vec2<bool>(!((-2147483647i ^ arg_0.x) > arg_0.x), _wgslsmith_div_i32(1i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a, 19u)], -49885i)) < u_input.c.x));
    var var_1 = Struct_2(vec2<bool>(true, false));
    return Struct_1(vec4<bool>(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_1.a.x, var_0.a.x, true), false)), true, func_3(!all(vec4<bool>(true, var_0.a.x, true, true)), vec4<bool>(true, true, true, true), _wgslsmith_div_f32(1070f, 2261f), Struct_2(vec2<bool>(false, var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(186f, arg_2.x))) >= -1312f), global0[_wgslsmith_index_u32((u_input.a >> ((u_input.a >> (27427u % 32u)) % 32u)) ^ u_input.a, 19u)] | ~(vec3<u32>(u_input.a, 0u, 4294967295u) >> (_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], vec3<u32>(4294967295u, u_input.a, u_input.a)) % vec3<u32>(32u))));
}

fn func_1() -> vec3<i32> {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    let var_1 = Struct_2(vec2<bool>(true, all(vec2<bool>(true, u_input.a == u_input.a))));
    let var_2 = func_2(~(u_input.b.yz ^ ((u_input.b.yx << (vec2<u32>(15800u, u_input.a) % vec2<u32>(32u))) | _wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(17019u, 19u)], u_input.b.x), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], -5453i)))), -1077f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-166f - 754f), _wgslsmith_f_op_f32(step(-1091f, 1000f)))), -421f));
    var_0 = -min(global1[_wgslsmith_index_u32(~u_input.a, 19u)] ^ global1[_wgslsmith_index_u32(4294967295u, 19u)], -23221i);
    var_0 = _wgslsmith_div_i32(select(-43943i, -42654i, true), 2147483647i);
    return -u_input.b.zwx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-49541i, _wgslsmith_add_i32(2147483647i, _wgslsmith_mult_i32(u_input.b.x, 4700i)) ^ -1i, _wgslsmith_div_i32(firstLeadingBit(53330i), i32(-1i) * -global1[_wgslsmith_index_u32(67130u, 19u)])), -_wgslsmith_mult_vec3_i32(firstTrailingBit(func_1()), vec3<i32>(~(-1i), 1i, u_input.b.x)));
    let var_1 = Struct_1(vec4<bool>(true, var_0.x <= _wgslsmith_dot_vec4_i32(-u_input.b, vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 19u)], var_0.x, 38932i, 28670i)), true, true), reverseBits(vec3<u32>(u_input.a, firstLeadingBit(u_input.a), ~11094u & u_input.a)));
    var_0 = _wgslsmith_sub_vec3_i32(~u_input.b.yzw, vec3<i32>(u_input.c.x, -(global1[_wgslsmith_index_u32(1u, 19u)] | -var_0.x), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(0u, 19u)], ~1i)));
    let var_2 = Struct_2(!select(vec2<bool>(var_1.a.x, true), !vec2<bool>(var_1.a.x, false), var_1.a.zz));
    var_0 = ~u_input.b.yxz;
    let var_3 = _wgslsmith_sub_vec2_i32(-countOneBits(u_input.b.zw), -reverseBits(countOneBits(vec2<i32>(global1[_wgslsmith_index_u32(var_1.b.x, 19u)], global1[_wgslsmith_index_u32(27842u, 19u)]))) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2956f, 1469f) + vec2<f32>(1000f, 2331f))))), vec4<u32>(45927u, _wgslsmith_div_u32(abs(~101026u), firstTrailingBit(var_1.b.x)), u_input.a, firstLeadingBit(4294967295u)), global1[_wgslsmith_index_u32(firstTrailingBit(1u), 19u)], ~(~func_2(reverseBits(vec2<i32>(41961i, var_3.x)), _wgslsmith_f_op_f32(select(-2515f, 1070f, var_1.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-888f, 276f))).b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-321f, 1000f, -1895f), vec3<f32>(1000f, -452f, -878f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(660f, 696f, -998f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-379f)), _wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(f32(-1f) * -1041f))))));
}

