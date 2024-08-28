struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-772f, -698f, 824f), vec3<f32>(1187f, -905f, 452f), vec3<f32>(743f, -1553f, -615f), vec3<f32>(1000f, -1215f, -1206f), vec3<f32>(445f, 972f, 1654f), vec3<f32>(-1793f, -1000f, 829f), vec3<f32>(489f, -2225f, 242f), vec3<f32>(1437f, -1000f, -1246f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    global1 = Struct_1(vec2<i32>(-global2.a.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(abs(global1.b), 1i), ~abs(-17375i))), ~global1.b, !select(select(global2.c, vec3<bool>(global1.c.x, true, global1.c.x), true), vec3<bool>(70374i <= u_input.c, false, false), !global1.c.x | global2.c.x), global2.d);
    let var_0 = vec3<bool>(max(min(0u, u_input.d.x), abs(26868u ^ u_input.b)) >= _wgslsmith_sub_u32(~1u | _wgslsmith_add_u32(42512u, u_input.d.x), 16075u), global1.c.x, false);
    global1 = Struct_1(global1.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.a.x, abs(-1256i)), abs(_wgslsmith_sub_i32(41914i, -1i))), abs(global1.b)), global2.c, global1.d);
    global0 = abs(global2.a.x);
    global1 = Struct_1(firstTrailingBit(firstTrailingBit(vec2<i32>(0i, global2.b) & _wgslsmith_mult_vec2_i32(global1.a, vec2<i32>(global2.b, 2147483647i)))), global2.b, select(!(!vec3<bool>(var_0.x, false, false)), vec3<bool>(all(select(global1.c.zx, vec2<bool>(false, global1.c.x), true)), !all(vec4<bool>(global1.c.x, var_0.x, global2.c.x, var_0.x)), global2.c.x), vec3<bool>((true | var_0.x) || true, var_0.x, !any(vec4<bool>(true, true, global2.c.x, true)))), -1003f);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * 686f) * global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.d + arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0, arg_0)))))));
}

fn func_2(arg_0: u32) -> bool {
    global2 = Struct_1(~_wgslsmith_clamp_vec2_i32(u_input.a << (u_input.d % vec2<u32>(32u)), global2.a, select(vec2<i32>(2147483647i, global1.b), global1.a, vec2<bool>(global2.c.x, true))), -global2.a.x, vec3<bool>(true, true, true), global2.d);
    global1 = Struct_1(u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(20714i, -66453i), ~49894i), !vec3<bool>(global2.c.x, global1.c.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.d)) * -1989f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d * 123f)))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(global1.d, 1541f), vec2<f32>(global1.d, global1.d)), _wgslsmith_f_op_vec2_f32(func_3(-1000f)))))));
    global3 = array<vec3<f32>, 8>();
    let var_1 = 0u;
    return global2.c.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = !(!(!global1.c.x));
    return 25670u;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_add_vec4_i32(~vec4<i32>(global2.a.x, u_input.a.x, u_input.a.x, global1.a.x) << (~arg_1 % vec4<u32>(32u)), ~(-vec4<i32>(-2147483647i, global1.a.x, -1i, -8480i))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -1180f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(250f, arg_2) - vec2<f32>(780f, global2.d))), vec2<f32>(_wgslsmith_f_op_f32(global1.d + global1.d), -1729f)), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1394f, global2.d, global2.c.x)), 1000f))), Struct_2(Struct_1(-global1.a, -global2.a.x, vec3<bool>(true, true, true), -2554f), _wgslsmith_sub_u32(~62573u, 1u), !global1.c.x, 1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f)))))), global2.c.x | (all(vec4<bool>(false, false, global1.c.x, global2.c.x)) || (1u != arg_1.x)), Struct_3(_wgslsmith_div_vec4_i32(abs(vec4<i32>(global2.a.x, u_input.a.x, -2147483647i, global2.a.x)), vec4<i32>(global1.b << (0u % 32u), global1.b, u_input.a.x, abs(global2.a.x))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.d, 1033f), vec2<f32>(global2.d, arg_2)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(906f, -371f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, arg_2))), 48214u, -352f, Struct_2(Struct_1(vec2<i32>(0i, global1.b), 1i, global2.c, -1078f), 1u, global1.a.x >= 2147483647i, ~func_4(Struct_1(vec2<i32>(1140i, global1.a.x), global1.b, vec3<bool>(false, false, global2.c.x), arg_2), vec4<f32>(-303f, global2.d, 272f, global2.d), global3[_wgslsmith_index_u32(u_input.b, 8u)]), global2.d)));
    global2 = Struct_1(~(-vec2<i32>(var_0.c.e.a.a.x, global1.a.x)) | ~(vec2<i32>(global1.b, 8092i) >> (vec2<u32>(arg_1.x, 50219u) % vec2<u32>(32u))), abs(global1.b << (~var_0.a.e.d % 32u)) ^ var_0.a.e.a.a.x, select(select(select(select(var_0.c.e.a.c, global1.c, global1.c), var_0.c.e.a.c, vec3<bool>(global2.c.x, var_0.c.e.c, false)), select(vec3<bool>(false, global1.c.x, false), var_0.c.e.a.c, var_0.c.e.c), global2.c), !select(select(vec3<bool>(global2.c.x, true, global1.c.x), vec3<bool>(true, global1.c.x, global1.c.x), false), var_0.c.e.a.c, select(global1.c, vec3<bool>(true, false, global1.c.x), var_0.a.e.c)), global2.c), 1014f);
    global1 = var_0.a.e.a;
    var_0 = Struct_4(var_0.a, false, Struct_3(var_0.a.a, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-557f + -508f))), global1.d), ~arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) * _wgslsmith_f_op_f32(sign(-2046f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-433f, -596f)), _wgslsmith_f_op_f32(-global2.d)), all(global2.c.yy))), Struct_2(var_0.a.e.a, 69584u & _wgslsmith_clamp_u32(u_input.d.x, arg_1.x, 40954u), global1.c.x, u_input.d.x, var_0.c.e.a.d)));
    var var_1 = ~global2.b;
    return Struct_2(var_0.a.e.a, ~u_input.d.x & 27812u, max(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.x), u_input.d), 1u), 67378u) <= arg_1.x, reverseBits(1u), global1.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = func_5(func_4(Struct_1(countOneBits(vec2<i32>(global1.b, -24191i)), 0i, vec3<bool>(func_2(1u), global2.c.x, func_2(u_input.d.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, global1.d), 690f)), vec4<f32>(-1214f, -740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f - 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2946f, global1.d)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global3[_wgslsmith_index_u32(arg_3.x, 8u)])))))), _wgslsmith_add_vec4_u32(~reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 0u, u_input.b), vec4<u32>(13050u, u_input.b, arg_0.x, 0u), vec4<u32>(arg_3.x, 63918u, 1u, 4996u))), ~vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x, arg_0.x, u_input.b), _wgslsmith_mod_u32(arg_0.x, 0u), 4294967295u, _wgslsmith_mult_u32(arg_3.x, arg_0.x))), global2.d);
    let var_1 = Struct_1(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.c, countOneBits(2147483647i)), ~(vec2<i32>(global1.a.x, 52003i) >> (arg_0.xx % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(-var_0.a.a, vec2<i32>(global1.a.x, u_input.c))), vec2<i32>(1i, ~(1i >> (arg_3.x % 32u))), global1.c.x), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, 1i), vec4<i32>(1i, -1i, 1i, 1i)), -2147483647i), select(select(global2.c, global1.c, func_5(_wgslsmith_sub_u32(4294967295u, var_0.d), abs(vec4<u32>(arg_3.x, u_input.b, 25293u, u_input.b)), global2.d).a.c), vec3<bool>(!(0u < arg_0.x), true, func_5(arg_3.x, firstTrailingBit(vec4<u32>(arg_0.x, 1u, 1u, 94480u)), 1000f).a.c.x), global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(645f)), _wgslsmith_f_op_f32(f32(-1f) * -519f)))) + _wgslsmith_f_op_f32(-204f + 1638f)));
    global0 = 0i;
    let var_2 = 61469u;
    var var_3 = global2.d;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, global1.c.x || false, func_1(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d.x, 38865u), vec3<u32>(u_input.b, 0u, 18039u)), vec3<u32>(23265u, 0u, u_input.b)), global2.a.x < 22953i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.d, 1014f, global2.c.x))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 22001u, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 51611u), vec3<u32>(u_input.d.x, 4294967295u, 11971u)))), func_2(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.d.x, u_input.b, u_input.b, 29723u), vec4<u32>(34319u, 0u, 0u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 9766u, u_input.b, u_input.d.x), vec4<u32>(u_input.d.x, u_input.b, u_input.b, 18541u))))), select(select(select(!vec4<bool>(false, false, false, global2.c.x), !vec4<bool>(true, true, global2.c.x, false), global2.c.x), select(vec4<bool>(global1.c.x, false, global1.c.x, false), select(vec4<bool>(false, global1.c.x, true, true), vec4<bool>(true, true, global1.c.x, true), vec4<bool>(global1.c.x, global2.c.x, true, global2.c.x)), true), countOneBits(1u) <= u_input.b), !(!select(vec4<bool>(true, global1.c.x, global2.c.x, true), vec4<bool>(false, global2.c.x, global2.c.x, true), false)), vec4<bool>(global2.c.x, global2.c.x, false, global2.c.x)), vec4<bool>(49712u > u_input.d.x, select(!(global2.c.x | global2.c.x), true, any(vec4<bool>(false, false, global2.c.x, true)) | true), global2.d >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.d))), any(vec3<bool>(true, any(vec4<bool>(global1.c.x, false, global2.c.x, false)), global2.c.x))));
    let var_1 = Struct_4(Struct_3(vec4<i32>(i32(-1i) * -1i, _wgslsmith_mult_i32(~20855i, u_input.a.x), -select(global1.b, global1.b, var_0.x), -33310i), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1920f, global1.d), vec2<f32>(494f, global2.d), global1.c.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1689f, 627f) + vec2<f32>(global2.d, -143f))))), min(~countOneBits(82506u), _wgslsmith_mult_u32(func_4(Struct_1(global1.a, 0i, vec3<bool>(true, true, true), 267f), vec4<f32>(global1.d, global2.d, 1239f, global1.d), global3[_wgslsmith_index_u32(u_input.b, 8u)]), u_input.b)), global1.d, Struct_2(Struct_1(func_5(4294967295u, vec4<u32>(u_input.d.x, u_input.b, 75355u, u_input.d.x), 833f).a.a, global1.b, select(vec3<bool>(true, global2.c.x, global1.c.x), vec3<bool>(global2.c.x, true, true), true), _wgslsmith_f_op_f32(global1.d + 600f)), u_input.b, var_0.x, u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d))))), !global1.c.x, Struct_3(min(select(min(vec4<i32>(global1.a.x, -1i, 8453i, u_input.a.x), vec4<i32>(global2.a.x, global1.a.x, 2147483647i, -2147483647i)), vec4<i32>(global1.b, u_input.c, -458i, global2.a.x), var_0.x), vec4<i32>(1i, min(global2.a.x, -1i), -global1.b, select(global1.b, 1i, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1351f, 1584f) + vec2<f32>(global1.d, 849f))))), 111076u, _wgslsmith_div_f32(global1.d, global2.d), Struct_2(Struct_1(abs(u_input.a), -16048i, global2.c, global2.d), ~1u, all(!vec3<bool>(true, false, global2.c.x)), _wgslsmith_mult_u32(u_input.d.x, u_input.d.x) ^ (62770u & u_input.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.d + 1321f), -1943f)))));
    var var_2 = Struct_2(Struct_1(~(-firstLeadingBit(vec2<i32>(var_1.c.a.x, var_1.c.a.x))), -firstTrailingBit(u_input.c) << (39387u % 32u), global1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d))))), select(max(firstLeadingBit(~1u), min(firstTrailingBit(0u), 37322u)), countOneBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(var_1.a.e.d, var_1.a.c)))), all(select(var_1.c.e.a.c.zx, vec2<bool>(true, true), func_5(u_input.b, vec4<u32>(var_1.c.e.b, var_1.c.e.d, 29325u, u_input.b), var_1.a.b.x).a.c.yz))), true, firstLeadingBit(var_1.a.e.b), _wgslsmith_f_op_f32(var_1.a.d * -888f));
    global0 = var_2.a.b;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f), -447f);
    global1 = var_1.c.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-2147483647i, -8399i)), -vec2<i32>(2147483647i, u_input.c)), max(vec2<i32>(_wgslsmith_mult_i32(global1.a.x, u_input.c), -38584i), u_input.a >> (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)))), ~abs(~vec2<u32>(var_2.b, 80343u)) ^ u_input.d, 68945u, _wgslsmith_f_op_vec2_f32(var_1.c.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.c.b))))));
}

