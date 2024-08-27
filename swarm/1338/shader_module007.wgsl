struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3;

var<private> global2: Struct_2;

var<private> global3: array<bool, 17> = array<bool, 17>(true, true, false, false, false, false, true, false, true, false, false, true, true, false, false, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> bool {
    global3 = array<bool, 17>();
    global0 = arg_2;
    let var_0 = vec2<u32>(32346u, ~firstTrailingBit(_wgslsmith_mult_u32(max(global1.c.x, arg_3.x), 4294967295u)));
    let var_1 = _wgslsmith_f_op_f32(trunc(arg_2.d));
    global2 = Struct_2(vec2<u32>(arg_2.a.x, ~_wgslsmith_add_u32(1u, 2416u) & _wgslsmith_add_u32(_wgslsmith_div_u32(global0.a.x, 1u), ~4294967295u)), vec3<bool>(select(false, !global3[_wgslsmith_index_u32(arg_0.x, 17u)] != !global1.b, false && (u_input.b.x != global1.a)), global3[_wgslsmith_index_u32(0u, 17u)], true), select(global0.c, select(select(!arg_2.c, select(vec4<bool>(global1.b, global1.b, false, false), global2.c, vec4<bool>(global1.b, true, false, false)), select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(global0.a.x, 17u)], true), vec4<bool>(arg_2.c.x, true, false, false), false)), !vec4<bool>(true, global2.c.x, global0.b.x, global3[_wgslsmith_index_u32(1u, 17u)]), global2.c), !(select(false, true, true) & !global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - global0.d)));
    return firstTrailingBit(arg_0.x) >= _wgslsmith_add_u32(~select(~arg_2.a.x, 0u, arg_2.b.x), _wgslsmith_add_u32(arg_3.x, firstLeadingBit(4294967295u & global2.a.x)));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_5, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(vec3<bool>(func_3(vec4<u32>(_wgslsmith_dot_vec4_u32(global1.c, global1.c), 0u, _wgslsmith_add_u32(global0.a.x, 40932u), arg_3.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.d, global0.d)))), Struct_2(~global2.a, select(global2.c.zzy, vec3<bool>(global2.b.x, false, global0.b.x), global2.b.x), vec4<bool>(true, global1.b, arg_3.b, true), -381f), _wgslsmith_mod_vec2_u32(~vec2<u32>(17602u, 10444u), global0.a)), _wgslsmith_div_u32(max(global2.a.x, 0u), 0u) == 4294967295u, !global2.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.d)), global0.d, _wgslsmith_f_op_f32(floor(-169f)), 1586f)) + vec4<f32>(global2.d, _wgslsmith_f_op_f32(min(3097f, _wgslsmith_f_op_f32(ceil(-543f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * 132f), _wgslsmith_div_f32(506f, -536f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -294f), -575f))))), Struct_1(i32(-1i) * -46928i, vec4<f32>(global2.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.d))), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d))), vec3<bool>(true, true, true)));
    return Struct_2(global1.c.xy, !select(select(global0.c.zzz, !global0.b, select(vec3<bool>(false, global1.b, false), global0.c.wwx, vec3<bool>(arg_2.a.x, var_0.d.c.x, true))), !select(global2.c.xwz, vec3<bool>(true, var_0.d.c.x, global0.b.x), arg_2.a.xzz), !(!var_0.d.c)), vec4<bool>(any(vec2<bool>(any(arg_2.a.ww), true)), 27370u > firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 49738u), arg_3.c.yyz)), !select(all(global2.c.ww), !arg_2.a.x, true), all(select(!vec3<bool>(global0.b.x, false, false), vec3<bool>(global0.c.x, false, arg_3.b), global2.c.x))), global2.d);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = func_2(countOneBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -39853i, 17455i), vec3<i32>(2147483647i, -1i, global1.a))) | -2147483647i, u_input.b.yx, Struct_5(global2.c), Struct_3(24305i, global3[_wgslsmith_index_u32(~((global2.a.x >> (82797u % 32u)) & 1u), 17u)], ~vec4<u32>(4294967295u, global2.a.x, 4294967295u, u_input.c) ^ (vec4<u32>(6878u, global2.a.x, global0.a.x, 0u) << ((global1.c ^ vec4<u32>(0u, u_input.a, u_input.c, 37840u)) % vec4<u32>(32u)))));
    global3 = array<bool, 17>();
    let var_0 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, reverseBits(1i), 1i, 1i), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(7767i, global1.a, global1.a, global1.a), vec4<i32>(global1.a, u_input.b.x, u_input.b.x, 1i)))), true, vec4<u32>(arg_0.a.x, select(global2.a.x, global2.a.x, false), _wgslsmith_mod_u32(countOneBits(arg_0.a.x), 51245u), 1u) << (countOneBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(global1.c, vec4<u32>(arg_0.a.x, global1.c.x, global0.a.x, global1.c.x)), vec4<u32>(4294967295u, 0u, u_input.c, global1.c.x), select(global1.c, vec4<u32>(global2.a.x, global2.a.x, 29263u, 24513u), arg_0.b.x))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-13494i, var_0.a, u_input.b.x, -7515i), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.a, -36816i, -1i, u_input.b.x), vec4<i32>(u_input.b.x, var_0.a, -1i, var_0.a))) >> (~(~vec4<u32>(1u, global0.a.x, var_0.c.x, global0.a.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(2147483647i, global1.a, -72205i, u_input.b.x), vec4<i32>(var_0.a, 40540i, var_0.a, global1.a)) << (vec4<u32>(arg_0.a.x, arg_0.a.x, 11361u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -28402i, 24156i, global1.a) >> (var_0.c % vec4<u32>(32u)), vec4<i32>(1i, u_input.b.x, -42325i, -1i) << (var_0.c % vec4<u32>(32u))))) | max(firstTrailingBit(vec4<i32>(var_0.a, -2147483647i, var_0.a, 2147483647i) >> (var_0.c % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(min(vec4<i32>(global1.a, 0i, -33380i, global1.a), ~vec4<i32>(var_0.a, var_0.a, global1.a, u_input.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.b.x, -13483i, -34912i) | vec4<i32>(global1.a, 0i, var_0.a, 13847i), ~vec4<i32>(7634i, 10120i, var_0.a, 1i))));
    let var_2 = _wgslsmith_sub_u32(max(u_input.a, arg_0.a.x), ~global2.a.x);
    return Struct_1(0i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.d, 1000f, _wgslsmith_f_op_f32(362f * -237f), _wgslsmith_f_op_f32(650f + 892f)))))), select(global0.b, !vec3<bool>(u_input.c < var_0.c.x, 1000f < global2.d, true), false));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_1(Struct_2(global1.c.yx, arg_2.c, func_2(u_input.b.x, vec2<i32>(-1i ^ global1.a, select(u_input.b.x, -28183i, global3[_wgslsmith_index_u32(u_input.c, 17u)])), Struct_5(select(global2.c, global2.c, global2.c)), Struct_3(_wgslsmith_div_i32(arg_1, 1i), true, global1.c)).c, -817f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-362f)));
    var var_2 = Struct_4(!vec3<bool>(arg_0.x && false, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-367f, global2.d)) + _wgslsmith_f_op_f32(f32(-1f) * -1005f)), global2.d, -687f, global0.d) * arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), func_1(func_2(-1i, u_input.b.yy, Struct_5(select(vec4<bool>(global0.b.x, global2.b.x, arg_0.x, arg_2.c.x), global0.c, global2.c)), Struct_3(abs(48006i), false, global1.c))));
    var var_3 = arg_0.x;
    global0 = Struct_2(~global0.a, select(!(!func_2(global1.a, vec2<i32>(2457i, var_2.d.a), Struct_5(vec4<bool>(global3[_wgslsmith_index_u32(1u, 17u)], var_2.a.x, true, arg_0.x)), Struct_3(u_input.b.x, var_2.a.x, global1.c)).b), vec3<bool>(false, !var_2.a.x, global2.a.x < 0u), arg_0.x), vec4<bool>(!func_3(~vec4<u32>(global0.a.x, global2.a.x, 7356u, global2.a.x), _wgslsmith_f_op_vec2_f32(max(var_0.b.yx, arg_2.b.xx)), func_2(global1.a, u_input.b.xz, Struct_5(global2.c), Struct_3(global1.a, var_2.d.c.x, vec4<u32>(global1.c.x, 30803u, 1u, 3612u))), global0.a & global0.a), true, var_2.d.c.x, func_3(~vec4<u32>(0u, 1u, 0u, u_input.a), var_0.b.wy, Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global0.a.x), vec2<u32>(4294967295u, global2.a.x)), var_0.c, vec4<bool>(true, true, true, true), arg_2.b.x), vec2<u32>(global0.a.x ^ 74070u, global2.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(162f * global2.d))))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<bool>(global0.d != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1758f)), true), 27606i, func_1(Struct_2(~vec2<u32>(u_input.c, global0.a.x), !vec3<bool>(global1.b, global0.c.x, true), global0.c, global0.d)));
    let var_1 = false;
    let var_2 = global1.c.x;
    var var_3 = Struct_5(vec4<bool>(global0.b.x, true, any(global2.c), (true != select(global3[_wgslsmith_index_u32(0u, 17u)], false, true)) || !any(vec3<bool>(var_1, true, false))));
    let var_4 = -u_input.b;
    var_3 = Struct_5(func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, 48054i, global1.a, var_0.a), vec4<i32>(u_input.b.x, -1219i, u_input.b.x, 0i), global2.c), -vec4<i32>(u_input.b.x, 0i, 27644i, global1.a)), 1i), firstTrailingBit(vec2<i32>(31419i, select(var_4.x, var_0.a, false))), Struct_5(func_2(_wgslsmith_clamp_i32(var_4.x, global1.a, u_input.b.x), var_4.yy >> (global2.a % vec2<u32>(32u)), Struct_5(global2.c), Struct_3(u_input.b.x, global1.b, vec4<u32>(u_input.c, global2.a.x, global0.a.x, 38409u))).c), Struct_3(_wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(-888i, u_input.b.x, global1.a), true), -vec3<i32>(27401i, -24725i, var_4.x)), all(func_1(Struct_2(global0.a, vec3<bool>(var_1, true, true), vec4<bool>(global2.b.x, global0.b.x, var_3.a.x, global1.b), 879f)).c), select(~vec4<u32>(1u, 59004u, u_input.c, 1u), global1.c << (vec4<u32>(global1.c.x, global2.a.x, u_input.c, global0.a.x) % vec4<u32>(32u)), true))).c);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(vec4<i32>(var_0.a, 0i, 1i, 32559i) ^ vec4<i32>(2147483647i, u_input.b.x, global1.a, var_4.x))) >> (~global1.c % vec4<u32>(32u)), ~vec4<u32>(global2.a.x, reverseBits(19596u), ~_wgslsmith_sub_u32(5374u, global0.a.x), countOneBits(36289u)), ~reverseBits(var_0.a), 17727u, vec2<i32>(min(abs(global1.a), 32463i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, var_0.a, global1.a, -31484i), vec4<i32>(u_input.b.x, var_0.a, 13232i, -475i) << (global1.c % vec4<u32>(32u)))) | (vec2<i32>(-2147483647i, 15157i >> (global2.a.x % 32u)) >> (vec2<u32>(~u_input.c, 4294967295u) % vec2<u32>(32u))));
}

