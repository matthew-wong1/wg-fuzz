struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(-43688i, 33781i), vec2<i32>(-1i, -74179i), vec2<i32>(-48483i, 803i), vec2<i32>(-25545i, -34489i), vec2<i32>(2147483647i, i32(-2147483648)));

var<private> global1: vec4<i32> = vec4<i32>(1i, 1i, -19019i, i32(-2147483648));

var<private> global2: array<bool, 2> = array<bool, 2>(true, false);

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(arg_1, 22u)];
    global2 = array<bool, 2>();
    global0 = array<vec2<i32>, 5>();
    var var_1 = !vec4<bool>(var_0.b.a.x, 271f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(947f, arg_2.x, false))), select(any(select(var_0.b.c, var_0.b.a.yz, global2[_wgslsmith_index_u32(arg_1, 2u)])), true, all(var_0.b.a) && !var_0.b.a.x), any(var_0.b.a.xzw));
    var var_2 = Struct_1(!select(select(vec4<bool>(true, arg_0, arg_0, var_1.x), var_0.a, true), vec4<bool>(false, u_input.b.x >= 21341i, true, any(vec3<bool>(arg_0, arg_0, arg_0))), var_0.b.c.x & !var_0.b.a.x), min(_wgslsmith_add_i32(select(_wgslsmith_div_i32(0i, var_0.b.b), -u_input.b.x, all(var_0.a)), 1i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(5792i, 0i, -2147483647i)) ^ vec3<i32>(var_0.b.b, global1.x, global1.x), var_0.d ^ var_0.d)), var_0.b.a.xx);
    return _wgslsmith_f_op_f32(-338f * arg_3);
}

fn func_2() -> Struct_3 {
    var var_0 = ~(~vec3<u32>(~u_input.c, _wgslsmith_mult_u32(u_input.a.x, 4294967295u), u_input.a.x << (u_input.c % 32u))) >> (~_wgslsmith_div_vec3_u32(select(u_input.a, u_input.a, !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], false, global2[_wgslsmith_index_u32(3159u, 2u)])), firstLeadingBit(vec3<u32>(43013u, u_input.c, u_input.a.x))) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-400f * -106f), _wgslsmith_f_op_f32(200f - 828f), -166f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1034f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1196f - -1718f) - _wgslsmith_f_op_f32(-1674f - 699f)), _wgslsmith_div_f32(-348f, _wgslsmith_f_op_f32(sign(1517f)))), select(global2[_wgslsmith_index_u32(var_0.x, 2u)], !global2[_wgslsmith_index_u32(~u_input.a.x, 2u)], true))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(532f - -1158f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -643f) * _wgslsmith_f_op_f32(-1437f - 3070f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(false, u_input.a.x, vec2<f32>(-732f, 1462f), -771f)), _wgslsmith_f_op_f32(f32(-1f) * -1364f), all(vec4<bool>(global2[_wgslsmith_index_u32(72139u, 2u)], false, true, global2[_wgslsmith_index_u32(var_0.x, 2u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1523f * 511f) - _wgslsmith_f_op_f32(-810f - 501f)))));
    return Struct_3(Struct_2(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(14098u, 2u)], true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global2[_wgslsmith_index_u32(u_input.c, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)]))), Struct_1(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(24518u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], true), !vec4<bool>(false, global2[_wgslsmith_index_u32(36297u, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)], false), select(vec4<bool>(false, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(55762u, 2u)], false, global2[_wgslsmith_index_u32(var_0.x, 2u)], false), global2[_wgslsmith_index_u32(21742u, 2u)])), -1i, select(select(vec2<bool>(false, true), vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.c, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], true), true)), u_input.c, ~reverseBits(abs(vec3<i32>(2147483647i, 1i, u_input.b.x)))), Struct_1(!select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 2u)], true, global2[_wgslsmith_index_u32(var_0.x, 2u)], global2[_wgslsmith_index_u32(51498u, 2u)]), select(vec4<bool>(true, global2[_wgslsmith_index_u32(34333u, 2u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(15267u, 2u)], global2[_wgslsmith_index_u32(var_0.x, 2u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 2u)], false, global2[_wgslsmith_index_u32(9445u, 2u)], false)), var_1.x < var_1.x), -(i32(-1i) * -global1.x), !vec2<bool>(select(global2[_wgslsmith_index_u32(0u, 2u)], true, true), true)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_3 {
    global2 = array<bool, 2>();
    let var_0 = func_2();
    let var_1 = func_2();
    global0 = array<vec2<i32>, 5>();
    global3 = array<Struct_2, 22>();
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    global1 = -firstTrailingBit(vec4<i32>(arg_0, _wgslsmith_mod_i32(u_input.b.x, global1.x), -global1.x, -arg_0) & -vec4<i32>(arg_0, arg_0, arg_1.b.b, 1i));
    global0 = array<vec2<i32>, 5>();
    let var_0 = func_1(!(!(arg_1.b.c.x || arg_1.b.c.x)), func_1(!all(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(arg_2, 2u)])), func_1(any(arg_1.b.a.xzw), arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1060f, 426f, 215f), vec3<f32>(553f, 405f, 235f))))).a.b, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(491f, 1000f, 2599f))))))).a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(810f, -210f, 767f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, 575f, 1000f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(236f, 819f, 1031f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-243f, -1167f, -1000f))))))).a.b;
    let var_1 = func_1(false, func_2().b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-807f, -583f, 1250f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(434f, -544f, -356f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, -883f, 1640f))))))).b;
    let var_2 = arg_1;
    return Struct_3(Struct_2(!func_1(global2[_wgslsmith_index_u32(15016u, 2u)], Struct_1(vec4<bool>(true, false, false, false), arg_1.b.b, vec2<bool>(var_2.b.c.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, 626f, 352f))).b.a, var_2.b, arg_2, ~vec3<i32>(arg_1.b.b << (var_2.a.c % 32u), abs(global1.x), -2147483647i)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(0i, func_1(true, Struct_1(vec4<bool>(true, all(vec2<bool>(false, global2[_wgslsmith_index_u32(26702u, 2u)])), false || global2[_wgslsmith_index_u32(u_input.c, 2u)], false), u_input.b.x, !vec2<bool>(global2[_wgslsmith_index_u32(1u, 2u)], false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-778f, -389f, 1545f), vec3<f32>(-346f, -1025f, -1464f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-113f, 265f, -2603f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1983f, -242f), vec3<f32>(118f, -583f, -1000f))))), select(_wgslsmith_mult_u32(u_input.c, u_input.c), 0u, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]));
    global2 = array<bool, 2>();
    var var_1 = ~(-vec4<i32>(u_input.b.x, 2147483647i ^ firstLeadingBit(var_0.b.b), _wgslsmith_add_i32(~global1.x, abs(-23863i)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), var_0.a.d.xx))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(-948f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1316f) - -976f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-779f * 142f), _wgslsmith_f_op_f32(595f - 998f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -1000f, 893f, -861f)))))));
    global1 = abs(vec4<i32>(~var_0.a.b.b, ~_wgslsmith_mod_i32(u_input.b.x, reverseBits(0i)), -969i, -20482i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0u));
}

