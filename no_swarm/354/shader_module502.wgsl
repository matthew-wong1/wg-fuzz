struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(266f, -630f, 307f, -443f, 1701f, -1977f, -326f, 1000f, -992f, -1944f, 853f, -1557f, 1007f, 390f, 1000f, -800f, 302f, 174f, -369f, 1159f, 375f, 1375f, -2191f, -1352f, 515f, 3008f);

var<private> global1: Struct_2 = Struct_2(19136u, vec4<i32>(9131i, -1i, 0i, -49926i), Struct_1(51270u), vec3<f32>(207f, 977f, -894f));

var<private> global2: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true));

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(1u, vec4<i32>(964i, -22257i, 1i, 9597i), Struct_1(63509u), vec3<f32>(630f, 1017f, -228f)), Struct_2(6425u, vec4<i32>(2147483647i, 21915i, -1i, -29845i), Struct_1(0u), vec3<f32>(800f, -2174f, -711f)), Struct_2(0u, vec4<i32>(-19179i, -31527i, i32(-2147483648), i32(-2147483648)), Struct_1(51341u), vec3<f32>(-934f, -502f, -274f)), Struct_2(1u, vec4<i32>(-1i, -21480i, 2147483647i, -26029i), Struct_1(1u), vec3<f32>(395f, 976f, -1656f)), Struct_2(4294967295u, vec4<i32>(14280i, 6522i, 2147483647i, i32(-2147483648)), Struct_1(6675u), vec3<f32>(-617f, 138f, -1148f)), Struct_2(1u, vec4<i32>(2147483647i, 0i, 7121i, 17543i), Struct_1(0u), vec3<f32>(-389f, -318f, 1096f)), Struct_2(6984u, vec4<i32>(0i, 0i, 2147483647i, 0i), Struct_1(0u), vec3<f32>(-1054f, 1000f, 491f)), Struct_2(0u, vec4<i32>(29294i, 0i, -3075i, i32(-2147483648)), Struct_1(0u), vec3<f32>(-791f, -736f, 394f)), Struct_2(0u, vec4<i32>(-1i, -22789i, 0i, -1i), Struct_1(1u), vec3<f32>(-522f, -1744f, -308f)), Struct_2(1u, vec4<i32>(-14089i, 0i, 0i, -22710i), Struct_1(30992u), vec3<f32>(-733f, -434f, 1215f)), Struct_2(1u, vec4<i32>(0i, 43928i, -5910i, -9577i), Struct_1(1u), vec3<f32>(626f, -245f, -1053f)), Struct_2(12956u, vec4<i32>(2147483647i, -45949i, -71134i, 1i), Struct_1(8626u), vec3<f32>(418f, 1037f, -163f)), Struct_2(72024u, vec4<i32>(-5025i, -9139i, -66997i, -9490i), Struct_1(65410u), vec3<f32>(1111f, -667f, 1000f)), Struct_2(26632u, vec4<i32>(1i, -35888i, -24570i, -16136i), Struct_1(1u), vec3<f32>(-798f, 103f, 2413f)), Struct_2(19462u, vec4<i32>(i32(-2147483648), 19384i, 26629i, 1i), Struct_1(0u), vec3<f32>(1535f, -141f, 604f)), Struct_2(42184u, vec4<i32>(0i, -1i, 57783i, -69555i), Struct_1(22048u), vec3<f32>(-752f, -258f, -292f)), Struct_2(4294967295u, vec4<i32>(0i, i32(-2147483648), 5549i, -1i), Struct_1(1u), vec3<f32>(-735f, 1403f, -1339f)));

var<private> global4: array<Struct_2, 15>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = true;
    var var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.zw, _wgslsmith_div_vec2_u32(arg_0.ww, ~firstTrailingBit(u_input.b))), u_input.b, u_input.b);
    var var_2 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(all(vec2<bool>(false, true)), false), vec2<bool>(u_input.d.x >= global1.b.x, true), select(global1.a < 2915u, any(vec4<bool>(false, false, true, false)), global1.c.a >= var_1.x)), ~4294967295u > _wgslsmith_add_u32(~global1.a, ~18815u));
    var var_3 = global1.c;
    var var_4 = global3[_wgslsmith_index_u32(~abs(21762u), 17u)];
    return 71312u;
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    var var_0 = false;
    var var_1 = !(!(!arg_0));
    var var_2 = Struct_2(_wgslsmith_div_u32(0u, _wgslsmith_add_u32(~u_input.b.x, 34808u)), vec4<i32>(1i, u_input.e, abs(i32(-1i) * -21589i), min(-13669i, -1i)), Struct_1(global1.c.a << (34136u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, -696f, 1468f) - global1.d), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.d.x, 946f, global0[_wgslsmith_index_u32(5501u, 26u)]), global1.d))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.d.x - -1000f), _wgslsmith_f_op_f32(1403f + global1.d.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a, 26u)])) - global1.d)));
    global3 = array<Struct_2, 17>();
    var var_3 = Struct_1(_wgslsmith_sub_u32(22585u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(~u_input.b, ~u_input.b))));
    return _wgslsmith_sub_vec4_i32(-max(select(u_input.c, vec4<i32>(u_input.a.x, 22981i, -2147483647i, 0i), vec4<bool>(true, arg_0.x, true, arg_0.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, u_input.b.x), vec4<u32>(3546u, var_3.a, u_input.b.x, global1.a)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(u_input.a, var_2.b)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i ^ global1.b.x, _wgslsmith_mult_i32(-35054i, 21608i), _wgslsmith_dot_vec2_i32(u_input.c.wy, var_2.b.wx), -2147483647i));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 26u)] + global0[_wgslsmith_index_u32(4294967295u, 26u)]))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29580u, 26u)] + global0[_wgslsmith_index_u32(4294967295u, 26u)]), -499f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(283f * 359f)))))), global0[_wgslsmith_index_u32(~min(_wgslsmith_clamp_u32(~global1.c.a, 0u, func_2(vec4<u32>(4294967295u, 36678u, global1.a, 4294967295u), global1.d)), abs(abs(u_input.b.x))), 26u)]);
    let var_1 = !arg_0;
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(!arg_0, var_1), true);
    let var_3 = Struct_2(u_input.b.x, abs(min(func_3(vec4<bool>(false, true, true, true)), -vec4<i32>(8748i, u_input.e, 33699i, global1.b.x))) << (reverseBits(abs(~vec4<u32>(4294967295u, 1u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)), global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1110f, var_0.x, global1.d.x) * global1.d), global1.d)))));
    var var_4 = global1.c;
    return select(vec3<bool>(arg_0, true, any(select(!vec4<bool>(arg_0, true, true, var_2.x), !vec4<bool>(arg_0, false, var_2.x, var_1), var_1))), vec3<bool>(any(select(!global2[_wgslsmith_index_u32(var_3.a, 7u)], vec3<bool>(true, true, var_1), !global2[_wgslsmith_index_u32(var_3.c.a, 7u)])), false, true), var_1);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> bool {
    let var_0 = global1.c;
    var var_1 = 1384f;
    var var_2 = global4[_wgslsmith_index_u32(4294967295u, 15u)];
    let var_3 = Struct_1(42556u);
    var var_4 = arg_3.x || true;
    return !(any(global2[_wgslsmith_index_u32(min(4294967295u, 1u), 7u)]) || all(arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.x;
    let var_1 = any(vec2<bool>(func_4(75430u, _wgslsmith_sub_u32(4294967295u, global1.c.a) | _wgslsmith_clamp_u32(global1.c.a, u_input.b.x, global1.a), u_input.e, func_1(false)), all(vec4<bool>(true, true, true, true))));
    global0 = array<f32, 26>();
    global2 = array<vec3<bool>, 7>();
    let var_2 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(global1.b.x, u_input.d.x)), vec3<u32>(4294967295u, _wgslsmith_mod_u32(firstLeadingBit(~global1.a), ~u_input.b.x), var_2.a << (0u % 32u)));
}

