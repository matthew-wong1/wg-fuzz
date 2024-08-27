struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    let var_0 = arg_1.a;
    global2 = arg_1;
    let var_1 = global2.b;
    let var_2 = Struct_1(select(!(!vec3<bool>(var_0.x, arg_2, arg_1.a.x)), vec3<bool>(true, true, any(!arg_1.a)), select(vec3<bool>(false, var_0.x, false), var_0, !(global2.b.x <= var_1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global2.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, var_1.x))));
    global0 = array<i32, 27>();
    return vec4<u32>(29u, ~_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(2014u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(4625u, 6549u), vec2<u32>(1u, 1u))), countOneBits(2336u), select(max(2545u, ~(~0u)), 37045u, arg_2));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> vec4<f32> {
    global1 = array<Struct_2, 22>();
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~0i, ~u_input.a ^ select(u_input.a, global0[_wgslsmith_index_u32(38092u, 27u)], true), reverseBits(-global0[_wgslsmith_index_u32(arg_1, 27u)]), global0[_wgslsmith_index_u32(firstLeadingBit(~arg_0.x), 27u)]), reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(18228u, 27u)], 1i, global0[_wgslsmith_index_u32(68719u, 27u)] | -1i, global0[_wgslsmith_index_u32(arg_2.x, 27u)]))), select(max(vec4<i32>(2147483647i, u_input.a, min(u_input.a, -2147483647i), 1i), ~(vec4<i32>(global0[_wgslsmith_index_u32(1u, 27u)], -45871i, u_input.a, -1i) | vec4<i32>(1i, global0[_wgslsmith_index_u32(9182u, 27u)], 27153i, 1i))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, 0i, -1i), vec4<i32>(24500i, -1i, 41926i, u_input.a), true), vec4<i32>(-2147483647i, 5633i, u_input.a, u_input.a) >> (arg_0 % vec4<u32>(32u))), ~(~vec4<i32>(0i, global0[_wgslsmith_index_u32(arg_2.x, 27u)], global0[_wgslsmith_index_u32(arg_2.x, 27u)], 2420i))), false));
    let var_1 = !vec3<bool>(!global2.a.x, true, true);
    let var_2 = select(~(~_wgslsmith_div_vec4_u32(func_3(vec3<i32>(-1i, global0[_wgslsmith_index_u32(arg_2.x, 27u)], 51915i), Struct_1(var_1, global2.b), false), arg_0)), countOneBits(_wgslsmith_sub_vec4_u32(func_3(~vec3<i32>(-4553i, u_input.a, 19963i), Struct_1(var_1, vec2<f32>(-961f, arg_3)), !var_1.x), _wgslsmith_div_vec4_u32(~arg_2, arg_0 | arg_0))), vec4<bool>(true, false, var_1.x, global2.a.x));
    let var_3 = select(vec2<bool>(global2.a.x, global2.a.x), var_1.yx, !select(all(select(vec3<bool>(global2.a.x, true, var_1.x), vec3<bool>(false, false, var_1.x), global2.a.x)), true, global2.a.x));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-397f, arg_3, global2.b.x, -1095f) * vec4<f32>(global2.b.x, arg_3, -198f, global2.b.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_3, 3290f, 1000f, arg_3), vec4<f32>(arg_3, global2.b.x, global2.b.x, 714f))))) + vec4<f32>(-923f, _wgslsmith_f_op_f32(select(1051f, _wgslsmith_div_f32(1173f, -1000f), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3, arg_3)))))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> f32 {
    global0 = array<i32, 27>();
    let var_0 = 1000f;
    global2 = Struct_1(!vec3<bool>(all(select(vec4<bool>(global2.a.x, true, global2.a.x, false), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x))), true || global2.a.x, false), global2.b);
    global0 = array<i32, 27>();
    let var_1 = Struct_2(!(!(!(!vec4<bool>(global2.a.x, false, global2.a.x, global2.a.x)))), Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(global2.b - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yx) + arg_1.xz))), global0[_wgslsmith_index_u32(max(~func_3(vec3<i32>(2147483647i, 57844i, global0[_wgslsmith_index_u32(3374u, 27u)]) & vec3<i32>(arg_2, u_input.a, u_input.a), Struct_1(global2.a, vec2<f32>(global2.b.x, -2843f)), true).x, max(4294967295u >> (1u % 32u), ~1u)), 27u)], arg_1.yxw, Struct_1(global2.a, vec2<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(537f - 1144f))), -1882f)));
    return arg_1.x;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(4294967295u, 20139u, 84994u, 1u), 4294967295u, vec4<u32>(0u, 0u, 33380u, 49524u), 893f)), -56046i))))), -1311f);
    var var_1 = Struct_2(vec4<bool>(!all(!vec3<bool>(global2.a.x, global2.a.x, global2.a.x)), true, arg_0.e.a.x, arg_0.b.a.x), arg_0.e, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(12297i, u_input.a) >> (min(vec2<u32>(1u, 35597u), vec2<u32>(75933u, 1u)) % vec2<u32>(32u)), vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(70311u, 27u)]) >> (~vec2<u32>(9803u, 1u) % vec2<u32>(32u))), -vec2<i32>(1i, 1i)), vec3<f32>(_wgslsmith_f_op_f32(select(-299f, -917f, any(select(arg_0.b.a, vec3<bool>(true, global2.a.x, arg_0.e.a.x), vec3<bool>(global2.a.x, true, true))))), global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(global2.b.x * var_0.x))))), Struct_1(vec3<bool>(true, global2.a.x, all(select(vec4<bool>(true, arg_0.e.a.x, false, arg_0.e.a.x), vec4<bool>(true, arg_0.b.a.x, arg_0.a.x, false), arg_0.a))), arg_0.d.xy));
    return arg_0.e;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    let var_0 = arg_1.b.x;
    var var_1 = Struct_2(select(vec4<bool>(global2.a.x, all(!vec3<bool>(arg_1.a.x, true, false)), arg_2.e.a.x, all(vec2<bool>(true, arg_2.b.a.x))), vec4<bool>(firstLeadingBit(1i) <= reverseBits(u_input.a), !all(vec2<bool>(arg_1.a.x, false)), global2.a.x, true), vec4<bool>(true, !(!arg_2.b.a.x), false, arg_0.x)), func_1(arg_2), arg_2.c, arg_2.d, func_1(Struct_2(vec4<bool>(arg_2.e.a.x, true, true, true), arg_2.b, -(~global0[_wgslsmith_index_u32(4294967295u, 27u)]), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1225f, 947f, 1419f)))), arg_1)));
    let var_2 = vec2<f32>(arg_2.e.b.x, 1f);
    global2 = func_1(Struct_2(arg_2.a, func_1(Struct_2(!vec4<bool>(false, arg_2.e.a.x, arg_1.a.x, arg_0.x), Struct_1(vec3<bool>(global2.a.x, false, false), vec2<f32>(-252f, arg_1.b.x)), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_3, 27u)], u_input.a), vec3<f32>(1072f, 349f, var_2.x), func_1(global1[_wgslsmith_index_u32(120993u, 22u)]))), -u_input.a, var_1.d, Struct_1(arg_0.yzx, _wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, global2.b.x), _wgslsmith_f_op_vec2_f32(-global2.b)))));
    var var_3 = firstTrailingBit(~(~(~vec2<u32>(0u, arg_3))));
    return !arg_2.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-293f * global2.b.x);
    global1 = array<Struct_2, 22>();
    var_0 = global2.b.x;
    let var_1 = vec2<bool>(global2.a.x, any(vec2<bool>(true, true)));
    var var_2 = select(select(select(select(global2.a, vec3<bool>(var_1.x, var_1.x, global2.a.x), select(global2.a, global2.a, true)), !global2.a, false), select(func_5(!vec4<bool>(true, false, true, var_1.x), func_1(global1[_wgslsmith_index_u32(5032u, 22u)]), global1[_wgslsmith_index_u32(max(0u, 0u), 22u)], countOneBits(13354u)), !(!vec3<bool>(true, true, var_1.x)), global2.a), global2.a), !global2.a, vec3<bool>(select(all(!vec2<bool>(global2.a.x, false)), _wgslsmith_sub_i32(-2147483647i, 1i) == global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(abs(4294967295u), 27u)] < max(global0[_wgslsmith_index_u32(13463u, 27u)], u_input.a)), -2147483647i >= u_input.a, select(!(global2.b.x != global2.b.x), all(global2.a), false)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.a, -23192i, u_input.a)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(11497u, 27u)], -33122i, 2147483647i), vec3<i32>(-2147483647i, -31776i, 47734i)), vec3<i32>(-72954i, u_input.a, global0[_wgslsmith_index_u32(7881u, 27u)]) & vec3<i32>(global0[_wgslsmith_index_u32(30464u, 27u)], u_input.a, -36694i))), ~(-(~vec3<i32>(2147483647i, u_input.a, 2147483647i))), global2.a), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(1u, 19825u, reverseBits(26661u), select(28287u, 32527u, false)), countOneBits(firstTrailingBit(1u)), vec4<u32>(select(36991u, 0u, global2.a.x), 0u, countOneBits(15167u), 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * global2.b.x) - global2.b.x))).xwz));
}

