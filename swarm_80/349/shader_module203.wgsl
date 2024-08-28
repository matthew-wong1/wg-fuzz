struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-1152f, -476f), 1922f, vec4<bool>(true, true, true, false));

var<private> global2: vec4<u32>;

var<private> global3: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(1u, 83703u, 1u, 1u), vec4<u32>(4294967295u, 27568u, 4294967295u, 40859u), vec4<u32>(62007u, 94527u, 13160u, 27996u), vec4<u32>(1435u, 26028u, 4294967295u, 42351u), vec4<u32>(1u, 4294967295u, 0u, 17570u), vec4<u32>(0u, 26915u, 4294967295u, 0u), vec4<u32>(0u, 70986u, 22520u, 2870u), vec4<u32>(809u, 4294967295u, 18834u, 46989u), vec4<u32>(16998u, 0u, 33534u, 57310u), vec4<u32>(4294967295u, 72008u, 0u, 4294967295u), vec4<u32>(43750u, 83709u, 69623u, 4294967295u));

var<private> global4: Struct_1 = Struct_1(630f, 1i, vec3<i32>(3193i, 0i, -1i), vec2<f32>(-497f, -742f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = -2147483647i;
    global2 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, abs(1u)), min(vec4<u32>(~global2.x, 1u, countOneBits(~0u), ~(~global2.x)), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(global2.x, 2011u, 1u, 81546u), global3[_wgslsmith_index_u32(global2.x, 11u)]))));
    global0 = arg_0.c;
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(~4294967295u, ~_wgslsmith_mod_u32(18619u, global2.x)), ~global2.x) ^ global2.xy;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2072f))))), global4.b, abs(-(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, global4.b, global4.b), vec3<i32>(u_input.b, u_input.a, -1i)) | select(vec3<i32>(global4.c.x, 2147483647i, 42820i), vec3<i32>(u_input.a, global4.b, u_input.a), true))), vec2<f32>(_wgslsmith_f_op_f32(294f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(258f + 669f)))), arg_0.a.x));
    return -569f;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = (0i ^ ~(-arg_1)) | 1i;
    let var_1 = vec3<bool>(false, 0u >= global2.x, true);
    global4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(536f, global1.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.x * 525f)))), var_0, ~(vec3<i32>(-1i, _wgslsmith_mult_i32(44600i, global4.c.x), ~arg_1) ^ vec3<i32>(~(-1i), -5208i, 0i)), global4.d);
    var var_2 = ~28657u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1702f + global1.a.x) + _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.d.x, 1000f) - vec2<f32>(global4.a, -1000f)), _wgslsmith_f_op_f32(sign(-1120f)), !global1.c)))), arg_1, global4.c, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_2(global4.d, global1.b, global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a - 1000f)), any(select(vec2<bool>(false, true), global0.zz, global0.x)))), global1.a.x));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(271f, var_3.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a, global1.a.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -1316f)), _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.b, var_3.b | 0i, var_3.c.x | arg_1) >> (vec3<u32>(global2.x, ~1u, 1u & global2.x) % vec3<u32>(32u)), vec3<i32>(0i, 0i, var_3.b)), _wgslsmith_add_vec3_i32(vec3<i32>(~max(27768i, arg_1), _wgslsmith_dot_vec2_i32(global4.c.xy, global4.c.yx) | var_3.b, -_wgslsmith_mult_i32(arg_1, var_0)), vec3<i32>(i32(-1i) * -55044i, 1i, _wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(u_input.a, -1i)))), var_3.d);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.b))))), _wgslsmith_f_op_f32(min(275f, -973f)), -581f, _wgslsmith_f_op_f32(func_2(arg_2.c.yz, 1i, select(vec4<bool>(arg_0.x, false, global1.c.x, false), arg_0, global1.c)).a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d.x * global1.a.x) + _wgslsmith_f_op_f32(-global1.b)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-374f, global4.d.x, -751f));
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~_wgslsmith_mod_u32(global2.x, 30537u)), _wgslsmith_mult_u32(~(~1u), firstLeadingBit(select(12629u, global2.x, arg_1)))), select(_wgslsmith_add_vec2_u32(abs(~global2.zw), ~global2.yy), vec2<u32>(19434u, select(_wgslsmith_mod_u32(global2.x, 30992u), global2.x, arg_0.x)), arg_1)), 11u)];
    var var_2 = -u_input.a >= u_input.b;
    var var_3 = false;
    return global4.c.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    global0 = select(select(global1.c, vec4<bool>(_wgslsmith_div_u32(global2.x, arg_0.x) >= 6561u, global0.x, global1.c.x, !global0.x), true), global1.c, vec4<bool>(any(global0.yz), global0.x, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(78008u, 11u)], vec4<u32>(arg_0.x, 14903u, 4294967295u, 4294967295u)) > 100358u, !(any(global1.c) & true)));
    let var_0 = Struct_1(arg_1.x, -(i32(-1i) * -48494i), vec3<i32>(u_input.b, ~1i, func_4(vec4<bool>(all(vec2<bool>(global0.x, global0.x)), global1.c.x, !global1.c.x, global0.x), (-2147483647i < arg_2.c.x) | global1.c.x, func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -8781i), arg_2.c.zy), global4.b, vec4<bool>(false, global0.x, global1.c.x, false)), abs(_wgslsmith_add_i32(global4.c.x, -3358i)))), global4.d);
    global1 = Struct_2(global4.d, _wgslsmith_f_op_f32(-arg_1.x), global1.c);
    global0 = !(!vec4<bool>(all(global1.c.ywx), _wgslsmith_f_op_f32(abs(var_0.a)) >= _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(-102f - global1.b) <= 288f, 756f != arg_1.x));
    var var_1 = -2147483647i;
    return ~(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(global2.x | (global2.x << (arg_0.x % 32u)), 11u)], _wgslsmith_sub_vec4_u32(~global3[_wgslsmith_index_u32(1u, 11u)], reverseBits(global3[_wgslsmith_index_u32(9506u, 11u)]))) | countOneBits(max(49404u, global2.x)));
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = select(global1.c.zw, select(select(global1.c.ww, vec2<bool>(global1.c.x, true), global0.wz), global0.zz, global1.c.yx), false);
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + arg_0.d.x))) - -625f), ~(-global4.b), -arg_0.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(893f, arg_0.d.x), vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x))), (-715f <= _wgslsmith_f_op_f32(-global4.a)) || (global4.d.x == _wgslsmith_f_op_f32(floor(global4.a))))));
    var var_3 = _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u >> (global2.x % 32u), 0u), 1u), global2.ww), 11u)], (vec4<u32>(global2.x, min(6174u, global2.x), firstLeadingBit(global2.x), ~arg_1) ^ vec4<u32>(arg_1, arg_1, arg_1, 16330u)) | select(abs(vec4<u32>(arg_1, global2.x, global2.x, arg_1)) << (select(global3[_wgslsmith_index_u32(global2.x, 11u)], vec4<u32>(4294967295u, arg_1, arg_1, 1u), true) % vec4<u32>(32u)), ~global3[_wgslsmith_index_u32(global2.x, 11u)], var_0.x));
    global2 = vec4<u32>(firstTrailingBit(_wgslsmith_add_u32(arg_1, _wgslsmith_sub_u32(var_3.x, var_3.x) ^ min(arg_1, var_3.x))), 5135u, func_1(min(vec3<u32>(0u, var_3.x, 4294967295u) << (var_3.ywy % vec3<u32>(32u)), ~vec3<u32>(global2.x, 0u, 0u)) | max(var_3.wyw, max(global2.xwz, var_3.xww)), vec3<f32>(global1.b, _wgslsmith_f_op_f32(sign(arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x))), arg_0), firstTrailingBit(1u));
    return 378f;
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.d))), 590f, global1.c);
    let var_1 = !global0.xy;
    var var_2 = func_2(global4.c.yx, u_input.a, select(global1.c, !vec4<bool>(true, var_0.c.x, false, var_1.x), var_0.c.x));
    var var_3 = !any(!vec3<bool>(false & var_1.x, any(global1.c), global1.b != global1.a.x));
    var var_4 = global2.x;
    return select(firstLeadingBit(~abs(global2.zzz) | countOneBits(~vec3<u32>(39889u, global2.x, 15201u))), ~global2.wxw, all(vec2<bool>(any(vec3<bool>(global1.c.x, global0.x, var_1.x)), global1.b == global4.d.x)));
}

fn func_7(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mod_i32(func_4(vec4<bool>(false, arg_1.x, global1.c.x, false), !global1.c.x, func_2(vec2<i32>(global4.b, 63214i), global4.c.x, global1.c), -15896i), -_wgslsmith_dot_vec3_i32(global4.c, vec3<i32>(-34667i, 2147483647i, -1i)))) & -arg_2;
    global4 = Struct_1(global4.d.x, abs(arg_2), _wgslsmith_div_vec3_i32(vec3<i32>(-var_0, 0i, -u_input.a), global4.c) | global4.c, vec2<f32>(global1.a.x, 1744f));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1152f * _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(363f + global1.a.x)) * global4.d), global4.a, global1.c);
    global3 = array<vec4<u32>, 11>();
    let var_1 = _wgslsmith_sub_i32(55366i >> (arg_0.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-5307i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 8713i, u_input.b, -7170i), vec4<i32>(-3534i, arg_2, -3909i, 32267i)), global4.c.x)), vec2<i32>(-arg_2, -2349i >> (global2.x % 32u))));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-477f, global1.b), vec2<f32>(global4.d.x, global4.a), arg_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global4.a)))) - _wgslsmith_f_op_f32(-global1.a.x)), select(vec4<bool>(any(vec4<bool>(global0.x, true, global1.c.x, false)), any(arg_1), _wgslsmith_mult_i32(53073i, -1i) != (-28151i & arg_2), true), vec4<bool>(true, false, any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, true, false), global1.c.x)), global0.x), global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 11>();
    global1 = func_7(func_6(Struct_1(_wgslsmith_f_op_f32(-global4.d.x), u_input.b, -(~vec3<i32>(-1i, 2147483647i, u_input.a)), vec2<f32>(1115f, -994f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, -989f) + _wgslsmith_f_op_f32(func_5(Struct_1(1889f, 11681i, global4.c, vec2<f32>(326f, global1.b)), func_1(vec3<u32>(global2.x, 0u, 1u), vec3<f32>(699f, global4.d.x, global4.a), Struct_1(1086f, global4.b, vec3<i32>(-1i, 1i, global4.c.x), global4.d)))))), global1.c.xyy, global4.b, 4294967295u);
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(func_7(global2.xzw & vec3<u32>(22721u, 1u, 13441u), vec3<bool>(false, global0.x, global0.x), global4.c.x, ~4294967295u))), func_2(vec2<i32>(85475i, _wgslsmith_mult_i32(global4.c.x, 38665i)), i32(-1i) * -2147483647i, func_7(firstLeadingBit(global2.wyy), select(global1.c.xyx, vec3<bool>(global0.x, true, false), vec3<bool>(true, global1.c.x, global1.c.x)), 1i, reverseBits(4294967295u)).c).a), u_input.a, global4.c, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))));
    var var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~global2.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -925f))))), -1289f, global2.yz);
}

