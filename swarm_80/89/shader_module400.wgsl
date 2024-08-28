struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 22>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(1158f, vec2<i32>(0i, -24980i)), Struct_1(-1702f, vec2<i32>(122928i, 0i)), Struct_1(1238f, vec2<i32>(11180i, 1891i)), Struct_1(-186f, vec2<i32>(i32(-2147483648), 1i)), Struct_1(565f, vec2<i32>(i32(-2147483648), 0i)), Struct_1(-663f, vec2<i32>(2147483647i, 1i)), Struct_1(-1304f, vec2<i32>(-1i, i32(-2147483648))), Struct_1(484f, vec2<i32>(0i, 2147483647i)), Struct_1(-126f, vec2<i32>(1i, -6546i)), Struct_1(1000f, vec2<i32>(-1i, -29523i)), Struct_1(1000f, vec2<i32>(42184i, -19445i)), Struct_1(949f, vec2<i32>(2147483647i, 12738i)), Struct_1(1185f, vec2<i32>(1i, 2147483647i)), Struct_1(875f, vec2<i32>(1i, 8621i)), Struct_1(438f, vec2<i32>(-1i, -16339i)), Struct_1(-122f, vec2<i32>(0i, -32227i)), Struct_1(-536f, vec2<i32>(-1056i, -14269i)), Struct_1(-319f, vec2<i32>(-23526i, 48425i)), Struct_1(1000f, vec2<i32>(1i, i32(-2147483648))), Struct_1(-165f, vec2<i32>(-1i, 38324i)), Struct_1(-690f, vec2<i32>(1i, 18778i)), Struct_1(676f, vec2<i32>(-24100i, 36214i)), Struct_1(-1260f, vec2<i32>(32655i, 9752i)), Struct_1(-1132f, vec2<i32>(i32(-2147483648), -8734i)), Struct_1(301f, vec2<i32>(-43625i, -1i)), Struct_1(1118f, vec2<i32>(i32(-2147483648), 1i)), Struct_1(-1140f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(-361f, vec2<i32>(32432i, 14957i)), Struct_1(-2955f, vec2<i32>(i32(-2147483648), -20833i)), Struct_1(-1000f, vec2<i32>(-14413i, 36157i)), Struct_1(-515f, vec2<i32>(i32(-2147483648), -1i)), Struct_1(-2154f, vec2<i32>(0i, 50132i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = vec4<f32>(-373f, _wgslsmith_f_op_f32(sign(-1900f)), -243f, -1000f);
    var var_1 = u_input.a;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, ~(~abs(591u))), 32u)];
    global0 = true;
    global2 = array<Struct_1, 32>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(max(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 30528u)), ~(vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(u_input.a, 13544u))), ~select(abs(vec2<u32>(0u, 4294967295u)), ~vec2<u32>(42463u, 0u), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(~42550u, abs(74581u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(2474u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), ~(~vec2<u32>(u_input.a, u_input.a)))), vec2<u32>(~_wgslsmith_mod_u32(u_input.a << (56071u % 32u), u_input.a), u_input.a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = array<vec2<f32>, 22>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, min(_wgslsmith_sub_u32(59991u, (u_input.a | u_input.a) | 1u), func_3(vec2<f32>(arg_0.a, arg_0.a)))), 32u)];
    var var_1 = 894f;
    let var_2 = Struct_1(arg_0.a, abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(arg_1.b.x, u_input.b), _wgslsmith_sub_vec2_i32(~var_0.b, vec2<i32>(u_input.b, -28451i)))));
    let var_3 = false;
    return 1u;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~countOneBits(vec3<u32>(u_input.a, u_input.a, countOneBits(min(u_input.a, u_input.a))));
    global1 = array<vec2<f32>, 22>();
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(firstLeadingBit(34617u | func_2(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(26800u, 32u)]))), 32u)];
    var_0 = vec3<u32>(~u_input.a, 1u, ~func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a, 22u)]), global1[_wgslsmith_index_u32(~u_input.a, 22u)])));
    global1 = array<vec2<f32>, 22>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1174f - 1032f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-346f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(0u, 32u)])))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1113f * 1f), _wgslsmith_f_op_f32(min(-1417f, -303f)), true))) & (36101u < ~_wgslsmith_mod_u32(abs(34286u), _wgslsmith_clamp_u32(1u, u_input.a, u_input.a)));
    global2 = array<Struct_1, 32>();
    global2 = array<Struct_1, 32>();
    var var_0 = ~select(~(~(~vec2<u32>(20816u, u_input.a))), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)))), vec2<bool>(true, true));
    let var_1 = countOneBits(countOneBits(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(51188u, u_input.a), vec2<u32>(var_0.x, u_input.a)), var_0.x, 1u, 0u))));
    let var_2 = !vec2<bool>(select(all(vec4<bool>(true, true, true, true)), false, false), any(vec2<bool>(true, true)));
    var var_3 = global2[_wgslsmith_index_u32(~var_0.x, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_1.x, 22u)]), _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)]), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(1u, 22u)])))), any(vec2<bool>(false, var_2.x)))), 1i);
}

