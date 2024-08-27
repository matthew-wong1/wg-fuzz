struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-323f, -1180f, 1000f, -152f, -327f, -1042f, 1199f, -848f, 797f, 599f, -435f);

var<private> global1: array<u32, 17> = array<u32, 17>(1u, 24549u, 389u, 1u, 49868u, 0u, 1u, 58944u, 92176u, 0u, 49227u, 28378u, 0u, 63897u, 5095u, 7888u, 0u);

var<private> global2: array<f32, 10> = array<f32, 10>(-286f, -888f, -1159f, 2021f, -1000f, -855f, 1000f, 1555f, -194f, 1044f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(arg_1.a.a, 1413f, max(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 17u)]), arg_1.e.a.yy), arg_1.e.a.yx), _wgslsmith_mult_u32(min(0u, global1[_wgslsmith_index_u32(~arg_1.a.c, 17u)]), ~40622u)), _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.b << ((global1[_wgslsmith_index_u32(57778u, 17u)] & u_input.a) % 32u), u_input.b), ~arg_0.x), arg_1.e.e);
    global1 = array<u32, 17>();
    global1 = array<u32, 17>();
    let var_1 = true;
    global1 = array<u32, 17>();
    return select(!(!var_1), any(!(!arg_1.d)), !(var_0.c >= ~0u));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_3(Struct_2(Struct_1(~firstLeadingBit(arg_3.e.a), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, u_input.a, arg_0.x) | 4294967295u, 10u)], arg_0.x, _wgslsmith_div_i32(-2147483647i, arg_2.x), arg_3.a.e), -61258i, arg_3.a, vec4<bool>(all(vec3<bool>(arg_1, true, false)), true, arg_1, false), Struct_1(min(arg_0.yzx, vec3<u32>(1u, 35800u, 20123u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1045f))), _wgslsmith_mod_u32(1u, 19226u) | _wgslsmith_dot_vec3_u32(arg_0.yww, vec3<u32>(arg_0.x, 4294967295u, global1[_wgslsmith_index_u32(u_input.a, 17u)])), -1i, vec2<f32>(1f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(45297u, 10u)]))))), arg_3.c.b);
    global0 = array<f32, 11>();
    let var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(958f, arg_3.c.e.x) - arg_3.a.e.x), _wgslsmith_f_op_f32(-1947f + var_0.b)));
    var var_3 = vec4<bool>(!(!var_0.a.d.x), !all(select(vec2<bool>(true, false), arg_3.d.wz, vec2<bool>(false, arg_1))), all(!vec3<bool>(!arg_3.d.x, true, !arg_3.d.x)), true);
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    return vec2<bool>(select(!(global2[_wgslsmith_index_u32(arg_2.c, 10u)] <= global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 11u)]), arg_0.x, !(!arg_0.x)) & ((i32(-1i) * -38353i) <= _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d, u_input.b, 2147483647i, 1i), vec4<i32>(u_input.b, arg_2.d, u_input.b, u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, u_input.b, 1i)))), _wgslsmith_f_op_f32(abs(arg_2.b)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<u32>(0u, global1[_wgslsmith_index_u32(arg_2.c, 17u)], 16190u, 0u), func_3(vec4<i32>(u_input.b, u_input.b, 2147483647i, arg_2.d), Struct_2(Struct_1(vec3<u32>(137031u, arg_2.a.x, arg_2.a.x), global2[_wgslsmith_index_u32(arg_2.a.x, 10u)], 57549u, -15639i, vec2<f32>(global2[_wgslsmith_index_u32(21135u, 10u)], 250f)), u_input.b, arg_2, vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_2)), reverseBits(vec3<i32>(arg_2.d, arg_2.d, u_input.b)), Struct_2(Struct_1(vec3<u32>(u_input.a, arg_2.c, 96670u), -845f, arg_2.c, -2147483647i, vec2<f32>(arg_2.b, 287f)), arg_2.d, arg_2, vec4<bool>(true, arg_0.x, true, arg_0.x), arg_2)))));
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 11>();
    var var_0 = all(func_2(!vec2<bool>(any(vec4<bool>(true, true, true, true)), true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.a) << (vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], u_input.a) % vec2<u32>(32u))), vec2<u32>(u_input.a, ~global1[_wgslsmith_index_u32(29296u, 17u)])), 10u)], Struct_1(min(~vec3<u32>(92966u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 17u)], 17u)]), select(vec3<u32>(0u, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)]), vec3<u32>(4294967295u, u_input.a, global1[_wgslsmith_index_u32(41866u, 17u)]), false)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(1u, 17u)], 71695u, false), 11u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)])), _wgslsmith_sub_u32(u_input.a, 1u), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28080u, 17u)], 17u)], 17u)], 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]))))));
    var var_1 = vec4<i32>(u_input.b, u_input.b, 10108i, select(min(-_wgslsmith_clamp_i32(u_input.b, u_input.b, -1i), u_input.b), -1i, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))));
    let var_2 = Struct_2(Struct_1(min(countOneBits(vec3<u32>(48207u, global1[_wgslsmith_index_u32(u_input.a, 17u)], 12538u)), vec3<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(9264u, 17u)], 4375u), 0u, ~global1[_wgslsmith_index_u32(17860u, 17u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(429f + global2[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -1512f))), _wgslsmith_clamp_u32(4294967295u, ~u_input.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(29820u, 53688u, global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], u_input.a, 60156u)), global1[_wgslsmith_index_u32(~u_input.a, 17u)]), ~u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(361f, global0[_wgslsmith_index_u32(0u, 11u)]))))))), var_1.x, Struct_1(select(reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(31077u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], 0u)) | firstTrailingBit(vec3<u32>(30603u, 0u, 0u)), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 1u, u_input.a)), select(vec3<u32>(10362u, u_input.a, 20924u), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 17u)], 1u), vec3<bool>(true, false, true))), vec3<bool>(true, true, true)), 545f, 1u, u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1213f, global0[_wgslsmith_index_u32(4689u, 11u)])), -1305f)), select(vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), !func_2(vec2<bool>(false, true), global2[_wgslsmith_index_u32(107376u, 10u)], Struct_1(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9989u, 17u)], 17u)], 0u, u_input.a), -1000f, 25274u, 62431i, vec2<f32>(1129f, -1104f))).x, true, true), !(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false)), func_2(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(ceil(586f)), Struct_1(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(59360u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]) << (vec3<u32>(74149u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -554f), 1u, var_1.x << (global1[_wgslsmith_index_u32(u_input.a, 17u)] % 32u), vec2<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 17u)], 10u)], global2[_wgslsmith_index_u32(0u, 10u)]))).x), Struct_1(~vec3<u32>(0u, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17116u, 17u)], 17u)], 17u)], select(0u, u_input.a, true)), -1000f, 4294967295u, -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53250u, 17u)], 10u)]), vec2<f32>(1909f, 184f)))))));
    let var_3 = Struct_2(Struct_1(var_2.e.a, -1252f, ~var_2.a.a.x, ~_wgslsmith_mult_i32(~(-2147483647i), u_input.b), _wgslsmith_f_op_vec2_f32(var_2.c.e + vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 10u)] * 289f), var_2.c.e.x))), -firstLeadingBit(~1i), Struct_1(countOneBits(vec3<u32>(1u, 51483u, 1u)), _wgslsmith_f_op_f32(-473f - var_2.a.e.x), ~abs(countOneBits(1743u)), _wgslsmith_sub_i32(54772i, _wgslsmith_dot_vec4_i32(vec4<i32>(-13354i, -57066i, 1i, var_2.a.d) ^ vec4<i32>(-3993i, var_1.x, 2147483647i, -51309i), vec4<i32>(var_1.x, u_input.b, u_input.b, 2147483647i) >> (vec4<u32>(0u, 0u, 4907u, 4294967295u) % vec4<u32>(32u)))), var_2.a.e), select(vec4<bool>(true, var_2.d.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 17u)]), 10u)] != global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 4294967295u), 10u)], true), select(select(var_2.d, var_2.d, !var_2.d), !select(var_2.d, vec4<bool>(true, var_2.d.x, var_2.d.x, var_2.d.x), false), false), var_2.d), var_2.e);
    return Struct_3(var_2, -466f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = global2[_wgslsmith_index_u32(min(~var_0, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 12402u, global1[_wgslsmith_index_u32(0u, 17u)]), vec3<u32>(22625u, u_input.a, u_input.a), vec3<u32>(1u, var_0, global1[_wgslsmith_index_u32(39711u, 17u)])), vec3<u32>(_wgslsmith_clamp_u32(111912u, var_0, 21603u), reverseBits(115780u), min(1u, var_0))), _wgslsmith_sub_u32(u_input.a, var_0), var_0), 17u)]), 10u)];
    let var_2 = func_1();
    global2 = array<f32, 10>();
    var var_3 = all(vec3<bool>(!var_2.a.d.x, !all(var_2.a.d), any(select(var_2.a.d.wyy, var_2.a.d.wzw, var_2.a.d.x | var_2.a.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(abs(70141u), 10u)], global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_2.a.c.a.x, 17u)], 11u)], _wgslsmith_f_op_f32(2084f * global2[_wgslsmith_index_u32(u_input.a, 10u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 10u)], var_2.b))))), _wgslsmith_div_f32(-773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.a.e.x, _wgslsmith_f_op_f32(var_2.b + var_2.a.e.b))))));
}

