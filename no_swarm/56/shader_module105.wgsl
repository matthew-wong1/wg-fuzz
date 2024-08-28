struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: vec2<i32> = vec2<i32>(-25024i, 31631i);

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, 45886i)), vec4<bool>(false, false, true, true), 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 13197u), -44743i, Struct_1(vec2<i32>(-54388i, 1i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<bool>) -> i32 {
    global1 = global2.a.a.a;
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(1411f)), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(568f, -1000f))), _wgslsmith_div_f32(514f, _wgslsmith_f_op_f32(f32(-1f) * -238f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(536f))))))));
    let var_1 = arg_2.yx;
    var var_2 = !(var_0.x > _wgslsmith_f_op_f32(-1088f * _wgslsmith_f_op_f32(-217f * _wgslsmith_f_op_f32(ceil(var_0.x)))));
    var var_3 = Struct_4(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -192f) * _wgslsmith_f_op_f32(2006f + 659f)) <= _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_2.x)))) <= _wgslsmith_f_op_f32(-var_0.x), true, true), vec3<bool>(true, !all(select(arg_2, vec3<bool>(false, false, global2.a.b.x), false)), arg_1.b.x));
    return firstLeadingBit(5338i);
}

fn func_2() -> vec3<f32> {
    var var_0 = countOneBits(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, global2.b.x), ~u_input.b), abs(u_input.a.x) ^ (global2.b.x | global2.a.c)) >> (18885u % 32u));
    let var_1 = global2.a.b.wy;
    var var_2 = -_wgslsmith_add_i32(~(countOneBits(-4536i) | u_input.c), global2.c);
    var var_3 = _wgslsmith_mod_i32(func_3(u_input.a, Struct_2(Struct_1(global2.a.a.a | vec2<i32>(1i, global2.a.a.a.x)), select(vec4<bool>(true, true, true, global2.a.b.x), vec4<bool>(global2.a.b.x, global2.a.b.x, false, false), select(vec4<bool>(true, false, global2.a.b.x, true), global2.a.b, global2.a.b)), 1u), !global2.a.b.wzz), _wgslsmith_dot_vec4_i32(-global0[_wgslsmith_index_u32(u_input.a.x, 5u)], firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.c, -22612i, global1.x), countOneBits(vec4<i32>(global1.x, 2147483647i, 2147483647i, global1.x)), vec4<i32>(global2.d.a.x, u_input.c, global1.x, global2.a.a.a.x)))));
    let var_4 = Struct_2(global2.d, select(!vec4<bool>(all(global2.a.b.wx), all(vec3<bool>(var_1.x, global2.a.b.x, true)), true, true), select(global2.a.b, !select(vec4<bool>(true, global2.a.b.x, true, false), vec4<bool>(false, false, false, var_1.x), global2.a.b), var_1.x), global2.a.b), ~(max(~32654u, reverseBits(global2.b.x)) >> (min(64496u, ~4294967295u) % 32u)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -675f)))), -379f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1132f), global2.a.b.x)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(473f * _wgslsmith_f_op_f32(ceil(-1720f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, 226f) - -723f))) * arg_3.x) >= 530f;
    return select(vec3<bool>(true, global2.a.a.a.x > -(1i ^ global1.x), true), select(select(vec3<bool>(false, all(vec3<bool>(arg_0, global2.a.b.x, global2.a.b.x)), true), !global2.a.b.zyx, 0u >= ~global2.b.x), select(select(vec3<bool>(true, true, true), !vec3<bool>(false, global2.a.b.x, global2.a.b.x), true), !global2.a.b.ywy, select(!vec3<bool>(var_0, var_0, arg_0), global2.a.b.xyw, select(vec3<bool>(true, arg_0, true), vec3<bool>(false, false, arg_0), global2.a.b.wyy))), false), vec3<bool>(global2.a.b.x, all(vec2<bool>(global2.a.b.x, all(global2.a.b.zw))), var_0));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = vec3<bool>(any(func_4(false, 1187f, u_input.a.x, _wgslsmith_f_op_vec3_f32(func_2()))), false, global2.a.b.x);
    var var_1 = Struct_1(min(vec2<i32>(_wgslsmith_mod_i32(global2.d.a.x, -2147483647i), ~(~arg_0.x)), vec2<i32>(-1i) * -arg_0.yw));
    let var_2 = Struct_4(!global2.a.b, select(!vec3<bool>(!global2.a.b.x, true, !global2.a.b.x), global2.a.b.zxz, global2.a.b.xzx));
    global2 = Struct_3(Struct_2(global2.d, vec4<bool>(true, false, true, !global2.a.b.x), reverseBits(arg_1.x)), vec4<u32>(~(arg_1.x | firstTrailingBit(u_input.b)), ~0u ^ (_wgslsmith_div_u32(74413u, arg_1.x) ^ global2.a.c), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, global2.b.x), ~4294967295u, arg_1.x), 4294967295u), 1i, Struct_1(~(-select(arg_0.zw, var_1.a, vec2<bool>(var_2.a.x, global2.a.b.x)))));
    global2 = Struct_3(global2.a, vec4<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(46468u, 1u, u_input.b) >> (arg_1.yyz % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mult_u32(u_input.b, 86292u), ~arg_1.x, global2.b.x)), _wgslsmith_dot_vec2_u32(max(~vec2<u32>(global2.a.c, u_input.b), arg_1.yx ^ vec2<u32>(4294967295u, 28194u)), vec2<u32>(1u, arg_1.x)), _wgslsmith_clamp_u32(1u, 73261u, ~min(arg_1.x, 74685u)), select(1u, ~u_input.b, false)), _wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(-37971i, -1i)), vec2<i32>(-2147483647i, var_1.a.x)) ^ -1i, Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(18125i, 47633i), 1i))));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(func_1(vec4<i32>(-1i) * -vec4<i32>(0i, -1i, 0i, global1.x), max(global2.b, vec4<u32>(global2.a.c, ~global2.a.c, max(0u, 0u), _wgslsmith_div_u32(6990u, global2.b.x)))), vec4<u32>(global2.b.x, 86132u, 85069u, global2.a.c), firstTrailingBit(-3030i), func_1(-(~global0[_wgslsmith_index_u32(0u, 5u)]), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.c, 0u, global2.a.c, 1u), vec4<u32>(77434u, u_input.a.x, u_input.a.x, global2.a.c)))).a);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1539f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1550f + -1428f)))));
    global0 = array<vec4<i32>, 5>();
    let var_1 = ~global2.b.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-890f, 454f, false))))) * -291f);
    global2 = Struct_3(global2.a, firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1, 8219u, u_input.b, 4294967295u) << (~vec4<u32>(u_input.a.x, 16882u, global2.a.c, 1u) % vec4<u32>(32u)), select(global2.b, vec4<u32>(36453u, global2.a.c, 30818u, 27449u), global2.a.b.x), min(vec4<u32>(3099u, global2.b.x, var_1, 2077u), global2.b << (global2.b % vec4<u32>(32u))))), (_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(14178u, 5u)], global0[_wgslsmith_index_u32(abs(43101u), 5u)]) >> ((~u_input.a.x | _wgslsmith_clamp_u32(4294967295u, global2.b.x, var_1)) % 32u)) & global1.x, func_1(~vec4<i32>(max(global2.a.a.a.x, 36200i), global2.a.a.a.x >> (var_1 % 32u), 17942i << (u_input.b % 32u), _wgslsmith_sub_i32(u_input.c, u_input.c)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(46445u, 49277u, u_input.b, 4294967295u), _wgslsmith_mult_vec4_u32(u_input.a, global2.b)), vec4<u32>(33673u, 1u, _wgslsmith_clamp_u32(var_1, u_input.b, u_input.a.x), select(global2.b.x, var_1, true)))).a);
    let var_2 = u_input.a.xw;
    var var_3 = global2.a;
    var var_4 = Struct_4(func_1(~(-select(global0[_wgslsmith_index_u32(var_2.x, 5u)], vec4<i32>(u_input.c, 7382i, 1i, 0i), vec4<bool>(true, false, var_3.b.x, global2.a.b.x))), ~vec4<u32>(1u, global2.b.x, var_1, u_input.b) | global2.b).b, global2.a.b.yzx);
    let x = u_input.a;
    s_output = StorageBuffer(-1552f);
}

