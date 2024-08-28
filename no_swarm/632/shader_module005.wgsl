struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32 = 1u;

var<private> global2: vec4<f32> = vec4<f32>(598f, 1587f, -1126f, -518f);

var<private> global3: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1u, 15321u, 1u, 4294967295u), vec4<u32>(0u, 94594u, 3533u, 6329u), vec4<u32>(1u, 51405u, 27877u, 23122u), vec4<u32>(0u, 8929u, 15019u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 19767u));

var<private> global4: array<bool, 14> = array<bool, 14>(true, true, false, true, true, false, false, true, false, true, true, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = Struct_1(global0.a.a, 2147483647i);
    let var_1 = u_input.c.x;
    let var_2 = arg_0.c;
    var var_3 = arg_0.e;
    global1 = 0u;
    return _wgslsmith_f_op_f32(select(1000f, -600f, arg_0.c.c.a.x));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(0u, 6u)];
    global0 = Struct_2(Struct_1(!global0.c.a, u_input.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(371f, _wgslsmith_f_op_f32(func_3(Struct_4(1087f, arg_0, Struct_2(Struct_1(global0.c.a, -2147483647i), vec2<f32>(global2.x, global2.x), global0.c, global0.b), global0.c.a.x, Struct_3(true, -1i, false, u_input.b, Struct_1(global0.a.a, 1i)))))))), Struct_1(select(select(vec3<bool>(false, global0.a.a.x, global0.c.a.x), global0.a.a, global4[_wgslsmith_index_u32(14672u, 14u)]), select(select(vec3<bool>(global4[_wgslsmith_index_u32(103917u, 14u)], false, true), global0.c.a, vec3<bool>(global0.c.a.x, global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(1u, 14u)])), select(global0.c.a, vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 14u)], true, global4[_wgslsmith_index_u32(0u, 14u)]), true), !global0.a.a), select(vec3<bool>(global0.a.a.x, true, global4[_wgslsmith_index_u32(u_input.c.x, 14u)]), global0.c.a, select(vec3<bool>(global0.a.a.x, true, global4[_wgslsmith_index_u32(133994u, 14u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 14u)], global0.c.a.x, global0.c.a.x), vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 14u)], global4[_wgslsmith_index_u32(u_input.c.x, 14u)])))), global0.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(178f, _wgslsmith_f_op_f32(func_3(Struct_4(864f, global2.x, Struct_2(Struct_1(vec3<bool>(global4[_wgslsmith_index_u32(0u, 14u)], true, global0.a.a.x), -20916i), vec2<f32>(-1023f, 851f), Struct_1(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 14u)], true, true), 32810i), global2.ww), global4[_wgslsmith_index_u32(28857u, 14u)], Struct_3(false, global0.c.b, true, u_input.a, global0.c))))) * _wgslsmith_f_op_vec2_f32(global0.d - global2.ww)));
    var var_1 = true || global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 14u)];
    global0 = Struct_2(Struct_1(!global0.a.a, -(_wgslsmith_clamp_i32(14596i, u_input.a, global0.a.b) >> (u_input.c.x % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-608f)), _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -287f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b, global0.b) - _wgslsmith_f_op_vec2_f32(step(global2.zw, vec2<f32>(arg_0, arg_0)))))), global0.c, vec2<f32>(826f, _wgslsmith_f_op_f32(select(global0.d.x, _wgslsmith_f_op_f32(-713f - _wgslsmith_f_op_f32(global2.x + -1041f)), false))));
    global4 = array<bool, 14>();
    return abs(u_input.c.x);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = ~firstLeadingBit(~arg_0.d);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -511f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-arg_1), true)), arg_2.c, false, Struct_3(false, 1i << (firstLeadingBit(u_input.c.x) % 32u), !(!(!global0.a.a.x)), -_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.e.e.b, 1i, -9009i), vec3<i32>(u_input.a, arg_2.e.e.b, -45551i) << (vec3<u32>(718u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), arg_2.c.c));
    global4 = array<bool, 14>();
    var var_2 = vec4<bool>(global0.c.a.x != (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 76933u), u_input.c.xyy) < 1u), global4[_wgslsmith_index_u32(u_input.c.x, 14u)], select(any(global0.a.a.xx), arg_3.a.x, var_1.d), true);
    var_2 = vec4<bool>(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.c), u_input.c) == _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.c.xwx, vec3<u32>(14899u, u_input.c.x, u_input.c.x)) & ~37045u, 62916u), any(vec4<bool>(global4[_wgslsmith_index_u32(~func_2(global2.x), 14u)], all(var_1.e.e.a.xx), !global0.a.a.x, false)), true, select(true, global2.x > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1435f)))), false));
    return vec4<f32>(_wgslsmith_f_op_f32(round(global2.x)), -1284f, _wgslsmith_div_f32(-110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-arg_2.c.d.x)))));
}

fn func_1() -> Struct_3 {
    global2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_3(true, 1i, global4[_wgslsmith_index_u32(func_2(_wgslsmith_div_f32(global2.x, 282f)) | ~35896u, 14u)], reverseBits(i32(-1i) * -u_input.a), Struct_1(global0.a.a, reverseBits(0i))), _wgslsmith_f_op_f32(f32(-1f) * -165f), Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + -1052f) * _wgslsmith_f_op_f32(sign(global0.d.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(491f + global0.d.x), _wgslsmith_f_op_f32(func_3(Struct_4(-323f, -1154f, Struct_2(Struct_1(vec3<bool>(false, true, global0.c.a.x), 1i), global0.b, Struct_1(vec3<bool>(false, true, global0.a.a.x), 1i), global0.b), global0.c.a.x, Struct_3(false, -2147483647i, global4[_wgslsmith_index_u32(u_input.c.x, 14u)], u_input.a, Struct_1(global0.c.a, 7895i))))))), Struct_2(global0.a, vec2<f32>(1000f, _wgslsmith_f_op_f32(global2.x * global0.b.x)), global0.a, global2.wy), any(global0.c.a), Struct_3(false, countOneBits(0i), any(select(global0.a.a.zz, vec2<bool>(true, global0.c.a.x), global0.c.a.xy)), u_input.b, Struct_1(vec3<bool>(global0.a.a.x, global4[_wgslsmith_index_u32(u_input.c.x, 14u)], global4[_wgslsmith_index_u32(69305u, 14u)]), _wgslsmith_sub_i32(12956i, global0.a.b)))), global0.a));
    var var_0 = global2.x;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(exp2(global0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1625f, global2.x))) * global0.d.x), Struct_2(Struct_1(global0.c.a, -(u_input.a ^ u_input.b)), _wgslsmith_f_op_vec2_f32(global0.d + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.d * vec2<f32>(-185f, 888f))))), Struct_1(select(vec3<bool>(true, global0.c.a.x, false), select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(4294967295u, 14u)], false), vec3<bool>(global0.c.a.x, false, true), global0.a.a), all(vec3<bool>(false, global0.c.a.x, global0.a.a.x))), global0.c.b >> (u_input.c.x % 32u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(global0.b.x, global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1056f))))), -_wgslsmith_add_i32(u_input.b, ~u_input.a) <= 194i, Struct_3(all(!(!vec4<bool>(true, global0.a.a.x, global4[_wgslsmith_index_u32(u_input.c.x, 14u)], true))), i32(-1i) * -19579i, !(any(vec3<bool>(global0.c.a.x, true, true)) && all(vec3<bool>(true, true, true))), u_input.a, Struct_1(select(vec3<bool>(false, false, false), !global0.c.a, select(global0.a.a, vec3<bool>(global0.c.a.x, true, global0.c.a.x), global0.a.a)), -23558i)));
    var var_2 = 10244u;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, -604f, global2.x, var_1.c.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-248f, var_1.a, 302f, global0.d.x)), vec4<bool>(false, true, var_1.e.e.a.x, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, var_1.c.d.x, var_1.b)))))));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = i32(-1i) * -1i;
    var var_2 = u_input.c;
    let var_3 = 24142u;
    global4 = array<bool, 14>();
    var var_4 = reverseBits(-vec3<i32>(_wgslsmith_add_i32(var_0.d, i32(-1i) * -54757i), var_0.d, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d.x, -900f), _wgslsmith_f_op_vec2_f32(global0.d * global0.d), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d) * _wgslsmith_f_op_vec2_f32(floor(global2.zz))))));
}

