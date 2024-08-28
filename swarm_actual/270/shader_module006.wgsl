struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4>;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), false, -1i, 0i)), vec3<bool>(false, true, true), vec2<bool>(true, true)), Struct_3(Struct_2(Struct_1(vec2<u32>(94594u, 26338u), true, -5913i, i32(-2147483648))), vec3<bool>(false, true, true), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 0u), false, 17460i, -14954i)), vec3<bool>(true, true, false), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 61567u), true, -1i, 7228i)), vec3<bool>(true, false, true), vec2<bool>(false, true)), Struct_3(Struct_2(Struct_1(vec2<u32>(57013u, 1u), false, i32(-2147483648), 17831i)), vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_3(Struct_2(Struct_1(vec2<u32>(15296u, 20663u), true, 13791i, 0i)), vec3<bool>(false, true, true), vec2<bool>(true, false)), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), false, -1i, 2147483647i)), vec3<bool>(true, false, false), vec2<bool>(true, true)));

var<private> global2: array<vec4<f32>, 2>;

var<private> global3: vec4<bool>;

var<private> global4: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(37553u, 1u, 0u, 85733u), vec4<u32>(0u, 0u, 28261u, 26830u), vec4<u32>(1u, 45012u, 56275u, 48263u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(1489f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_2.a))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global4 = array<vec4<u32>, 3>();
    global3 = vec4<bool>(false, ((_wgslsmith_f_op_f32(func_3(Struct_5(836f, u_input.a), -29689i, Struct_5(281f, global4[_wgslsmith_index_u32(25454u, 3u)]), arg_0)) >= _wgslsmith_div_f32(1194f, -270f)) && all(vec2<bool>(global3.x, global3.x))) || false, true, global3.x);
    let var_0 = global3.xyy;
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1167f, -853f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.b, 4u)], countOneBits(-29705i), Struct_5(-188f, vec4<u32>(u_input.a.x, 4294967295u, 517u, 4294967295u)), 40724u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1816f * 862f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-899f, 151f), -831f, _wgslsmith_f_op_f32(-885f + -2036f), -1355f) * _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~u_input.b, 2u)])) + _wgslsmith_f_op_vec4_f32(max(global2[_wgslsmith_index_u32(~4294967295u, 2u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0, u_input.b, u_input.a.x, 47698u)), u_input.a), 2u)]))));
    global2 = array<vec4<f32>, 2>();
    return Struct_1(vec2<u32>(~(~u_input.a.x) << ((_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(u_input.c.x, u_input.b)) | 1u) % 32u), 1u), !var_0.x, 12128i, min(_wgslsmith_sub_i32(-44611i, ~(-1i)), ~(~29374i)));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    global0 = array<Struct_5, 4>();
    global4 = array<vec4<u32>, 3>();
    global4 = array<vec4<u32>, 3>();
    var var_0 = arg_0.a;
    let var_1 = firstTrailingBit(~(~vec4<i32>(i32(-1i) * -17501i, _wgslsmith_sub_i32(arg_0.d, 1i), _wgslsmith_mod_i32(arg_0.c, -21182i), _wgslsmith_sub_i32(arg_0.c, arg_0.d))));
    return Struct_3(Struct_2(Struct_1(vec2<u32>(arg_0.a.x, firstTrailingBit(4294967295u)), true != func_2(84718u).b, firstLeadingBit(-67769i), firstTrailingBit(abs(var_1.x)))), !select(!vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(global3.x, any(vec4<bool>(arg_0.b, global3.x, arg_0.b, false)), true), global3.yxx), select(select(global3.ww, vec2<bool>(!arg_0.b, true), !(!global3.zw)), !select(global3.xz, select(global3.wz, vec2<bool>(global3.x, true), global3.yz), !global3.x), any(vec3<bool>(true, func_2(var_0.x).b, !global3.x))));
}

fn func_1() -> Struct_3 {
    global2 = array<vec4<f32>, 2>();
    var var_0 = func_4(func_2(48513u));
    global0 = array<Struct_5, 4>();
    global3 = vec4<bool>(true, true, false, true);
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 2u)];
    return func_4(var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = false;
    var_1 = global3.x;
    global3 = !select(select(select(select(vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(true, var_0.a.a.b, false, false), vec4<bool>(var_0.a.a.b, true, global3.x, true)), vec4<bool>(false, false, true, false), vec4<bool>(var_0.a.a.b, true, false, true)), !(!vec4<bool>(false, var_0.b.x, false, var_0.a.a.b)), ~var_0.a.a.a.x < func_4(var_0.a.a).a.a.a.x), !(!vec4<bool>(global3.x, false, false, global3.x)), func_2(abs(4294967295u)).b);
    var var_2 = -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.a.a.d, 1i, -12973i), func_2(~1u).d);
    var_2 = func_1().a.a.d;
    global1 = array<Struct_3, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(-2147483647i, var_0.a.a.c, 20901i) >> (~vec3<u32>(var_0.a.a.a.x, u_input.b, u_input.c.x) % vec3<u32>(32u))), vec3<i32>(~var_0.a.a.d, 18567i, ~2147483647i), vec3<i32>(var_0.a.a.c, _wgslsmith_clamp_i32(var_0.a.a.c, var_0.a.a.c, 19748i), -19377i << (u_input.c.x % 32u)) ^ ((vec3<i32>(0i, -1i, 1i) >> (u_input.c % vec3<u32>(32u))) | -vec3<i32>(var_0.a.a.c, -2147483647i, var_0.a.a.d))), 0u);
}

