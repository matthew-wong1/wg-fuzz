struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1518f, 317f, -1024f);

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(1i, 2147483647i), vec2<i32>(-5177i, 35458i), vec2<i32>(1i, 1i), vec2<i32>(20054i, -350i), vec2<i32>(0i, 9i), vec2<i32>(142i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(29441i, -1i), vec2<i32>(2147483647i, -60051i), vec2<i32>(i32(-2147483648), -74188i), vec2<i32>(6078i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(18283i, 8401i), vec2<i32>(1i, -22619i), vec2<i32>(2147483647i, -24986i), vec2<i32>(2147483647i, -37002i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(20249i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, -35033i), vec2<i32>(-1i, 2147483647i), vec2<i32>(21443i, -32258i), vec2<i32>(-22202i, 6499i), vec2<i32>(-10027i, 2147483647i), vec2<i32>(2147483647i, 2147483647i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = firstTrailingBit(~1u);
    let var_1 = vec2<u32>(reverseBits(max(~(26780u ^ arg_2.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, arg_2.a.x, 1u), vec3<u32>(4294967295u, 25511u, 53370u)), firstLeadingBit(vec3<u32>(u_input.c, arg_2.a.x, u_input.c))))), ~u_input.c);
    let var_2 = _wgslsmith_clamp_u32((u_input.c ^ 1u) >> (~(~_wgslsmith_div_u32(u_input.c, arg_2.a.x)) % 32u), abs(u_input.c), 11476u);
    global2 = array<vec2<i32>, 26>();
    var var_3 = -select(firstTrailingBit(min(vec4<i32>(-6833i, u_input.a.x, -11916i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.a.x, 0i, 26051i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, -17217i, 18286i), vec4<i32>(0i, -19143i, 57728i, -16641i), vec4<i32>(u_input.b.x, u_input.a.x, 816i, u_input.b.x))), select(~(-vec4<i32>(-28955i, u_input.b.x, -2147483647i, u_input.a.x)), select(vec4<i32>(2147483647i, 40128i, u_input.b.x, 57392i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, -1i), arg_0 & true), true), arg_1);
    return _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1924f, -401f, global0.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, global0.x, -511f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1451f, -1410f, 415f) + vec3<f32>(341f, -971f, global0.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-588f, 1000f, -1117f), vec3<f32>(-307f, -1000f, -551f), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-468f, global0.x, global0.x) - vec3<f32>(global0.x, -330f, global0.x)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(941f, 1000f, global0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1295f, global0.x) * vec3<f32>(-166f, global0.x, global0.x)))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_mod_vec2_i32(-global2[_wgslsmith_index_u32(91936u, 26u)], ~vec2<i32>(u_input.b.x, max(-25450i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, 2147483647i), vec4<i32>(u_input.b.x, 0i, 36166i, u_input.b.x)))));
    global2 = array<vec2<i32>, 26>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(arg_0.wyx * _wgslsmith_f_op_vec3_f32(func_3(!arg_1, arg_1, Struct_4(~vec2<u32>(u_input.c, u_input.c))))));
    var var_2 = Struct_1(~0i, vec4<u32>(~1u, u_input.c, ~u_input.c, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 11005u), vec2<u32>(u_input.c, 1u)))), -1000f, vec4<i32>(-1i, i32(-1i) * -11980i, -2147483647i, var_0.x));
    return any(!select(!arg_2.xz, vec2<bool>(all(vec3<bool>(true, true, true)), arg_2.x), false));
}

fn func_1() -> u32 {
    global2 = array<vec2<i32>, 26>();
    global1 = !(func_2(vec4<f32>(global0.x, global0.x, global0.x, global0.x), true, select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))) && true) | (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.x)))))) <= global0.x);
    global1 = true;
    let var_0 = Struct_2(!(!(!all(vec2<bool>(true, true)))), Struct_1(firstLeadingBit(~u_input.b.x ^ (u_input.a.x ^ 1i)), vec4<u32>(~(~47008u), ~(~u_input.c), u_input.c, u_input.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-184f, global0.x))), global0.x, true)), vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(~u_input.a.xy, -global2[_wgslsmith_index_u32(u_input.c, 26u)]), 1i, 0i)), Struct_1(u_input.b.x, min(select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 45820u, 0u, u_input.c), true) ^ vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 24068u, 75180u, u_input.c), vec4<u32>(3945u, u_input.c, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, 70415u, 38954u)) << ((vec4<u32>(u_input.c, u_input.c, 27159u, u_input.c) >> (vec4<u32>(2204u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(true, true, Struct_4(vec2<u32>(0u, u_input.c)))).x))), ~(select(vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, 31534i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 1i), true) << (_wgslsmith_mod_vec4_u32(vec4<u32>(10931u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c)) % vec4<u32>(32u)))));
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1257f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(floor(1119f)))), 1282f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - global0.x))), var_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c.c)) - _wgslsmith_f_op_f32(global0.x + var_0.b.c))))), vec3<bool>(all(!(!vec3<bool>(false, var_0.a, var_0.a))), -488f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f), _wgslsmith_f_op_f32(-var_0.b.c)), false)));
    return 55522u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(246f, 104f, -2139f, 394f) * vec4<f32>(506f, 1733f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -293f, global0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, global0.x, -1436f, 1887f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-685f, 462f, global0.x, 1042f) + vec4<f32>(367f, 788f, global0.x, -1372f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))));
    let var_1 = -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(~u_input.a.x, ~u_input.b.x), ~(-51041i) << (_wgslsmith_clamp_u32(0u, 4797u, u_input.c) % 32u)), -1707i, u_input.a.x, 25526i);
    var var_2 = _wgslsmith_sub_u32(42836u, 31018u);
    let x = u_input.a;
    s_output = StorageBuffer(min(countOneBits(func_1()), u_input.c), 12285u, firstTrailingBit(_wgslsmith_add_vec3_u32(min(abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), ~vec3<u32>(u_input.c, 42488u, u_input.c)), countOneBits(select(vec3<u32>(23431u, u_input.c, 4294967295u), vec3<u32>(10504u, 50022u, 1u), false)))));
}

