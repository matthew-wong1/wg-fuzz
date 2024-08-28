struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-57257i, 0i, 33820i, -1634i);

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(1i, 49024i, -12960i), vec3<i32>(-1i, i32(-2147483648), -27150i), vec3<i32>(-37287i, 0i, 29712i), vec3<i32>(0i, -172i, 19186i), vec3<i32>(i32(-2147483648), -2557i, -1i), vec3<i32>(37899i, -51636i, 12042i), vec3<i32>(i32(-2147483648), 40872i, i32(-2147483648)), vec3<i32>(1i, -50368i, i32(-2147483648)), vec3<i32>(-24894i, 6096i, 0i), vec3<i32>(11162i, 2147483647i, 2147483647i), vec3<i32>(22827i, 2147483647i, -7763i), vec3<i32>(4065i, -23649i, -25480i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> f32 {
    global1 = ~_wgslsmith_div_u32(21762u, ~0u);
    let var_0 = 46477i;
    let var_1 = Struct_2(vec3<f32>(arg_0, arg_2.x, _wgslsmith_f_op_f32(-arg_0)), arg_0);
    global0 = firstLeadingBit(vec4<i32>(24731i, var_0, u_input.c.x, u_input.c.x));
    let var_2 = Struct_1(countOneBits(~(-2147483647i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -1000f) * arg_1);
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -188f)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1944f + -251f) + _wgslsmith_f_op_f32(trunc(-583f))), 1384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-742f, 548f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-739f, _wgslsmith_f_op_f32(step(1138f, -340f)), 475f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1837f, 235f, 513f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-750f * _wgslsmith_f_op_f32(trunc(264f))))))));
    var var_2 = Struct_3(-199f);
    var var_3 = ~firstTrailingBit(25339i);
    var var_4 = Struct_3(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_1.a.x), 1056f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1371f, _wgslsmith_f_op_f32(var_1.a.x - 417f), -110f, _wgslsmith_f_op_f32(-1739f * var_2.a))))));
    return min(abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(global0.x, firstLeadingBit(1i)), firstLeadingBit(-2147483647i))), select(global0.x, -arg_2, true));
}

fn func_1() -> Struct_3 {
    var var_0 = ~u_input.a;
    global1 = ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(32387u, 1u), vec2<u32>(0u, 0u)), 0u), _wgslsmith_mod_u32(1u, u_input.d.x));
    global0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(func_2(49323u, vec4<bool>(true, true, true, true), global0.x), global0.x), i32(-1i) * -(~u_input.a.x), global0.x, var_0.x), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_0.x, ~(-9553i), global0.x, -19229i), vec4<i32>(global0.x, 1i, 1i, -var_0.x)), countOneBits(vec4<i32>(global0.x, u_input.a.x, u_input.c.x, u_input.a.x)) >> (countOneBits(vec4<u32>(1u, 1u, u_input.b, 1u) >> (vec4<u32>(69716u, u_input.b, u_input.d.x, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), max(countOneBits(vec4<i32>(global0.x, 0i, u_input.c.x, global0.x)), vec4<i32>(_wgslsmith_mod_i32(var_0.x, var_0.x), func_2(42932u, vec4<bool>(true, false, true, true), global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -2147483647i, 1i), global2[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, 1i, 2147483647i), vec4<i32>(3839i, -1i, u_input.a.x, global0.x))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2492f, 863f, -914f)))) * vec3<f32>(-483f, _wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(f32(-1f) * -1025f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-1160f - 1000f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(940f, -759f, -378f, 113f), vec4<f32>(-235f, -891f, 243f, 749f), false))))) + _wgslsmith_f_op_f32(max(585f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -558f))))));
    var_0 = vec3<i32>(u_input.a.x, _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.x, u_input.a.x, var_0.x) << (vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, u_input.b) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, u_input.c.x, -808i, 1i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.x, 0i << (0u % 32u)), i32(-1i) * -49321i, -1i)), global0.x);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-684f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 109f;
    let var_1 = func_1();
    global2 = array<vec3<i32>, 13>();
    global0 = ~(~min(~(~vec4<i32>(0i, 17360i, global0.x, u_input.c.x)), firstTrailingBit(-vec4<i32>(-41023i, -54546i, u_input.a.x, global0.x))));
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1271f, var_1.a, -975f), vec3<f32>(468f, var_0, var_0), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -1827f, 562f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(var_1.a, var_0)), -1294f), !all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 602f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1061f, 1275f), vec3<f32>(-195f, 964f, var_1.a)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b, 37855u, max(0u, u_input.b))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.b, 1u, 0u)), vec3<u32>(~4294967295u, 66880u, 1u), ~(~vec3<u32>(u_input.b, 68413u, u_input.b)))));
}

