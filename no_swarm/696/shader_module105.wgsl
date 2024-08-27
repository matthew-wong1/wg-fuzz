struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(true, false), true, vec2<u32>(1u, 1u), -263f, vec3<i32>(-1i, 1i, 1i)), Struct_1(vec2<bool>(true, true), true, vec2<u32>(14128u, 4294967295u), 256f, vec3<i32>(24854i, 1i, 24809i)));

var<private> global2: array<u32, 13> = array<u32, 13>(79060u, 24271u, 4294967295u, 30731u, 106589u, 0u, 0u, 4294967295u, 43398u, 3731u, 31373u, 1u, 10108u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    let var_0 = -vec4<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(global0.e.x, -30725i, u_input.c, global0.e.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, global0.e.x, 2147483647i, u_input.c), vec4<i32>(-17885i, global0.e.x, 1i, 23865i)))), 6897i, u_input.c, abs(global0.e.x));
    var var_1 = ~(~1u);
    let var_2 = global0.d;
    let var_3 = ~0i;
    let var_4 = vec2<bool>(true, true);
    return _wgslsmith_f_op_f32(abs(-1319f));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 2>();
    var var_0 = Struct_3(Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(17516i, -61239i, -20840i, global0.e.x), vec4<i32>(-13194i, -1i, 16310i, u_input.c), true), vec4<i32>(-27412i, u_input.c, -10696i, 0i)), global0.e.x), global1[_wgslsmith_index_u32(select(4294967295u ^ global0.c.x, 1u, true) | 0u, 2u)], global0.e.zx, global0.d < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-968f)) * _wgslsmith_f_op_f32(step(-631f, global0.d))), Struct_1(vec2<bool>(true, true), true, ~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_f_op_f32(f32(-1f) * -985f), global0.e)), Struct_1(vec2<bool>((u_input.c >> (u_input.a.x % 32u)) != global0.e.x, false), global0.a.x, global0.c, _wgslsmith_f_op_f32(633f - _wgslsmith_f_op_f32(func_3())), -abs(vec3<i32>(53931i, global0.e.x, u_input.c)) << (~u_input.a % vec3<u32>(32u))), global0.e.zy, ~vec3<i32>(global0.e.x, ~min(u_input.c, -1i), ~global0.e.x), firstTrailingBit(global0.e | vec3<i32>(~global0.e.x, global0.e.x, reverseBits(15817i))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f * var_0.a.e.d) * -1224f) < _wgslsmith_f_op_f32(-975f + global0.d);
    let var_2 = Struct_1(vec2<bool>(true, var_0.b.a.x), select(var_1, all(!vec3<bool>(false, true, global0.a.x)), true), var_0.b.c, _wgslsmith_f_op_f32(-global0.d), -var_0.a.b.e ^ -global0.e);
    var_0 = Struct_3(Struct_2(~var_2.e.yz, Struct_1(select(vec2<bool>(global0.a.x, var_0.a.b.a.x), select(vec2<bool>(var_2.a.x, global0.b), global0.a, var_0.b.a), all(vec3<bool>(var_2.b, var_2.b, var_0.b.a.x))), true, ~firstTrailingBit(vec2<u32>(13106u, var_2.c.x)), _wgslsmith_f_op_f32(global0.d * -798f), vec3<i32>(var_2.e.x, 1i, ~0i)), abs(-vec2<i32>(8382i, var_0.d.x)) ^ global0.e.yx, false, Struct_1(vec2<bool>(true, all(vec4<bool>(false, global0.a.x, var_1, var_0.a.b.a.x))), true, ~(~vec2<u32>(53506u, 55261u)), _wgslsmith_div_f32(var_0.a.b.d, -1030f), vec3<i32>(21441i, -var_2.e.x, var_2.e.x))), var_2, select(firstLeadingBit(var_0.c ^ _wgslsmith_add_vec2_i32(vec2<i32>(var_2.e.x, global0.e.x), global0.e.xy)), select(global0.e.yx, var_2.e.xx, global0.b), global0.a.x || any(!var_2.a)), vec3<i32>(var_0.e.x, global0.e.x, -1i), ~max(vec3<i32>(-35347i, u_input.c, -u_input.c), vec3<i32>(7204i, -u_input.c, 19427i)));
    return global1[_wgslsmith_index_u32(~max(0u, var_2.c.x & ~8174u) ^ var_2.c.x, 2u)];
}

fn func_1(arg_0: vec2<i32>) -> vec4<u32> {
    global0 = func_2();
    global0 = Struct_1(vec2<bool>(!(global0.a.x | global0.b), global0.b), any(!select(vec3<bool>(global0.b, global0.b, false), vec3<bool>(global0.b, true, true), global0.b)) | true, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xz, vec2<u32>(~global0.c.x, global2[_wgslsmith_index_u32(1u | u_input.b, 13u)])), _wgslsmith_sub_vec2_u32(global0.c, select(~global0.c, ~global0.c, global0.a.x | global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(global0.d + -850f)))), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(2147483647i, abs(arg_0.x), global0.e.x >> (global2[_wgslsmith_index_u32(global0.c.x, 13u)] % 32u))), select(firstLeadingBit(global0.e), select(vec3<i32>(-22709i, u_input.c, arg_0.x), ~global0.e, vec3<bool>(true, global0.a.x, true)), (global0.d > -1394f) | false), countOneBits(_wgslsmith_add_vec3_i32(~global0.e, global0.e))));
    let var_0 = vec2<f32>(global0.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -850f))), 167f)));
    global2 = array<u32, 13>();
    let var_1 = 212f;
    return ~select(_wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(1u, global2[_wgslsmith_index_u32(46299u, 13u)], 0u, global0.c.x)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(global2[_wgslsmith_index_u32(global0.c.x, 13u)], 4294967295u, global2[_wgslsmith_index_u32(30765u, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)]), vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 0u), vec4<bool>(false, global0.a.x, true, false)), vec4<u32>(29553u, 4294967295u, u_input.b, 0u) & vec4<u32>(1u, global2[_wgslsmith_index_u32(15266u, 13u)], u_input.a.x, global0.c.x))), _wgslsmith_div_vec4_u32(vec4<u32>(1595u, 9100u | global0.c.x, ~5108u, global0.c.x), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, u_input.b, 1u, 0u), vec4<u32>(21492u, u_input.a.x, u_input.a.x, 42434u)), vec4<u32>(4294967295u, 5634u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 13u)]))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 13>();
    global2 = array<u32, 13>();
    let var_0 = _wgslsmith_sub_vec4_i32((~vec4<i32>(2147483647i, -46809i, 24541i, global0.e.x) ^ vec4<i32>(global0.e.x, global0.e.x, u_input.c, u_input.c)) >> ((abs(vec4<u32>(global0.c.x, u_input.a.x, 15683u, 37253u)) ^ (vec4<u32>(12096u, global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(global0.c.x, 13u)], 98413u) >> (vec4<u32>(global2[_wgslsmith_index_u32(1u, 13u)], u_input.a.x, global2[_wgslsmith_index_u32(u_input.b, 13u)], 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)), -reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(369i, global0.e.x, 1i, u_input.c), vec4<i32>(u_input.c, u_input.c, -2495i, 56331i)))) >> (~(~func_1(min(vec2<i32>(global0.e.x, -38910i), global0.e.yx))) % vec4<u32>(32u));
    var var_1 = ((u_input.b >= 4294967295u) != !global0.b) | any(vec4<bool>(any(vec2<bool>(true, global0.b)), !(!global0.a.x), ~56263u > ~global2[_wgslsmith_index_u32(1u, 13u)], !global0.a.x & true));
    var_1 = true;
    var var_2 = select(select(select(!select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(false, false, global0.b), true), vec3<bool>(global0.b, global0.a.x, global0.a.x), all(!vec2<bool>(true, global0.a.x))), vec3<bool>(global0.b, global0.b, global0.b | global0.a.x), !global0.b), select(vec3<bool>(false, true && all(vec4<bool>(false, false, true, global0.b)), true), vec3<bool>(global0.d < _wgslsmith_f_op_f32(global0.d + 1071f), false, true), vec3<bool>(false, all(!global0.a), countOneBits(-1i) < u_input.c)), false);
    var_1 = select(any(vec3<bool>(true, var_2.x, select(!var_2.x, select(global0.a.x, true, global0.a.x), global0.b))), var_2.x, ~global2[_wgslsmith_index_u32(~1u, 13u)] > (_wgslsmith_add_u32(global2[_wgslsmith_index_u32(79356u, 13u)] | 39859u, ~4294967295u) << ((u_input.b ^ ~0u) % 32u)));
    let var_3 = global0.e.yx;
    let var_4 = Struct_2(~(-_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global0.e.zy, global0.e.xz), global0.e.zx, _wgslsmith_mod_vec2_i32(var_0.xw, vec2<i32>(var_0.x, var_3.x)))), Struct_1(func_2().a, !any(vec3<bool>(false, global0.b, var_2.x)), ~func_2().c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * global0.d) - 422f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d - global0.d), _wgslsmith_div_f32(global0.d, global0.d))), var_0.yyy), vec2<i32>(-reverseBits(min(31815i, global0.e.x)), -48534i), true | !any(!vec3<bool>(var_2.x, true, var_2.x)), global1[_wgslsmith_index_u32(23311u, 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~_wgslsmith_add_u32(0u, 97823u)), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(~u_input.b, _wgslsmith_add_u32(68186u, global0.c.x))), 13u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 728f, -818f) * vec3<f32>(var_4.b.d, var_4.e.d, -1013f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-965f, 679f, -2118f) + vec3<f32>(var_4.b.d, 916f, -274f))))), var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-643f + _wgslsmith_f_op_f32(-var_4.e.d)), -520f, var_4.b.d)), _wgslsmith_add_u32(~(~_wgslsmith_dot_vec2_u32(var_4.b.c, vec2<u32>(var_4.e.c.x, global2[_wgslsmith_index_u32(1u, 13u)]))), 43400u));
}

