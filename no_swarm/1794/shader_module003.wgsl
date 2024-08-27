struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: vec2<i32> = vec2<i32>(1i, -29862i);

var<private> global2: f32;

var<private> global3: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(i32(-2147483648), vec3<bool>(false, true, false), 4294967295u), Struct_4(-1380i, vec3<bool>(false, true, false), 34610u), Struct_4(i32(-2147483648), vec3<bool>(false, false, true), 0u), Struct_4(i32(-2147483648), vec3<bool>(false, true, false), 13228u), Struct_4(-37411i, vec3<bool>(false, false, false), 0u), Struct_4(6651i, vec3<bool>(true, false, false), 61027u), Struct_4(1i, vec3<bool>(false, true, false), 1u), Struct_4(0i, vec3<bool>(true, false, false), 1u), Struct_4(0i, vec3<bool>(false, true, false), 1u), Struct_4(25642i, vec3<bool>(false, true, true), 93245u), Struct_4(73811i, vec3<bool>(false, true, true), 69050u), Struct_4(2147483647i, vec3<bool>(true, true, false), 57105u), Struct_4(0i, vec3<bool>(false, true, true), 0u), Struct_4(2147483647i, vec3<bool>(false, false, true), 0u), Struct_4(8962i, vec3<bool>(false, true, true), 22286u), Struct_4(18700i, vec3<bool>(true, true, true), 4294967295u), Struct_4(i32(-2147483648), vec3<bool>(false, true, false), 0u), Struct_4(18511i, vec3<bool>(false, true, false), 85224u), Struct_4(33929i, vec3<bool>(false, false, false), 1u), Struct_4(-22749i, vec3<bool>(true, false, false), 1u), Struct_4(37181i, vec3<bool>(true, false, false), 1u), Struct_4(-1i, vec3<bool>(false, true, true), 54118u), Struct_4(766i, vec3<bool>(false, true, true), 4294967295u), Struct_4(-9317i, vec3<bool>(true, true, true), 13355u), Struct_4(11586i, vec3<bool>(false, false, true), 139504u));

var<private> global4: vec3<i32> = vec3<i32>(3286i, -1i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0))));
    let var_1 = arg_1;
    let var_2 = select(var_1.xyx, vec3<bool>(false, true, false), all(select(vec2<bool>(arg_1.x, all(vec4<bool>(true, arg_2, false, false))), vec2<bool>(!arg_2, true), arg_2)));
    global2 = _wgslsmith_f_op_f32(sign(-1226f));
    global0 = array<bool, 18>();
    return _wgslsmith_div_i32(i32(-1i) * -(i32(-1i) * -12117i), global4.x);
}

fn func_2() -> f32 {
    let var_0 = ~u_input.a.x;
    let var_1 = var_0;
    global2 = 1240f;
    global4 = select(vec3<i32>(-1i & _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, global1.x), global4.x), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c.x, func_3(1000f, vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_1, 18u)], false), false), global1.x & -15188i, ~global4.x), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, -31183i, u_input.c.x, -21580i), -vec4<i32>(u_input.c.x, 1i, u_input.c.x, global1.x)))), vec3<i32>(global4.x, 2147483647i, -2147483647i), _wgslsmith_f_op_f32(955f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1680f * -1738f)))) <= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1050f, _wgslsmith_f_op_f32(-192f + 1087f)), _wgslsmith_f_op_f32(-679f - _wgslsmith_f_op_f32(f32(-1f) * -1527f)))));
    global1 = _wgslsmith_sub_vec2_i32(countOneBits(max(vec2<i32>(18071i, firstTrailingBit(26009i)), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(14016i, 7055i)), ~vec2<i32>(global4.x, 594i)))), countOneBits(select(vec2<i32>(u_input.b, 42751i), -global4.zx, global0[_wgslsmith_index_u32(~1u, 18u)])) ^ global4.xy);
    return 2011f;
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<bool, 18>();
    let var_0 = Struct_2(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(func_2()))) * 483f), ~(~firstTrailingBit(~u_input.a.xy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(228f, -1256f, -230f) + vec3<f32>(623f, 1191f, -1745f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-457f, 764f, -1064f), _wgslsmith_f_op_vec3_f32(vec3<f32>(860f, 2132f, -1264f) + vec3<f32>(-1188f, 1789f, -130f)))) * vec3<f32>(_wgslsmith_f_op_f32(1000f + -398f), -605f, 712f))));
    global3 = array<Struct_4, 25>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    let var_2 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.a, global4.x), reverseBits(func_3(_wgslsmith_f_op_f32(-758f * -2083f), select(vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 18u)], true, false)), true))), 413f, u_input.d.yx, var_0.d);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i)));
    var var_1 = true;
    var var_2 = Struct_2(-2147483647i, -563f, _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(62044u, u_input.a.x)) >> (~u_input.a.xx % vec2<u32>(32u)), u_input.d.xy << (vec2<u32>(74242u, 1u) % vec2<u32>(32u))) ^ (u_input.a.yz << (vec2<u32>(4294967295u, ~0u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1310f, -1293f, var_0)) * vec3<f32>(222f, var_0, var_0))))));
    global4 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_2.a, reverseBits(_wgslsmith_mult_i32(global1.x, -36081i)), -50941i), u_input.c, vec3<i32>(~global4.x, abs(~global4.x), var_2.a));
    let var_3 = 1u;
    var var_4 = Struct_2(global4.x ^ -2147483647i, _wgslsmith_f_op_f32(round(1f)), firstTrailingBit(~vec2<u32>(_wgslsmith_mult_u32(1u, var_3), ~4294967295u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(var_2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-531f, -838f, 144f)))))))));
    var_2 = Struct_2(reverseBits(var_4.a), 552f, var_2.c, _wgslsmith_f_op_vec3_f32(var_4.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b, -476f, var_0)), var_2.d)) - var_2.d)));
    var var_5 = !select(!select(vec4<bool>(global0[_wgslsmith_index_u32(24672u, 18u)], false, global0[_wgslsmith_index_u32(4294967295u, 18u)], false), vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(4294967295u, 18u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_2.c.x, 18u)], global0[_wgslsmith_index_u32(var_4.c.x, 18u)], global0[_wgslsmith_index_u32(1620u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_2.c.x, 18u)], false)), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 18u)], true, false)), global0[_wgslsmith_index_u32(max(36569u, countOneBits(var_3)), 18u)]), !select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(58707u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_3, 18u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(var_2.c.x, 18u)], true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

