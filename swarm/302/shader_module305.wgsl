struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 22>;

var<private> global2: bool;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> vec3<bool> {
    global1 = array<Struct_2, 22>();
    let var_0 = -440f;
    let var_1 = _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(u_input.a.zy, _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0.x, arg_3.d.x), vec2<i32>(-2147483647i, -57807i) | u_input.a.xx)), 2147483647i);
    var var_2 = select(arg_3.e.xy, vec2<bool>(arg_1.b, arg_2), !all(!(!vec4<bool>(true, arg_3.b.b.b, true, arg_2))));
    let var_3 = Struct_3(~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 92511u, 11838u, 58711u), ~vec4<u32>(32124u, arg_3.c.x, arg_3.b.b.a, 4294967295u))), false, arg_3.b.b);
    return arg_3.e;
}

fn func_2(arg_0: vec4<f32>) -> vec2<i32> {
    global1 = array<Struct_2, 22>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 311f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 2201f) - vec2<f32>(-390f, global0.x))) * vec2<f32>(arg_0.x, arg_0.x)) * vec2<f32>(-205f, -1571f)));
    var var_0 = select(vec3<bool>(true, true, true), !func_3(~firstTrailingBit(u_input.a), Struct_1(~4294967295u, all(vec3<bool>(false, false, true)), 5282u, 0u >> (u_input.c % 32u)), all(vec3<bool>(true, true, true)), Struct_4(vec2<u32>(u_input.c, 1u) & vec2<u32>(u_input.c, u_input.c), global1[_wgslsmith_index_u32(51026u, 22u)], vec2<u32>(u_input.c, 23247u), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(u_input.a.x, 1i, 0i, -43330i), vec3<bool>(true, true, true))), !vec3<bool>(true, 34592u > (u_input.c & 107194u), true));
    var_0 = select(!(!(!func_3(u_input.a, Struct_1(u_input.c, var_0.x, 62151u, 12282u), false, Struct_4(vec2<u32>(u_input.c, u_input.c), Struct_2(var_0.xx, Struct_1(u_input.c, true, 1u, u_input.c)), vec2<u32>(54411u, u_input.c), vec4<i32>(27838i, u_input.b, u_input.b, u_input.a.x), vec3<bool>(var_0.x, true, var_0.x))))), !func_3(-u_input.a & (u_input.a << (vec3<u32>(u_input.c, 42449u, u_input.c) % vec3<u32>(32u))), Struct_1(4294967295u, true, u_input.c, 14016u), var_0.x, Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(45476u, 45193u), vec2<u32>(u_input.c, u_input.c)), Struct_2(vec2<bool>(false, true), Struct_1(u_input.c, true, u_input.c, u_input.c)), vec2<u32>(41363u, u_input.c), vec4<i32>(u_input.b, u_input.b, u_input.a.x, 1i) | vec4<i32>(u_input.b, 63030i, u_input.b, 2147483647i), !vec3<bool>(var_0.x, true, true))), !(all(vec4<bool>(var_0.x, true, false, true)) & true));
    var var_1 = -firstTrailingBit(-2147483647i);
    return _wgslsmith_clamp_vec2_i32(countOneBits(reverseBits(_wgslsmith_mult_vec2_i32(u_input.a.yz, vec2<i32>(u_input.b, -1i)))), u_input.a.yy, abs(_wgslsmith_sub_vec2_i32(u_input.a.zz ^ u_input.a.zy, vec2<i32>(~u_input.b, 2147483647i))));
}

fn func_1(arg_0: vec2<f32>) -> vec4<f32> {
    let var_0 = ~select(func_2(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + global0.x), _wgslsmith_f_op_f32(select(1000f, -140f, false)), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 1000f))), min(_wgslsmith_add_vec2_i32(~u_input.a.xz, _wgslsmith_clamp_vec2_i32(u_input.a.zy, u_input.a.xz, u_input.a.yy)), -select(vec2<i32>(1i, u_input.b), vec2<i32>(-449i, -67427i), vec2<bool>(true, false))), select(vec2<bool>(u_input.b >= u_input.b, any(vec2<bool>(true, true))), vec2<bool>(true, true), true));
    let var_1 = Struct_3(countOneBits(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), vec4<u32>(8511u, 1u, u_input.c, 24223u)), reverseBits(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c)))) << ((~vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) << (vec4<u32>(0u, u_input.c << (u_input.c % 32u), countOneBits(4294967295u), 21994u) % vec4<u32>(32u))) % vec4<u32>(32u)), !any(vec2<bool>(true, true)), Struct_1(u_input.c << (~(~0u) % 32u), all(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(1u, 0u))), vec2<u32>(0u, u_input.c)), ~29411u));
    var var_2 = Struct_3(~vec4<u32>(85696u, ~_wgslsmith_clamp_u32(4294967295u, var_1.a.x, 84944u), ~min(0u, var_1.a.x), var_1.c.a), var_1.c.b, Struct_1(u_input.c, func_3(-(u_input.a >> (var_1.a.yxw % vec3<u32>(32u))), Struct_1(~u_input.c, false, select(u_input.c, 1u, true), firstLeadingBit(var_1.a.x)), (i32(-1i) * -5188i) > reverseBits(u_input.a.x), Struct_4(~var_1.a.wx, Struct_2(vec2<bool>(true, true), Struct_1(var_1.a.x, var_1.b, u_input.c, var_1.c.d)), _wgslsmith_sub_vec2_u32(var_1.a.yy, vec2<u32>(4294967295u, var_1.c.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.b, u_input.a.x, var_0.x), vec4<i32>(-1i, u_input.a.x, var_0.x, -24051i)), vec3<bool>(var_1.c.b, true, false))).x, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(firstLeadingBit(var_1.a.x), abs(u_input.c))), firstLeadingBit(20228u)));
    let var_3 = func_3(u_input.a, var_2.c, true, Struct_4(~(~var_1.a.xx), global1[_wgslsmith_index_u32(~(~1u << (select(var_2.c.a, var_2.c.a, false) % 32u)), 22u)], ~(~_wgslsmith_clamp_vec2_u32(var_2.a.wx, var_1.a.xz, vec2<u32>(80276u, u_input.c))), abs(vec4<i32>(_wgslsmith_sub_i32(72720i, var_0.x), countOneBits(u_input.b), 1i, var_0.x)), vec3<bool>(false, var_1.c.b, false))).x;
    global1 = array<Struct_2, 22>();
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + -1795f))))), _wgslsmith_f_op_f32(-1000f * global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 22>();
    let var_0 = u_input.b & -u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1337f, 570f, -1034f, global0.x)) * _wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(global0.x, 845f)))))));
    var var_2 = Struct_4(vec2<u32>(~firstTrailingBit(4392u) & ~_wgslsmith_div_u32(48504u, u_input.c), firstTrailingBit(~1u) << (u_input.c % 32u)), global1[_wgslsmith_index_u32(u_input.c, 22u)], vec2<u32>(4294967295u, u_input.c ^ _wgslsmith_mod_u32(select(3994u, u_input.c, true), min(0u, u_input.c))), ~_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_0, 0i, 2147483647i, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 2147483647i, -13692i, -1i), vec4<i32>(var_0, var_0, 4242i, var_0))) & max(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -16069i, var_0), vec4<i32>(var_0, -6133i, u_input.a.x, 0i), vec4<i32>(-2147483647i, u_input.a.x, 1i, var_0)) | reverseBits(vec4<i32>(-9719i, u_input.b, var_0, -2147483647i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 8146i, u_input.b, -2147483647i), vec4<i32>(u_input.a.x, var_0, var_0, u_input.a.x))), !select(vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true), false));
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(u_input.c)), 22u)];
    let var_4 = 13965u;
    global2 = !(var_2.e.x && (global0.x != _wgslsmith_f_op_f32(-global0.x)));
    var_3 = Struct_2(!var_2.e.xy, var_3.b);
    var var_5 = all(vec2<bool>(true, !(!var_3.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, countOneBits(var_2.c), ~var_4, _wgslsmith_mult_u32(~10672u, abs(min(_wgslsmith_mod_u32(1u, var_4), countOneBits(u_input.c)))));
}

