struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_2 = Struct_2(1i, false, vec2<f32>(433f, 1439f), vec4<i32>(0i, i32(-2147483648), -8852i, -17381i), Struct_1(vec3<i32>(-1i, -10446i, i32(-2147483648)), -1239f));

var<private> global2: array<vec4<bool>, 28>;

var<private> global3: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global4: array<Struct_2, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: bool) -> f32 {
    global4 = array<Struct_2, 18>();
    var var_0 = Struct_1(vec3<i32>(global1.d.x, 8146i, -24297i | global0.x), global1.c.x);
    var var_1 = global1.e;
    let var_2 = global1.e;
    global4 = array<Struct_2, 18>();
    return _wgslsmith_f_op_f32(-var_2.b);
}

fn func_3() -> vec2<f32> {
    global1 = global4[_wgslsmith_index_u32(u_input.a.x, 18u)];
    let var_0 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_mod_i32(~(u_input.d.x | -2147483647i), global1.a), -_wgslsmith_sub_i32(~global1.d.x, i32(-1i) * -14145i)), true, global1.c, u_input.d, Struct_1(vec3<i32>(select(-48836i, global0.x, false) >> (~4294967295u % 32u), -_wgslsmith_mult_i32(26333i, -1i), 15653i), -513f));
    global1 = Struct_2(~u_input.d.x, global3[_wgslsmith_index_u32(1u | max(_wgslsmith_add_u32(0u, ~u_input.a.x), u_input.a.x), 3u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global1.c.x, -173f)), _wgslsmith_f_op_f32(468f - global1.c.x)), vec2<f32>(var_0.c.x, var_0.e.b)), global1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.e.b))) < var_0.c.x)), -max(global1.d, -vec4<i32>(global1.a, u_input.c.x, 27912i, var_0.d.x)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 1u, 4294967295u)) >> ((vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(4294967295u, 31765u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u) ^ vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), Struct_1(vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(-global1.a, max(37334i, var_0.a)), abs(-2147483647i)), var_0.c.x));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, var_0.c.x, var_0.e.b) * vec3<f32>(var_0.e.b, 457f, global1.c.x)), vec3<f32>(global1.e.b, 181f, -183f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(127f, global1.e.b, -1680f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-368f, _wgslsmith_f_op_f32(floor(var_0.e.b)), _wgslsmith_f_op_f32(min(144f, -1118f))))), vec3<f32>(var_0.e.b, 1406f, global1.c.x)));
    let var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 18u)];
    return var_1.yx;
}

fn func_1() -> vec4<f32> {
    global3 = array<bool, 3>();
    global1 = Struct_2(-1i, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.e.b, 540f), _wgslsmith_f_op_f32(func_2(true))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c), _wgslsmith_f_op_vec2_f32(func_3()))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global1.e.b), 253f)))), u_input.b, global1.e);
    global0 = -(_wgslsmith_mult_vec4_i32(u_input.b, -u_input.c) << (vec4<u32>(u_input.a.x, ~82051u, 0u << (u_input.a.x % 32u), _wgslsmith_mult_u32(0u, 64632u)) % vec4<u32>(32u))) & firstLeadingBit(~(vec4<i32>(global1.d.x, 44936i, -8396i, 69282i) >> (countOneBits(vec4<u32>(u_input.a.x, 4294967295u, 28981u, 36556u)) % vec4<u32>(32u))));
    var var_0 = !any(select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], false, false), global2[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 3u)]), global2[_wgslsmith_index_u32(max(4294967295u, 0u), 28u)], false)) && !global1.b;
    var var_1 = global1.e;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-563f, _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(795f + -462f))), global1.e.b, -578f, -751f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(49549u, 3u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    global0 = countOneBits(abs(~(vec4<i32>(-2147483647i, global1.d.x, -1i, 1314i) | reverseBits(vec4<i32>(-1i, -23639i, global1.d.x, -2147483647i)))));
    global4 = array<Struct_2, 18>();
    var var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(1i, -2147483647i, -47359i)), global1.e.a, vec3<i32>(_wgslsmith_mod_i32(global1.a, global1.a), global1.d.x, 2147483647i)) & _wgslsmith_sub_vec3_i32(global0.xzw, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, global1.e.a.x, 21616i), u_input.b.xww))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(global0.x ^ global0.x, abs(2147483647i)), -2147483647i, _wgslsmith_mod_i32(~17362i, 1i)), global0.yzx));
    let var_3 = Struct_2(1i, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-672f))), _wgslsmith_f_op_f32(599f - var_1.x))), (u_input.d & ~vec4<i32>(global1.a, 9549i, global0.x, 1173i)) ^ ~(~global1.d), Struct_1(vec3<i32>(2147483647i, -12997i, -1i), var_1.x));
    let var_4 = vec2<i32>(countOneBits(31029i), global0.x);
    let var_5 = Struct_2(_wgslsmith_mod_i32(-var_2.x, var_2.x), true, global1.c, _wgslsmith_add_vec4_i32(vec4<i32>(~(-var_2.x), select(-global1.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, 35284i), vec2<i32>(-29871i, u_input.c.x)), -12519i <= global0.x), -52002i, countOneBits(var_4.x)), ~(~vec4<i32>(1856i, var_2.x, global0.x, 2147483647i) | min(vec4<i32>(-33252i, var_2.x, -2147483647i, 42140i), vec4<i32>(var_4.x, global0.x, var_4.x, var_3.d.x)))), global1.e);
    let var_6 = !(!select(select(select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], global1.b), vec3<bool>(global1.b, false, var_3.b), true), !vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 3u)], false), true), select(vec3<bool>(var_3.b, true, true), !vec3<bool>(true, var_5.b, false), vec3<bool>(true, true, true)), all(!vec3<bool>(global1.b, var_3.b, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-271f, var_1, u_input.c.x);
}

