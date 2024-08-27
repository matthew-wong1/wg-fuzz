struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<f32>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global3: vec4<f32> = vec4<f32>(-400f, 295f, 308f, -1251f);

var<private> global4: f32 = 202f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_4) -> i32 {
    global3 = vec4<f32>(global3.x, 778f, arg_3.a.b.c.x, _wgslsmith_f_op_f32(trunc(-593f)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))) - arg_0.c.x));
    let var_1 = u_input.a;
    let var_2 = abs(_wgslsmith_div_u32(34465u, _wgslsmith_div_u32(arg_3.b.c.a ^ arg_3.b.c.b.x, 8581u) >> ((arg_0.b.x ^ abs(0u)) % 32u)));
    var var_3 = _wgslsmith_mult_i32(-arg_1.a, arg_1.a);
    return max(-(_wgslsmith_div_i32(1i ^ arg_1.a, arg_1.a) << (~(~4294967295u) % 32u)), -2147483647i);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> bool {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(-arg_2.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f + -2639f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), var_1.x, global2.x)))));
    let var_3 = arg_1;
    let var_4 = Struct_1(firstTrailingBit(~_wgslsmith_div_u32(var_3 ^ var_3, 0u)), u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - arg_2.x)) + arg_2.xx));
    return select(global0.x || global2.x, !(u_input.b.x <= ~firstLeadingBit(var_3)), true);
}

fn func_2() -> vec3<u32> {
    var var_0 = all(vec4<bool>(any(!vec4<bool>(true, false, global2.x, global2.x)), false, global2.x, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.x), -134f))));
    global2 = select(vec4<bool>(true, false, global0.x, !(!(!global2.x))), !vec4<bool>(global0.x, global2.x, true, any(!global2.yw)), vec4<bool>(func_3(Struct_2(u_input.d.x, vec3<bool>(true, global2.x, false)), _wgslsmith_div_u32(1u, u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -1377f, var_1.x))) && ((4294967295u | u_input.b.x) == 10087u), global2.x, global0.x, select(all(vec2<bool>(global2.x, true)) || true, true, false)));
    let var_2 = ~(~u_input.b.wyw) ^ ~(vec3<u32>(u_input.b.x, 1u, firstLeadingBit(u_input.b.x)) >> (vec3<u32>(~u_input.b.x, ~0u, firstLeadingBit(1u)) % vec3<u32>(32u)));
    var var_3 = Struct_1(~firstLeadingBit(u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, firstLeadingBit(4294967295u), firstTrailingBit(4294967295u), ~0u), reverseBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(var_2.x, var_2.x, var_2.x, 1u), vec4<u32>(1u, var_2.x, u_input.b.x, 0u), true), ~vec4<u32>(var_2.x, u_input.b.x, 0u, 8845u), ~u_input.b))), global3.zx);
    return countOneBits(_wgslsmith_mod_vec3_u32(~var_2, _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, u_input.b.x), vec3<u32>(var_3.a, 5499u, 4294967295u)), min(~vec3<u32>(4294967295u, 73080u, u_input.b.x), vec3<u32>(var_2.x, u_input.b.x, 0u)))));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: i32) -> vec4<u32> {
    let var_0 = Struct_3(Struct_1(countOneBits(func_2().x), ~select(u_input.b << (u_input.b % vec4<u32>(32u)), u_input.b, select(vec4<bool>(false, global0.x, global2.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, true, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, arg_0)))), Struct_1(func_2().x, max(~u_input.b & firstLeadingBit(vec4<u32>(u_input.b.x, 28858u, u_input.b.x, 1u)), u_input.b), global3.xy), Struct_1(~(0u >> ((u_input.b.x | u_input.b.x) % 32u)), vec4<u32>(u_input.b.x, 22283u, ~u_input.b.x, 40092u >> (1u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global3.x))))))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(428f, _wgslsmith_f_op_f32(sign(global3.x))))) * global1.x), -426f, global3.x, global1.x);
    var var_1 = Struct_4(Struct_3(Struct_1(4294967295u | u_input.b.x, u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.c) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c.x, arg_0) * var_0.c.c))), Struct_1(var_0.c.a, countOneBits(_wgslsmith_sub_vec4_u32(var_0.c.b, vec4<u32>(2486u, 42951u, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(abs(global1.zw))), var_0.b), var_0, global2.x);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.b.c.x, var_1.a.c.c.x, 775f, var_1.b.a.c.x), vec4<f32>(551f, global3.x, -713f, 482f), vec4<bool>(global0.x, global2.x, false, true)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.b.b.c.x, -525f, var_0.b.c.x, var_1.b.b.c.x)))))));
    global0 = global2.zy;
    return vec4<u32>(var_0.a.b.x, var_0.b.b.x, 1u, ~(~reverseBits(var_1.b.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(true, all(!global2.xzz));
    let x = u_input.a;
    s_output = StorageBuffer(0i, func_4(global1.x, u_input.d.xy, select(func_1(Struct_1(43012u, vec4<u32>(91385u, u_input.b.x, u_input.b.x, 1u), vec2<f32>(814f, 400f)), Struct_2(-1i, vec3<bool>(global0.x, global2.x, global2.x)), vec2<bool>(true, global0.x), Struct_4(Struct_3(Struct_1(u_input.b.x, vec4<u32>(1u, 0u, u_input.b.x, 4294967295u), vec2<f32>(global1.x, global1.x)), Struct_1(31393u, vec4<u32>(28942u, 8969u, 0u, u_input.b.x), vec2<f32>(1000f, global1.x)), Struct_1(1u, u_input.b, vec2<f32>(global3.x, global1.x))), Struct_3(Struct_1(0u, vec4<u32>(u_input.b.x, u_input.b.x, 24183u, u_input.b.x), vec2<f32>(global3.x, -234f)), Struct_1(u_input.b.x, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u), global3.zy), Struct_1(1u, u_input.b, vec2<f32>(1471f, global3.x))), global0.x)), ~u_input.c, false) << (_wgslsmith_dot_vec3_u32(u_input.b.yxx | vec3<u32>(104035u, u_input.b.x, 4003u), func_2()) % 32u)), u_input.b.wxx, u_input.b, 65065u);
}

