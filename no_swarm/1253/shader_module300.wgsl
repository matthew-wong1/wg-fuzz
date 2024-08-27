struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(49394i, 3146i, -16499i, 1i, i32(-2147483648), 7112i, 69134i, -4156i, 2147483647i, 2147483647i, -56256i, -21129i, 2147483647i, 0i, 52939i, -58280i, -1i, -1i, 2147483647i);

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 18>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>) -> vec3<i32> {
    let var_0 = Struct_1(global1.x, 1u, vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], true, true && select(!global2[_wgslsmith_index_u32(u_input.a, 18u)], !global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(0u, 18u)] && global2[_wgslsmith_index_u32(u_input.a, 18u)])), _wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 19u)], u_input.c.x, 0i) & vec4<i32>(u_input.c.x, 0i, 2147483647i, 10140i), countOneBits(u_input.c)), (u_input.c & u_input.c) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 1u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)) % vec4<u32>(32u))) & vec4<i32>(17842i | (-1i << (u_input.a % 32u)), countOneBits(1i), 1i, ~(-38428i) ^ _wgslsmith_sub_i32(u_input.b.x, 0i)), u_input.c.yxx | u_input.b);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -587f))), ~57075u, var_0.c, abs(vec4<i32>(-2147483647i, countOneBits(-var_0.e.x), -26939i, u_input.b.x)), vec3<i32>(u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i, u_input.c.x, global0[_wgslsmith_index_u32(59300u, 19u)], 26682i)), global0[_wgslsmith_index_u32(1u, 19u)], -var_0.e.x), -(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) ^ reverseBits(-2147483647i))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 955f, 283f, global1.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, 281f, -1051f) - vec4<f32>(-634f, var_0.a, -1000f, var_0.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, var_2.a, 586f, var_0.a), vec4<f32>(-1000f, -1439f, global1.x, var_1.a), vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 18u)], var_0.c.x, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -321f, var_2.a, var_0.a) * vec4<f32>(var_2.a, -324f, var_2.a, -841f))))));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -182f))))));
    return countOneBits(firstLeadingBit(select(var_0.e, vec3<i32>(global0[_wgslsmith_index_u32(23877u, 19u)], 1i, var_2.d.x), select(var_1.c, vec3<bool>(var_1.c.x, false, var_1.c.x), var_1.c.x)))) & ~vec3<i32>(_wgslsmith_add_i32(abs(-54001i), -5334i), -var_2.d.x | 2147483647i, ~(-1i));
}

fn func_2() -> u32 {
    let var_0 = global1.x;
    let var_1 = reverseBits(~(~vec3<u32>(~1u, 15121u, ~u_input.a)));
    global2 = array<bool, 18>();
    let var_2 = min(_wgslsmith_add_vec3_i32(countOneBits(~vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 19u)], global0[_wgslsmith_index_u32(15581u, 19u)], global0[_wgslsmith_index_u32(var_1.x, 19u)])), _wgslsmith_mod_vec3_i32(~u_input.c.wzy, u_input.c.yzx)), ~select(func_3(vec3<f32>(global1.x, global1.x, global1.x)) & u_input.b, max(vec3<i32>(global0[_wgslsmith_index_u32(var_1.x, 19u)], -45708i, -769i), u_input.c.xwx) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], u_input.c.x, u_input.b.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(44358u, var_1.x), 18u)]));
    var var_3 = ~countOneBits(~(12252u >> (var_1.x % 32u)) ^ (0u & u_input.a));
    return _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(1u, ~var_1.x), var_1.x, 0u);
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(arg_3.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.d - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.d))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(arg_3.d))))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a, arg_2.a, arg_3.d.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, arg_3.e.a, 777f))))))));
    var var_1 = Struct_3(~4294967295u, 2147483647i, !global2[_wgslsmith_index_u32(u_input.a, 18u)], ~vec3<u32>(~(4294967295u >> (arg_2.b % 32u)), firstTrailingBit(_wgslsmith_div_u32(arg_1, 0u)), ~(31219u ^ arg_2.b)), arg_3.e);
    let var_2 = var_1.e.c.x;
    let var_3 = _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.a)) * var_1.e.a), var_1.e.a, global2[_wgslsmith_index_u32(~1u, 18u)])));
    return arg_3.d.yy;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<u32> {
    let var_0 = !select(false, !any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], arg_1.b, true, true)), arg_1.e.d.x > 11527i);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d.yx) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(309f, arg_0.e.a)))) - global1.yx), _wgslsmith_f_op_vec2_f32(global1.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.d.yz - global1.yy)))) * _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mult_vec2_u32(countOneBits(min(arg_0.d.zy, arg_2.yy)), vec2<u32>(~16900u, ~3482u)), _wgslsmith_clamp_u32(~1u, arg_0.d.x, func_2()), Struct_1(1000f, u_input.a, !vec3<bool>(arg_1.b, false, arg_1.b), max(arg_1.e.d, vec4<i32>(0i, arg_0.e.e.x, arg_1.e.d.x, arg_0.e.e.x)) & _wgslsmith_clamp_vec4_i32(arg_0.e.d, vec4<i32>(10581i, 0i, global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(3955u, 19u)]), arg_0.e.d), u_input.b), Struct_2(select(~13073u, ~u_input.a, !arg_0.e.c.x), _wgslsmith_f_op_f32(arg_0.e.a + global1.x) != 511f, ~arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e.a, arg_1.e.a, -1000f), vec3<f32>(global1.x, global1.x, global1.x))), arg_0.e))));
    var var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.e.a), arg_1.e.b, arg_0.e.c, firstLeadingBit(countOneBits(vec4<i32>(arg_0.b, arg_1.e.d.x & arg_1.e.d.x, -2147483647i, func_3(vec3<f32>(global1.x, arg_1.e.a, arg_0.e.a)).x))), firstLeadingBit(arg_1.e.e));
    global1 = _wgslsmith_f_op_vec3_f32(-arg_1.d);
    return vec4<u32>(62490u, ~arg_1.e.b, 11648u, arg_1.c);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_div_u32(~u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(71819u, arg_1.b), reverseBits(vec2<u32>(4294967295u, arg_1.b)))), arg_1.c.x & !(arg_0 > arg_0), abs(abs((u_input.a & 0u) & arg_1.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, arg_0, arg_0), vec3<f32>(arg_1.a, -1000f, global1.x), arg_1.c)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, arg_0, arg_0), vec3<f32>(global1.x, 1536f, arg_0)), !global2[_wgslsmith_index_u32(u_input.a, 18u)])) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(541f, arg_1.a, global1.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(955f, -1771f, arg_0))), !arg_1.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-114f, arg_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1.x)))), 488f)), arg_1);
    var var_1 = vec3<i32>(27065i, _wgslsmith_dot_vec2_i32(u_input.b.zz, _wgslsmith_div_vec2_i32(arg_1.d.zy, var_0.e.e.xx)), ~(~((i32(-1i) * -2147483647i) >> (u_input.a % 32u))));
    global1 = var_0.d;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.xy), _wgslsmith_f_op_vec2_f32(trunc(var_0.d.yy))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 261f))))), firstLeadingBit(~select(vec4<u32>(u_input.a, 13788u, var_0.a, var_0.a), vec4<u32>(arg_1.b, var_0.c, u_input.a, u_input.a), !arg_1.c.x)), vec3<u32>(4294967295u, 4294967295u, ~u_input.a >> (~0u % 32u)) << (abs(vec3<u32>(var_0.e.b, 0u, 5794u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(global1.x));
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) + -1273f);
    let x = u_input.a;
    s_output = func_5(-2644f, Struct_1(_wgslsmith_f_op_f32(min(-256f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) * global1.x))), _wgslsmith_mult_u32(26896u >> (~u_input.a % 32u), ~(~36570u)), select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], false, global2[_wgslsmith_index_u32(u_input.a, 18u)]), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(27888u, 18u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(Struct_3(u_input.a, 2147483647i, global2[_wgslsmith_index_u32(134933u, 18u)], vec3<u32>(u_input.a, 43043u, 48972u), Struct_1(global1.x, 4294967295u, vec3<bool>(true, false, false), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], 3067i, 2147483647i, -18184i), u_input.b)), Struct_2(4294967295u, false, u_input.a, vec3<f32>(global1.x, global1.x, 1000f), Struct_1(-567f, 4294967295u, vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 18u)], global2[_wgslsmith_index_u32(u_input.a, 18u)]), u_input.c, u_input.c.xwx)), vec3<u32>(u_input.a, u_input.a, 906u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 14754u, u_input.a), vec4<u32>(u_input.a, u_input.a, 38483u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 42718u))), 18u)]), abs(u_input.c), -_wgslsmith_add_vec3_i32(u_input.c.wxy, u_input.c.zxx | vec3<i32>(-14407i, u_input.c.x, u_input.b.x))));
}

