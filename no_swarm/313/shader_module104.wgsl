struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec4<i32>, 19>;

var<private> global2: Struct_1 = Struct_1(2147483647i, 4294967295u, vec4<bool>(false, true, false, true), true, vec2<i32>(1i, 0i));

var<private> global3: Struct_2;

var<private> global4: vec2<i32> = vec2<i32>(-4684i, -53794i);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global3 = arg_2;
    var var_0 = arg_0;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(945f, _wgslsmith_f_op_f32(round(1271f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(940f)) + _wgslsmith_f_op_f32(-arg_1.a))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a), -350f))), abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(min(global4.x, global2.a), global2.a), abs(global2.e.x))), arg_1.e, !global2.c, arg_1.e);
    var_1 = Struct_3(_wgslsmith_f_op_f32(1000f - arg_1.a), -2147483647i, arg_1.e, select(select(arg_1.e.c, select(arg_1.e.c, !arg_1.c.c, vec4<bool>(arg_0.a, false, global3.a, false)), all(!global2.c.xz)), select(global2.c, !arg_1.d, true), vec4<bool>(all(arg_1.e.c.xy), true, global2.c.x, ~var_1.c.b < global2.b)), Struct_1(~23300i, global2.b, vec4<bool>(arg_0.a, any(vec3<bool>(true, true, true)), all(!var_1.c.c), !(-241f == arg_1.a)), any(select(vec2<bool>(true, true), var_1.c.c.wy, global2.c.yy)) & true, select(select(u_input.a.zz & global2.e, firstTrailingBit(vec2<i32>(arg_1.b, var_1.c.a)), true), firstTrailingBit(reverseBits(arg_1.c.e)), var_1.c.c.wy)));
    global3 = Struct_2(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + 1f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-382f))))));
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec4<bool>(any(global2.c.xw), 662f >= arg_2.x, arg_3.d, !func_3(Struct_2(global2.d), Struct_3(-821f, 173i, Struct_1(-3602i, arg_3.b, vec4<bool>(true, global3.a, true, global3.a), false, global2.e), vec4<bool>(arg_3.c.x, false, true, arg_3.d), arg_3), Struct_2(false)) | true);
    global2 = arg_3;
    var var_1 = arg_2.x;
    var var_2 = arg_3.e;
    var var_3 = min(17645u, arg_1);
    return !select(vec2<bool>(!arg_3.c.x, arg_3.c.x), select(global2.c.wx, select(select(vec2<bool>(true, true), vec2<bool>(var_0.x, global3.a), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(var_0.x, true), var_0.zw), !select(arg_3.c.xy, vec2<bool>(false, global2.c.x), var_0.zy)), select(vec2<bool>(select(global3.a, false, var_0.x), var_0.x), select(select(arg_3.c.zz, vec2<bool>(var_0.x, true), false), vec2<bool>(true, false), true), false || arg_3.c.x));
}

fn func_1(arg_0: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_1(firstTrailingBit(global4.x), ~_wgslsmith_mult_u32(58983u, abs(57832u)) | ~global2.b, select(vec4<bool>(global2.c.x, global3.a, false, global2.c.x), vec4<bool>(global3.a, global2.d, global2.d, global2.c.x), vec4<bool>(true, any(func_2(vec3<f32>(120f, -2219f, -309f), 4294967295u, vec3<f32>(-173f, 940f, -1013f), Struct_1(30068i, global2.b, vec4<bool>(global2.d, true, global2.d, true), true, global2.e))), true, true)), any(select(select(global2.c.xwx, global2.c.zwx, select(vec3<bool>(false, true, true), vec3<bool>(global2.c.x, false, global3.a), global2.c.yzz)), !vec3<bool>(false, global2.d, true), !vec3<bool>(global3.a, true, global2.d))), vec2<i32>(-_wgslsmith_add_i32(global2.a & 1i, ~arg_0.x), -31917i));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(602f)) + 632f) * 1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1117f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -419f)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(889f)) + _wgslsmith_f_op_f32(min(339f, 662f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(568f))), _wgslsmith_f_op_f32(2190f + 467f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = select(vec2<bool>(true, ((-852f > var_1.x) || (global4.x < global2.e.x)) | (var_0.b >= 4294967295u)), global2.c.yz, select(select(vec2<bool>(select(global2.d, false, true), all(vec4<bool>(false, global3.a, global3.a, global3.a))), func_2(var_1.zwz, ~2231u, _wgslsmith_f_op_vec3_f32(var_1.wxx - var_1.yzw), Struct_1(u_input.a.x, var_0.b, vec4<bool>(var_0.c.x, global2.c.x, var_0.c.x, global3.a), false, u_input.b)), func_2(_wgslsmith_f_op_vec3_f32(-var_1.yyw), ~global2.b, _wgslsmith_f_op_vec3_f32(var_1.xzx * var_1.zzz), var_0)), vec2<bool>(global3.a, (var_0.d || var_0.c.x) == (var_0.b >= global2.b)), !((14588i << (var_0.b % 32u)) < 30442i)));
    global0 = abs(u_input.b.x | _wgslsmith_dot_vec4_i32(select(vec4<i32>(-27788i, var_0.e.x, u_input.a.x, -18942i), vec4<i32>(global2.e.x, global4.x, -58269i, -1i), global3.a) >> (firstLeadingBit(vec4<u32>(0u, 4294967295u, var_0.b, 4294967295u)) % vec4<u32>(32u)), arg_0));
    global0 = 20226i;
    return _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, global2.b | 0u, var_0.b, ~firstLeadingBit(0u)), ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.b, var_0.b, 0u), vec4<u32>(var_0.b, 15976u, var_0.b, global2.b)) << (~vec4<u32>(0u, 0u, global2.b, 18923u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<i32>(68865i, 12242i);
    let var_0 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(62635u, global2.b, 0u, 0u), vec4<u32>(16644u, global2.b, global2.b, global2.b), vec4<u32>(0u, global2.b, 4294967295u, global2.b))), vec4<u32>(~59856u, ~global2.b, min(0u, global2.b), ~0u)), reverseBits(func_1(u_input.a)) >> (countOneBits(vec4<u32>(4294967295u, global2.b, 91742u, global2.b)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~global2.b), _wgslsmith_sub_u32(global2.b, global2.b)), select(vec2<u32>(~(~global2.b), ~(0u | global2.b)), _wgslsmith_sub_vec2_u32(var_0.xy, ~var_0.zy << (~vec2<u32>(global2.b, global2.b) % vec2<u32>(32u))), vec2<bool>(global3.a, !select(true, global3.a, global3.a))));
    var var_2 = Struct_1(0i, _wgslsmith_mod_u32(4294967295u, ~var_0.x) ^ _wgslsmith_dot_vec3_u32(func_1(vec4<i32>(1i, -2147483647i, -1i, 20935i) >> (var_0 % vec4<u32>(32u))).xxy, var_0.zxy), select(select(select(vec4<bool>(true, false, true, true), !global2.c, global2.c), global2.c, true), !(!(!global2.c)), global2.c.x), -1180f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-577f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -840f) * -445f), all(!vec4<bool>(global3.a, true, true, true)))), -vec2<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_add_i32(2147483647i, global4.x), global2.a)));
    let var_3 = Struct_1(u_input.b.x, reverseBits(firstTrailingBit(_wgslsmith_mult_u32(37488u, 19839u)) << ((0u << (global2.b % 32u)) % 32u)), vec4<bool>(any(var_2.c), true, global2.d, false & var_2.d), var_0.x < firstLeadingBit(global2.b & 37129u), global2.e);
    var_2 = var_3;
    global4 = vec2<i32>(7746i, ~(1i & (u_input.b.x ^ var_3.a)));
    var var_4 = Struct_3(275f, ~(-min(0i, ~global4.x)), var_3, !(!global2.c), var_3);
    global0 = _wgslsmith_sub_i32(var_3.e.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.ywz, select(~_wgslsmith_div_vec3_i32(~u_input.a.yyy, ~u_input.a.zxz), vec3<i32>(-1i, abs(1468i), _wgslsmith_dot_vec3_i32(u_input.a.zyz, vec3<i32>(global2.e.x, 17776i, 1i))) ^ u_input.a.zwz, global2.c.yww), 2147483647i ^ _wgslsmith_mod_i32(-2147483647i, max(var_3.a, var_3.e.x)), var_0.xww);
}

