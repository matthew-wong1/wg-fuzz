struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(29369i, 27204i), vec2<i32>(118989i, -27259i), vec2<i32>(0i, 3108i), vec2<i32>(126i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 13115i), vec2<i32>(-1i, -9935i), vec2<i32>(2147483647i, -4644i), vec2<i32>(0i, 10757i), vec2<i32>(53756i, 0i));

var<private> global2: array<Struct_1, 28>;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-403f, 178f)) - -248f), -281f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-771f, 1863f, true))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-343f + 1000f))));
    global2 = array<Struct_1, 28>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))), max(vec3<u32>(u_input.a.x >> (u_input.a.x % 32u), 2067u, ~u_input.a.x), u_input.a.wwx) >> (vec3<u32>(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_add_u32(4294967295u, 0u)), ~(41811u << (0u % 32u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a.zyz, vec3<u32>(u_input.a.x, 29517u, 6122u)), u_input.a.x << (4294967295u % 32u))) % vec3<u32>(32u)), true & !global3.x, _wgslsmith_sub_i32(-33408i, -20330i), -1762f);
    global1 = array<vec2<i32>, 10>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, 1000f))))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.e * _wgslsmith_f_op_f32(767f * 728f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(965f)) * _wgslsmith_f_op_f32(-var_1.e)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(75666u, u_input.a.x), ~vec2<u32>(u_input.a.x, 4294967295u))), vec2<u32>(_wgslsmith_clamp_u32(59692u, u_input.a.x, 1u), 4327u & u_input.a.x) | ~(~vec2<u32>(1568u, u_input.a.x))), 28u)], vec2<u32>(u_input.a.x, 0u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f)), _wgslsmith_f_op_f32(-432f * _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, global3.x))))), u_input.a.zxw, any(!(!vec4<bool>(global3.x, true, false, false))), firstTrailingBit(min(-2147483647i, select(-242i, -56930i, global3.x))), 355f), 1u, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-465f, -558f)), 566f), vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a.yww, u_input.a.yyw), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1253u)), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u))), any(!vec3<bool>(false, global3.x, true)), 1i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-890f - -322f), _wgslsmith_f_op_f32(f32(-1f) * -129f)))));
    global3 = !vec2<bool>(!all(select(vec4<bool>(false, false, false, var_0.c.c), vec4<bool>(var_0.a.c, var_0.c.c, false, global3.x), vec4<bool>(true, global3.x, false, global3.x))), !(false & any(vec4<bool>(true, var_0.a.c, var_0.e.c, false))));
    global2 = array<Struct_1, 28>();
    let var_1 = var_0.a.d;
    global2 = array<Struct_1, 28>();
    return _wgslsmith_clamp_i32(i32(-1i) * -37821i, -(~1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(97483i, var_0.c.d) >> (countOneBits(vec2<u32>(var_0.b.x, var_0.c.b.x)) % vec2<u32>(32u)), ~vec2<i32>(-2147483647i, var_0.a.d) | select(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], false)) << (u_input.a.x % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = global3.x;
    var var_1 = -(i32(-1i) * -25814i);
    global0 = array<Struct_2, 2>();
    var var_2 = func_2();
    var_2 = countOneBits(min(i32(-1i) * -6342i, 1i) >> (u_input.a.x % 32u));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)))), u_input.a.wxw >> (select(~u_input.a.yzx | min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(82166u, 0u, u_input.a.x)), abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), all(vec4<bool>(global3.x, global3.x, false, true))) % vec3<u32>(32u)), true, _wgslsmith_clamp_i32(func_2(), 2147483647i, abs(firstTrailingBit(-2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2281f * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(1062f, 601f))))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_1 {
    global0 = array<Struct_2, 2>();
    var var_0 = ~(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.e.b.x, 11846u, 4294967295u, 36117u), vec4<u32>(u_input.a.x, 1u, 21442u, 1u)), vec4<u32>(max(u_input.a.x, u_input.a.x), arg_0.e.b.x, firstTrailingBit(1u), 1u)) >> (4294967295u % 32u));
    var_0 = 22116u;
    let var_1 = global2[_wgslsmith_index_u32(arg_0.d, 28u)];
    var_0 = _wgslsmith_dot_vec4_u32((~vec4<u32>(var_1.b.x, u_input.a.x, arg_0.c.b.x, arg_0.b.x) << (~vec4<u32>(var_1.b.x, 0u, arg_0.a.b.x, 1945u) % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u)), max(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.b.x, 0u, 25989u, u_input.a.x) << (u_input.a % vec4<u32>(32u)), abs(vec4<u32>(u_input.a.x, 41973u, arg_0.d, var_1.b.x))), arg_0.c.b.x, var_1.b.x, abs(arg_0.a.b.x)), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(73829u, var_1.b.x, ~u_input.a.x, var_1.b.x))));
    return func_1();
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(arg_1.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(198f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-2428f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.e.a, arg_1.e.a)))), _wgslsmith_f_op_f32(-arg_1.c.a), -1010f), vec4<f32>(arg_1.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.e)) - 834f), arg_1.e.e, _wgslsmith_f_op_f32(f32(-1f) * -954f)), global3.x));
    var var_2 = arg_1;
    var_0 = var_2.e.a;
    let var_3 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(31434u, 43553u, var_2.c.b.x), arg_0.x), 4294967295u), ~u_input.a.x, arg_1.c.b.x), abs(min(_wgslsmith_mult_u32(~3507u, _wgslsmith_div_u32(var_2.b.x, arg_0.x)), ~22619u)), arg_0.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 2>();
    global1 = array<vec2<i32>, 10>();
    global2 = array<Struct_1, 28>();
    var var_0 = func_5(vec3<u32>(~8763u ^ u_input.a.x, ~u_input.a.x, ~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), Struct_2(func_4(Struct_2(global2[_wgslsmith_index_u32(19888u, 28u)], u_input.a.ww, func_1(), 1u, func_1()), -2147483647i, firstTrailingBit(i32(-1i) * -1i)), ~u_input.a.zz, Struct_1(-303f, u_input.a.wxw, false, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1361i, -1i), min(-7508i, 32338i), _wgslsmith_sub_i32(-12358i, -1591i)), -1395f), u_input.a.x, Struct_1(-717f, u_input.a.ywx, true, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(686f, -802f, global3.x)) - _wgslsmith_f_op_f32(f32(-1f) * -841f)))));
    var var_1 = u_input.a;
    let var_2 = ~(~vec4<u32>(func_5(var_1.wyz, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(17358u, u_input.a.x), 2u)]).x, 1u, func_4(global0[_wgslsmith_index_u32(min(var_0.x, var_1.x), 2u)], 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 80445i, 43343i, 2147483647i), vec4<i32>(-5793i, 1316i, -34567i, -51792i))).b.x, func_1().b.x));
    var var_3 = ~global1[_wgslsmith_index_u32(19358u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1937f)) - _wgslsmith_f_op_f32(-762f - -361f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1142f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1520f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(!(!vec3<bool>(global3.x, false, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)), true)), abs(firstLeadingBit(reverseBits(vec2<i32>(var_3.x, var_3.x)))), -vec2<i32>(func_4(global0[_wgslsmith_index_u32(54762u, 2u)], var_3.x, var_3.x).d ^ 2147483647i, var_3.x));
}

