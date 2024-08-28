struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec3<u32>(14036u, 104923u, 1u)), vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 10128u), vec4<bool>(true, true, false, true));

var<private> global1: array<vec4<bool>, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<bool> {
    global1 = array<vec4<bool>, 30>();
    let var_0 = Struct_3(Struct_1(~u_input.b >> ((~u_input.b >> (_wgslsmith_mod_vec3_u32(arg_0, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = global0.b;
    global0 = Struct_2(!vec4<bool>(true, false, true, global0.e.x), Struct_1(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0.a.a.x, var_0.a.a.x, 0u)), select(_wgslsmith_div_vec3_u32(global0.d, var_0.a.a), reverseBits(vec3<u32>(4294967295u, u_input.b.x, 30333u)), !global0.a.zzw))), vec2<bool>(true, true), ~abs(vec3<u32>(18737u, arg_0.x, 50873u)) | vec3<u32>(var_1.a.x, 4294967295u, max(_wgslsmith_mult_u32(u_input.d.x, global0.d.x), 1u)), !global1[_wgslsmith_index_u32(~var_1.a.x, 30u)]);
    let var_2 = -608f;
    return select(global0.a.www, !global0.e.zyx, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    var var_0 = u_input.c.yw;
    var var_1 = !global0.e.yy;
    global0 = Struct_2(arg_1, Struct_1(~countOneBits(_wgslsmith_mult_vec3_u32(u_input.b, u_input.b))), vec2<bool>(~(global0.d.x >> (4294967295u % 32u)) <= ~global0.b.a.x, select(any(arg_1.yzz), global0.e.x, arg_1.x)), firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.d, vec3<u32>(u_input.b.x, 128760u, 56144u), vec3<u32>(u_input.b.x, 4294967295u, 1u)), reverseBits(~vec3<u32>(4294967295u, 83085u, u_input.b.x)))), global0.a);
    var_1 = func_3(vec3<u32>(_wgslsmith_mult_u32(global0.b.a.x, arg_0.a.x << (~0u % 32u)), arg_3, _wgslsmith_mod_u32(13509u, 4294967295u))).xx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(556f - -876f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f + 315f))))) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1394f), -478f)), _wgslsmith_f_op_f32(f32(-1f) * -997f)))));
    return arg_0.a.x;
}

fn func_2() -> f32 {
    let var_0 = Struct_4(u_input.b.x, vec4<bool>(true, any(!select(vec2<bool>(false, true), global0.e.xw, vec2<bool>(global0.a.x, false))), global0.e.x, true));
    var var_1 = ~vec4<u32>(func_4(global0.b, !var_0.b, func_3(vec3<u32>(u_input.b.x, 0u, 60021u)), _wgslsmith_dot_vec3_u32(reverseBits(u_input.b), ~u_input.b)), u_input.b.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a, 18865u), u_input.d.x), ~select(u_input.d.x, 51797u, u_input.a.x >= 0i));
    let var_2 = -659f;
    var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, global0.b.a.x, 4294967295u, var_0.a), vec4<u32>(19280u, 1u, 70472u, 5768u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, global0.b.a.x, global0.d.x, global0.d.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, global0.b.a.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a, global0.d.x, var_1.x, var_0.a), vec4<u32>(global0.d.x, var_1.x, 18788u, 1166u))), ~(vec4<u32>(59116u, global0.d.x, 51367u, 68893u) | _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.a.x, 27000u, 46037u, var_0.a), vec4<u32>(4294967295u, 0u, 64363u, var_1.x)))) >> (vec4<u32>(u_input.d.x, func_4(Struct_1(u_input.b), global0.e, vec3<bool>(global0.a.x, global0.a.x, true), 38011u ^ var_1.x) >> (_wgslsmith_dot_vec2_u32(global0.b.a.yy, global0.d.yy) % 32u), abs(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.a), u_input.b.xz), global0.d.x)), min(4294967295u, var_0.a)) % vec4<u32>(32u));
    let var_3 = 2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + var_2) * _wgslsmith_f_op_f32(f32(-1f) * -1171f));
}

fn func_1() -> Struct_1 {
    let var_0 = ~u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2319f))))));
    var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = global0.b.a.x;
    global0 = Struct_2(select(select(select(select(vec4<bool>(global0.a.x, global0.c.x, global0.a.x, global0.c.x), vec4<bool>(global0.c.x, global0.e.x, true, false), vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.b.a.x, 96583u), 30u)], vec4<bool>(true, false, global0.a.x, false)), global0.e, any(global0.a.xww)), select(global0.a, global0.e, _wgslsmith_f_op_f32(abs(-1000f)) >= _wgslsmith_f_op_f32(ceil(-1119f))), vec4<bool>(true, true, true, all(global0.c))), global0.b, select(vec2<bool>(global0.a.x | any(global0.e.yw), all(vec4<bool>(false, global0.e.x, global0.a.x, global0.a.x))), select(!(!global0.a.yy), select(select(global0.e.zx, global0.a.yw, false), !global0.c, func_3(vec3<u32>(global0.d.x, 1u, 1957u)).zz), select(func_3(global0.d).zz, select(vec2<bool>(false, false), vec2<bool>(global0.c.x, global0.a.x), global0.a.wy), true)), !vec2<bool>(global0.c.x, true)), vec3<u32>(58230u, u_input.b.x, ~u_input.d.x), global1[_wgslsmith_index_u32(0u, 30u)]);
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(~(~(global0.b.a.yz << (u_input.d % vec2<u32>(32u)))) | ~(vec2<u32>(global0.b.a.x, global0.b.a.x) | vec2<u32>(2780u, global0.b.a.x)), abs(~firstTrailingBit(u_input.d) | vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 32800u), u_input.b.x)));
    var var_1 = global0.b;
    let var_2 = -(-vec4<i32>(15648i, -13460i, 18185i, _wgslsmith_add_i32(u_input.a.x, -11107i)) ^ countOneBits(vec4<i32>(~u_input.c.x, u_input.c.x, 16743i & u_input.a.x, abs(-42429i))));
    var var_3 = func_1();
    var var_4 = select(vec4<i32>(abs(var_2.x), -1i, u_input.c.x, var_2.x), max(firstTrailingBit(_wgslsmith_clamp_vec4_i32(var_2, vec4<i32>(-2147483647i, 32665i, 27811i, -12889i), abs(var_2))), var_2), vec4<bool>(any(global0.e.yy), false, func_3(vec3<u32>(var_3.a.x, 0u | u_input.b.x, ~81348u)).x, true));
    let var_5 = Struct_4(_wgslsmith_div_u32(4294967295u, select(~var_1.a.x, var_3.a.x, true)), vec4<bool>(global0.c.x, global0.a.x || any(global1[_wgslsmith_index_u32(4294967295u, 30u)]), false, true));
    let var_6 = var_5;
    var var_7 = !var_5.b.x;
    let var_8 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-912f * 739f), -1372f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-290f, 1183f), vec2<f32>(-253f, -2051f), var_6.b.x)), vec2<f32>(1383f, -1814f), var_5.b.x)), vec2<bool>(true, var_4.x <= 2147483647i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1072f, 877f) - vec2<f32>(-437f, -1756f))), vec2<f32>(-1442f, _wgslsmith_f_op_f32(f32(-1f) * -1004f)), true)) + vec2<f32>(1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(abs(_wgslsmith_sub_i32(0i, var_4.x)), -17016i, -(i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 0i, var_2.x, 0i) & vec4<i32>(1i, var_2.x, -2147483647i, -2147483647i), u_input.c))), abs(_wgslsmith_sub_vec3_u32(global0.b.a, ~var_1.a)), var_3.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1179f), var_8.x)), 1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-285f))))));
}

