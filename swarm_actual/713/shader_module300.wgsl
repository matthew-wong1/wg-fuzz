struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = u_input.b.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))))))), arg_0.b, !arg_0.c, select(!vec2<bool>(arg_0.d.x, !arg_0.c), arg_0.b.zx, !(!all(arg_0.b))));
    var_0 = u_input.a.x;
    var_0 = _wgslsmith_dot_vec2_u32(~vec2<u32>(34810u, 910u), firstLeadingBit(abs(u_input.a << (max(vec2<u32>(u_input.a.x, 2300u), u_input.b) % vec2<u32>(32u)))));
    var var_2 = -30352i;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a)) * arg_0.a))), var_1.a, true))));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-2057f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(1000f, vec4<bool>(true, true, false, true), true, vec2<bool>(false, false)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(824f - -104f))))));
    var var_1 = Struct_1(vec3<u32>(u_input.b.x, 6534u, 1u), vec4<f32>(2973f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + var_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(sign(-373f))), _wgslsmith_f_op_f32(-var_0))), -1242f), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(30478u, 1u, u_input.b.x), vec3<u32>(37317u, arg_0, 1u)) << (vec3<u32>(60105u, ~u_input.b.x, global0[_wgslsmith_index_u32(7583u, 4u)] << (global0[_wgslsmith_index_u32(25999u, 4u)] % 32u)) % vec3<u32>(32u))), 47765u);
    global0 = array<u32, 4>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, 1072f, -932f), var_1.b.yxy)))), vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(trunc(var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f), _wgslsmith_f_op_f32(floor(2310f)))))) - var_1.b.xxw);
    var var_3 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 9968u, 1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(58710u, 28838u), reverseBits(56602u))), abs(abs(~vec4<u32>(3164u, 1u, u_input.a.x, 71736u))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-640f)))))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, 721f, -1542f, _wgslsmith_f_op_f32(-636f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-103f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(126f + 876f), _wgslsmith_f_op_f32(sign(104f))))), -1482f, -126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_u32(9872u, 4294967295u, 4332u))) + _wgslsmith_f_op_f32(round(-180f)))));
    var var_1 = min(select(select(~(u_input.c >> (u_input.b % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), u_input.c.x), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)), u_input.c, vec2<bool>(true, true)), ~(-vec2<i32>(~(-1i), 35337i | u_input.c.x)));
    let var_2 = _wgslsmith_clamp_u32(1u, 4294967295u, ~(u_input.b.x << (global0[_wgslsmith_index_u32(68640u, 4u)] % 32u)));
    var_1 = vec2<i32>(max(_wgslsmith_mod_i32(var_1.x, u_input.c.x), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, var_1.x, 319i), min(vec3<i32>(u_input.c.x, var_1.x, 2147483647i), vec3<i32>(var_1.x, var_1.x, 0i)), abs(vec3<i32>(var_1.x, var_1.x, u_input.c.x))), vec3<i32>(2147483647i, 0i, 5001i) >> ((vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67004u, 4u)], 4u)], 4269u, 1u) >> (vec3<u32>(global0[_wgslsmith_index_u32(1u, 4u)], u_input.a.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)))), _wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, var_1.x), _wgslsmith_mult_i32(u_input.c.x, -28269i), var_1.x)), 0i >> (1u % 32u)));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x)))))));
    return 32356u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~u_input.b.x, abs(_wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(1u, 4u)], func_1(), u_input.a.x)) ^ ~15794u);
    global0 = array<u32, 4>();
    var var_1 = -118f;
    var var_2 = _wgslsmith_f_op_f32(ceil(-1396f));
    var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-188f, _wgslsmith_f_op_f32(2642f + -332f))))));
    var var_3 = Struct_2(Struct_1(~(~(~vec3<u32>(39277u, u_input.b.x, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, 1796f, 353f, -521f))), ~(~(~vec3<u32>(1u, 13867u, u_input.a.x))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, 11076u, 90064u, 57628u)), vec4<u32>(u_input.a.x << (0u % 32u), ~4294967295u, ~global0[_wgslsmith_index_u32(var_0, 4u)], _wgslsmith_sub_u32(u_input.b.x, 0u)))));
    var var_4 = Struct_3(var_3.a.b.x, vec4<bool>(all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, true), false)), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true)), all(vec3<bool>(all(vec3<bool>(true, false, false)), true, true)), any(vec2<bool>(false, false))), true, !select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), all(vec3<bool>(true, true, false))));
    let var_5 = var_3.a;
    let var_6 = any(vec3<bool>(false, var_4.c, true));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<i32>(~15183i, -u_input.c.x, 36153i, 65749i) & vec4<i32>(u_input.c.x, u_input.c.x, ~(-7747i), -u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, select(-7524i, firstLeadingBit(u_input.c.x), all(var_4.d)))), vec4<u32>(~(var_3.a.d ^ var_5.c.x), var_3.a.a.x, _wgslsmith_clamp_u32(~var_5.d, u_input.b.x << (global0[_wgslsmith_index_u32(u_input.b.x, 4u)] % 32u), _wgslsmith_mod_u32(26363u, var_0)), countOneBits(_wgslsmith_sub_u32(35028u, 6858u))) << (vec4<u32>(~var_0 ^ (var_5.d << (8808u % 32u)), 4294967295u, max(var_5.c.x, reverseBits(1u)), ~var_0) % vec4<u32>(32u)), min(abs(~0i) << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(7107u, var_3.a.d, global0[_wgslsmith_index_u32(var_0, 4u)], var_5.d)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, global0[_wgslsmith_index_u32(22893u, 4u)], global0[_wgslsmith_index_u32(var_0, 4u)], var_3.a.a.x), vec4<u32>(4294967295u, var_3.a.c.x, var_5.d, var_3.a.d))) % 32u), u_input.c.x >> (0u % 32u)), abs(select(~(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i)), select(vec4<i32>(-2147483647i, 1i, 0i, -1i) << (vec4<u32>(4294967295u, 0u, 1u, var_5.c.x) % vec4<u32>(32u)), abs(vec4<i32>(u_input.c.x, 23429i, u_input.c.x, u_input.c.x)), false || var_4.c), any(select(vec2<bool>(false, true), var_4.d, false)))));
}

