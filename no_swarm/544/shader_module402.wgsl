struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> vec2<i32> {
    var var_0 = select(!select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), vec4<bool>(false, false, false, true)), select(false, all(vec2<bool>(true, false)), true)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false))), !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = ~vec4<u32>(min(~_wgslsmith_mult_u32(arg_0.x, 59625u), 0u), abs(_wgslsmith_add_u32(0u, min(1u, arg_0.x))), (firstTrailingBit(arg_0.x) >> (_wgslsmith_sub_u32(4294967295u, arg_0.x) % 32u)) & u_input.b.x, arg_0.x << ((_wgslsmith_div_u32(u_input.b.x, 4294967295u) << (max(arg_0.x, 4294967295u) % 32u)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-251f)) - -1580f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f * _wgslsmith_f_op_f32(f32(-1f) * -1835f))));
    var_2 = -1000f;
    var var_3 = 4294967295u;
    return ~min(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a))), firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a))));
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<i32> {
    var var_0 = ~((vec2<i32>(~(-51467i), select(7976i, 1i, true)) & ~vec2<i32>(-76310i, u_input.a)) | _wgslsmith_div_vec2_i32(func_3(_wgslsmith_mult_vec3_u32(u_input.c.zww, vec3<u32>(34867u, 28234u, u_input.c.x))), -vec2<i32>(u_input.a, 2147483647i)));
    let var_1 = var_0.x;
    var var_2 = Struct_2(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_sub_i32(-19754i, u_input.a), _wgslsmith_add_i32(2147483647i, var_0.x), u_input.a & u_input.a), ~u_input.b >> (vec2<u32>(10731u, ~(u_input.c.x ^ 91300u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, countOneBits(4294967295u), u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, 1u, u_input.c.x), u_input.c)), ~firstLeadingBit(u_input.c)), true, !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), !vec3<bool>(all(vec3<bool>(true, false, true)), arg_1 == _wgslsmith_f_op_f32(max(arg_1, -1224f)), all(vec4<bool>(true, false, false, false))), Struct_1(~(~(~vec4<u32>(68499u, 1u, u_input.b.x, u_input.c.x))), true, select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.a.x, 1i), vec2<i32>(var_2.a.x, 3395i)), var_0.x), firstLeadingBit(vec2<i32>(var_0.x, min(var_0.x, -1i)))), vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, -1i), firstTrailingBit(var_2.a.zx)));
    var var_3 = _wgslsmith_mod_u32(~(~countOneBits(_wgslsmith_sub_u32(u_input.c.x, var_2.e.a.x))), 0u);
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.x, var_2.a.x, -28618i), vec3<i32>(2147483647i, 62958i, u_input.a)), ~max(var_2.a, ~var_2.a) << ((((var_2.e.a.zwz ^ vec3<u32>(4294967295u, var_2.b.x, 4294967295u)) | ~vec3<u32>(1u, 34503u, var_2.e.a.x)) << (var_2.e.a.yxw % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(-abs(func_2(966f, arg_0)) << (u_input.c.ywy % vec3<u32>(32u)), ~vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec4<u32>(~(~29791u), u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.b.x), 19302u, max(0u, 4294967295u)), abs(91615u)), true, !select(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(true, true)), vec2<bool>(arg_1, arg_1))), vec3<bool>(arg_1, false, any(vec4<bool>(arg_1, true, all(vec3<bool>(false, arg_1, true)), !arg_1))), Struct_1(vec4<u32>(~u_input.b.x, u_input.b.x, abs(u_input.b.x) ^ _wgslsmith_mod_u32(u_input.c.x, 68479u), 1u), !arg_1, vec2<bool>(select(arg_1, false, true), !any(vec4<bool>(arg_1, true, arg_1, arg_1)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-680f, _wgslsmith_f_op_f32(sign(-836f)))), _wgslsmith_f_op_f32(1237f * 2766f)))));
    let var_2 = Struct_4(var_0.c.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-678f)), var_1.x)))), ~(~firstTrailingBit(~vec4<u32>(var_0.c.a.x, u_input.b.x, u_input.c.x, var_0.b.x))));
    var var_3 = Struct_5(!arg_1, Struct_4(any(var_0.e.c), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, 1974f) * _wgslsmith_f_op_vec2_f32(-var_1)))), ~vec4<u32>(var_2.c.x, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.a.x, 61406u, u_input.c.x, var_2.c.x), var_0.c.a), select(var_2.c.x, var_2.c.x, var_2.a))));
    var_3 = Struct_5(false, Struct_4(all(!(!vec4<bool>(var_2.a, true, var_3.a, arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -485f) + vec2<f32>(var_3.b.b.x, arg_0)))), var_3.b.c));
    return Struct_2(func_2(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.b.x) * 1220f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~(~(~(~vec2<u32>(u_input.c.x, var_2.c.x)))), Struct_1(min(~min(vec4<u32>(var_2.c.x, var_0.b.x, var_3.b.c.x, 4294967295u), var_3.b.c), ~(~u_input.c)), var_2.c.x == var_3.b.c.x, select(vec2<bool>(any(var_0.d), false), !var_0.d.yx, var_3.b.a)), !(!var_0.d), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.b.x << (4294967295u % 32u), 1u, u_input.c.x);
    var var_1 = func_1(_wgslsmith_f_op_f32(step(1095f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-644f * _wgslsmith_f_op_f32(max(-360f, -886f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1295f)))))), true, u_input.a);
    var var_2 = _wgslsmith_sub_vec3_i32(abs(-vec3<i32>(var_1.a.x << (var_0.x % 32u), var_1.a.x, _wgslsmith_mod_i32(28240i, -2035i))), ~firstLeadingBit(var_1.a));
    var var_3 = -(13203i | u_input.a);
    var_3 = min(~0i, 10382i);
    var_3 = reverseBits(~(-abs(var_2.x)));
    var_3 = ~_wgslsmith_dot_vec3_i32(~(-var_1.a), var_1.a >> (reverseBits(vec3<u32>(var_1.c.a.x, u_input.b.x, var_0.x)) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(step(311f, 290f));
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1022f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(771f, -428f)) - _wgslsmith_f_op_f32(step(-900f, 602f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.a.x, var_2.x) & abs(func_1(-1000f, true, -48775i).a.xx), var_0.x, -2147483647i);
}

