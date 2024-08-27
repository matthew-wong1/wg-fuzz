struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 14>;

var<private> global1: array<vec3<bool>, 23>;

var<private> global2: array<i32, 7>;

var<private> global3: i32 = 21190i;

var<private> global4: vec2<u32> = vec2<u32>(22102u, 7831u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = array<vec4<bool>, 14>();
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(global4.x, 26462u, 1u), arg_0.yzy), ~(~1u) >> (firstTrailingBit(_wgslsmith_clamp_u32(1u, 87947u << (u_input.a.x % 32u), countOneBits(1u))) % 32u));
    let var_1 = 0u;
    let var_2 = Struct_1(firstLeadingBit(var_0.a) >> (abs(_wgslsmith_sub_vec3_u32(min(u_input.a, vec3<u32>(arg_0.x, 15403u, arg_0.x)), var_0.a | arg_0.wyx)) % vec3<u32>(32u)), ~(~_wgslsmith_sub_u32(50947u, _wgslsmith_mult_u32(var_1, var_1))));
    let var_3 = Struct_2(vec2<i32>(u_input.b, _wgslsmith_add_i32(2147483647i, (-1i >> (u_input.a.x % 32u)) >> (23530u % 32u))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, 0i <= global2[_wgslsmith_index_u32(var_2.b, 7u)])));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(669f))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_u32(vec4<u32>(97809u, 0u, global4.x, arg_0.b), vec4<u32>(0u, 61937u, var_0.b, var_0.a.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, 41919u, global4.x, 30897u), vec4<u32>(var_0.a.x, u_input.a.x, u_input.a.x, 19037u), vec4<u32>(global4.x, u_input.a.x, global4.x, global4.x)))) - _wgslsmith_f_op_f32(func_3(~vec4<u32>(3836u, arg_0.a.x, var_0.b, 1u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 37023u), vec4<u32>(1u, arg_0.b, 58331u, 0u), vec4<u32>(57540u, u_input.a.x, 64330u, 0u))))));
    global0 = array<vec4<bool>, 14>();
    global2 = array<i32, 7>();
    let var_2 = true;
    return arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global2 = array<i32, 7>();
    var var_0 = Struct_2(-(vec2<i32>(countOneBits(global2[_wgslsmith_index_u32(0u, 7u)]), firstTrailingBit(-7333i)) & arg_0.wx), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec2<bool>(true, true), all(global0[_wgslsmith_index_u32(global4.x, 14u)])), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, any(global1[_wgslsmith_index_u32(arg_1.b, 23u)])), vec2<bool>(any(vec3<bool>(true, true, true)), false))));
    let var_1 = Struct_2(var_0.a, var_0.b);
    global0 = array<vec4<bool>, 14>();
    global0 = array<vec4<bool>, 14>();
    return func_2(arg_1);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_1 {
    global2 = array<i32, 7>();
    var var_0 = func_4(~firstLeadingBit(~(-vec4<i32>(global2[_wgslsmith_index_u32(arg_1.x, 7u)], 0i, 0i, u_input.b))), func_2(Struct_1(u_input.a, ~(2728u ^ global4.x))), abs(~23723u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1010f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1674f, 1655f)) - _wgslsmith_f_op_f32(select(1224f, 2162f, arg_0.x))))), 1f, -1603f));
    global2 = array<i32, 7>();
    global2 = array<i32, 7>();
    return func_4(vec4<i32>(min(_wgslsmith_mult_i32(-global2[_wgslsmith_index_u32(global4.x, 7u)], u_input.b), -1977i), -_wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(2147483647i, u_input.b), 0i << (u_input.a.x % 32u)), u_input.b, u_input.b), Struct_1(~max(abs(var_0.a), vec3<u32>(18215u, 40868u, 21977u) << (vec3<u32>(arg_1.x, var_0.a.x, 4294967295u) % vec3<u32>(32u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, 266u, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(164004u, arg_1.x, global4.x, u_input.a.x), vec4<u32>(24685u, 0u, 20436u, u_input.a.x)))), ~1651u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, global4.x), firstTrailingBit(global4.x), global4.x), u_input.a.x), 14u)], vec4<bool>(false, true, true, true)), abs(~_wgslsmith_sub_vec2_u32(u_input.a.xx, vec2<u32>(global4.x, 20824u))) ^ u_input.a.zy);
    global1 = array<vec3<bool>, 23>();
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-global2[_wgslsmith_index_u32(var_0.a.x, 7u)], -16205i | u_input.b, ~u_input.b, -global2[_wgslsmith_index_u32(59970u, 7u)]), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-15805i, 2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], -2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(101078u, 7u)], 41959i, -21979i, -2147483647i)), -vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], u_input.b, u_input.b, 31935i))) >> (vec4<u32>(firstLeadingBit(global4.x), ~var_0.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u)), (~firstLeadingBit(vec4<i32>(23610i, -16150i, u_input.b, -18322i)) | vec4<i32>(-61840i, _wgslsmith_dot_vec2_i32(vec2<i32>(-65469i, u_input.b), vec2<i32>(1i, 3599i)), global2[_wgslsmith_index_u32(~0u, 7u)], countOneBits(u_input.b))) >> (vec4<u32>(105825u, countOneBits(var_0.b), 0u, ~16853u) % vec4<u32>(32u)));
    let var_2 = func_2(Struct_1(var_0.a, max(1u, 7712u))).b;
    var var_3 = Struct_1(select(_wgslsmith_sub_vec3_u32(~u_input.a, vec3<u32>(39514u, var_2, 11995u << (var_2 % 32u))), _wgslsmith_mult_vec3_u32(var_0.a, min(vec3<u32>(var_0.b, 0u, 23521u) ^ vec3<u32>(global4.x, u_input.a.x, 13145u), vec3<u32>(15918u, 1573u, global4.x))), vec3<bool>(false, false, true)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a.x, u_input.a.x), max(~4294967295u, func_1(global0[_wgslsmith_index_u32(1u, 14u)], var_0.a.zz).b)) & (global4.x & 0u));
    let var_4 = Struct_1(select(vec3<u32>(~0u, ~16324u, ~var_2), u_input.a, global1[_wgslsmith_index_u32(u_input.a.x & 1u, 23u)]) ^ (var_0.a ^ (vec3<u32>(0u, 26387u, var_0.a.x) >> (var_3.a % vec3<u32>(32u)))), func_4(firstLeadingBit(vec4<i32>(u_input.b, 2147483647i, -64681i, global2[_wgslsmith_index_u32(0u, 7u)])) ^ (-vec4<i32>(u_input.b, -60084i, 15173i, var_1.x) ^ var_1), Struct_1(~countOneBits(vec3<u32>(var_0.a.x, 47469u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(47236u, var_2, 57418u, 1u), vec4<u32>(var_0.b, 18023u, 3023u, 62805u) | vec4<u32>(0u, global4.x, 6860u, 64533u))), ~min(1u | global4.x, 0u)).b);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(abs(u_input.b), -global2[_wgslsmith_index_u32(16207u, 7u)], _wgslsmith_div_i32(_wgslsmith_mult_i32(-18736i, 25913i), global2[_wgslsmith_index_u32(var_0.a.x, 7u)])), _wgslsmith_mod_vec3_i32(var_1.wyx, -vec3<i32>(-1i, var_1.x, 0i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-190f, -345f, -178f) + vec3<f32>(1827f, 1579f, 1336f))))))));
}

