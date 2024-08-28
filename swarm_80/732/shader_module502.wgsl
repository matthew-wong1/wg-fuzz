struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 6> = array<f32, 6>(1305f, -1809f, -674f, 238f, 475f, -1717f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(all(select(select(select(vec4<bool>(true, arg_1.d, false, arg_3.a), vec4<bool>(arg_2.a, true, arg_2.a, arg_3.b.x), vec4<bool>(false, arg_3.b.x, false, true)), !vec4<bool>(false, false, arg_2.a, arg_0.d), arg_0.a || arg_0.d), !select(vec4<bool>(arg_0.b.x, arg_1.a, arg_3.a, false), vec4<bool>(false, arg_0.d, true, true), arg_0.a), select(vec4<bool>(arg_0.a, arg_0.d, arg_0.a, false), vec4<bool>(arg_0.a, arg_0.b.x, true, true), false))), arg_2.b, _wgslsmith_dot_vec3_u32(u_input.a, firstLeadingBit(vec3<u32>(arg_3.c ^ 1u, 31692u, ~41543u))), _wgslsmith_div_u32(countOneBits(arg_3.c), 0u | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3.c), u_input.a.xx)) == ((_wgslsmith_mod_u32(arg_0.c, arg_1.c) & arg_3.c) ^ arg_0.c));
    global1 = array<f32, 6>();
    var var_1 = _wgslsmith_mult_i32(-2147483647i, abs(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, u_input.b.x) ^ u_input.b.wy), -u_input.b.ww)));
    var var_2 = global1[_wgslsmith_index_u32(var_0.c, 6u)];
    return arg_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = all(arg_2.b);
    let var_1 = Struct_1(!arg_0.b.x, select(vec2<bool>(~arg_2.c >= arg_3.c, true), vec2<bool>(!arg_2.b.x, true), arg_3.b), firstLeadingBit(firstLeadingBit(25968u)), true);
    var var_2 = _wgslsmith_sub_i32(~1i << (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.c, var_1.c, var_1.c), firstLeadingBit(vec4<u32>(arg_3.c, 11805u, arg_2.c, 0u))), abs(arg_3.c)) % 32u), abs(u_input.b.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(997f, 951f)), _wgslsmith_f_op_f32(f32(-1f) * -1040f), select(arg_3.a, arg_1.x != global1[_wgslsmith_index_u32(arg_2.c, 6u)], true))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(u_input.a.x, arg_0.c), 6u)])))) > _wgslsmith_f_op_f32(-arg_1.x);
    let var_3 = var_1.d;
    return any(vec4<bool>(false, !(global1[_wgslsmith_index_u32(~arg_0.c, 6u)] <= _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_3.c, 6u)], 404f)), all(vec3<bool>(true, all(vec3<bool>(var_1.b.x, false, true)), false)), var_3));
}

fn func_2() -> i32 {
    let var_0 = u_input.b.x & _wgslsmith_clamp_i32(-36455i, u_input.b.x, u_input.b.x);
    var var_1 = Struct_1(false, vec2<bool>(true, true), ~(~63840u), func_4(Struct_1(true, func_3(Struct_1(true, vec2<bool>(true, false), 21614u, true), Struct_1(true, vec2<bool>(true, false), u_input.a.x, true), Struct_1(false, vec2<bool>(true, false), u_input.a.x, true), Struct_1(false, vec2<bool>(false, false), u_input.a.x, true)), reverseBits(1u), all(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)])))), Struct_1(true, vec2<bool>(true, true), u_input.a.x, false), Struct_1(1u < _wgslsmith_mod_u32(49978u, u_input.a.x), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, false)), abs(8704u), false)));
    var var_2 = Struct_1(var_1.b.x, !(!var_1.b), abs(~u_input.a.x), !((u_input.b.x < var_0) != var_1.d));
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    return u_input.b.x;
}

fn func_1() -> Struct_1 {
    global0 = -_wgslsmith_mod_i32(-(u_input.b.x & 4602i) ^ func_2(), u_input.b.x);
    let var_0 = Struct_1(func_3(Struct_1(true, vec2<bool>(true, any(vec4<bool>(true, true, false, false))), _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(69463u, 0u, u_input.a.x))), true), Struct_1(any(vec3<bool>(true, true, true)) | all(vec4<bool>(true, false, true, false)), vec2<bool>(true, true), ~select(u_input.a.x, 6068u, true), func_4(Struct_1(false, vec2<bool>(true, true), 44359u, false), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]), Struct_1(false, vec2<bool>(false, true), u_input.a.x, false), Struct_1(true, vec2<bool>(false, false), u_input.a.x, true))), Struct_1(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), u_input.a.x, !func_3(Struct_1(false, vec2<bool>(true, true), u_input.a.x, true), Struct_1(false, vec2<bool>(true, true), u_input.a.x, false), Struct_1(false, vec2<bool>(false, true), u_input.a.x, false), Struct_1(false, vec2<bool>(true, false), u_input.a.x, true)).x), Struct_1(select(true, true, true), vec2<bool>(any(vec4<bool>(true, true, false, true)), true), ~1u, true)).x, select(vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false)), false), vec2<bool>(!(1000f != global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), false), true), reverseBits(37969u), select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(46804u, 6u)], 1287f), -728f)) <= -877f, false, !func_3(Struct_1(false, vec2<bool>(true, true), 6724u, false), Struct_1(false, vec2<bool>(false, true), 0u, true), Struct_1(true, vec2<bool>(false, false), 40479u, false), Struct_1(true, vec2<bool>(true, false), 4294967295u, true)).x & true));
    var var_1 = _wgslsmith_div_i32(u_input.b.x, countOneBits(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b.yyw), _wgslsmith_sub_vec3_i32(u_input.b.xyz ^ u_input.b.wzw, u_input.b.yxw | vec3<i32>(0i, u_input.b.x, u_input.b.x)))));
    var var_2 = var_0;
    global1 = array<f32, 6>();
    return Struct_1(false && (!(30079i < u_input.b.x) & func_4(var_0, vec2<f32>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(var_2.c, 6u)]), Struct_1(var_0.a, var_2.b, var_2.c, true), Struct_1(var_2.d, var_2.b, 43634u, var_2.b.x))), func_3(var_0, var_0, var_0, Struct_1(var_0.b.x, select(var_2.b, func_3(var_0, Struct_1(false, vec2<bool>(false, var_0.a), var_2.c, var_0.d), var_0, Struct_1(true, var_0.b, u_input.a.x, var_2.a)), true), 0u, !any(vec2<bool>(var_0.a, var_2.b.x)))), 4294967295u, select(func_3(var_0, Struct_1(var_2.d, vec2<bool>(var_0.a, var_2.b.x), 1u, var_0.b.x), Struct_1(var_0.a, var_2.b, var_2.c, var_2.d), Struct_1(var_0.a, var_0.b, 1u, true)).x || false, false, true) || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~max(vec4<u32>(22248u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u))), ~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u)) >> (~vec4<u32>(65249u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), select(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 30872u, 58594u) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 12355u) % vec4<u32>(32u))), vec4<u32>(~7364u, _wgslsmith_mod_u32(u_input.a.x, 1u), u_input.a.x, ~u_input.a.x)), vec4<u32>(u_input.a.x, abs(u_input.a.x), ~u_input.a.x, min(u_input.a.x, 46252u)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x)) % vec4<u32>(32u)), true));
    global1 = array<f32, 6>();
    var var_1 = true;
    var var_2 = vec2<bool>(u_input.a.x >= firstLeadingBit(20005u), (43684u >> (~(~1u) % 32u)) >= u_input.a.x);
    let var_3 = func_1();
    let var_4 = _wgslsmith_f_op_f32(617f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(606f, _wgslsmith_f_op_f32(round(-1326f))), -767f)));
    global1 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.x);
}

