struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = u_input.a;
    let var_1 = firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(17684i, max(u_input.b.x >> (u_input.a % 32u), 11267i), min(5307i, u_input.b.x) & _wgslsmith_sub_i32(u_input.b.x, 72237i), 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(21630i, u_input.b.x, 34427i, u_input.b.x) | vec4<i32>(-28715i, u_input.b.x, 20024i, -2147483647i), select(vec4<i32>(78106i, 0i, -43822i, -1i), vec4<i32>(u_input.b.x, u_input.b.x, 1i, 15521i), false)) >> (reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 63564u), vec4<u32>(53844u, var_0, var_0, var_0))) % vec4<u32>(32u))));
    global0 = array<f32, 2>();
    var var_2 = vec4<f32>(global0[_wgslsmith_index_u32(select(min(0u, max(abs(var_0), ~u_input.a)), min(32109u, _wgslsmith_add_u32(~4294967295u, firstLeadingBit(25989u))), false), 2u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(25590u, u_input.a), 2u)], global0[_wgslsmith_index_u32(~(reverseBits(~4294967295u) | ~_wgslsmith_mult_u32(50403u, u_input.a)), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1192f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(127f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 2u)])))));
    var var_3 = !all(vec3<bool>(true, false, 267f <= _wgslsmith_f_op_f32(trunc(-1610f))));
    return 17307u;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    global0 = array<f32, 2>();
    var var_0 = vec4<u32>(u_input.a, ~firstTrailingBit(u_input.a), func_3(), u_input.a);
    var_0 = ~select(max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, 17096u, 26139u), vec4<u32>(u_input.a, 0u, var_0.x, u_input.a), vec4<u32>(1u, 1282u, u_input.a, 1u)), vec4<u32>(~0u, 30211u, _wgslsmith_dot_vec2_u32(var_0.zx, var_0.yy), 1u)), ~(~min(vec4<u32>(28054u, u_input.a, var_0.x, 0u), vec4<u32>(2219u, 0u, var_0.x, 0u))), !vec4<bool>(any(vec3<bool>(true, arg_1, false)), arg_1 & arg_1, all(vec3<bool>(arg_1, true, arg_1)), all(vec4<bool>(arg_1, false, true, arg_1))));
    let var_1 = arg_0;
    var_0 = select(min(~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, 0u, 13591u), ~vec4<u32>(var_0.x, 38942u, u_input.a, 4294967295u))) & vec4<u32>(firstTrailingBit(71908u), var_0.x, ~_wgslsmith_sub_u32(0u, u_input.a), max(0u, 22714u)), min(abs(firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, u_input.a, 49191u))), vec4<u32>(~4367u, 32911u, ~_wgslsmith_sub_u32(u_input.a, var_0.x), var_0.x)), !vec4<bool>(!(arg_1 || arg_1), !(global0[_wgslsmith_index_u32(u_input.a, 2u)] >= -932f), true | arg_1, true));
    return Struct_1(_wgslsmith_div_i32(arg_0.a.a | ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.b.x, 2147483647i, -8093i, u_input.b.x), vec4<i32>(23580i, var_1.a.b.x, var_1.b.b.x, 0i)), -firstLeadingBit(arg_0.b.b.x)), countOneBits(min(-_wgslsmith_div_vec2_i32(arg_0.b.b, vec2<i32>(7071i, u_input.b.x)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(var_1.b.a, var_1.b.b.x)), select(var_1.b.b, arg_0.a.b, arg_1)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = vec3<bool>(false, !select(_wgslsmith_sub_i32(arg_0.a.a, -138i) != firstLeadingBit(-3860i), !any(vec4<bool>(true, true, false, true)), true), true & all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_1 = arg_0.b;
    let var_2 = _wgslsmith_sub_i32(firstTrailingBit(u_input.b.x << ((u_input.a ^ 42108u) % 32u)), -7181i);
    let var_3 = Struct_1(26864i, abs(func_2(arg_0, var_0.x).b));
    var var_4 = arg_0;
    return _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(-20703i, -1i));
}

fn func_1() -> Struct_2 {
    let var_0 = ~(u_input.a ^ u_input.a);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(10311u, 33305u), 2u)];
    var var_2 = Struct_1(u_input.b.x, ~vec2<i32>(u_input.b.x, u_input.b.x));
    var var_3 = Struct_2(Struct_1(min(func_4(Struct_2(Struct_1(4363i, var_2.b), Struct_1(0i, u_input.b.yy)), func_2(Struct_2(Struct_1(8613i, vec2<i32>(-92786i, var_2.b.x)), Struct_1(23310i, var_2.b)), true)), u_input.b.x), _wgslsmith_add_vec2_i32(max(-vec2<i32>(u_input.b.x, var_2.a), abs(u_input.b.xz)), select(vec2<i32>(11198i, -2147483647i), func_2(Struct_2(Struct_1(2147483647i, var_2.b), Struct_1(1i, u_input.b.zy)), true).b, true))), func_2(Struct_2(func_2(Struct_2(Struct_1(-1i, vec2<i32>(u_input.b.x, 2147483647i)), Struct_1(25323i, vec2<i32>(var_2.a, -69399i))), global0[_wgslsmith_index_u32(var_0, 2u)] >= global0[_wgslsmith_index_u32(u_input.a, 2u)]), func_2(Struct_2(Struct_1(var_2.b.x, u_input.b.xy), Struct_1(0i, vec2<i32>(var_2.b.x, -2147483647i))), true)), var_2.b.x < max(_wgslsmith_clamp_i32(-68534i, 55548i, u_input.b.x), -11429i)));
    var var_4 = vec2<bool>(true, 1000f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 2u)]) - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(43171u, 2u)]))), _wgslsmith_f_op_f32(563f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(56128u, 2u)]))));
    return Struct_2(Struct_1(var_3.b.a, -(reverseBits(var_3.a.b) | -vec2<i32>(u_input.b.x, -1i))), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~vec3<u32>(min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(23227u, 1u), vec2<u32>(u_input.a, 1u))), ~(~8425u), ~abs(22056u)));
    var var_1 = func_1();
    var_1 = Struct_2(Struct_1(_wgslsmith_add_i32(~u_input.b.x & -11958i, 18324i), reverseBits(u_input.b.yz)), func_1().b);
    var var_2 = all(vec2<bool>(!(true || all(vec3<bool>(true, true, true))), all(vec3<bool>(true, false, true)) && true));
    var var_3 = vec4<bool>(select(true, false, true), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))), all(vec2<bool>(any(vec2<bool>(true, true)), false)), select(true, true, select(all(vec3<bool>(true, true, false)) & all(vec2<bool>(true, false)), -2290f < _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 2u)]), true)));
    var_3 = vec4<bool>(!(!(var_3.x && var_3.x)) | true, false, var_3.x, true);
    global0 = array<f32, 2>();
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(var_0.x), 2u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1007f, global0[_wgslsmith_index_u32(u_input.a, 2u)])), -853f, any(vec3<bool>(var_3.x, var_3.x, var_3.x)))), global0[_wgslsmith_index_u32(1u, 2u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b.x, -max(u_input.b.yy, ~_wgslsmith_div_vec2_i32(u_input.b.xx, u_input.b.zx)), select(~(-vec2<i32>(12540i, -11910i)), min(~vec2<i32>(u_input.b.x, var_1.b.b.x), vec2<i32>(func_2(Struct_2(Struct_1(0i, var_1.b.b), Struct_1(-1851i, u_input.b.zx)), true).a, ~16398i)), select(vec2<bool>(any(var_3.yxz), !var_3.x), select(select(vec2<bool>(true, false), var_3.zy, false), !var_3.xy, true), vec2<bool>(any(vec4<bool>(false, var_3.x, true, false)), !var_3.x))));
}

