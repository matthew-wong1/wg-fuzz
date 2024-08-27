struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), false);

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-6364i, -1i, -3987i), vec3<i32>(295i, -1i, 11899i), vec3<i32>(31953i, 0i, -24277i), vec3<i32>(19281i, 2147483647i, 58440i), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(41326i, -39887i, 0i), vec3<i32>(-1i, -7897i, 2147483647i), vec3<i32>(32204i, 18750i, 0i), vec3<i32>(i32(-2147483648), -2359i, i32(-2147483648)), vec3<i32>(26240i, 0i, -16414i), vec3<i32>(-1i, -26022i, -75442i), vec3<i32>(-1i, -24456i, -11078i), vec3<i32>(1i, -25719i, -23231i), vec3<i32>(28798i, -14472i, 12080i), vec3<i32>(0i, 67550i, 7654i));

var<private> global3: array<vec3<f32>, 17>;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(54408u, arg_2.x & arg_2.x) & _wgslsmith_dot_vec3_u32(~arg_2.xwx, ~vec3<u32>(0u, 4294967295u, 1u)), ~4294967295u), arg_0, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), ~abs(vec2<u32>(13735u, global4.x))));
    global0 = arg_1;
    global1 = !vec4<bool>(global0.a.x, arg_3.a.x, !all(select(global0.a, vec2<bool>(true, global0.a.x), vec2<bool>(true, arg_3.b))), arg_1.b);
    global4 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, firstLeadingBit(firstLeadingBit(var_0.x)), var_0.x, _wgslsmith_div_u32(~arg_2.x, var_0.x)), vec4<u32>(_wgslsmith_add_u32(0u, ~0u), arg_2.x, 20051u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 35696u, global4.x), (u_input.c | vec3<u32>(40167u, arg_0, arg_0)) ^ vec3<u32>(38038u, arg_2.x, arg_0))));
    var_0 = min(vec4<u32>(4294967295u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), var_0.zy)), ~arg_2.x, ~abs(global4.x)), arg_2);
    return vec4<u32>(arg_2.x, 4294967295u, arg_0, 12701u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = vec4<u32>(~(~global4.x << (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(11740u, 43518u, global4.x, 59329u)), ~vec4<u32>(1u, 7809u, global4.x, 1u)) % 32u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, global4.x, 37470u, u_input.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global4.x, u_input.b.x, 33039u, 4294967295u), vec4<u32>(1u, 119586u, u_input.b.x, u_input.c.x))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, global4.x, 4294967295u, global4.x), vec4<u32>(9927u, global4.x, global4.x, 4294967295u)), func_3(4294967295u, Struct_1(vec2<bool>(arg_1.a.x, false), arg_1.b), vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x), Struct_1(global1.zy, false))) % vec4<u32>(32u))), func_3(u_input.b.x, arg_1, ~vec4<u32>(firstLeadingBit(u_input.c.x), global4.x ^ global4.x, ~22906u, 4294967295u), Struct_1(arg_2.a, !arg_2.b)).x, max(~(~39321u), 31417u) >> (global4.x % 32u));
    var var_1 = vec4<u32>(~global4.x ^ 1u, ~4294967295u, ~global4.x, global4.x ^ 0u);
    var var_2 = i32(-1i) * -min(u_input.a, 1i >> (1u % 32u));
    let var_3 = Struct_1(!(!global1.zz), !global0.b);
    global2 = array<vec3<i32>, 15>();
    return !select(vec4<bool>(arg_2.b, arg_1.a.x, (arg_0.x > arg_0.x) & global0.a.x, true), select(select(vec4<bool>(true, false, arg_2.a.x, true), vec4<bool>(false, global1.x, arg_1.b, true), all(global1.yy)), !vec4<bool>(true, arg_2.a.x, false, arg_1.b), ~var_0.x != min(1u, global4.x)), select(select(vec4<bool>(true, true, global1.x, var_3.a.x), select(vec4<bool>(false, false, global1.x, false), vec4<bool>(true, arg_2.a.x, arg_2.a.x, false), vec4<bool>(global0.a.x, false, true, arg_2.a.x)), vec4<bool>(true, true, global0.b, false)), !(!vec4<bool>(false, global1.x, arg_1.b, arg_2.a.x)), !(false && var_3.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-466f, -1753f, -521f, -406f), vec4<f32>(-479f, -359f, -654f, 852f))) + vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-485f, -1000f, 118f, 1199f) + vec4<f32>(-793f, 255f, -892f, 2054f)), vec4<f32>(1f, 1f, 1f, 1f)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 625f)))))) - var_0.x);
    global1 = func_2(var_0.zxz, Struct_1(vec2<bool>(_wgslsmith_div_i32(-42673i, -1i) <= _wgslsmith_sub_i32(33864i, u_input.a), true), global1.x), Struct_1(select(global1.yx, global0.a, global0.a), false), -firstTrailingBit(u_input.a));
    var var_2 = (10495i << (_wgslsmith_clamp_u32(~25994u, 12616u, u_input.c.x) % 32u)) ^ -2147483647i;
    let var_3 = Struct_1(global0.a, global1.x);
    return Struct_1(vec2<bool>(global1.x, false), !(u_input.c.x != _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.c.x, u_input.c.x), global4.xx), ~vec2<u32>(0u, global4.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = vec4<i32>(-firstTrailingBit(arg_0.x), arg_0.x, 24249i, ~(-u_input.a | ~(-u_input.a)));
    let var_1 = Struct_1(vec2<bool>(global0.a.x || any(func_2(global3[_wgslsmith_index_u32(global4.x, 17u)], arg_1, arg_1, 0i).wy), global1.x), 33506u > (u_input.b.x | ~78922u));
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(1979u, global4.x), _wgslsmith_clamp_u32(arg_3.x << (global4.x % 32u), ~(~u_input.b.x), 0u) << (67696u % 32u), ~31828u, _wgslsmith_sub_u32(arg_3.x, reverseBits(13022u | _wgslsmith_clamp_u32(4294967295u, global4.x, arg_3.x))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(abs(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, -41930i, u_input.a, -36353i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 10132i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 26490i))), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.a), -vec2<i32>(-44588i, u_input.a)), firstTrailingBit(1i))), func_1(), ~1i, ~firstTrailingBit(vec3<u32>(59212u, ~global4.x, _wgslsmith_div_u32(u_input.b.x, 20383u))));
    let var_1 = firstLeadingBit(select(vec2<u32>(13340u, global4.x), u_input.c.xz ^ firstLeadingBit(u_input.b.zy), vec2<bool>(true, any(var_0.a))) & vec2<u32>(~(u_input.c.x << (13986u % 32u)), ~u_input.b.x));
    var var_2 = _wgslsmith_f_op_f32(min(-221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1127f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2260f, 564f, -913f, -1731f), vec4<f32>(-239f, -589f, -1943f, 1210f))), vec4<f32>(-1634f, _wgslsmith_f_op_f32(f32(-1f) * -246f), -1000f, _wgslsmith_f_op_f32(-888f * -1000f)), select(select(vec4<bool>(false, var_0.b, false, true), vec4<bool>(true, global0.b, false, false), var_0.a.x), vec4<bool>(global0.a.x, true, true, global0.b), global1.x))))));
    var var_4 = vec4<bool>(global4.x >= 40886u, true != all(select(select(global1.xzy, vec3<bool>(global1.x, var_0.b, false), true), global1.wxx, global1.yxy)), true, true);
    var var_5 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~select(abs(vec4<u32>(1u, u_input.b.x, u_input.c.x, u_input.b.x)), vec4<u32>(var_1.x, 4294967295u, var_1.x, 0u), var_0.b), _wgslsmith_div_vec4_u32(vec4<u32>(0u, global4.x, global4.x, ~global4.x), func_3(72130u, Struct_1(var_4.xx, true), vec4<u32>(u_input.b.x, u_input.c.x, 4294967295u, 23642u), Struct_1(global0.a, true)) ^ ~vec4<u32>(6674u, global4.x, global4.x, 1202u))), select(~(~vec4<u32>(var_1.x, 0u, 45372u, var_1.x)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, 60548u, global4.x, u_input.b.x), abs(vec4<u32>(u_input.c.x, 1u, 1u, var_1.x))), func_2(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(19268u, 1740u), 17u)] * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, 956f, var_3.x), var_3.xxz, true))), Struct_1(vec2<bool>(global0.a.x, true), true), func_1(), abs(4447i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(838f, var_3.x, var_3.x, var_3.x))))) * vec4<f32>(-1843f, _wgslsmith_f_op_f32(-var_3.x), 703f, var_3.x)));
}

