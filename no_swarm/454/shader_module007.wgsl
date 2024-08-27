struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
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

var<private> global0: array<i32, 9> = array<i32, 9>(-1i, -39010i, 10272i, 3114i, 1i, -1578i, -24460i, i32(-2147483648), -8634i);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b.x, 1i), u_input.b.xy);
    global1 = Struct_1(2422f, ~u_input.d.x != ~(~u_input.a.x), -_wgslsmith_div_vec2_i32(global1.c, vec2<i32>(-63588i, 1i)));
    global1 = Struct_1(-1992f, any(!select(!vec2<bool>(false, arg_1.b), select(vec2<bool>(arg_1.c, true), vec2<bool>(false, true), arg_2), true)), vec2<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(76333i, global0[_wgslsmith_index_u32(4294967295u, 9u)]) >> (u_input.d.x % 32u), i32(-1i) * -arg_1.a)));
    global0 = array<i32, 9>();
    var var_1 = u_input.d;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1276f, 249f, 376f) + vec3<f32>(1000f, global1.a, -463f)) + _wgslsmith_div_vec3_f32(vec3<f32>(global1.a, 1518f, global1.a), vec3<f32>(global1.a, 1574f, -1394f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a) * vec3<f32>(1852f, 1000f, global1.a)))), arg_2)))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>) -> i32 {
    var var_0 = -select(u_input.b, ~(-u_input.b), !vec4<bool>(global1.b, any(vec3<bool>(true, false, arg_0)), global1.a > 325f, u_input.a.x <= u_input.a.x));
    global1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.a * global1.a)))))), all(!select(!vec3<bool>(arg_0, arg_0, false), select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, true, global1.b)), !global1.b)), -abs(u_input.b.xx));
    var var_1 = Struct_1(arg_1.x, _wgslsmith_mod_i32(global1.c.x, ~global0[_wgslsmith_index_u32(u_input.a.x, 9u)] << (u_input.a.x % 32u)) != countOneBits(_wgslsmith_sub_i32(16596i, 1i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4158u, 66418u, u_input.d.x), vec4<u32>(20563u, 1u, 0u, 4294967295u)) % 32u)), max(~vec2<i32>(_wgslsmith_mult_i32(u_input.c, 72862i), -11067i), vec2<i32>(u_input.c >> (~0u % 32u), u_input.e)));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(var_1.c.x, Struct_2(u_input.c, all(select(vec3<bool>(false, global1.b, global1.b), vec3<bool>(var_1.b, false, arg_0), true)), true), global1.b, vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(35099u, 9u)], var_1.c.x, 1i, -22405i), vec4<i32>(0i, var_1.c.x, u_input.b.x, -62141i)), ~(~u_input.b.x)))).x, !(252f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f * arg_1.x))), _wgslsmith_div_vec2_i32(u_input.b.yz, var_0.wx));
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-countOneBits(11515i), u_input.e, -2147483647i, ~u_input.b.x), _wgslsmith_clamp_vec4_i32(u_input.b, -u_input.b >> (abs(vec4<u32>(u_input.d.x, u_input.d.x, 35211u, 981u)) % vec4<u32>(32u)), vec4<i32>(u_input.c, 1i, -26704i, ~2147483647i))), u_input.b, vec4<i32>(_wgslsmith_mult_i32(u_input.b.x & -8634i, ~global0[_wgslsmith_index_u32(u_input.d.x, 9u)]) & u_input.e, -u_input.e, var_1.c.x, max(-_wgslsmith_mod_i32(u_input.c, -81384i), ~(-2147483647i))));
    return 1i;
}

fn func_2(arg_0: i32, arg_1: f32) -> vec2<f32> {
    var var_0 = -903f;
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, u_input.e, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec4<i32>(-51580i, global1.c.x, arg_0, global1.c.x) | u_input.b), -1i) & -24740i, _wgslsmith_mult_i32(u_input.c, func_4(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(2147483647i, Struct_2(global1.c.x, global1.b, global1.b), true, global1.c)) - vec3<f32>(global1.a, global1.a, 582f)))), 1i, _wgslsmith_dot_vec2_i32(-select(vec2<i32>(-2147483647i, 19972i), u_input.b.ww, false), ~global1.c) | _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(global1.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec2<i32>(arg_0, 25036i)), vec2<i32>(arg_0, 11016i)), global1.c.x));
    let var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1), global1.b, -(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), ~var_1.yy) >> (~_wgslsmith_div_vec2_u32(u_input.d.xz, vec2<u32>(u_input.a.x, u_input.d.x)) % vec2<u32>(32u))));
    let var_4 = global1.b;
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_f32(step(global1.a, var_3.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-794f * _wgslsmith_f_op_f32(select(var_2, arg_1, global1.b)))))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(128f, global1.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 215f)))))), _wgslsmith_f_op_vec2_f32(func_2(-2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1278f), global1.a))));
    var var_1 = Struct_2(-1i, !select(true, true, true), global1.b);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1296f, -1000f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - global1.a)), var_1.c || any(vec3<bool>(false, global1.b, global1.b))))), global1.b, vec2<i32>(firstTrailingBit(~firstLeadingBit(2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(func_4(global1.b, vec3<f32>(-1068f, 345f, 396f)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.a, u_input.b.x, 9340i), u_input.b), -40523i >> (u_input.d.x % 32u)), vec4<i32>(-global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 1i, ~global0[_wgslsmith_index_u32(u_input.d.x, 9u)], ~(-1i)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(select(281f, -1043f, func_1().b));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(800f - _wgslsmith_f_op_vec2_f32(func_2(global0[_wgslsmith_index_u32(13061u, 9u)], global1.a)).x)))), !(false || any(arg_3)), ~func_1().c);
    var_1 = func_1();
    let var_2 = -u_input.b.ww;
    global0 = array<i32, 9>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * arg_2.a) * _wgslsmith_div_f32(116f, global1.a)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-910f, 1355f) + _wgslsmith_f_op_f32(f32(-1f) * -231f))) * global1.a));
}

fn func_6(arg_0: f32, arg_1: f32) -> vec2<f32> {
    let var_0 = 695f;
    global1 = func_1();
    global0 = array<i32, 9>();
    global1 = Struct_1(_wgslsmith_div_f32(697f, -375f), all(vec3<bool>(false, countOneBits(3854u) >= countOneBits(u_input.a.x), any(!vec4<bool>(true, global1.b, true, global1.b)))), firstTrailingBit(-(~reverseBits(vec2<i32>(global1.c.x, global1.c.x)))));
    var var_1 = false;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, global1.a), vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(-global0[_wgslsmith_index_u32(u_input.a.x, 9u)], Struct_2(-89931i, false, global1.b), arg_1 != 165f, vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))).x, arg_0), vec2<bool>(global1.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global1.a)))), _wgslsmith_f_op_f32(func_5(Struct_2(global1.c.x, false, global1.b), vec2<i32>(-11647i, 2147483647i), func_1(), select(vec3<bool>(global1.b, false, global1.b), vec3<bool>(false, global1.b, global1.b), global1.b))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1.a)) + vec2<f32>(233f, _wgslsmith_f_op_f32(1070f * -1307f)))));
    let var_1 = select(select(vec4<bool>(true, all(!vec3<bool>(global1.b, false, global1.b)), global1.b, global1.b), vec4<bool>(global1.b, !global1.b, false, true && global1.b), !select(vec4<bool>(false, false, global1.b, global1.b), !vec4<bool>(false, global1.b, global1.b, false), any(vec2<bool>(global1.b, global1.b)))), select(select(!(!vec4<bool>(global1.b, true, true, false)), vec4<bool>(true, any(vec2<bool>(global1.b, true)), any(vec4<bool>(true, global1.b, global1.b, global1.b)), true), vec4<bool>(any(vec4<bool>(false, global1.b, true, true)), all(vec2<bool>(true, global1.b)), true, true)), vec4<bool>(true, select(false, func_1().b, -11041i <= global0[_wgslsmith_index_u32(4294967295u, 9u)]), true, 62659u <= min(u_input.d.x, u_input.d.x)), true), select(vec4<bool>(!(-1000f >= var_0.a.x), true, false, !(true || global1.b)), vec4<bool>(_wgslsmith_f_op_f32(-294f + global1.a) > _wgslsmith_f_op_f32(-global1.a), false, global1.b, global1.b), vec4<bool>(!global1.b, all(!vec4<bool>(global1.b, global1.b, true, global1.b)), func_1().b, func_1().b)));
    var var_2 = !(false | func_1().b);
    var var_3 = select(!(!select(vec4<bool>(var_1.x, global1.b, true, false), var_1, var_1)), !var_1, 522f == func_1().a);
    var var_4 = _wgslsmith_mult_i32(38363i, global0[_wgslsmith_index_u32(abs(reverseBits(u_input.d.x)), 9u)]);
    let var_5 = Struct_2(~(_wgslsmith_mult_i32(func_4(var_1.x, vec3<f32>(1206f, var_0.b.x, -789f)), ~0i) >> (~33936u % 32u)), false != (var_3.x | !global1.b), false);
    global0 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(946f);
}

