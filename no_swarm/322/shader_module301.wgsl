struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-2069f, 1000f, -176f, 399f, 392f, -488f, -1205f, -845f, -715f, 1237f, -624f, -969f, -385f, -848f, 501f, -146f, -1418f, 477f, -470f, -1000f, 1097f, 1666f, 397f, 682f, -681f, 843f, -1002f, 1432f, 1629f, -988f, -821f);

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(0i, -185i), -2329f, false), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-47277i, -1i), 1018f, false), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(-34990i, 44739i), -524f, true), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(-4792i, 42238i), 1343f, true), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-1182i, -1439i), 1461f, true), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(-32455i, -68119i), -1273f, true), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(-33165i, 1190i), -1678f, true), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(i32(-2147483648), 1i), -1784f, false), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(11371i, 29609i), -163f, false), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(-1i, 2147483647i), -309f, false), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(1i, 0i), 635f, true), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(1i, i32(-2147483648)), 2024f, true), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(23238i, -1i), 1555f, false), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(-20238i, 0i), 260f, true), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-1i, 1i), -1594f, false), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-55409i, 6835i), 245f, true), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(0i, 2147483647i), -1000f, false), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(9430i, -29719i), -992f, true), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(25853i, -1i), 1000f, false), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(-12451i, 4408i), 1562f, true), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(1i, -39205i), -1000f, false));

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(7652i, 4317i), 226f, true), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(1i, 27447i), -1171f, true), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(-1i, 15433i), -2190f, true), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(26571i, -523i), -1154f, true), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(0i, -68712i), -769f, false), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-12633i, -1i), -854f, true), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(2147483647i, 1i), -179f, false), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(0i, 15207i), -2172f, false), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(0i, 1i), 1051f, true), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(30925i, 1i), -1251f, true), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(1i, 0i), 1204f, true), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(0i, 6345i), 1268f, false), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(66573i, 2147483647i), -389f, true), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(-2524i, 2147483647i), -105f, true), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(i32(-2147483648), -22692i), 501f, false), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(i32(-2147483648), -13072i), 288f, true), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(-44197i, 14160i), 1501f, true), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), 0i), -697f, false));

var<private> global3: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(1i, 5993i, 2147483647i), vec3<i32>(-26407i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -26422i, -25667i), vec3<i32>(24050i, 0i, 58203i), vec3<i32>(1i, i32(-2147483648), 55937i), vec3<i32>(-9775i, 12596i, 17190i), vec3<i32>(i32(-2147483648), 45496i, -1i), vec3<i32>(i32(-2147483648), 58484i, 3239i), vec3<i32>(-1i, 2147483647i, 15110i), vec3<i32>(-24477i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(0i, -1i, 1i), vec3<i32>(i32(-2147483648), 7167i, -1542i), vec3<i32>(2147483647i, -550i, -68100i), vec3<i32>(-1i, 23109i, 1i), vec3<i32>(5360i, 2147483647i, 1i), vec3<i32>(0i, 1i, -331i), vec3<i32>(0i, -6978i, -25069i), vec3<i32>(20392i, 1i, 1i), vec3<i32>(-1i, 9307i, -1i), vec3<i32>(-42944i, i32(-2147483648), 24081i), vec3<i32>(242i, -1i, i32(-2147483648)), vec3<i32>(6691i, 1i, 1183i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(13714i, -1i, -13916i), vec3<i32>(-31075i, 0i, 10980i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 31u)] + -511f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_div_f32(110f, -1000f), 1598f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1530f, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], 691f, global0[_wgslsmith_index_u32(8686u, 31u)]))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1095f, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], -1000f, global0[_wgslsmith_index_u32(14147u, 31u)]))))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1240f), _wgslsmith_f_op_f32(sign(750f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 31u)]))), -234f, -304f), true, Struct_1(vec4<bool>(!any(vec2<bool>(false, true)), true, all(vec4<bool>(true, false, false, false)) == false, (u_input.b.x | 0u) > 0u), vec2<i32>(select(-1i, -1i, false), firstTrailingBit(0i)) | (vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, 0i)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 31u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 31u)] + global0[_wgslsmith_index_u32(4294967295u, 31u)]))), false), Struct_1(select(vec4<bool>(true, select(true, false, false), true, any(vec4<bool>(false, false, false, true))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.a, -2147483647i)) & vec2<i32>(~u_input.a, i32(-1i) * -46007i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), 31u)]))), all(vec2<bool>(any(vec3<bool>(true, false, false)), select(true, false, true)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - var_0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(var_0.b)))), ~u_input.b.x == u_input.b.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(36266u, 4294967295u), u_input.b.zy) << (u_input.b.x % 32u), 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)]);
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2212f, global0[_wgslsmith_index_u32(~38820u, 31u)]))))) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 31u)]));
    global3 = array<vec3<i32>, 27>();
    return vec3<bool>(any(var_0.e.a), false, !(var_0.e.a.x != select(select(var_0.e.a.x, true, var_0.e.a.x), any(vec4<bool>(var_0.d.d, var_0.c, var_0.c, var_0.d.d)), all(var_0.d.a.zy))));
}

fn func_2(arg_0: Struct_4) -> bool {
    global2 = array<Struct_1, 18>();
    let var_0 = select(!(!(!(!vec3<bool>(arg_0.a, arg_0.a, true)))), select(!func_3(), vec3<bool>(any(select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), false)), true, arg_0.a), select(!select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, true, true), vec3<bool>(false, arg_0.a, arg_0.a)), select(vec3<bool>(false, arg_0.a, arg_0.a), !vec3<bool>(arg_0.a, true, true), true), (u_input.a == u_input.a) && arg_0.a)), vec3<bool>(all(vec3<bool>(arg_0.a, true, any(vec3<bool>(true, false, true)))), arg_0.a, !(!all(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)))));
    let var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.xx - arg_0.b.wx), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 623f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.yw - vec2<f32>(1185f, var_1.x)) - var_1.wy)))));
    var_2 = _wgslsmith_f_op_vec2_f32(max(var_1.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xx))))));
    return !arg_0.a;
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = arg_0.c.x;
    var var_2 = !all(vec3<bool>(true, true, true));
    global3 = array<vec3<i32>, 27>();
    global2 = array<Struct_1, 18>();
    return select(!vec4<bool>(all(vec4<bool>(false, true, true, true)) | true, !(83337u >= u_input.b.x), !func_2(Struct_4(false, vec4<f32>(-664f, -508f, arg_0.a.x, -567f))), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(~u_input.a == abs(var_0), all(vec4<bool>(true, true, true, true)), true, true), !vec4<bool>(true, true, true, arg_0.a.x > arg_0.b.x), (firstTrailingBit(var_0) | reverseBits(19587i)) != u_input.a), vec4<bool>(true, !any(vec2<bool>(true, true)), false, 1u < ~(~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec4<bool>(select(false, false, true), select(true, true, false), true, true), vec4<bool>(true, true, true, true), !func_1(Struct_3(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(9967u, 31u)], global0[_wgslsmith_index_u32(23620u, 31u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], -320f), vec2<f32>(-149f, global0[_wgslsmith_index_u32(40440u, 31u)])))), abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a)) << (reverseBits(u_input.b.x) % 32u), (u_input.a ^ 2147483647i) << (4294967295u % 32u))), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 31u)], true);
    global3 = array<vec3<i32>, 27>();
    let var_1 = ~min(abs(~vec3<u32>(4930u, 4294967295u, u_input.b.x)), u_input.b << (~u_input.b % vec3<u32>(32u))) >> (vec3<u32>(38757u, 1u, abs((0u & u_input.b.x) << (countOneBits(u_input.b.x) % 32u))) % vec3<u32>(32u));
    global1 = array<Struct_1, 21>();
    let var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.x, 24658u, u_input.b.x, 5480u), vec4<u32>(29645u, u_input.b.x, var_1.x, 0u) >> (vec4<u32>(var_1.x, u_input.b.x, var_1.x, 1u) % vec4<u32>(32u))) ^ (vec4<u32>(u_input.b.x, 1324u, u_input.b.x, 4294967295u) | vec4<u32>(var_1.x, var_1.x, 50230u, 11742u)), reverseBits(vec4<u32>(~u_input.b.x, 1u, u_input.b.x, firstLeadingBit(1u)))) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(51578u, max(var_1.x, u_input.b.x), _wgslsmith_sub_u32(0u, var_1.x), ~var_1.x), ~(~vec4<u32>(21397u, u_input.b.x, u_input.b.x, var_1.x)), vec4<u32>(1u, firstLeadingBit(25394u), _wgslsmith_add_u32(38339u, u_input.b.x), _wgslsmith_add_u32(var_1.x, u_input.b.x))) % vec4<u32>(32u));
    var var_3 = !var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.c, 1576f))))))));
}

