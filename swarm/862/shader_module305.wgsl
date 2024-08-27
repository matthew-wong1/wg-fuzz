struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(151f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-842f)))));
    global2 = true;
    var var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, abs(var_0.a), 4294967295u), firstLeadingBit(vec3<u32>(~_wgslsmith_mult_u32(22096u, 41207u), min(abs(15386u), ~u_input.a.x), _wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_add_u32(13521u, 31285u), _wgslsmith_div_u32(var_0.a, 1u)))));
    var_0 = Struct_3(_wgslsmith_add_u32(u_input.a.x >> (0u % 32u), _wgslsmith_mod_u32(var_0.a, select(u_input.a.x | 4294967295u, max(u_input.a.x, 0u), true))), Struct_1(_wgslsmith_f_op_f32(ceil(-844f))), var_0.b);
    global2 = false;
    return var_0.b.a;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = Struct_3(u_input.a.x, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(-arg_0.a))))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))));
    global2 = true;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.c.a)), var_0.b.a);
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    return all(!select(!global3[_wgslsmith_index_u32(~var_0.a, 12u)], vec4<bool>(true, true, false, select(false, true, false)), true));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> f32 {
    global0 = array<Struct_2, 32>();
    global1 = arg_0;
    global2 = all(!vec4<bool>(any(global3[_wgslsmith_index_u32(arg_1.b, 12u)]) != true, !func_2(Struct_1(-1780f)), !all(global3[_wgslsmith_index_u32(51771u, 12u)]), any(vec3<bool>(false, true, arg_1.a))));
    global0 = array<Struct_2, 32>();
    global2 = _wgslsmith_f_op_f32(max(326f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0, 994f), _wgslsmith_f_op_f32(-arg_1.d.a))))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -637f)))));
    return arg_1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-380f, -852f));
    global0 = array<Struct_2, 32>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(-934f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.b, 0i)), _wgslsmith_f_op_f32(1000f - 991f), true)))), -1083f);
    let var_1 = select(select(vec4<bool>(var_0.x < -485f, (u_input.b != u_input.b) && true, true, all(vec3<bool>(false, true, true))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), !global3[_wgslsmith_index_u32(u_input.a.x, 12u)], global3[_wgslsmith_index_u32(49877u, 12u)]), vec4<bool>(true, true, true, true)), select(!vec4<bool>(true, false, true, any(global3[_wgslsmith_index_u32(4294967295u, 12u)])), vec4<bool>(true, false, true, 970f <= _wgslsmith_f_op_f32(trunc(var_0.x))), !select(vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(firstLeadingBit(1u), 12u)], true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = Struct_2(firstLeadingBit(u_input.b) >= -1i, ~(~countOneBits(select(u_input.a.x, u_input.a.x, var_1.x))), vec3<i32>(~u_input.b, max(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, u_input.b), i32(-1i) * -1i), -48155i), -u_input.b), Struct_1(var_0.x));
    var var_3 = var_1.xzx;
    var var_4 = vec3<u32>(abs(67438u | u_input.a.x), u_input.a.x, 1u);
    let var_5 = (_wgslsmith_f_op_f32(func_1(472f, Struct_2(var_3.x, 29327u, -vec3<i32>(var_2.c.x, u_input.b, u_input.b), var_2.d), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, var_2.c.x), var_2.c), _wgslsmith_dot_vec2_i32(var_2.c.zx, vec2<i32>(var_2.c.x, -1260i))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f) - var_0.x)) || select(-2973f <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1118f, 774f) + _wgslsmith_f_op_f32(func_1(-1069f, global0[_wgslsmith_index_u32(0u, 32u)], 0i, var_2.c.x))), false, all(vec2<bool>(any(vec2<bool>(true, var_1.x)), all(var_1.zy))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~vec3<u32>(1u, u_input.a.x, 4148u)))), -24512i, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~(vec4<i32>(var_2.c.x, -2147483647i, -2147483647i, var_2.c.x) ^ vec4<i32>(var_2.c.x, -1i, u_input.b, -57403i)), reverseBits(vec4<i32>(u_input.b, -55449i, var_2.c.x, -2147483647i))), min(reverseBits(vec4<i32>(u_input.b, -5846i, 1i, var_2.c.x)), vec4<i32>(1i, 1i, 0i, _wgslsmith_dot_vec3_i32(var_2.c, var_2.c)))), abs(_wgslsmith_dot_vec3_u32((vec3<u32>(var_2.b, 45934u, var_2.b) ^ vec3<u32>(21384u, u_input.a.x, 4294967295u)) << (vec3<u32>(u_input.a.x, u_input.a.x, var_4.x) % vec3<u32>(32u)), vec3<u32>(1u, _wgslsmith_mult_u32(var_4.x, 46292u), ~0u))), -select(_wgslsmith_clamp_vec3_i32(var_2.c, vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(14065i, u_input.b, -35340i) | vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(var_2.c.x, 6817i, u_input.b), vec3<i32>(-57094i, -2804i, -1i)), _wgslsmith_mod_vec3_i32(var_2.c, vec3<i32>(var_2.c.x, u_input.b, u_input.b))), var_5));
}

