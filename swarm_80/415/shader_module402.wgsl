struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 23256i;

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_1;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    global1 = 34337u;
    var var_0 = any(vec4<bool>(_wgslsmith_f_op_f32(-global3.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)), true, !(!global2.b), any(select(vec2<bool>(global2.a, false), !vec2<bool>(global2.b, arg_1.a), arg_0 < arg_0))));
    var var_1 = Struct_1(false && !(_wgslsmith_f_op_f32(global3.x + 903f) < global3.x), false);
    var var_2 = arg_1;
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1681f, global3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1440f, global3.x), vec2<f32>(296f, 525f)))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x))))));
    return u_input.b;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: u32) -> bool {
    let var_0 = -2147483647i;
    global3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -778f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(global3.x + global3.x)) * global3.x)), _wgslsmith_f_op_f32(floor(-160f)));
    let var_1 = ~(-u_input.a);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x * -638f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + global3.x))));
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -16021i, var_0 | firstLeadingBit(min(0i, var_1.x)), var_1.x), countOneBits(~abs(vec4<i32>(var_0, 32879i, -2147483647i, -27527i)) & (var_1 | vec4<i32>(1i, var_0, 1i, -46193i))));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.yy, arg_1.xx), 1u, _wgslsmith_div_u32(0u, 59161u)), vec3<u32>(arg_0.x, func_2(0i, Struct_1(global2.b, false)), 46423u)) > _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(min(u_input.b, 9321u), 1u)));
}

fn func_1(arg_0: vec2<bool>) -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_clamp_u32(0u, func_2(-20479i, Struct_1(true, select(global2.b, true, true))), ~1u), Struct_1(!any(!vec3<bool>(global2.a, global2.a, false)), false), abs(u_input.a), Struct_1(func_3(max(vec3<u32>(4294967295u, u_input.b, 28393u), vec3<u32>(1u, 6244u, 13004u)), _wgslsmith_mod_vec3_u32(vec3<u32>(87551u, 13164u, 12958u), vec3<u32>(0u, 0u, u_input.b)), vec4<bool>(global2.b, arg_0.x, true, arg_0.x), ~u_input.b) | false, global2.b), select(select(!vec4<bool>(global2.a, false, true, false), select(vec4<bool>(false, arg_0.x, true, global2.b), select(vec4<bool>(false, global2.b, false, true), vec4<bool>(true, false, false, true), vec4<bool>(global2.b, true, false, true)), false), !(u_input.a.x >= u_input.a.x)), vec4<bool>(true, true, global2.b, false), all(!vec3<bool>(global2.b, false, arg_0.x))));
    let var_1 = Struct_2(~(u_input.b >> (_wgslsmith_sub_u32(abs(var_0.a), var_0.a) % 32u)), Struct_1(false, select(select(all(var_0.e.zzx), true, arg_0.x | false), var_0.b.b, true)), vec4<i32>(u_input.a.x, abs(var_0.c.x), -585i, select(u_input.a.x, firstLeadingBit(var_0.c.x), true)), var_0.d, vec4<bool>(arg_0.x, !(global3.x >= -616f), func_3(vec3<u32>(49918u, 1u, _wgslsmith_div_u32(u_input.b, 30594u)), vec3<u32>(~var_0.a, u_input.b >> (44715u % 32u), _wgslsmith_add_u32(var_0.a, var_0.a)), select(!vec4<bool>(true, var_0.d.b, global2.a, true), !vec4<bool>(false, false, var_0.e.x, true), vec4<bool>(arg_0.x, var_0.e.x, global2.b, false)), u_input.b), false));
    var_0 = var_1;
    var var_2 = vec2<bool>(func_3(~(~vec3<u32>(4294967295u, 39382u, 115550u)) | vec3<u32>(1u, u_input.b, var_0.a), reverseBits(vec3<u32>(5205u, 0u, u_input.b)) & (vec3<u32>(var_1.a, 1u, var_0.a) << (_wgslsmith_add_vec3_u32(vec3<u32>(38826u, var_0.a, 4294967295u), vec3<u32>(0u, u_input.b, 2824u)) % vec3<u32>(32u))), var_1.e, 4294967295u), !any(select(var_0.e, vec4<bool>(global2.a, var_1.d.a, false, var_1.d.b), vec4<bool>(false, false, var_0.e.x, true))));
    let var_3 = var_0.d;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - global3.x))) + _wgslsmith_f_op_f32(global3.x * global3.x)), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2527f + -1288f)) - global3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global3.x)), global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(select(vec2<bool>(false, global2.b), vec2<bool>(global2.b, true), vec2<bool>(false, global2.a))))))));
    var var_1 = Struct_2(_wgslsmith_mult_u32(u_input.b, 1u), Struct_1(global2.a, global2.b & false), select(max(vec4<i32>(_wgslsmith_mod_i32(31885i, -58142i), _wgslsmith_dot_vec2_i32(u_input.a.wy, u_input.a.yw), min(u_input.a.x, 0i), -1i & u_input.a.x), -vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.a.x)), -(u_input.a ^ countOneBits(vec4<i32>(u_input.a.x, 6188i, 1i, u_input.a.x))), select(select(vec4<bool>(global2.b, global2.a, true, true), vec4<bool>(global2.b, global2.b, true, global2.a), true), vec4<bool>(true, global2.b, global2.b || false, all(vec4<bool>(global2.b, global2.a, false, true))), !select(vec4<bool>(true, false, true, global2.a), vec4<bool>(false, global2.b, global2.b, global2.b), vec4<bool>(false, false, global2.a, global2.b)))), Struct_1(global3.x < _wgslsmith_f_op_f32(-var_0.x), all(select(vec3<bool>(global2.a, true, false), !vec3<bool>(true, global2.b, global2.b), select(true, global2.b, false)))), !(!select(vec4<bool>(false, false, false, false), vec4<bool>(global2.a, global2.b, global2.b, global2.b), func_3(vec3<u32>(31128u, u_input.b, u_input.b), vec3<u32>(44156u, u_input.b, u_input.b), vec4<bool>(true, global2.b, false, global2.a), u_input.b))));
    var var_2 = global2.b;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1170f))));
    global2 = var_1.d;
    let var_4 = Struct_1(global2.b, false);
    var var_5 = !select(var_1.e, vec4<bool>(global2.b, all(vec4<bool>(var_1.b.b, var_1.e.x, var_4.a, false)) & true, true, var_1.a == ~10006u), !all(var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mult_i32(var_1.c.x >> (4294967295u % 32u), _wgslsmith_add_i32(var_1.c.x, 11246i)) ^ (i32(-1i) * -1i)), min(vec4<i32>(var_1.c.x, firstLeadingBit(u_input.a.x), u_input.a.x, 2147483647i) << (firstLeadingBit(vec4<u32>(1u, u_input.b, u_input.b, 122217u)) % vec4<u32>(32u)), countOneBits(u_input.a)));
}

