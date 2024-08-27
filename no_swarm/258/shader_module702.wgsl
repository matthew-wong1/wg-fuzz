struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 4>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = _wgslsmith_mod_u32(43990u, 4294967295u) ^ firstTrailingBit(_wgslsmith_add_u32(0u, reverseBits(_wgslsmith_mult_u32(u_input.a, 1u))));
    global1 = array<Struct_2, 4>();
    global0 = Struct_1(vec2<bool>(true, all(!(!vec3<bool>(global0.a.x, arg_2, true)))));
    var var_1 = select(abs(vec2<u32>(~var_0, _wgslsmith_add_u32(1u, 1u)) ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0, 106866u), vec2<u32>(4294967295u, var_0))), (abs(vec2<u32>(1u, 1u)) << (vec2<u32>(_wgslsmith_mult_u32(u_input.a, 6111u), ~u_input.b) % vec2<u32>(32u))) | ~countOneBits(max(vec2<u32>(4294967295u, 25880u), vec2<u32>(var_0, var_0))), !any(vec2<bool>(false, arg_3)) & arg_2);
    let var_2 = u_input.d;
    return global0.a.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<u32>, arg_3: bool) -> i32 {
    let var_0 = vec2<i32>(u_input.e.x, 1i);
    global1 = array<Struct_2, 4>();
    var var_1 = !vec4<bool>(all(vec2<bool>(arg_0.x < arg_0.x, u_input.c.x == u_input.c.x)), arg_1, arg_1 && !all(global0.a), func_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.zx))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(920f, 166f, arg_0.x, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, -1074f, arg_0.x, 2414f)))), any(vec3<bool>(global0.a.x, arg_1, false)), all(vec4<bool>(true, false, false, arg_1))));
    var var_2 = arg_2;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 1u, 0u, 1u)), ~(~vec4<u32>(u_input.a, 0u, 1u, u_input.a))), ~vec4<u32>(~arg_2.x, u_input.a, reverseBits(arg_2.x), ~max(var_2.x, var_2.x))), 4u)];
    return var_0.x >> (abs(u_input.b) % 32u);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    let var_0 = 56179i;
    global0 = Struct_1(select(!global0.a, global0.a, select(global0.a, vec2<bool>(false, arg_2 || false), true)));
    let var_1 = Struct_1(!select(!select(global0.a, global0.a, global0.a), !(!global0.a), false));
    global0 = var_1;
    let var_2 = ~1u;
    return Struct_3(_wgslsmith_add_i32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2053f, -198f, 351f)), func_3(vec2<f32>(-804f, 375f), vec4<f32>(2006f, 972f, 1964f, 157f), false, false), ~vec2<u32>(u_input.b, var_2), var_1.a.x) | reverseBits(arg_0.x), ~(-16644i)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> vec4<u32> {
    global0 = Struct_1(global0.a);
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(159f, _wgslsmith_f_op_f32(-1211f * -1170f), arg_1.a.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 2336f));
    global0 = Struct_1(arg_1.a);
    return ~(~abs(~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.a))));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-700f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2198f)) * _wgslsmith_f_op_f32(-203f + -504f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-929f))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-1784f, 103f), vec2<f32>(var_0.a, 982f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, 1248f))))))));
    var var_2 = global1[_wgslsmith_index_u32(~(~(reverseBits(arg_0.x) >> (1u % 32u))), 4u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(588f, 599f, var_0.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, -749f, 1308f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-889f, _wgslsmith_f_op_f32(360f * var_1.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.x)), -1449f, all(vec4<bool>(false, global0.a.x, true, false))))), var_1.x, -355f)));
    global0 = Struct_1(global0.a);
    return Struct_3(_wgslsmith_add_i32(~(-1i), u_input.c.x));
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(firstTrailingBit((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 23590u, 5705u, u_input.b), vec4<u32>(u_input.b, u_input.a, u_input.b, 1u)) ^ ~vec4<u32>(u_input.a, 1u, u_input.a, 26846u)) & func_5(global0.a.x, Struct_1(global0.a), ~12268i, func_2(vec3<i32>(u_input.c.x, -2147483647i, 28131i), Struct_3(2147483647i), false))), func_2(vec3<i32>(_wgslsmith_mod_i32(24583i, ~(-18506i)), 39749i, -19453i >> (_wgslsmith_mult_u32(9562u, u_input.b) % 32u)), Struct_3(~u_input.d), global0.a.x));
    global1 = array<Struct_2, 4>();
    let var_1 = any(!vec4<bool>(any(select(vec4<bool>(true, global0.a.x, true, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, true, true), true)), global0.a.x, true, !select(global0.a.x, global0.a.x, true)));
    global0 = Struct_1(select(global0.a, !global0.a, any(select(select(vec4<bool>(true, global0.a.x, true, global0.a.x), vec4<bool>(var_1, false, var_1, global0.a.x), false), vec4<bool>(global0.a.x, true, true, var_1), -25398i > u_input.e.x))));
    let var_2 = -1579f;
    return Struct_1(vec2<bool>(~u_input.b == max(_wgslsmith_clamp_u32(u_input.a, 0u, 45397u), 4294967295u ^ u_input.b), !(global0.a.x & !var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 4>();
    global0 = func_1();
    var var_0 = u_input.d;
    let var_1 = global0.a.x;
    let var_2 = func_6(max(~vec4<u32>(~u_input.b, 44635u, u_input.b, u_input.a), vec4<u32>(9521u, select(0u, _wgslsmith_clamp_u32(0u, u_input.b, u_input.a), all(vec3<bool>(true, false, global0.a.x))), u_input.a | 0u, 27957u)), func_2(_wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, u_input.d, u_input.c.x), vec3<i32>(u_input.e.x, -1i, -52296i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.d, u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec3_i32(u_input.e, vec3<i32>(-2147483647i, 29370i, 0i), u_input.e), u_input.e)), func_6(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.b), vec4<u32>(4294967295u, u_input.a, u_input.a, 0u)), func_2(-vec3<i32>(-1i, -35864i, u_input.c.x), Struct_3(-30496i), global0.a.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mult_vec4_i32(~vec4<i32>(14156i, var_2.a, 0i, -1i), vec4<i32>(-2147483647i, -12291i, 14546i, var_2.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(37406u, u_input.b, u_input.b, 1u), abs(vec4<u32>(8719u, u_input.a, 1u, u_input.b))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-1208f + -1657f), ~(~u_input.e), reverseBits(select(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(50182u, u_input.a), vec2<u32>(u_input.b, u_input.a)), vec2<u32>(u_input.a, 19859u)), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, u_input.b)), func_5(true, Struct_1(vec2<bool>(true, global0.a.x)), -2147483647i, Struct_3(-72162i)).wz), !(global0.a.x | global0.a.x))), 33424i);
}

