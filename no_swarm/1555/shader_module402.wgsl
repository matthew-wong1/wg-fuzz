struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -820f;

var<private> global1: array<i32, 10>;

var<private> global2: vec2<f32> = vec2<f32>(666f, 933f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_sub_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 2147483647i, global1[_wgslsmith_index_u32(~36890u, 10u)], abs(-1i)), -select(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], -2147483647i, global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(arg_0.a.a.x, 10u)]), vec4<i32>(global1[_wgslsmith_index_u32(arg_0.a.c.x, 10u)], -2147483647i, global1[_wgslsmith_index_u32(arg_0.d.a.x, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]) & vec4<i32>(-1063i, global1[_wgslsmith_index_u32(arg_0.e.a.x, 10u)], 2147483647i, global1[_wgslsmith_index_u32(1u, 10u)]), arg_0.c)), _wgslsmith_add_i32(0i, 10584i), true == all(vec3<bool>(arg_0.c.x, true, select(false, true, arg_0.c.x))), (_wgslsmith_clamp_u32(firstTrailingBit(62341u), 5012u, u_input.a.x) ^ ~_wgslsmith_mod_u32(73339u, 16313u)) >> (~4294967295u % 32u), false);
    var_0 = Struct_3(vec4<i32>(var_0.a.x, _wgslsmith_dot_vec2_i32(countOneBits(var_0.a.wx) ^ -vec2<i32>(-5346i, 47170i), vec2<i32>(~(-33180i), firstLeadingBit(var_0.a.x))), 11488i & _wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(4294967295u, 10u)], -3090i), _wgslsmith_sub_i32(-var_0.a.x, -var_0.b << (arg_0.d.c.x % 32u))), abs(-55829i), arg_0.c.x, _wgslsmith_mod_u32(arg_0.e.c.x, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(9825u, arg_0.b.c.x), false), vec2<u32>(arg_0.e.a.x, u_input.a.x))), arg_0.c.x);
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    var var_1 = var_0.a.x;
    return firstLeadingBit(~max(vec4<u32>(var_0.d, 0u, var_0.d, 1u) << (vec4<u32>(var_0.d, arg_0.a.a.x, 0u, 0u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, arg_0.b.c.x))) >> (max(vec4<u32>(arg_0.d.a.x, ~arg_0.e.c.x, var_0.d, ~0u | (arg_0.a.c.x & 83850u)), select(countOneBits(vec4<u32>(var_0.d, u_input.a.x, 0u, var_0.d) | vec4<u32>(6144u, 30344u, arg_0.e.c.x, u_input.a.x)), vec4<u32>(1u, 4294967295u, _wgslsmith_dot_vec3_u32(arg_0.b.c, vec3<u32>(arg_0.b.a.x, 4294967295u, var_0.d)), 0u & arg_0.a.c.x), arg_0.c)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, 2485f) + vec2<f32>(arg_1.x, 699f))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(108f - -1059f), -2585f), vec2<f32>(-1697f, -816f))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -837f))))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(112f))));
    let var_2 = firstTrailingBit(_wgslsmith_sub_vec2_u32(arg_0.wy, arg_0.xz));
    let var_3 = (~(~(~arg_0.x)) << (_wgslsmith_mod_u32(countOneBits(u_input.a.x), 2890u) % 32u)) > (arg_0.x >> (reverseBits(1u) % 32u));
    return arg_0.ywz;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -1496f));
    let var_1 = Struct_2(Struct_1((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 32363u), vec3<u32>(u_input.a.x, 23109u, 19986u), vec3<u32>(22191u, u_input.a.x, u_input.a.x)) & vec3<u32>(u_input.a.x, u_input.a.x, 120652u)) << (func_4(func_3(Struct_2(Struct_1(vec3<u32>(u_input.a.x, 25503u, u_input.a.x), -223f, vec3<u32>(4294967295u, 79648u, u_input.a.x)), Struct_1(vec3<u32>(5678u, u_input.a.x, 27140u), arg_0, vec3<u32>(u_input.a.x, 13575u, 0u)), vec4<bool>(true, true, true, false), Struct_1(vec3<u32>(1u, u_input.a.x, u_input.a.x), 710f, vec3<u32>(u_input.a.x, 25011u, u_input.a.x)), Struct_1(vec3<u32>(1u, u_input.a.x, u_input.a.x), -2232f, vec3<u32>(17488u, u_input.a.x, 39858u)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1583f, arg_0, -1232f, global2.x))), Struct_3(vec4<i32>(global1[_wgslsmith_index_u32(35178u, 10u)], 19382i, 2147483647i, -12479i), -2147483647i, true, 1u, false)) % vec3<u32>(32u)), -1377f, countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 25150u, u_input.a.x))) ^ (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 3869u, u_input.a.x)))), Struct_1(~_wgslsmith_mod_vec3_u32(vec3<u32>(34775u, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(65410u, 1u, 1u), vec3<u32>(u_input.a.x, 4294967295u, 36747u))), -244f, vec3<u32>(0u, 45404u, ~u_input.a.x)), !(!vec4<bool>(all(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true)), false, true)), Struct_1(vec3<u32>(4294967295u, ~u_input.a.x, u_input.a.x) & _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 17197u), vec3<u32>(u_input.a.x, u_input.a.x, 11141u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(742f)), 1293f)), vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 1u, 28785u)), vec3<u32>(22622u, u_input.a.x, 0u)), u_input.a.x, 4294967295u)), Struct_1(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) % vec3<u32>(32u)), min(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(1u, 0u, u_input.a.x)))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x), 1u, u_input.a.x), vec3<u32>(42464u, _wgslsmith_add_u32(23103u, 112193u), 1u))));
    var var_2 = vec4<bool>(all(!var_1.c), var_1.c.x, true, false | var_1.c.x);
    let var_3 = select(~(-firstTrailingBit(firstTrailingBit(vec2<i32>(0i, -1i)))), vec2<i32>(max(_wgslsmith_div_i32(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 0i), countOneBits(56979i)), reverseBits(-6788i)), -2147483647i), var_1.c.xy);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-432f * arg_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-410f))))) * var_1.e.b);
    return var_1.a;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = func_2(1933f, 10100i);
    return 319f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(all(vec4<bool>(true, true, true, true)) != true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(627f))));
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(57190u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 11240u), _wgslsmith_add_vec3_u32(vec3<u32>(92333u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), vec3<u32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), select(func_3(Struct_2(Struct_1(vec3<u32>(4294967295u, 1905u, 1u), global2.x, vec3<u32>(u_input.a.x, 8560u, u_input.a.x)), Struct_1(vec3<u32>(1u, 0u, 56579u), -1000f, vec3<u32>(0u, u_input.a.x, 4294967295u)), vec4<bool>(true, true, true, true), Struct_1(vec3<u32>(0u, 19175u, u_input.a.x), global2.x, vec3<u32>(0u, 7338u, u_input.a.x)), Struct_1(vec3<u32>(1u, 0u, 32116u), -103f, vec3<u32>(101089u, 0u, 1u)))).x, 6418u, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global2.x)), global2.x))), ~(~vec3<u32>(25206u, 45893u, u_input.a.x) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(69015u, u_input.a.x, 21786u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(37743u, 40896u, u_input.a.x)) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, var_0.b) * vec2<f32>(-532f, var_0.b))))))));
    global2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global2.x * var_1.x), 1432f), vec2<f32>(499f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b), var_0.b)) + _wgslsmith_f_op_f32(floor(721f))))));
    var var_2 = 974f;
    global1 = array<i32, 10>();
    let var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, ~countOneBits(~_wgslsmith_mod_u32(u_input.a.x, 25327u)), ~(~(~17334u)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false))))), ~vec2<u32>(u_input.a.x, countOneBits(var_0.c.x)));
}

