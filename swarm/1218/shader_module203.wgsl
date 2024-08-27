struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: bool = false;

var<private> global4: Struct_2 = Struct_2(-1i, Struct_1(15748u, vec4<u32>(39874u, 60331u, 1u, 98888u), true, vec2<f32>(-970f, 1965f), vec2<f32>(1132f, -899f)), vec2<bool>(false, false), Struct_1(23554u, vec4<u32>(5197u, 51661u, 4294967295u, 58539u), true, vec2<f32>(-483f, -1028f), vec2<f32>(-1000f, -440f)), 1u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4) -> u32 {
    var var_0 = ~vec3<u32>(4294967295u, (23028u & global4.e) & global4.b.b.x, 0u);
    return _wgslsmith_div_u32(~firstLeadingBit(1u), u_input.b.x);
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_1) -> vec3<bool> {
    global3 = !(global4.d.c & true);
    let var_0 = 479f;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.e.x + 952f)))), -1495f, arg_2.e.x, -1009f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, -543f, 544f, arg_1.b.b.d.x))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.d.d.x, global4.d.e.x, arg_2.e.x, arg_2.e.x), vec4<f32>(1000f, arg_2.e.x, 877f, global4.d.e.x), false)), vec4<f32>(-141f, arg_2.e.x, -983f, -1356f))), select(vec4<bool>(true, true, global1.c, global1.c), !vec4<bool>(true, false, global4.d.c, global1.c), !global1.c))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-181f, -1585f, -401f, global4.d.d.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_2.d.x, 357f, arg_2.d.x) - vec4<f32>(-1245f, global4.d.d.x, 917f, var_0))), vec4<f32>(_wgslsmith_f_op_f32(global1.e.x - 844f), _wgslsmith_f_op_f32(f32(-1f) * -131f), _wgslsmith_f_op_f32(f32(-1f) * -1805f), arg_0)))));
    global1 = arg_2;
    let var_2 = arg_1;
    return select(global0.xxw, !vec3<bool>(true, _wgslsmith_f_op_f32(-global1.e.x) > _wgslsmith_f_op_f32(761f - -465f), all(global0.ywy)), global0.zxy);
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_4(u_input.b.xx, Struct_2(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-20496i, global4.a, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, -16116i, global4.a, global4.a))), Struct_1(_wgslsmith_add_u32(4294967295u, ~u_input.b.x), vec4<u32>(~arg_0, ~global4.b.a, ~43746u, ~5522u), global1.e.x == global4.b.d.x, vec2<f32>(_wgslsmith_div_f32(global4.b.d.x, 1539f), _wgslsmith_f_op_f32(trunc(-1181f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.d, global4.b.d, global4.b.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, global4.d.d.x)))), global4.c, Struct_1(~global4.b.b.x, ~(~vec4<u32>(global1.a, 1u, arg_0, u_input.b.x)), all(vec4<bool>(global0.x, global1.c, false, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.e)), vec2<f32>(_wgslsmith_f_op_f32(floor(global1.e.x)), 621f)), 1u));
    let var_1 = select(select(select(!global0.yyz, select(func_3(-647f, Struct_4(vec2<u32>(u_input.c, 59883u), var_0.b), var_0.b.b), select(vec3<bool>(global1.c, true, global1.c), vec3<bool>(true, false, true), true), !global0.wxy), vec3<bool>(all(vec4<bool>(global4.b.c, var_0.b.d.c, false, false)), false, true)), vec3<bool>(global4.b.c || (var_0.b.d.c == false), !global0.x, var_0.b.d.c), !((29338u & global1.a) > _wgslsmith_clamp_u32(u_input.b.x, var_0.a.x, global1.b.x))), !select(!(!global0.zyy), global0.xwx, _wgslsmith_f_op_f32(abs(-1810f)) <= global4.d.d.x), select(global0.zzz, global0.yxz, global0.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d.d.x, _wgslsmith_f_op_f32(-global4.d.d.x), global1.d.x) * vec3<f32>(-267f, 1933f, global1.d.x));
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(var_0.b.a, -13151i) >> (4294967295u % 32u), ~select(-(global4.a | 0i), 0i, true), ~(~23369i), 1i);
    var var_4 = Struct_2(~_wgslsmith_sub_i32(1i, 30202i), Struct_1(_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(1u, 28513u, 1u, 1u))), vec4<u32>(15181u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, var_0.b.d.b.x), global4.b.b.zzx), abs(0u), func_1(global1.b.yx, Struct_4(vec2<u32>(49288u, 2224u), var_0.b)))), reverseBits(vec4<u32>(select(var_0.b.e, 17969u, true), func_1(vec2<u32>(global4.e, 56049u), Struct_4(vec2<u32>(4294967295u, u_input.c), Struct_2(var_0.b.a, Struct_1(1u, vec4<u32>(arg_0, arg_0, global4.d.b.x, 1u), global1.c, vec2<f32>(var_0.b.b.d.x, var_2.x), var_2.yy), vec2<bool>(true, false), global4.b, 0u))), ~arg_0, _wgslsmith_div_u32(var_0.a.x, 1u))), global4.d.c, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global4.d.d - _wgslsmith_f_op_vec2_f32(-var_0.b.b.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.yy, vec2<f32>(-841f, global1.e.x))))), var_0.b.b.e), !select(!select(var_0.b.c, global0.yy, vec2<bool>(global0.x, var_1.x)), vec2<bool>(func_3(719f, Struct_4(u_input.b.xy, Struct_2(global4.a, var_0.b.d, global4.c, Struct_1(u_input.c, vec4<u32>(21084u, 4294967295u, global1.b.x, u_input.b.x), true, vec2<f32>(global4.d.d.x, -232f), var_2.xx), 79597u)), Struct_1(arg_0, vec4<u32>(var_0.b.d.a, 59533u, 4294967295u, arg_0), global1.c, vec2<f32>(-1333f, var_2.x), var_2.zx)).x, func_3(global4.d.d.x, Struct_4(global4.d.b.zw, var_0.b), Struct_1(arg_0, var_0.b.b.b, var_0.b.c.x, vec2<f32>(global1.d.x, var_2.x), global4.d.e)).x), global4.c), Struct_1(u_input.c, ~vec4<u32>(~global1.b.x, 4294967295u, ~16011u, 0u | arg_0), true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.d * global4.d.e), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.d.d.x, 1250f), var_2.zz)), func_3(_wgslsmith_div_f32(-190f, global4.b.d.x), Struct_4(vec2<u32>(0u, 31837u), var_0.b), Struct_1(global4.d.a, vec4<u32>(var_0.a.x, 4294967295u, 56974u, u_input.b.x), var_0.b.b.c, var_0.b.b.e, var_0.b.b.d)).zy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.d.e.x, var_2.x) * global4.b.d) * _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.d.d.x, var_2.x), var_2.xx)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(615f, 1620f), global4.b.d)))), 4294967295u);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(func_1(global4.d.b.zz, Struct_4(~vec2<u32>(1u, 94414u), Struct_2(u_input.a.x, Struct_1(4294967295u, global4.d.b, global4.d.c, global1.e, vec2<f32>(298f, -1000f)), vec2<bool>(global1.c, global1.c), global4.d, u_input.b.x))), global1.b.x, !((-1595f != global4.b.d.x) && true));
    let var_1 = func_2(u_input.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(global4.d.d)))), global1.d)) * vec2<f32>(var_1.d.d.x, global4.b.d.x));
    global3 = ~_wgslsmith_div_u32(var_1.d.b.x | func_1(global4.d.b.wy, Struct_4(global4.d.b.xy, var_1)), ~1u) < ~var_0;
    var var_3 = ~(~(~abs(vec4<i32>(var_1.a, 28847i, -61982i, global4.a))));
    global4 = var_1;
    var var_4 = var_1.b.a;
    var var_5 = !vec2<bool>(abs(_wgslsmith_div_u32(1u, global4.e)) > _wgslsmith_mult_u32(min(0u, global1.a), 2174u), !global4.d.c || global4.d.c);
    global3 = all(vec4<bool>(all(!vec4<bool>(false, false, var_5.x, global1.c)), false, var_1.c.x, select(var_1.d.c, true, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mult_vec2_u32(~var_1.d.b.xz, countOneBits(u_input.b.yy))), _wgslsmith_f_op_vec2_f32(max(global1.d, func_2(1u).d.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(193f, _wgslsmith_f_op_f32(-global4.b.d.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global4.d.e.x, _wgslsmith_f_op_f32(max(var_1.b.d.x, global1.d.x)))), var_2.x, global4.b.e.x, var_1.d.d.x) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1065f, global4.b.d.x, var_1.d.e.x) + vec4<f32>(var_1.b.e.x, -1160f, global4.d.e.x, 566f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(539f, var_1.d.d.x, var_1.d.d.x, global4.d.d.x) - vec4<f32>(var_1.b.e.x, 416f, 1867f, -1000f)))))), (~max(vec4<u32>(4294967295u, 0u, global4.b.b.x, 0u), global4.b.b) << (var_1.d.b % vec4<u32>(32u))) << (vec4<u32>(abs(var_1.d.a | var_1.b.a), global1.b.x, ~(~global4.d.b.x), u_input.c) % vec4<u32>(32u)));
}

