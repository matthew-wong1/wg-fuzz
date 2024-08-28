struct Struct_1 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> vec2<f32> {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(-1i, u_input.c.x)), vec2<i32>(abs(-13274i), ~u_input.c.x), global1[_wgslsmith_index_u32(arg_1.c.x, 18u)]), -select(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 53395i), global1[_wgslsmith_index_u32(arg_1.c.x, 18u)]), u_input.b.zy, select(vec2<bool>(false, true), vec2<bool>(false, true), false))), u_input.c.x >> (abs(~arg_1.c.x) % 32u));
    var var_1 = arg_2;
    let var_2 = !any(vec3<bool>(true, false, all(vec3<bool>(true, true, true))));
    global0 = arg_1.a;
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(-1148f)), _wgslsmith_f_op_vec2_f32(sign(global0.b)));
    return arg_0.b;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-386f, global0.b), Struct_2(Struct_1(global0.a, vec2<f32>(global0.a, global0.b.x)), Struct_1(605f, vec2<f32>(global0.b.x, -524f)), vec4<u32>(4294967295u, 1u, u_input.e.x, u_input.d)), 881f)), global0.b, true)) + global0.b)), Struct_1(2415f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(240f, global0.b.x))) + _wgslsmith_f_op_vec2_f32(min(global0.b, vec2<f32>(396f, 1000f))))))), (u_input.e ^ ~(~u_input.e)) >> (~(vec4<u32>(arg_0, arg_0, 0u, u_input.e.x) & _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(91974u, u_input.a, 0u, 0u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(abs(var_0.b.b.x));
    let var_2 = true;
    let var_3 = true;
    var var_4 = true;
    return Struct_2(Struct_1(var_0.b.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.b.b + vec2<f32>(622f, var_0.b.a)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(144f, -684f))), var_3))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.a) - _wgslsmith_f_op_f32(trunc(var_0.b.b.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(exp2(global0.b.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-792f, var_0.b.b.x)))))), firstLeadingBit(~vec4<u32>(arg_0, 1u, u_input.e.x, 0u)) & ~var_0.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> vec2<u32> {
    global1 = array<vec2<i32>, 18>();
    var var_0 = ~arg_0.x;
    global1 = array<vec2<i32>, 18>();
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1844i, -firstLeadingBit(~1i), -2147483647i, 31314i));
    let var_2 = Struct_1(125f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b.x + -1063f))), global0.a)));
    return countOneBits(arg_0.xx);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    global1 = array<vec2<i32>, 18>();
    let var_0 = ~(~arg_1.xx ^ func_4(~_wgslsmith_mod_vec3_u32(u_input.e.zww, u_input.e.xyw), func_2(42753u & arg_0), vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(round(1088f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(-2492f, vec2<f32>(global0.a, global0.b.x)), Struct_2(Struct_1(global0.a, vec2<f32>(-1183f, -603f)), Struct_1(global0.a, vec2<f32>(-238f, global0.a)), vec4<u32>(arg_1.x, u_input.a, u_input.e.x, u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -632f))).x));
    global0 = func_2(func_4(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 1u), arg_1), func_2(firstTrailingBit(42180u) << (_wgslsmith_clamp_u32(u_input.a, 1u, u_input.d) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.b.x, -1214f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -485f, global0.b.x) * vec3<f32>(1655f, global0.b.x, 464f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1109f, -748f, global0.b.x) + vec3<f32>(global0.a, global0.b.x, 294f))))), -432f).x).a;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, -778f, global0.a, 422f))))))));
    let var_2 = func_2(select(~select(arg_0, var_0.x, true) & 39665u, u_input.d, true));
    return Struct_1(_wgslsmith_f_op_f32(-var_2.b.a), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x)))));
    global0 = func_1(1u, _wgslsmith_mod_vec3_u32((vec3<u32>(0u, u_input.d, u_input.a) ^ ~vec3<u32>(u_input.a, u_input.d, 43348u)) & vec3<u32>(0u, 1u, 1u), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 29738u, u_input.a) & vec3<u32>(4294967295u, 53505u, u_input.e.x), u_input.e.zxz & vec3<u32>(0u, u_input.e.x, u_input.e.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(195f, 1000f, var_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-598f, var_0, -1557f), vec3<f32>(1126f, var_0, global0.a)))))));
    global0 = Struct_1(var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_0, _wgslsmith_f_op_vec2_f32(min(global0.b, vec2<f32>(var_1.x, -565f)))), Struct_2(Struct_1(var_1.x, vec2<f32>(1433f, -842f)), func_1(u_input.a, u_input.e.yzz), ~vec4<u32>(3253u, 5613u, u_input.e.x, 1u)), _wgslsmith_f_op_f32(floor(419f))))));
    let var_2 = func_2(firstTrailingBit(_wgslsmith_mod_u32(reverseBits(1u) | _wgslsmith_clamp_u32(4294967295u, 51280u, u_input.a), _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(u_input.a, u_input.e.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(u_input.e.x, 1u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2871f, var_2.a.b.x))), _wgslsmith_f_op_f32(263f + 574f)));
}

