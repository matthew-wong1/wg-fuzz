struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(false);

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global1 = Struct_1(true);
    var var_0 = global4[_wgslsmith_index_u32(u_input.c & reverseBits(0u), 24u)];
    var var_1 = reverseBits(vec4<i32>(30421i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x & u_input.e.x, _wgslsmith_sub_i32(-1i, u_input.b.x), u_input.d.x), u_input.b.x), u_input.e.x, _wgslsmith_div_i32(u_input.e.x, u_input.e.x | (u_input.b.x & u_input.d.x))));
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 14426u, u_input.a, u_input.a), vec4<u32>(u_input.c, u_input.a, 23020u, u_input.c), vec4<u32>(4294967295u, u_input.c, u_input.c, 25684u)), ~vec4<u32>(61455u, u_input.c, 0u, 58990u)), ~0u) ^ 7446u), 24u)];
    let var_3 = vec4<bool>(var_0.a, select(!any(vec4<bool>(global2.a, global1.a, global3.a, false)), true, false), any(global0.yzx) || true, any(vec2<bool>(!var_2.a, true)));
    return 1000f;
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.a;
    let var_1 = Struct_1(false);
    global1 = Struct_1(true);
    global1 = var_1;
    var var_2 = -vec2<i32>(_wgslsmith_div_i32(u_input.b.x, 18311i), 25446i);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), 435f))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    return ~(~(arg_0.x | (~1u >> (0u % 32u))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<u32>(u_input.a, _wgslsmith_add_u32(func_4(_wgslsmith_add_vec2_u32(vec2<u32>(113318u, 17068u), vec2<u32>(0u, u_input.a)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(32011u, u_input.a)) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(abs(-144f)), _wgslsmith_f_op_f32(func_2(arg_2)), _wgslsmith_f_op_f32(1000f * 1186f)), abs(u_input.c & u_input.c), Struct_1(true)), u_input.a), u_input.c);
    let var_1 = vec3<bool>(global1.a, global1.a, global3.a);
    global1 = arg_2;
    let var_2 = u_input.d.wyw;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-439f))))) * _wgslsmith_f_op_f32(f32(-1f) * -547f));
    return Struct_1(true);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(638f)), _wgslsmith_f_op_f32(min(111f, -1131f))))))));
    global0 = vec4<bool>(global3.a, true, !any(vec2<bool>(global2.a, !arg_1.a)), false);
    var var_1 = global0.x;
    var_0 = vec2<f32>(184f, _wgslsmith_f_op_f32(trunc(var_0.x)));
    let var_2 = arg_1;
    return !vec4<bool>(any(!(!vec4<bool>(global3.a, false, true, true))), global3.a, false, !func_1(u_input.d.x, !global0.yy, Struct_1(global2.a)).a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global0.x);
    let var_0 = vec2<u32>(u_input.a, ~u_input.c);
    global0 = select(select(vec4<bool>(true, true, true, true), select(func_5(vec3<u32>(38094u, var_0.x, 87375u), func_1(u_input.e.x, global0.xz, global4[_wgslsmith_index_u32(41095u, 24u)]), ~u_input.c, global4[_wgslsmith_index_u32(~0u, 24u)]), !vec4<bool>(false, true, false, global2.a), global0.x), true), select(vec4<bool>(func_1(u_input.d.x & u_input.e.x, func_5(vec3<u32>(u_input.c, 683u, var_0.x), global4[_wgslsmith_index_u32(3020u, 24u)], 24781u, Struct_1(global3.a)).xx, global4[_wgslsmith_index_u32(var_0.x, 24u)]).a, global2.a, global0.x, select(2147483647i != u_input.b.x, global1.a, all(global0.yx))), !(!vec4<bool>(false, true, false, global1.a)), any(func_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 10196u, var_0.x), vec3<u32>(var_0.x, u_input.a, 0u), vec3<u32>(var_0.x, 4294967295u, var_0.x)), global4[_wgslsmith_index_u32(u_input.a >> (var_0.x % 32u), 24u)], 4294967295u, func_1(0i, global0.zw, global4[_wgslsmith_index_u32(28163u, 24u)])))), !vec4<bool>(true, any(select(vec4<bool>(false, false, global2.a, global0.x), vec4<bool>(global2.a, global0.x, global2.a, true), true)), true, global3.a));
    var var_1 = func_1(_wgslsmith_mod_i32(-77505i, u_input.b.x), global0.yz, func_1(~_wgslsmith_mult_i32(-u_input.b.x, 47175i), !vec2<bool>(global2.a || true, true), func_1(u_input.b.x, select(vec2<bool>(true, global2.a), !vec2<bool>(global2.a, global2.a), !vec2<bool>(global0.x, false)), func_1(u_input.d.x, func_5(vec3<u32>(var_0.x, var_0.x, 6029u), Struct_1(global0.x), u_input.a, global4[_wgslsmith_index_u32(u_input.a, 24u)]).wz, func_1(u_input.d.x, global0.xy, Struct_1(global0.x))))));
    global1 = global4[_wgslsmith_index_u32(u_input.a, 24u)];
    global1 = func_1(_wgslsmith_clamp_i32(-45209i, -(~(-1i)) << (countOneBits(~u_input.a) % 32u), -u_input.e.x ^ ~abs(u_input.b.x)), vec2<bool>(var_1.a, true), func_1(u_input.d.x, global0.xz, Struct_1(var_1.a)));
    global1 = func_1(u_input.b.x, vec2<bool>(false, !(global0.x || false) && true), global4[_wgslsmith_index_u32(u_input.a, 24u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(~abs(vec3<u32>(u_input.c, u_input.c, 0u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.x, 0u), vec3<u32>(37346u, 0u, 1u)))), _wgslsmith_dot_vec2_i32(vec2<i32>(~(~u_input.b.x), min(u_input.b.x | u_input.b.x, ~u_input.d.x)), vec2<i32>(select(-1i, 1i, !global3.a), -(~(-1i)))), -2147483647i | _wgslsmith_add_i32(max(u_input.d.x, u_input.d.x), 2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1864f)) + -1266f)))));
}

