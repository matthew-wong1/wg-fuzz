struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false));

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec3<f32>(-135f, 951f, -1000f), vec4<i32>(-38003i, 0i, 0i, 0i), Struct_1(vec3<i32>(0i, 0i, 39603i), vec2<bool>(true, false)), true, Struct_1(vec3<i32>(2877i, -24268i, -25381i), vec2<bool>(true, false))), Struct_2(vec3<f32>(-1551f, -1120f, 1416f), vec4<i32>(25976i, -5982i, 57602i, 22886i), Struct_1(vec3<i32>(-1i, i32(-2147483648), 0i), vec2<bool>(false, true)), true, Struct_1(vec3<i32>(11607i, -1i, -17635i), vec2<bool>(false, false))), Struct_2(vec3<f32>(1761f, 622f, -1556f), vec4<i32>(1i, 4671i, -32723i, 2147483647i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec2<bool>(true, false)), true, Struct_1(vec3<i32>(-28892i, i32(-2147483648), -36210i), vec2<bool>(true, false))), Struct_2(vec3<f32>(291f, 368f, 860f), vec4<i32>(0i, i32(-2147483648), 0i, 10527i), Struct_1(vec3<i32>(2147483647i, -16794i, i32(-2147483648)), vec2<bool>(false, false)), true, Struct_1(vec3<i32>(-62255i, 1i, 1i), vec2<bool>(true, false))), Struct_2(vec3<f32>(-1167f, 558f, -711f), vec4<i32>(-1i, 2147483647i, -16406i, 2894i), Struct_1(vec3<i32>(1041i, -41806i, 1i), vec2<bool>(false, true)), false, Struct_1(vec3<i32>(-13990i, i32(-2147483648), 2147483647i), vec2<bool>(true, false))));

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.c.wyx;
    global3 = array<Struct_2, 3>();
    global3 = array<Struct_2, 3>();
    let var_1 = vec4<bool>(!(!any(global1[_wgslsmith_index_u32(0u, 27u)])) & true, arg_0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + -874f), -780f)), !(true || any(vec3<bool>(true, true, true))), any(vec3<bool>(false, true, select(true, false, true))) & (any(vec3<bool>(false, true, false)) || !(arg_0 <= -305f)));
    global2 = array<Struct_2, 5>();
    return Struct_1(countOneBits(~max(u_input.c.wxw << (u_input.b % vec3<u32>(32u)), vec3<i32>(59191i, var_0.x, u_input.c.x) << (vec3<u32>(u_input.b.x, u_input.b.x, 34782u) % vec3<u32>(32u)))), !vec2<bool>(!any(vec2<bool>(false, true)), true));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    return _wgslsmith_f_op_f32(f32(-1f) * -1004f);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(floor(arg_0.a.a)), vec4<i32>(1i << (min(_wgslsmith_div_u32(u_input.a.x, 4294967295u), u_input.b.x) % 32u), _wgslsmith_add_i32(-29268i, -1i), _wgslsmith_clamp_i32(~0i, -5767i, reverseBits(firstTrailingBit(17077i))), _wgslsmith_clamp_i32(abs(max(u_input.c.x, arg_0.b)), u_input.c.x, _wgslsmith_mult_i32(2147483647i, select(-35055i, -35822i, arg_0.d.x)))), arg_0.a.c, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a) == max(1u, u_input.a.x | u_input.b.x), Struct_1(vec3<i32>(-arg_0.b, _wgslsmith_div_i32(u_input.c.x, -4095i) | abs(0i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, 1i, 1i, u_input.c.x), vec4<i32>(-9029i, u_input.c.x, u_input.c.x, 40467i))), vec2<bool>(select(!arg_0.a.e.b.x, arg_0.a.c.b.x, false), _wgslsmith_mult_u32(0u, u_input.a.x) != ~73705u)));
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_2, 5>();
    let var_0 = Struct_4(func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1269f, 590f, 694f))), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x), Struct_1(u_input.c.wzy, vec2<bool>(false, false)), true, func_2(-1064f)), 1349i, -(u_input.c.x << (u_input.b.x % 32u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 36559u << (u_input.b.x % 32u)), 27u)], false), _wgslsmith_f_op_f32(func_3(u_input.b))), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true), global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 33220u, u_input.b.x)), u_input.b)), 3u)]);
    let var_1 = var_0.c.a.x;
    global0 = u_input.b.x;
    var var_2 = ~u_input.a.x;
    return var_0.c.c;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(abs(u_input.b.x), 1u);
    let var_1 = arg_0.a.b.zx;
    var var_2 = any(!(!select(select(vec3<bool>(true, arg_1.b.x, true), vec3<bool>(true, true, false), vec3<bool>(false, arg_0.d.x, false)), arg_0.d.wwx, true)));
    var_2 = !(countOneBits(u_input.b.x) > 4294967295u);
    var var_3 = func_4(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.a.x)))), -135f)).e;
    return Struct_1(firstLeadingBit(-vec3<i32>(min(var_3.a.x, u_input.c.x), ~arg_0.b, 0i)), arg_0.d.zw);
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = reverseBits(firstLeadingBit(~max(vec4<u32>(1u, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 45332u, arg_1.x))) ^ vec4<u32>(abs(countOneBits(10429u)), 12826u, u_input.a.x, arg_1.x));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(arg_1.x, 0u)), 5u)];
    let var_2 = func_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(var_1.a)))), vec4<i32>(var_1.b.x, u_input.c.x, arg_2.a.x, 4479i), arg_2, var_1.e.b.x, var_1.c), reverseBits(countOneBits(arg_2.a.x) | (arg_2.a.x << (91884u % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.c.x), i32(-1i) * -83529i, -var_1.b.x, _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), u_input.c), select(global1[_wgslsmith_index_u32(~(~27444u), 27u)], global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(34237u, arg_1.x), 27u)], var_1.b.x < abs(arg_2.a.x)), reverseBits(4294967295u) <= firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_f32(select(1000f, var_1.a.x, arg_2.a.x >= _wgslsmith_clamp_i32(arg_2.a.x >> (u_input.b.x % 32u), ~2147483647i, _wgslsmith_add_i32(-2147483647i, 1i))))).a.xx;
    var var_3 = 65674u < _wgslsmith_mod_u32(min(u_input.b.x, _wgslsmith_div_u32(~arg_1.x, 29614u ^ var_0.x)), ~(~0u));
    var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b.x, max(~var_0.x, 87968u)), 3u)];
    return Struct_4(func_4(Struct_3(func_4(Struct_3(Struct_2(vec3<f32>(-423f, -374f, 1000f), var_1.b, Struct_1(vec3<i32>(2147483647i, -17623i, var_1.b.x), arg_2.b), var_1.d, arg_2), var_1.c.a.x, -2147483647i, vec4<bool>(arg_0, arg_0, var_1.c.b.x, arg_2.b.x), arg_0), var_2.x), -2147483647i, _wgslsmith_div_i32(3226i, arg_2.a.x) << (reverseBits(var_0.x) % 32u), global1[_wgslsmith_index_u32(4294967295u, 27u)], false), -1612f), select(!vec3<bool>(arg_2.b.x, true, true), vec3<bool>(true, false, arg_2.b.x), !select(select(vec3<bool>(arg_2.b.x, arg_2.b.x, var_1.e.b.x), vec3<bool>(true, true, false), arg_0), !vec3<bool>(true, arg_0, var_1.d), false)), func_4(Struct_3(func_4(Struct_3(global3[_wgslsmith_index_u32(55394u, 3u)], -1i, var_1.c.a.x, global1[_wgslsmith_index_u32(12012u, 27u)], true), _wgslsmith_f_op_f32(exp2(var_2.x))), min(arg_2.a.x, firstLeadingBit(var_1.b.x)), _wgslsmith_div_i32(var_1.c.a.x, min(2147483647i, 9729i)), global1[_wgslsmith_index_u32(84055u, 27u)], !arg_2.b.x & (arg_2.a.x == -1i)), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(false, ~(~u_input.b), func_5(Struct_3(Struct_2(vec3<f32>(243f, -156f, 948f), -vec4<i32>(u_input.c.x, u_input.c.x, 31125i, u_input.c.x), Struct_1(vec3<i32>(38884i, -1i, -22444i), vec2<bool>(true, false)), true, Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, -94666i), vec2<bool>(true, false))), -1i, i32(-1i) * -2147483647i, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(sign(-669f)) == _wgslsmith_f_op_f32(-144f + -925f)), func_1()));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a), vec3<f32>(var_0.c.a.x, var_0.a.a.x, -1000f))))));
    let var_2 = var_0.c.c;
    let var_3 = var_2.a.x;
    let var_4 = var_2;
    let var_5 = firstTrailingBit(u_input.b.x);
    let var_6 = any(var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(~func_6(any(var_2.b), vec3<u32>(~4294967295u, var_5, abs(var_5)), var_4).c.e.a.x, abs(firstTrailingBit(~(~u_input.a.x))), var_0.c.a);
}

