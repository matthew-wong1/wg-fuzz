struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 4294967295u, 23197u, 12156u, 18841u, 16281u, 64624u, 12741u, 1u, 0u, 15025u, 14021u, 0u, 3007u, 42828u, 0u, 1u, 4294967295u, 1u, 25462u, 11280u, 16282u, 0u, 0u, 0u, 4294967295u, 1u, 0u, 0u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = vec2<f32>(1843f, arg_2);
    return u_input.d.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = u_input.d.xy ^ vec2<i32>(u_input.c & -17038i, u_input.d.x);
    let var_1 = ~u_input.b;
    var var_2 = u_input.c;
    let var_3 = arg_1;
    var_2 = -(~(~var_0.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a.b.xzy))) - _wgslsmith_f_op_vec3_f32(var_3.a.a * _wgslsmith_f_op_vec3_f32(ceil(var_3.a.b.xww)))) - var_3.a.a);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(true);
    let var_1 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(firstTrailingBit(42463u) | 1u, _wgslsmith_sub_u32(u_input.b.x, 38612u)), 1u), 30u)], 30u)];
    var_0 = Struct_2(all(!(!select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a)))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(u_input.b, Struct_3(Struct_1(arg_1.www, vec4<f32>(arg_1.x, 140f, 565f, arg_1.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 621f, -360f, arg_1.x) - vec4<f32>(1019f, -108f, arg_1.x, arg_1.x)), var_0.a)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1.wwy - arg_1.ywx))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + _wgslsmith_f_op_vec4_f32(sign(var_2.a.b))));
    return Struct_2(var_0.a);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = false;
    var_0 = arg_1.a;
    var var_1 = u_input.c;
    var var_2 = func_2(~select(~vec4<u32>(4294967295u, 6229u, global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), select(vec4<u32>(71374u, global0[_wgslsmith_index_u32(0u, 30u)], 105045u, u_input.a), vec4<u32>(u_input.b.x, u_input.a, 77671u, u_input.b.x), vec4<bool>(false, false, arg_1.a, arg_2.x)), arg_2.x & arg_1.a) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 4294967295u, 21082u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(u_input.b.x, 1u, global0[_wgslsmith_index_u32(9143u, 30u)], u_input.a) & vec4<u32>(116007u, 1u, u_input.a, u_input.a))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 - -1464f), -245f, 961f, -315f)))), vec4<i32>(u_input.c, 2147483647i, 83832i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-18195i, u_input.d.x, -1i, u_input.d.x) & vec4<i32>(0i, u_input.c, 4700i, u_input.d.x), vec4<i32>(2147483647i, -2147483647i, 2147483647i, u_input.d.x)), select(~vec4<i32>(u_input.c, 2147483647i, 2147483647i, 0i), vec4<i32>(u_input.c, u_input.d.x, 62613i, 19897i) | vec4<i32>(0i, 0i, 33460i, 2147483647i), true))));
    var_2 = Struct_2(arg_1.a);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1033f, arg_0, arg_0))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(523f, 1234f))), 445f, arg_0, arg_0), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2101f), _wgslsmith_f_op_f32(-844f * _wgslsmith_f_op_f32(step(arg_0, arg_0))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(216f - arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1056f, arg_0) - _wgslsmith_f_op_f32(trunc(-1008f)))), select(select(!vec4<bool>(false, true, arg_2.x, arg_1.a), !vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), !arg_1.a), !vec4<bool>(true, arg_2.x, false, arg_1.a), vec4<bool>(true, true, arg_2.x, any(arg_2.zx))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(459f - 2361f));
    var var_1 = abs(u_input.b.zx);
    var var_2 = Struct_2(true);
    let var_3 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2645f, _wgslsmith_f_op_f32(f32(-1f) * -224f)))))), func_2(max(_wgslsmith_sub_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(44466u, 30u)], 69126u, 42348u, 1u), reverseBits(vec4<u32>(1u, u_input.a, 51606u, 1u))), ~(vec4<u32>(var_1.x, u_input.a, var_1.x, 1u) | vec4<u32>(0u, 4294967295u, u_input.a, 34401u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-823f, _wgslsmith_f_op_f32(f32(-1f) * -335f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec4<f32>(-1392f, -280f, _wgslsmith_f_op_f32(-1186f - -1492f), -433f)), vec4<i32>(-1i, func_1(u_input.d & u_input.d, Struct_2(true), _wgslsmith_div_f32(-3146f, -408f), Struct_2(var_2.a)), u_input.d.x, reverseBits(-25079i))), !vec3<bool>(!(!var_2.a), var_2.a, true));
    let var_4 = min(vec4<i32>(abs(min(1440i, u_input.d.x)), min(_wgslsmith_div_i32(3439i, u_input.c), -2147483647i), -2147483647i, -select(-u_input.c, ~u_input.c, var_3.b.x > var_3.a.x)), ~(~firstLeadingBit(-vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, -7728i))));
    var var_5 = -2229f;
    let var_6 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b.x), var_3.a.x))), func_2(~vec4<u32>(1u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 30u)], u_input.a) >> (reverseBits(vec4<u32>(37326u, global0[_wgslsmith_index_u32(1u, 30u)], 1u, var_1.x)) % vec4<u32>(32u)), var_3.b, countOneBits(reverseBits(abs(vec4<i32>(var_4.x, u_input.d.x, var_4.x, 2147483647i))))), select(!vec3<bool>(var_2.a | true, true, var_2.a), select(!(!vec3<bool>(false, false, var_2.a)), vec3<bool>(var_2.a, var_2.a, true), all(vec3<bool>(true, true, true))), true));
    var_0 = var_3.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-(~u_input.c) | 0i, 1i));
}

