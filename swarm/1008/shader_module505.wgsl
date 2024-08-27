struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(i32(-2147483648), -1i, 1930i), vec3<i32>(0i, -104i, 0i), vec3<i32>(i32(-2147483648), -26118i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, 57009i), vec3<i32>(-13143i, -1971i, -12995i), vec3<i32>(3388i, 2147483647i, -28703i), vec3<i32>(-17887i, -8296i, 30671i), vec3<i32>(31851i, -28717i, -29175i), vec3<i32>(-1i, -5203i, 9242i), vec3<i32>(-24807i, 8597i, -10229i), vec3<i32>(-29304i, 28957i, -50770i), vec3<i32>(-19299i, -8643i, 11733i), vec3<i32>(28413i, 0i, 19552i));

var<private> global1: array<bool, 25>;

var<private> global2: array<u32, 26> = array<u32, 26>(1u, 4294967295u, 20604u, 5870u, 4294967295u, 24363u, 0u, 65662u, 20820u, 30421u, 76185u, 1u, 27397u, 52100u, 16994u, 1u, 22424u, 24510u, 71166u, 13702u, 0u, 1u, 78380u, 1u, 25672u, 15829u);

var<private> global3: Struct_2 = Struct_2(-1025f, Struct_1(vec4<bool>(true, false, true, false), true, vec3<bool>(true, true, false)), vec2<bool>(true, true));

var<private> global4: array<bool, 29> = array<bool, 29>(false, false, true, false, true, false, true, false, true, true, false, true, true, true, true, false, false, true, true, false, true, false, false, false, true, true, false, true, false);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> f32 {
    global2 = array<u32, 26>();
    var var_0 = u_input.d;
    var var_1 = !global1[_wgslsmith_index_u32(~firstTrailingBit(~_wgslsmith_add_u32(arg_0, 4294967295u)), 25u)];
    var var_2 = vec2<i32>(min(1i, u_input.c.x), -8507i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1055f)));
}

fn func_2() -> bool {
    var var_0 = 1000f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, global3.a, global3.a, 185f)) - vec4<f32>(_wgslsmith_div_f32(global3.a, global3.a), -1000f, _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.d, 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -440f)))));
    let var_2 = false;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-840f * var_1.x)), global3.a), var_1.x)), Struct_1(!(!(!vec4<bool>(global3.c.x, var_2, true, false))), !global1[_wgslsmith_index_u32(~10957u, 25u)], select(vec3<bool>(var_2, false, global3.b.c.x), global3.b.a.yzw, global3.b.c)), select(select(select(global3.b.c.yy, vec2<bool>(false, false), global3.c), select(select(vec2<bool>(false, global3.c.x), global3.c, false), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 25u)], true), var_1.x != 170f), select(global3.b.a.wy, global3.b.a.wz, select(vec2<bool>(true, global1[_wgslsmith_index_u32(59707u, 25u)]), vec2<bool>(true, var_2), global3.c))), select(vec2<bool>(all(vec2<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30103u, 26u)], 29u)], global3.b.b)), !global1[_wgslsmith_index_u32(10194u, 25u)]), global3.c, true), global3.c));
    let var_4 = true;
    return all(global3.b.a);
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)))), Struct_1(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 25u)], true, global4[_wgslsmith_index_u32(u_input.d, 29u)], global3.c.x)), arg_0.x, vec3<bool>(func_2(), global1[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(~0u, 26u)], 75188u), 25u)], all(!global3.b.a.ww))), global3.b.c.zz);
    var var_0 = Struct_3(Struct_1(global3.b.a, false, vec3<bool>(true, _wgslsmith_f_op_f32(floor(global3.a)) >= global3.a, !global1[_wgslsmith_index_u32(4294967295u, 25u)])), global3.a, Struct_2(global3.a, Struct_1(!vec4<bool>(global3.b.a.x, true, global4[_wgslsmith_index_u32(27890u, 29u)], global1[_wgslsmith_index_u32(1u, 25u)]), true, arg_0.xww), vec2<bool>(true, true)));
    var var_1 = arg_0.x;
    global3 = var_0.c;
    let var_2 = global3.b;
    return Struct_3(Struct_1(var_2.a, true, vec3<bool>(false, var_0.a.a.x, global4[_wgslsmith_index_u32(2959u, 29u)])), 1f, var_0.c);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global4 = array<bool, 29>();
    let var_0 = func_1(arg_3.b.a).a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(857f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3.a, 799f)) - -830f) + 876f)));
    global2 = array<u32, 26>();
    var var_2 = Struct_3(arg_2.c.b, _wgslsmith_f_op_f32(step(-1145f, arg_0)), func_1(vec4<bool>(arg_3.b.b, !global3.c.x, true, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~4294967295u, 26u)], u_input.d << (u_input.a % 32u)), 29u)])).c);
    return func_1(!(!arg_3.b.a)).a;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = firstLeadingBit(max(vec3<u32>(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2) << (vec2<u32>(arg_2, 0u) % vec2<u32>(32u)), countOneBits(vec2<u32>(arg_1, 1u))), _wgslsmith_div_u32(arg_1, 39122u >> (1u % 32u))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1, arg_2, arg_2), ~vec3<u32>(24818u, global2[_wgslsmith_index_u32(u_input.d, 26u)], u_input.a), true), min(~vec3<u32>(u_input.a, arg_2, 4294967295u), vec3<u32>(0u, 66635u, u_input.d) | vec3<u32>(arg_2, 18241u, 4294967295u)))));
    var var_1 = _wgslsmith_div_u32(firstTrailingBit(~(~17704u)) ^ (_wgslsmith_mod_u32(reverseBits(44152u), 29660u) | _wgslsmith_clamp_u32(~1u, ~u_input.d, var_0.x)), _wgslsmith_div_u32(4294967295u, arg_1));
    var var_2 = 21447u;
    return Struct_2(-1383f, Struct_1(!(!vec4<bool>(global4[_wgslsmith_index_u32(var_0.x, 29u)], global3.c.x, false, false)), global1[_wgslsmith_index_u32(~arg_1, 25u)], arg_0.b.a.wwx), vec2<bool>(true, false));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = 26308i;
    var var_1 = ~countOneBits(select(~vec2<u32>(1u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], u_input.d)), ~vec2<u32>(global2[_wgslsmith_index_u32(1757u, 26u)], 33383u)), true));
    var var_2 = firstLeadingBit(var_0);
    var var_3 = !(!func_1(select(!vec4<bool>(true, global3.b.a.x, true, global1[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<bool>(false, false, true, arg_1.b.b), true)).a.a.zy);
    let var_4 = _wgslsmith_f_op_f32(ceil(func_5(arg_1, max(_wgslsmith_clamp_u32(4294967295u, firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], 4294967295u, 1u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, global2[_wgslsmith_index_u32(54425u, 26u)], u_input.d))), ~(var_1.x ^ 15698u)), 22920u & var_1.x, Struct_2(global3.a, func_4(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(-global3.a), Struct_3(Struct_1(vec4<bool>(false, var_3.x, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 26u)], 29u)], true), false, arg_1.b.c), 1955f, Struct_2(global3.a, Struct_1(vec4<bool>(false, global1[_wgslsmith_index_u32(44848u, 25u)], arg_1.c.x, true), false, vec3<bool>(true, arg_1.c.x, false)), global3.c)), arg_1), global3.b.c.yx)).a));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(u_input.b.x ^ _wgslsmith_add_i32(~reverseBits(0i), 0i ^ u_input.c.x), func_5(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1506f)))), func_4(global3.a, _wgslsmith_f_op_f32(min(-303f, 1424f)), func_1(vec4<bool>(global3.b.b, global3.b.a.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], global1[_wgslsmith_index_u32(33902u, 25u)])), func_1(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 29u)], global4[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(u_input.d, 29u)], global4[_wgslsmith_index_u32(63819u, 29u)])).c), vec2<bool>(false, all(vec4<bool>(false, true, false, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69700u, 26u)], 29u)])))), 1u, 27970u, func_1(global3.b.a).c));
    var var_1 = !vec4<bool>(global3.c.x, var_0.c.x | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d, 65730u, 87558u, u_input.a), vec4<u32>(63216u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], u_input.d), false), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54427u, 26u)], 26u)], 26u)], 31721u, u_input.d, u_input.a)), 25u)], false, any(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 29u)], true, false, false)));
    var var_2 = Struct_1(vec4<bool>(all(vec3<bool>(false, any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d, 25u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47846u, 26u)], 26u)], 25u)])), any(vec2<bool>(var_0.c.x, true)))), true, func_1(func_4(global3.a, var_0.a, func_1(var_0.b.a), Struct_2(global3.a, Struct_1(global3.b.a, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(825u, 26u)], 29u)], var_1.wxx), vec2<bool>(var_1.x, var_0.b.c.x))).a).a.c.x, any(!global3.b.c)), 4294967295u != _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], global2[_wgslsmith_index_u32(0u, 26u)], u_input.d), 26u)], ~0u), !vec3<bool>(var_1.x, all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], var_0.c.x, false, false)) | global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(38530u, 26u)], 79617u), 29u)], u_input.a != global2[_wgslsmith_index_u32(~u_input.a, 26u)]));
    var var_3 = vec2<i32>(u_input.e, u_input.b.x);
    var var_4 = Struct_3(func_5(Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a * var_0.a))), func_1(vec4<bool>(var_0.c.x, var_0.c.x, global3.c.x, true)).c.b, vec2<bool>(true, !global4[_wgslsmith_index_u32(u_input.a, 29u)])), 110345u, global2[_wgslsmith_index_u32(u_input.a, 26u)] << ((~1u << (_wgslsmith_div_u32(1u, global2[_wgslsmith_index_u32(u_input.d, 26u)]) % 32u)) % 32u), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a))), var_0.b, var_2.c.xz)).b, -748f, Struct_2(1f, global3.b, vec2<bool>(select(any(vec2<bool>(true, var_1.x)), var_0.c.x | global3.b.b, !var_0.c.x), func_2())));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1119f - -878f)), func_6(-9000i, var_4.c).a, -1006f)), -var_3.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1243f, var_0.a, var_0.a)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, 640f, global3.a)))))));
}

