struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(i32(-2147483648), 27989i), Struct_1(vec2<i32>(68197i, 2147483647i), vec3<u32>(0u, 13869u, 4294967295u)), Struct_1(vec2<i32>(-34256i, -1i), vec3<u32>(4294967295u, 4294967295u, 1u)), vec3<bool>(false, true, false), 0u);

var<private> global1: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    global0 = Struct_4((-u_input.a.zw >> (_wgslsmith_div_vec2_u32(global0.c.b.xy, _wgslsmith_mult_vec2_u32(global0.c.b.xx, vec2<u32>(4294967295u, 1u))) % vec2<u32>(32u))) | (vec2<i32>(arg_1 | 2882i, _wgslsmith_dot_vec4_i32(u_input.d, u_input.a)) << ((~global0.c.b.zz >> (reverseBits(vec2<u32>(global0.e, global0.b.b.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), Struct_1(-(~global0.b.a), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(4294967295u, 43176u, 4294967295u)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(global0.c.b.x, 22659u, global0.b.b.x)), ~global0.c.b))), global0.c, global0.d, firstTrailingBit(2446u));
    var var_0 = global0.b;
    let var_1 = Struct_2(Struct_1(firstTrailingBit((vec2<i32>(var_0.a.x, u_input.c) | global0.b.a) & (vec2<i32>(1i, -63407i) >> (vec2<u32>(global0.e, 0u) % vec2<u32>(32u)))), abs(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, global0.e, 4294967295u), vec3<u32>(1u, var_0.b.x, global0.b.b.x), vec3<u32>(global0.c.b.x, 1u, global0.c.b.x)), ~var_0.b))));
    var var_2 = Struct_2(var_1.a);
    let var_3 = firstLeadingBit(vec3<u32>(~(~var_0.b.x), 32903u, global0.c.b.x));
    return -1i;
}

fn func_2() -> u32 {
    global1 = global0.d.yz;
    var var_0 = Struct_4(u_input.a.yx, Struct_1(global0.b.a, ~global0.b.b), global0.c, select(select(select(!global0.d, vec3<bool>(global1.x, true, true), !global0.d.x), global0.d, any(vec3<bool>(global1.x, false, global0.d.x))), !vec3<bool>(global1.x, select(global1.x, false, global0.d.x), true), false), 1u);
    global0 = Struct_4(vec2<i32>(func_3(vec4<bool>(true, global1.x, var_0.d.x, false), global0.c.a.x, vec4<f32>(130f, -1434f, -261f, -359f), -274f) & _wgslsmith_clamp_i32(u_input.b, 1i, 12342i), ~(global0.c.a.x >> (global0.b.b.x % 32u))) >> (_wgslsmith_add_vec2_u32(~var_0.b.b.yz, ~vec2<u32>(0u, 25543u) >> (global0.b.b.yz % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(vec2<i32>(min(_wgslsmith_dot_vec2_i32(global0.a, global0.b.a), u_input.d.x), u_input.b), var_0.b.b), global0.c, !var_0.d, 64175u);
    var var_1 = Struct_4(vec2<i32>(-2684i, u_input.a.x), Struct_1(global0.b.a | -(vec2<i32>(global0.c.a.x, global0.b.a.x) >> (vec2<u32>(var_0.b.b.x, var_0.b.b.x) % vec2<u32>(32u))), _wgslsmith_mult_vec3_u32(abs(~global0.b.b), abs(var_0.b.b))), Struct_1(vec2<i32>(func_3(vec4<bool>(false, false, var_0.d.x, var_0.d.x), u_input.b, vec4<f32>(532f, 1570f, 934f, -117f), -617f), firstTrailingBit(i32(-1i) * -13514i)), vec3<u32>(var_0.c.b.x, var_0.c.b.x, ~global0.c.b.x)), !var_0.d, abs(max(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global0.c.b, vec3<u32>(var_0.e, 13491u, global0.c.b.x)), vec3<u32>(33971u, 1u, global0.e)), 78089u)));
    var var_2 = vec3<bool>(global0.d.x, var_0.d.x, any(select(!(!vec4<bool>(global1.x, false, true, global1.x)), !select(vec4<bool>(false, var_0.d.x, global0.d.x, true), vec4<bool>(false, true, false, true), vec4<bool>(true, global1.x, true, true)), select(!vec4<bool>(var_0.d.x, true, var_1.d.x, false), !vec4<bool>(false, var_0.d.x, var_0.d.x, var_1.d.x), true))));
    return _wgslsmith_sub_u32(~(~(~var_0.c.b.x)), 12092u << (var_1.e % 32u));
}

fn func_1(arg_0: bool) -> vec2<f32> {
    var var_0 = -1035f;
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.c.b, vec3<u32>(global0.b.b.x, global0.c.b.x, global0.e))) >> (1u % 32u), firstTrailingBit(func_2())), _wgslsmith_add_u32(_wgslsmith_div_u32(global0.b.b.x, _wgslsmith_div_u32(global0.c.b.x, 23747u)), 1u));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-957f, -1000f, -442f, -1220f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(791f, -1329f, 732f, -1308f), vec4<f32>(1891f, 1000f, 604f, 532f))), vec4<bool>(false, global1.x, false, true))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -958f))), 1393f, 891f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1162f, -413f)))), vec4<bool>(true, !all(vec4<bool>(arg_0, true, false, arg_0)), true, true)));
    var var_3 = Struct_2(global0.b);
    global1 = vec2<bool>(false, false);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(934f, 1769f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!(!vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x)), select(vec4<bool>(global0.d.x, true, false, any(vec4<bool>(global1.x, global1.x, global0.d.x, global1.x))), vec4<bool>(true, all(vec4<bool>(global1.x, true, global0.d.x, global0.d.x)), true, true), global1.x), _wgslsmith_clamp_u32(global0.b.b.x, 53844u, global0.c.b.x) > ~(global0.e & global0.e));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(var_0.x == true)), _wgslsmith_f_op_vec2_f32(func_1(!(true & var_0.x))), all(!select(!vec3<bool>(global1.x, global0.d.x, var_0.x), vec3<bool>(global0.d.x, var_0.x, var_0.x), any(vec2<bool>(global0.d.x, true))))));
    let var_2 = select(select(vec4<bool>(true, true || global1.x, false, true), vec4<bool>(all(select(vec4<bool>(global1.x, global0.d.x, true, var_0.x), vec4<bool>(true, global1.x, var_0.x, global1.x), true)), true, all(var_0), var_0.x), select(select(!vec4<bool>(false, true, global0.d.x, false), !vec4<bool>(true, global1.x, false, global0.d.x), !global0.d.x), select(select(var_0, vec4<bool>(false, global0.d.x, false, true), vec4<bool>(false, global0.d.x, false, global0.d.x)), vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(false, false, false, var_0.x)), select(var_0, !vec4<bool>(global1.x, true, global0.d.x, var_0.x), select(var_0, var_0, global0.d.x)))), var_0, any(select(select(!var_0.zz, vec2<bool>(true, var_0.x), select(true, global0.d.x, global0.d.x)), select(vec2<bool>(global1.x, false), !var_0.yz, var_0.zz), !(!global0.d.x))));
    let var_3 = vec4<f32>(-594f, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-241f + var_1.x), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_dot_vec2_u32(global0.b.b.zz, global0.c.b.xx) == 82313u)).x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))));
    let var_4 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(783f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -612f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1533f - var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_div_f32(-277f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1741f)), -2539f) - 126f)), select(min(global0.a, _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.b, 34747i), vec2<i32>(global0.c.a.x, 20078i), true), vec2<i32>(global0.c.a.x, 2147483647i) << (vec2<u32>(global0.e, 4294967295u) % vec2<u32>(32u)))), max(-vec2<i32>(25057i, u_input.d.x), u_input.a.wz), var_2.zy));
}

