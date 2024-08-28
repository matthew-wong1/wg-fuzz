struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    var var_0 = Struct_3(vec2<bool>(true, true), Struct_1(abs(u_input.c.zx)), firstLeadingBit(_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.e.yx), arg_0)), global1[_wgslsmith_index_u32(reverseBits(min(~24785u & u_input.b, ~1u)), 5u)]);
    let var_1 = _wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(1u, 21u)] | vec4<i32>(u_input.d, -14901i, -1i, ~arg_0.x << (~16331u % 32u)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -u_input.e, _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(u_input.c.x, 21u)] | u_input.e, ~u_input.e)), -reverseBits(vec4<i32>(1i, u_input.d, -3563i, var_0.c.x))), -max(~(u_input.e << (vec4<u32>(var_0.b.a.x, 1u, 24111u, 37822u) % vec4<u32>(32u))), min(vec4<i32>(9805i, arg_0.x, arg_0.x, 29154i), u_input.e)));
    var var_2 = var_0.d.x;
    global1 = array<vec4<bool>, 5>();
    let var_3 = var_0.d.xx;
    return arg_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = select(!(_wgslsmith_f_op_f32(round(arg_2)) < _wgslsmith_f_op_f32(round(-1236f))) && all(global1[_wgslsmith_index_u32(~(~21307u), 5u)]), arg_0.x, true);
    var var_1 = Struct_3(select(select(vec2<bool>(true, true), arg_0.xx, arg_0.zz), arg_1, true), arg_3, -_wgslsmith_add_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.d), u_input.e.wy, u_input.e.xx)), (vec2<i32>(53361i, 2147483647i) & u_input.e.wz) ^ u_input.e.xx), vec4<bool>(abs(arg_3.a.x) > _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, 1u, 1u), _wgslsmith_sub_u32(arg_3.a.x, 15155u)), -2147483647i > abs(u_input.e.x), all(!select(vec2<bool>(var_0, arg_0.x), arg_0.zy, vec2<bool>(false, arg_0.x))), true));
    var var_2 = global0[_wgslsmith_index_u32(reverseBits(arg_3.a.x), 21u)];
    global0 = array<vec4<i32>, 21>();
    var var_3 = Struct_1(~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.b)), vec2<u32>(u_input.b, var_1.b.a.x) & _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.a.x, 38996u), vec2<u32>(u_input.b, 11362u), var_1.b.a)));
    return var_1.b;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> u32 {
    global0 = array<vec4<i32>, 21>();
    let var_0 = !(!vec2<bool>(~u_input.b <= ~1u, true));
    let var_1 = Struct_2(func_3(select(!(!vec3<bool>(var_0.x, false, true)), select(!vec3<bool>(true, true, var_0.x), !vec3<bool>(var_0.x, var_0.x, true), !var_0.x), _wgslsmith_dot_vec2_i32(arg_2.xz, vec2<i32>(u_input.d, 4631i)) >= 1i), var_0, _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec2_i32(~arg_2.xz, arg_2.yz), -1000f)), Struct_1(_wgslsmith_sub_vec2_u32(arg_1.ww, vec2<u32>(u_input.b, 1u)))), -2147483647i);
    let var_2 = _wgslsmith_mult_i32(var_1.b, firstTrailingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 47597i, -2147483647i), u_input.e.zxz, true) & (arg_2.yzy & arg_2.zwx), reverseBits(_wgslsmith_clamp_vec3_i32(arg_2.wwx, u_input.e.xxx, u_input.e.wzy)))));
    global1 = array<vec4<bool>, 5>();
    return ~15441u << (_wgslsmith_mod_u32(firstTrailingBit(23839u), abs(firstLeadingBit(u_input.b)) | (1u | ~u_input.a)) % 32u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = func_3(vec3<bool>(true, true, true), !vec2<bool>(true, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2413f - 1541f))))), Struct_1(select(_wgslsmith_clamp_vec2_u32(min(arg_0.yx, vec2<u32>(4294967295u, 4294967295u)), abs(vec2<u32>(arg_1.a.x, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), arg_0.yz, false)));
    let var_1 = Struct_3(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(vec2<bool>(any(vec2<bool>(false, true)), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), var_0, firstLeadingBit(firstTrailingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.e.x, u_input.d)))), !(!(!select(vec4<bool>(true, true, false, true), global1[_wgslsmith_index_u32(var_0.a.x, 5u)], vec4<bool>(true, true, false, false)))));
    let var_2 = _wgslsmith_div_u32(~48459u, firstTrailingBit(select(0u, var_0.a.x, all(select(var_1.d, global1[_wgslsmith_index_u32(4294967295u, 5u)], vec4<bool>(true, var_1.a.x, false, false))))));
    global0 = array<vec4<i32>, 21>();
    var var_3 = any(select(select(!select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.d.x), var_1.d.yyz, true), vec3<bool>(var_1.a.x, true, true), select(vec3<bool>(true, false, var_1.d.x), select(var_1.d.wzx, vec3<bool>(var_1.d.x, var_1.d.x, false), var_1.a.x), select(var_1.d.zxy, var_1.d.xwy, var_1.d.xxy))), select(select(vec3<bool>(true, true, true), select(var_1.d.xyw, var_1.d.yzw, var_1.d.xzx), true && var_1.a.x), select(vec3<bool>(true, false, var_1.a.x), !vec3<bool>(var_1.a.x, true, true), !vec3<bool>(true, var_1.d.x, true)), all(select(vec4<bool>(true, false, var_1.d.x, false), global1[_wgslsmith_index_u32(0u, 5u)], true))), select(var_1.d.yzz, select(var_1.d.wzz, !vec3<bool>(false, true, var_1.a.x), var_1.a.x), var_1.d.zxx)));
    return vec4<i32>(-1i) * -(~firstTrailingBit(vec4<i32>(27148i, u_input.e.x, var_1.c.x, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(vec4<u32>(func_1(u_input.d, vec4<u32>(0u, 47766u, 46538u, u_input.a), vec4<i32>(-41400i, -25658i, u_input.d, u_input.d)), u_input.b, _wgslsmith_sub_u32(1u, 0u), u_input.b) << (~firstLeadingBit(vec4<u32>(u_input.c.x, u_input.a, u_input.a, 16824u)) % vec4<u32>(32u))), func_3(vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), !all(global1[_wgslsmith_index_u32(u_input.b, 5u)]), false), vec2<bool>(true, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(227f)))), Struct_1(~firstLeadingBit(vec2<u32>(u_input.c.x, u_input.a)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(920f * _wgslsmith_f_op_f32(f32(-1f) * -1038f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -275f))) * -1969f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-492f, -1418f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-630f + 300f))))));
    var var_2 = _wgslsmith_div_vec4_u32(~(~(~vec4<u32>(u_input.a, u_input.c.x, 35821u, 25673u))), vec4<u32>(120u << (max(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, 95877u, 0u)), _wgslsmith_mod_u32(0u, u_input.a)) % 32u), abs(u_input.b), u_input.c.x, ~u_input.a));
    let var_3 = true;
    var var_4 = func_3(select(vec3<bool>(var_3, true, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 27979u, var_2.x), u_input.c) > firstTrailingBit(u_input.c.x)), select(!vec3<bool>(var_3, false, true), select(!vec3<bool>(var_3, var_3, var_3), vec3<bool>(false, true, var_3), var_3), var_3), var_3), select(select(select(vec2<bool>(var_3, true), vec2<bool>(var_3, var_3), !vec2<bool>(true, var_3)), vec2<bool>(any(vec2<bool>(var_3, true)), var_3), var_3), !select(vec2<bool>(false, var_3), vec2<bool>(var_3, false), vec2<bool>(true, var_3)), vec2<bool>(true, var_3)), var_1.x, Struct_1(~(~(~var_2.zx))));
    global0 = array<vec4<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-249f * var_1.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-892f, var_1.x))))), u_input.c);
}

