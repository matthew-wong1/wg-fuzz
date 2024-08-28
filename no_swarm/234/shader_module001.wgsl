struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>) -> i32 {
    var var_0 = global1.c.x;
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(66984u, 1u), arg_2.x, arg_2.x, u_input.a.x);
    var var_2 = arg_2.x;
    let var_3 = select(arg_1.b.a, vec2<bool>(!(_wgslsmith_div_f32(arg_1.a.x, -1840f) == 1000f), true), arg_0.b.a);
    global0 = ~1u;
    return 0i;
}

fn func_2() -> i32 {
    global1 = Struct_2(global1.a, global1.d, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(select(24568i, 0i, false), countOneBits(global1.c.x)), 2147483647i), global1.c, -countOneBits(global1.c)), global1.d);
    var var_0 = select(global1.d.a, vec2<bool>(true && !(!global1.d.a.x), (u_input.b << (~24522u % 32u)) > ~func_3(Struct_2(global1.a, Struct_1(global1.b.a), global1.c, Struct_1(vec2<bool>(false, true))), Struct_2(global1.a, global1.b, vec2<i32>(global1.c.x, u_input.b), Struct_1(vec2<bool>(global1.d.a.x, global1.d.a.x))), u_input.a.ww)), global1.b.a.x);
    global0 = countOneBits(u_input.a.x << (~firstLeadingBit(1u) % 32u));
    var var_1 = true;
    var var_2 = firstLeadingBit((~vec4<i32>(0i, 1i, global1.c.x, 1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1755u, u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(18531u, 8024u, 56482u, u_input.a.x))) % vec4<u32>(32u))) >> (reverseBits(u_input.a) % vec4<u32>(32u)));
    return var_2.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global0 = abs(1u) | firstTrailingBit(~(~_wgslsmith_add_u32(60592u, 10664u)));
    global0 = firstTrailingBit(firstTrailingBit(arg_0));
    let var_0 = arg_2.c.yxy;
    global0 = 0u;
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) - _wgslsmith_f_op_f32(round(569f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x - -2277f) * _wgslsmith_f_op_f32(round(421f))))), arg_1, vec2<i32>(-16274i, ~func_2()), Struct_1(!arg_1.a));
    return _wgslsmith_f_op_f32(arg_3.a.x + 955f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1544f, _wgslsmith_f_op_f32(step(global1.a.x, 100f)), _wgslsmith_f_op_f32(-global1.a.x)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(8008u, Struct_1(vec2<bool>(global1.b.a.x, true)), Struct_3(vec3<bool>(global1.b.a.x, global1.b.a.x, global1.d.a.x), Struct_1(vec2<bool>(true, false)), vec4<bool>(true, global1.d.a.x, false, global1.d.a.x), Struct_1(vec2<bool>(global1.d.a.x, false))), Struct_2(global1.a, global1.d, vec2<i32>(16274i, u_input.b), Struct_1(global1.d.a))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(0u, global1.d, Struct_3(vec3<bool>(false, global1.b.a.x, true), Struct_1(global1.b.a), vec4<bool>(false, true, global1.b.a.x, global1.b.a.x), Struct_1(vec2<bool>(false, false))), Struct_2(global1.a, Struct_1(vec2<bool>(true, true)), global1.c, global1.b))), _wgslsmith_f_op_f32(288f + global1.a.x))), global1.a.x), vec2<u32>(_wgslsmith_clamp_u32(51516u, u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 18964u, u_input.a.x), vec3<u32>(0u, u_input.a.x, 4294967295u)), ~(~2628u)), ~_wgslsmith_div_u32(~31467u, _wgslsmith_clamp_u32(10011u, 18135u, 1u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, -986f, 814f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1116f, global1.a.x, global1.a.x) - vec4<f32>(1209f, global1.a.x, global1.a.x, 1806f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.x, -440f, -379f, 1190f), vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)))), ~4294967295u >= u_input.a.x)), vec2<i32>(~_wgslsmith_div_i32(i32(-1i) * -9122i, 17637i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 1i), _wgslsmith_dot_vec2_i32(max(global1.c, global1.c), ~vec2<i32>(global1.c.x, 2147483647i)))));
}

