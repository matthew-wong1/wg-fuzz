struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: array<bool, 17>;

var<private> global1: Struct_3 = Struct_3(4294967295u, -951f, vec4<i32>(i32(-2147483648), 29863i, 14640i, 2147483647i), vec3<i32>(0i, -1i, 0i));

var<private> global2: array<f32, 25> = array<f32, 25>(-382f, -1365f, 1336f, 1000f, 1040f, -786f, 425f, -1072f, 1262f, -433f, 538f, 151f, 482f, -1000f, -482f, 461f, -373f, -1000f, 404f, -1026f, 1601f, -1000f, -620f, -163f, 762f);

var<private> global3: vec4<f32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.d.wx, vec2<u32>(u_input.d.x, ~21916u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(global3.zwz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.zxy * global3.xyz) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(152449u, 25u)], 861f, 298f))))))), vec3<bool>(true, !(!global0[_wgslsmith_index_u32(1u, 17u)]), var_0));
    global2 = array<f32, 25>();
    let var_2 = reverseBits(firstLeadingBit(_wgslsmith_add_u32(firstLeadingBit(firstTrailingBit(var_1.a)), 10038u)));
    let var_3 = 7925i;
    return false;
}

fn func_2() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(global3.x - -1000f);
    global2 = array<f32, 25>();
    var_0 = -199f;
    var var_1 = vec4<bool>(abs(_wgslsmith_div_u32(global1.a, _wgslsmith_add_u32(4294967295u, u_input.d.x))) <= _wgslsmith_mult_u32(global1.a, ~(~811u)), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.d.x, global1.a) ^ ~(~0u), 17u)], all(vec2<bool>(select(true, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.a, 20347u), 17u)], true), select(-13946i, global1.c.x, true) > _wgslsmith_dot_vec4_i32(global1.c, global1.c))), any(vec4<bool>(true, false, global3.x > _wgslsmith_div_f32(-482f, -439f), false)));
    global0 = array<bool, 17>();
    return Struct_5(any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)], true), var_1.zzy, var_1.x | global0[_wgslsmith_index_u32(23295u, 17u)]), vec3<bool>(var_1.x, var_1.x, func_3()), !select(var_1.zxx, vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), var_1.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    global0 = array<bool, 17>();
    let var_0 = vec3<i32>(firstLeadingBit(~firstTrailingBit(global1.c.x)) << (countOneBits(abs(firstTrailingBit(4294967295u))) % 32u), 2147483647i, countOneBits(-(1i & -u_input.b.x)));
    var var_1 = (var_0.x <= ~abs(-2147483647i)) == false;
    var var_2 = arg_2;
    let var_3 = select(select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(59459u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], true))), vec3<bool>(true, !arg_1.a, !(!global0[_wgslsmith_index_u32(5953u, 17u)])), global0[_wgslsmith_index_u32(arg_3 >> (arg_0 % 32u), 17u)]), !select(vec3<bool>(1i >= var_0.x, true, false), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 17u)], false, global0[_wgslsmith_index_u32(21528u, 17u)]), vec3<bool>(arg_1.a, global0[_wgslsmith_index_u32(arg_0, 17u)], false), all(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(1u, 17u)]))), true), !(any(select(vec4<bool>(arg_1.a, true, global0[_wgslsmith_index_u32(arg_0, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(arg_1.a, false, false, false), vec4<bool>(arg_1.a, global0[_wgslsmith_index_u32(37780u, 17u)], false, false))) | (all(vec3<bool>(false, true, false)) && !arg_1.a)));
    return Struct_1(firstLeadingBit(~(~0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3.zyx)), global3.wwx)) * _wgslsmith_f_op_vec3_f32(-arg_2)), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(51633u, 17u)], false, false)), vec3<bool>(!(u_input.c > global1.d.x), min(-1i, 0i) != u_input.b.x, !(!global0[_wgslsmith_index_u32(global1.a, 17u)])), var_3));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    let var_0 = Struct_4(Struct_3(select(global1.a, 0u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global1.a, u_input.d.x), vec3<u32>(7220u, 21374u, u_input.d.x)), u_input.d.xyw), 17u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global1.a, 25u)], global3.x))))), -(select(vec4<i32>(13159i, 2509i, global1.d.x, 2147483647i), global1.c, vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 17u)], true, false)) >> (~u_input.d % vec4<u32>(32u))), global1.c.wyy), func_4(~49391u, func_2(), _wgslsmith_f_op_vec3_f32(max(global3.zyw, vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(24384u, 25u)] + -228f), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 25u)])), -646f))), 25598u), Struct_2(Struct_1(arg_1, global3.zyz, select(select(vec3<bool>(false, true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(global1.a, 17u)], false), vec3<bool>(global0[_wgslsmith_index_u32(global1.a, 17u)], true, global0[_wgslsmith_index_u32(arg_1, 17u)])), !vec3<bool>(global0[_wgslsmith_index_u32(71789u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], false), !vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 17u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 17u)]))), 2147483647i));
    global2 = array<f32, 25>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, 1293f, -2295f, 430f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, -627f, global2[_wgslsmith_index_u32(var_0.c.a.a, 25u)], var_0.c.a.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 1084f, -1022f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(floor(-838f)), -391f))));
    var var_1 = -vec2<i32>(~var_0.c.b, 1i) | _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(1i, firstLeadingBit(-42687i), 82152i << (u_input.d.x % 32u)), select(abs(2147483647i), -13934i, true)), u_input.b, min(vec2<i32>(1i, _wgslsmith_add_i32(-3110i, 35499i)), var_0.a.c.yx));
    return _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(func_4(arg_1, func_2(), func_4(u_input.d.x, Struct_5(true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.xwx, global3.wzy))), arg_1).b, ~_wgslsmith_mod_u32(1u, reverseBits(1u))).a, 25u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(330f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-865f * -501f)), 1000f, any(vec2<bool>(global0[_wgslsmith_index_u32(54469u, 17u)], true))))), _wgslsmith_div_f32(283f, -916f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(global3.yw, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(global1.c, u_input.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * global3.x))) * _wgslsmith_f_op_vec2_f32(select(global3.zx, vec2<f32>(-839f, global3.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global1.a), 17u)])))));
    var var_2 = func_4(min(1u, 1u) & func_4(~(~global1.a), func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(473f, -180f, -1000f)), u_input.d.x).a, Struct_5(false), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(func_4(firstLeadingBit(u_input.d.x), Struct_5(false), vec3<f32>(global1.b, 718f, global2[_wgslsmith_index_u32(9852u, 25u)]), min(u_input.d.x, 0u)).b, vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], -454f, global1.b)) * global3.xzz), 4294967295u);
    global2 = array<f32, 25>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - var_1.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1444f)))));
    var_2 = Struct_1(_wgslsmith_mod_u32(1u & u_input.d.x, _wgslsmith_dot_vec4_u32(~countOneBits(u_input.d), ~abs(u_input.d))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global3.yzw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.b, var_2.b)) + vec3<f32>(-367f, -374f, global3.x)))))), select(select(vec3<bool>(!var_2.c.x, global0[_wgslsmith_index_u32(global1.a, 17u)], var_2.c.x), vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)] && true, true, false), !select(vec3<bool>(global0[_wgslsmith_index_u32(var_2.a, 17u)], true, var_2.c.x), var_2.c, var_2.c)), var_2.c, var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_dot_vec3_u32(max(u_input.d.wxz, u_input.d.wxy), countOneBits(vec3<u32>(global1.a, global1.a, 1u)))));
}

