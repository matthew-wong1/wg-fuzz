struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, -590f, 108f, 601f);

var<private> global1: array<f32, 17>;

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(max(1i, ~_wgslsmith_mod_i32(18361i, 27155i)), i32(-1i) * -select(1i, 4641i, false), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(1i, 1i, 1i), vec3<i32>(66091i, -2147483647i, 927i))) ^ ~1i, abs(46640i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-2147483647i, 37565i, 2147483647i, -1i), reverseBits(vec4<i32>(-2032i, 54495i, 0i, 0i)), vec4<bool>(true, false, true, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(40322i, 1i, -24823i, -15569i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))));
    let var_1 = !(!select(vec3<bool>(select(false, true, false), true, all(vec3<bool>(false, false, false))), vec3<bool>(any(vec3<bool>(true, false, true)), true, true), !select(true, true, false)));
    let var_2 = ~vec2<u32>(1u, u_input.a);
    var var_3 = vec4<bool>((var_1.x & var_1.x) && ((_wgslsmith_f_op_f32(-544f * -248f) < _wgslsmith_f_op_f32(525f + global0.x)) && true), var_1.x, true, all(!select(select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, false), true), select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), false), select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), var_1.x))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -406f), global0.x, 804f, _wgslsmith_f_op_f32(abs(562f)));
    return _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, var_2.x), abs(var_2.x)), 17u)]) <= _wgslsmith_f_op_f32(trunc(1306f));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = select(vec4<bool>(any(vec3<bool>(true, true, !arg_0.x)), true, !(!(!arg_0.x)), false), vec4<bool>(!(false != arg_0.x), arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_f32(global0.x + global1[_wgslsmith_index_u32(u_input.a, 17u)]))) <= _wgslsmith_f_op_f32(step(-1781f, _wgslsmith_f_op_f32(-1348f * 232f))), true), vec4<bool>(arg_0.x, true, _wgslsmith_sub_i32(select(arg_2.a.x, 2147483647i, true), i32(-1i) * -7551i) >= arg_2.a.x, !(_wgslsmith_mod_u32(0u, arg_3) <= _wgslsmith_clamp_u32(arg_3, arg_3, 4294967295u))));
    var_0 = vec4<bool>(false, any(vec4<bool>(!arg_0.x, arg_0.x, func_3(), any(select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, false), arg_0.x)))), false, func_3());
    var var_1 = Struct_1((-vec4<i32>(36984i, 13950i, 15265i, 1i) << (((vec4<u32>(arg_1, arg_3, u_input.a, arg_1) | vec4<u32>(u_input.a, u_input.a, 130622u, 4294967295u)) >> ((vec4<u32>(28625u, 0u, u_input.a, 34541u) << (vec4<u32>(arg_1, 0u, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_sub_i32(-1i, arg_2.a.x) | -1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -16115i), -vec2<i32>(arg_2.a.x, arg_2.a.x)), 0i, ~(-19391i) >> (_wgslsmith_mult_u32(u_input.a, arg_3) % 32u)));
    var var_2 = arg_2;
    let var_3 = any(vec4<bool>(var_0.x, any(!(!arg_0)), func_3(), arg_0.x & arg_0.x));
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = -1i;
    var var_1 = vec3<bool>(true, all(vec2<bool>(true, true)), func_4(vec3<bool>(true, func_3(), 46969u > u_input.a), 1u, arg_0, u_input.a));
    global1 = array<f32, 17>();
    return global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(u_input.a, ~49153u)), 7u)];
}

fn func_1(arg_0: i32) -> f32 {
    global2 = array<Struct_1, 7>();
    var var_0 = func_2(global2[_wgslsmith_index_u32(reverseBits(~u_input.a), 7u)], vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 65658u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 4001u, 15954u)), vec4<u32>(u_input.a, 1u, 1u, 0u)), 4294967295u) & ~(~vec2<u32>(u_input.a, 70664u)));
    var var_1 = Struct_1(~var_0.a);
    var var_2 = func_2(global2[_wgslsmith_index_u32(firstTrailingBit(4427u), 7u)], ~select(abs(vec2<u32>(4294967295u, 70479u)) | vec2<u32>(74947u, u_input.a), ~vec2<u32>(23503u, u_input.a) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true))));
    var var_3 = ~vec4<i32>(-arg_0 >> (1u % 32u), select(_wgslsmith_div_i32(arg_0, 0i), var_1.a.x >> (u_input.a % 32u), global1[_wgslsmith_index_u32(73497u, 17u)] < global0.x), var_2.a.x & arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(17998i, var_2.a.x, arg_0), vec3<i32>(42303i, var_2.a.x, arg_0)) >> (u_input.a % 32u)) & (vec4<i32>(1i, -2147483647i, (2147483647i ^ var_2.a.x) ^ var_0.a.x, _wgslsmith_add_i32(0i, max(arg_0, var_0.a.x))) << (vec4<u32>(~33461u, u_input.a << (u_input.a % 32u), u_input.a, 1u) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(abs(0u), 7u)];
    global0 = vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~(~(~10766u))), 17u)], global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a, 17u)], _wgslsmith_f_op_f32(func_1(var_0.a.x)))), _wgslsmith_f_op_f32(sign(-562f)), true))), global0.x);
    var_0 = func_2(Struct_1(vec4<i32>((i32(-1i) * -23815i) >> (~u_input.a % 32u), var_0.a.x, func_2(Struct_1(var_0.a), select(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a), true)).a.x, ~var_0.a.x)), select(firstLeadingBit(~(~vec2<u32>(1u, u_input.a))), ~(~vec2<u32>(6130u, u_input.a) >> (~vec2<u32>(u_input.a, 20270u) % vec2<u32>(32u))), func_3()));
    global2 = array<Struct_1, 7>();
    var var_1 = min(firstTrailingBit(~(~vec4<u32>(41996u, u_input.a, 4294967295u, 34073u))), select(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(35291u, 27925u, u_input.a), vec3<u32>(4294967295u, 4294967295u, 72272u)), ~u_input.a, u_input.a), vec4<u32>(~u_input.a, firstLeadingBit(u_input.a), 0u, 4294967295u), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true))) & _wgslsmith_mult_vec4_u32(select(vec4<u32>(84416u, 1u, ~4294967295u, 1u), firstLeadingBit(vec4<u32>(0u, u_input.a, 25165u, u_input.a)), true), vec4<u32>(_wgslsmith_mult_u32(u_input.a, 1u), u_input.a, 0u, ~95745u) & _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, 17705u))));
    var_1 = select(vec4<u32>(firstTrailingBit(~u_input.a), 68300u, _wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(62017u >> (u_input.a % 32u), var_1.x)), _wgslsmith_mod_u32(u_input.a & _wgslsmith_clamp_u32(u_input.a, u_input.a, var_1.x), (u_input.a << (var_1.x % 32u)) & ~var_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, ~_wgslsmith_mult_u32(32190u, 1u), ~(~var_1.x), 1u), abs(~(~vec4<u32>(30437u, 4294967295u, var_1.x, var_1.x)))), select(select(vec4<bool>(true, false, false, all(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false)), vec4<bool>(true, true, true, true), false), false));
    var_1 = ~(~(~(vec4<u32>(4294967295u, var_1.x, u_input.a, 28133u) >> (~vec4<u32>(var_1.x, 73170u, var_1.x, u_input.a) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(ceil(global0.x)), var_0.a.x, global0.x, var_1.ww);
}

