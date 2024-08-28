struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, _wgslsmith_div_u32(4294967295u, 22219u)), ~(~vec2<u32>(u_input.e, u_input.e))), firstTrailingBit(u_input.e)));
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    var_0 = 71476u ^ u_input.e;
    let var_1 = min(2147483647i, ~(-countOneBits(2147483647i)));
    return abs(_wgslsmith_mult_vec3_u32(vec3<u32>(39936u, u_input.e, 62781u), ~vec3<u32>(abs(102561u), min(u_input.e, u_input.e), ~u_input.e)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = Struct_4(arg_1.a, arg_1.b, !(!(!select(arg_1.c, arg_1.c, arg_1.a.yx))), ~abs(arg_1.d));
    var_0 = arg_1;
    global0 = array<vec4<bool>, 9>();
    var_0 = Struct_4(!var_0.a, Struct_1(-10221i, vec3<bool>(true, arg_1.b.c || var_0.a.x, arg_2 != _wgslsmith_f_op_f32(-arg_2)), true || var_0.b.c), vec2<bool>(all(arg_1.a), all(!arg_1.a.wy)), func_3(Struct_2(var_0.b, Struct_1(_wgslsmith_div_i32(u_input.a.x, u_input.b.x), vec3<bool>(true, true, false), !var_0.b.c), false, vec3<f32>(_wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(arg_2 * arg_2), _wgslsmith_f_op_f32(trunc(-780f))), Struct_1(~1i, arg_1.b.b, var_0.b.c))));
    var var_1 = Struct_2(Struct_1(~reverseBits(-34408i >> (arg_1.d.x % 32u)), var_0.b.b, false), arg_1.b, all(!(!(!arg_1.b.b.zz))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(-1890f, 131f, true))))))), var_0.b);
    return _wgslsmith_f_op_f32(exp2(arg_2));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_3 {
    var var_0 = ~countOneBits(abs(select(reverseBits(0u), u_input.e, all(vec3<bool>(true, true, true)))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_i32(12696i, arg_0.x), vec3<bool>(false, true, true), true), u_input.c);
    var var_2 = _wgslsmith_sub_u32(max(_wgslsmith_mult_u32(0u, u_input.e), u_input.e | 35504u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, 1u, u_input.e, u_input.e), vec4<u32>(0u, u_input.e, u_input.e, u_input.e), true), firstLeadingBit(vec4<u32>(20806u, u_input.e, 4294967295u, 1u))), vec4<u32>(0u, u_input.e, ~1u, u_input.e)), firstTrailingBit(~_wgslsmith_sub_u32(u_input.e, u_input.e))));
    var var_3 = max(_wgslsmith_clamp_u32(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.e, u_input.e), ~vec4<u32>(22528u, u_input.e, 0u, u_input.e)), 102786u) & 54137u, 37117u);
    var_2 = ~_wgslsmith_clamp_u32(u_input.e, 1u, 88820u);
    return Struct_3(var_1.a, _wgslsmith_mult_i32(0i, -(~_wgslsmith_clamp_i32(u_input.b.x, 1i, 26403i))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> i32 {
    let var_0 = func_4(~firstTrailingBit(u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(func_2(u_input.a.zw, Struct_4(vec4<bool>(arg_1.a.c, arg_1.a.c, true, true), Struct_1(1i, vec3<bool>(false, true, true), false), arg_1.e.b.zy, vec3<u32>(arg_2, 4294967295u, 43196u)), 716f, arg_1.b.a))))), _wgslsmith_f_op_f32(func_2(~(-(~u_input.d.zz)), Struct_4(vec4<bool>(true, true, false, arg_1.e.b.x | true), arg_1.a, !select(vec2<bool>(true, arg_1.c), arg_1.a.b.zx, arg_1.a.b.zz), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 22533u, u_input.e), vec3<u32>(arg_3, u_input.e, arg_3))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-683f + -366f) - arg_0.x))), u_input.d.x | firstTrailingBit(max(-22864i, 41932i)))));
    let var_1 = arg_2;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * arg_1.d.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.yx, Struct_4(global0[_wgslsmith_index_u32(1u, 9u)], Struct_1(-27376i, vec3<bool>(arg_1.a.c, true, false), true), vec2<bool>(var_0.a.b.x, var_0.a.b.x), vec3<u32>(arg_3, var_1, 1u)), _wgslsmith_f_op_f32(func_2(u_input.d.yy, Struct_4(global0[_wgslsmith_index_u32(arg_2, 9u)], arg_1.a, vec2<bool>(true, true), vec3<u32>(4294967295u, arg_2, u_input.e)), 367f, -2147483647i)), arg_1.b.a))), _wgslsmith_f_op_f32(select(arg_1.d.x, -1357f, true)))), arg_0.x);
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    return arg_1.e.a | 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(false, true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1968f, _wgslsmith_f_op_f32(f32(-1f) * -305f), -390f)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2185f - -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -304f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-836f + 263f))))));
    let var_2 = Struct_3(Struct_1(-53284i, select(vec3<bool>(true, true, true), vec3<bool>(false, u_input.e != u_input.e, false), vec3<bool>(true, true, true)), true), _wgslsmith_add_i32(u_input.d.x, _wgslsmith_mult_i32(func_1(vec4<f32>(var_1.x, var_1.x, var_1.x, 726f), Struct_2(Struct_1(u_input.c, vec3<bool>(true, false, true), true), Struct_1(u_input.a.x, vec3<bool>(false, true, true), false), true, vec3<f32>(-919f, var_1.x, var_1.x), Struct_1(u_input.d.x, vec3<bool>(false, false, true), false)), u_input.e, 51246u), u_input.b.x) | 20039i));
    let var_3 = var_1.x;
    var var_4 = _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(var_2.b, var_2.a.a, 13989i, _wgslsmith_mult_i32(abs(reverseBits(u_input.d.x)), -var_2.a.a)));
    var var_5 = 0u & (countOneBits(u_input.e) ^ (_wgslsmith_add_u32(u_input.e, 1u) ^ reverseBits(4294967295u)));
    var var_6 = Struct_4(vec4<bool>(false, var_2.a.c, true, var_2.a.a == ~(-2147483647i)), Struct_1(u_input.d.x, var_2.a.b, true), !var_2.a.b.xx, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(39820u, 26385u, 11528u) << (vec3<u32>(u_input.e, u_input.e, u_input.e) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, u_input.e, 9559u)), countOneBits(vec3<u32>(2579u, 0u, u_input.e) & vec3<u32>(u_input.e, u_input.e, 4294967295u))), ~vec3<u32>(4294967295u, u_input.e, _wgslsmith_add_u32(1u, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1), ~(~(~_wgslsmith_add_u32(u_input.e, 1u))));
}

