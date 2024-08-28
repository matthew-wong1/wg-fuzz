struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(20142i, -7384i, -1i, -1i, 2147483647i, 2147483647i);

var<private> global1: array<vec4<u32>, 22>;

var<private> global2: array<vec2<bool>, 12> = array<vec2<bool>, 12>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global3: Struct_2;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> bool {
    global4 = Struct_1(-330f, !(!(!global4.b) && false), _wgslsmith_f_op_f32(step(-661f, _wgslsmith_f_op_f32(-arg_3.d.c))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1758f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x + global3.d.a))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-695f, 872f))))));
    global3 = Struct_2(52448u, !select(vec2<bool>(true, !arg_0.c), select(arg_3.b, !global2[_wgslsmith_index_u32(global3.c.x, 12u)], any(vec3<bool>(arg_3.d.b, false, false))), select(vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.a, arg_3.a), 12u)], all(arg_3.b))), global3.c, Struct_1(928f, max(~1i, u_input.a) == 53446i, arg_3.d.c), global3.d.b);
    var var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(max(0u, global3.c.x), 6u)], ~(i32(-1i) * -19348i), ~(~32596i), -2147483647i), _wgslsmith_mult_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(global3.c.x, 6u)], arg_0.b.x, 1i, -60570i))), arg_0.b) & (arg_0.b >> (select(vec4<u32>(arg_3.a, global3.a, global3.a, arg_3.c.x), select(global1[_wgslsmith_index_u32(arg_3.a, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], vec4<bool>(false, false, false, global4.b)), select(vec4<bool>(global3.b.x, false, true, false), vec4<bool>(global4.b, global4.b, true, global4.b), vec4<bool>(false, arg_3.d.b, global4.b, global3.d.b))) % vec4<u32>(32u))));
    var var_2 = ~(~(~vec3<u32>(4294967295u, 91892u, arg_3.a) >> (~(~vec3<u32>(1u, 0u, global3.c.x)) % vec3<u32>(32u))));
    return any(select(select(vec2<bool>(false, arg_3.d.b), !select(arg_3.b, vec2<bool>(global3.d.b, global4.b), arg_3.d.b), 0u > (7719u << (arg_3.a % 32u))), global2[_wgslsmith_index_u32(~0u, 12u)], true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    var var_0 = arg_1.e;
    var var_1 = abs(max(min(~vec3<u32>(0u, global3.c.x, 1u), vec3<u32>(global3.a, 13326u, global3.a) >> (vec3<u32>(global3.c.x, global3.c.x, global3.a) % vec3<u32>(32u))), vec3<u32>(~66035u, 33901u, ~0u))) | ~(select(~vec3<u32>(global3.c.x, global3.a, 1u), reverseBits(vec3<u32>(33099u, 25552u, global3.a)), false) << ((vec3<u32>(39692u, 1u, global3.c.x) & vec3<u32>(43946u, 22735u, 82166u)) % vec3<u32>(32u)));
    let var_2 = Struct_2(global3.a, select(vec2<bool>(true, !any(vec4<bool>(true, false, var_0.b, true))), !vec2<bool>(false, all(vec3<bool>(var_0.b, arg_0.b, var_0.b))), select(select(select(global3.b, global2[_wgslsmith_index_u32(1u, 12u)], true), global3.b, arg_1.c), global3.b, vec2<bool>(true, true))), ~countOneBits(var_1.yz), Struct_1(-1694f, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(487f, global4.c)))), true);
    var var_3 = global3.e;
    let var_4 = global4.c;
    return var_0.b;
}

fn func_2() -> vec2<u32> {
    let var_0 = 0i > (reverseBits(_wgslsmith_add_i32(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(1u, 6u)], 0i, 31010i), vec4<i32>(u_input.b, -38550i, u_input.d.x, u_input.b)))) ^ 8349i);
    let var_1 = global3.d;
    var var_2 = Struct_2(16169u, vec2<bool>(true && (_wgslsmith_f_op_f32(-global3.d.a) <= global3.d.a), func_4(Struct_1(var_1.a, func_3(Struct_3(global0[_wgslsmith_index_u32(global3.a, 6u)], vec4<i32>(global0[_wgslsmith_index_u32(1u, 6u)], 8047i, global0[_wgslsmith_index_u32(0u, 6u)], u_input.c), true, var_1.a, Struct_1(1134f, global3.e, -483f)), vec3<f32>(global4.a, -1400f, -1336f), global4.a, Struct_2(global3.c.x, global2[_wgslsmith_index_u32(global3.c.x, 12u)], global3.c, global3.d, false)), global4.a), Struct_3(~(-1i), firstTrailingBit(vec4<i32>(-15646i, global0[_wgslsmith_index_u32(global3.a, 6u)], global0[_wgslsmith_index_u32(global3.a, 6u)], u_input.c)), any(global3.b), global4.c, Struct_1(440f, global4.b, var_1.c)))), reverseBits(~abs(~global3.c)), Struct_1(global3.d.c, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -2462f)) - -565f)), var_1.b);
    let var_3 = _wgslsmith_f_op_f32(floor(-135f));
    global4 = Struct_1(-1032f, all(select(!(!vec2<bool>(false, var_2.d.b)), vec2<bool>(!var_0, var_0 != false), !select(vec2<bool>(var_2.e, true), global2[_wgslsmith_index_u32(4294967295u, 12u)], var_2.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.a))));
    return max(~select(vec2<u32>(var_2.a, global3.c.x), var_2.c, global3.b) & vec2<u32>(_wgslsmith_sub_u32(18606u, 1u), ~5244u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 7713u) >> ((var_2.c ^ vec2<u32>(1u, var_2.c.x)) % vec2<u32>(32u)), vec2<u32>(global3.c.x, 16138u)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<i32, 6>();
    global1 = array<vec4<u32>, 22>();
    var var_0 = Struct_2(13753u, select(select(global3.b, !(!global3.b), false), global2[_wgslsmith_index_u32(~(1u ^ _wgslsmith_mod_u32(global3.c.x, 5639u)), 12u)], !any(global2[_wgslsmith_index_u32(global3.c.x, 12u)])), global3.c ^ _wgslsmith_add_vec2_u32(~(vec2<u32>(global3.c.x, 92262u) << (global3.c % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(global3.a, global3.a), vec2<u32>(global3.c.x, 4294967295u) | vec2<u32>(global3.c.x, 3149u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), true, 3056f), !global4.b);
    var_0 = Struct_2(_wgslsmith_sub_u32(global3.a, 0u), vec2<bool>(!select(global3.b.x, var_0.d.b, all(vec2<bool>(true, false))), false), func_2(), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1322f)), _wgslsmith_f_op_f32(min(global3.d.a, global4.a)))), _wgslsmith_f_op_f32(460f - _wgslsmith_f_op_f32(-global3.d.c))), _wgslsmith_mod_u32(4294967295u >> (global3.a % 32u), global3.a) > reverseBits(global3.a), var_0.d.c), global4.b);
    var var_1 = vec4<u32>(9632u, firstLeadingBit(func_2().x), 17922u, _wgslsmith_clamp_u32(~(~global3.c.x), 9842u & select(4294967295u, 0u, var_0.b.x), 113457u)) | ~vec4<u32>(1u, _wgslsmith_mod_u32(17947u >> (var_0.a % 32u), 1u), ~var_0.c.x & 33720u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), var_0.c), 1745u));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global4.c, u_input.a != -18658i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.a, global3.d.c, false))))));
    global0 = array<i32, 6>();
    var var_1 = _wgslsmith_div_vec4_i32((~vec4<i32>(0i, global0[_wgslsmith_index_u32(1u, 6u)], u_input.b, -63450i) ^ ~vec4<i32>(-60694i, global0[_wgslsmith_index_u32(1u, 6u)], u_input.b, -10842i)) >> (vec4<u32>(~global3.a, 1u, 57378u, global3.a << (9086u % 32u)) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.b << (4294967295u % 32u), 8677i, 1i, -1i))) | vec4<i32>(2147483647i, u_input.a, ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c, global0[_wgslsmith_index_u32(global3.a, 6u)])), u_input.d), -2147483647i);
    var var_2 = func_1(_wgslsmith_f_op_f32(min(global4.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a)) - _wgslsmith_f_op_f32(select(global3.d.a, global4.a, global4.b))) * var_0.a))));
    var_1 = ~countOneBits(~(~vec4<i32>(1i, 1i, var_1.x, -2147483647i)) ^ ~(~vec4<i32>(global0[_wgslsmith_index_u32(global3.c.x, 6u)], u_input.a, 2147483647i, global0[_wgslsmith_index_u32(global3.c.x, 6u)])));
    var var_3 = vec4<u32>(0u, global3.c.x, ~global3.c.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.ywx, 1i);
}

