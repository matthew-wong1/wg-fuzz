struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 766f;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<f32>(-1000f, 495f), 21315u, -10852i), Struct_1(vec2<f32>(-836f, -816f), 63146u, 13726i), Struct_1(vec2<f32>(1423f, -135f), 1u, i32(-2147483648)), Struct_1(vec2<f32>(1000f, -1211f), 4294967295u, 30332i), Struct_1(vec2<f32>(-816f, 1000f), 0u, i32(-2147483648)), Struct_1(vec2<f32>(1000f, 348f), 25453u, -2890i), Struct_1(vec2<f32>(105f, -1705f), 0u, -1i), Struct_1(vec2<f32>(247f, -418f), 18553u, 24817i));

var<private> global2: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = 2765i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a.x, 1112f))))))), reverseBits(~(~1u)), -2147483647i & ~reverseBits(-global2.c));
    global1 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -501f);
    global2 = global1[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec2_u32(~u_input.a.yw, ~u_input.a.wx) | 30622u), 8u)];
    return vec2<i32>(arg_1.c, ~firstLeadingBit(var_1.c));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-560f, 498f)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(global2.a)), firstTrailingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a.xyx) | (u_input.a.xyy | vec3<u32>(1u, u_input.a.x, 4294967295u)), u_input.a.yxy)), global2.c);
    global2 = Struct_1(var_0.a, 51438u, 2147483647i);
    var var_1 = global2.a.x;
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(972u, global2.b), global2.b), 4294967295u, ~45595u);
    return global2.c;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = vec3<bool>(!(true || !arg_2.x), false, !(func_3() >= -1i));
    global2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(340f)), _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_f32(-arg_1)))), 0u, ~_wgslsmith_mod_i32(-2147483647i, ~(-global2.c)));
    global1 = array<Struct_1, 8>();
    var var_1 = vec4<bool>(false, any(arg_2) || all(select(vec2<bool>(arg_2.x, true), vec2<bool>(arg_2.x, false), arg_2.zy)), true, all(!var_0.yz));
    let var_2 = !select(vec3<bool>(var_0.x, true, any(!vec3<bool>(false, arg_2.x, var_1.x))), select(select(vec3<bool>(false, var_0.x, true), var_0, !vec3<bool>(var_1.x, var_0.x, arg_2.x)), var_1.yxx, !vec3<bool>(var_1.x, var_1.x, false)), any(var_1.yzz));
    return global1[_wgslsmith_index_u32(4294967295u, 8u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = -1073f;
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 8u)];
    var var_2 = select(all(select(vec3<bool>(any(vec4<bool>(false, true, true, true)), any(vec3<bool>(false, true, false)), var_1.c >= arg_2.c), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))))), true, true);
    var_0 = 1691f;
    let var_3 = arg_0;
    return arg_2;
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return func_2(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b, 4294967295u, abs(0u), 1u), firstLeadingBit(~(~u_input.a))), func_2(~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_3.a.x, -609f)))) * global2.a.x), !vec4<bool>(true, any(vec3<bool>(true, false, true)), any(vec4<bool>(false, true, true, false)), true)).a.x, vec4<bool>(true, true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)), all(vec4<bool>(true, true, true, true)) & (select(false, false, false) & (arg_2.b != global2.b))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-594f, 567f))), -1072f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1689f, arg_0.a.x), _wgslsmith_f_op_vec2_f32(trunc(arg_1.a)))))))), max(arg_0.b, func_4(func_5(vec2<i32>(-2979i, 45533i), -18153i, func_2(vec4<u32>(u_input.a.x, 30956u, 1u, arg_1.b), arg_0.a.x, vec4<bool>(false, false, true, false)), Struct_1(arg_0.a, 85234u, 7305i)), _wgslsmith_div_u32(~4294967295u, 24797u), Struct_1(_wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(arg_0.a.x, arg_0.a.x)), ~111u, -1i)).b), arg_0.c);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - -391f)), 590f, _wgslsmith_f_op_f32(-func_2(vec4<u32>(reverseBits(arg_0.b), arg_2.b, 22937u, global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f - arg_0.a.x)), vec4<bool>(arg_1.x, false & arg_1.x, arg_1.x, false)).a.x));
    var var_1 = -1i;
    global1 = array<Struct_1, 8>();
    var var_2 = arg_2.a.x;
    let var_3 = ~(~arg_0.c);
    return func_5(_wgslsmith_mult_vec2_i32(firstLeadingBit(select(abs(vec2<i32>(arg_2.c, 1i)), vec2<i32>(arg_2.c, arg_2.c), arg_1.xx)), vec2<i32>(-43350i, arg_0.c)), _wgslsmith_add_i32(-arg_0.c, -arg_2.c), global1[_wgslsmith_index_u32(4294967295u, 8u)], arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec2_i32(abs(vec2<i32>(global2.c, abs(global2.c))), -vec2<i32>(-28749i, countOneBits(4331i)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(global2.a.x * global2.a.x), _wgslsmith_f_op_f32(abs(global2.a.x)))))), 49999u, 21338i);
    var var_2 = (25540u != global2.b) == (var_1.a.x == _wgslsmith_f_op_f32(abs(var_1.a.x)));
    var var_3 = vec2<i32>(-countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-61583i, -2147483647i, -11835i), vec3<i32>(-2147483647i, var_0.x, 2147483647i)), ~vec3<i32>(var_0.x, global2.c, var_1.c))), -8630i);
    let var_4 = global2.a;
    let var_5 = func_7(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-552f, 2207f)) - _wgslsmith_f_op_vec2_f32(-var_1.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, 485f)))), 4294967295u, firstLeadingBit(i32(-1i) * -12045i)), vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))) | !all(vec2<bool>(false, false)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))) & true), func_6(func_5(func_1(select(true, true, true), var_1, vec3<bool>(false, true, true)), 2516i, global1[_wgslsmith_index_u32(90345u, 8u)], func_4(func_2(vec4<u32>(79350u, 1u, u_input.a.x, var_1.b), -2478f, vec4<bool>(true, true, false, true)), ~global2.b, global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), var_1));
    var var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(30577i, var_6.c, 859f, _wgslsmith_clamp_i32(var_3.x, -_wgslsmith_div_i32(7144i, firstTrailingBit(0i)), 7578i));
}

