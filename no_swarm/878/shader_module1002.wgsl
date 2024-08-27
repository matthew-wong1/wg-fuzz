struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 5>;

var<private> global2: array<vec2<f32>, 1>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), -368f, 1527f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -673f))))));
    let var_1 = select(select(vec2<bool>(true, true), vec2<bool>(511f > global0.a.x, 141f <= _wgslsmith_f_op_f32(abs(global0.a.x))), true), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), vec2<bool>(((u_input.a << (252u % 32u)) << (u_input.a % 32u)) <= 1u, !any(vec2<bool>(true, true))));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 5u)];
    global0 = var_0;
    global1 = array<Struct_4, 5>();
    return 0u;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = reverseBits(-33559i);
    var var_1 = Struct_3(Struct_2(global0.a.wy, ~(-var_0), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))));
    var var_2 = var_1.a;
    var_1 = Struct_3(Struct_2(global0.a.xz, _wgslsmith_mult_i32(reverseBits(-1i), -5484i), !vec3<bool>(var_1.a.c.x | false, true, all(var_1.a.c))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 395f));
    return func_3();
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = ~arg_0.yzw;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * global0.a) * vec4<f32>(321f, arg_1.x, global0.a.x, 1882f)))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a.yz - vec2<f32>(-829f, -759f))))) + vec2<f32>(1000f, arg_1.x)), u_input.d, select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)))), select(vec3<bool>(32698u > var_0.x, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), true));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x * -271f), -262f, var_2.a.x, _wgslsmith_f_op_f32(-var_1.a.x))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.a.ywy)) * arg_1), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.x, var_2.a.x, _wgslsmith_f_op_f32(ceil(-533f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -3518f), global0.a.x)))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_1.a)));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> Struct_2 {
    global0 = func_4(vec4<u32>(u_input.b, u_input.b, max(1u, ~func_2(-155f)), 139377u), global0.a.yxy);
    global1 = array<Struct_4, 5>();
    return arg_1.a;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<i32> {
    global2 = array<vec2<f32>, 1>();
    let var_0 = func_1(all(!vec4<bool>(true, true, all(vec3<bool>(false, true, true)), arg_3.c.x)), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-165f, 839f) * arg_3.a), ~1i, arg_1.c)), Struct_4(Struct_3(arg_3)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), 471f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-214f)))));
    var var_2 = vec3<i32>(-_wgslsmith_add_i32(-1i, arg_1.b) ^ _wgslsmith_add_i32(-var_0.b, -1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_1.b, 0i, -1i), ~vec4<i32>(arg_2.x, var_0.b, arg_1.b, u_input.d)), vec4<i32>(_wgslsmith_sub_i32(arg_3.b, arg_2.x), arg_3.b, ~arg_2.x, -21057i)), 2897i) >> ((u_input.c.wzz & _wgslsmith_mult_vec3_u32(vec3<u32>(func_2(var_1.x), ~1u, ~u_input.a), u_input.c.xyx ^ u_input.c.wxy)) % vec3<u32>(32u));
    var var_3 = func_1(all(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(var_0.c.x, true, arg_3.c.x, arg_3.c.x), !vec4<bool>(var_0.c.x, true, var_0.c.x, false), select(vec4<bool>(arg_3.c.x, true, true, true), vec4<bool>(var_0.c.x, var_0.c.x, false, false), vec4<bool>(arg_1.c.x, true, arg_3.c.x, arg_1.c.x))), !select(vec4<bool>(arg_3.c.x, arg_1.c.x, var_0.c.x, false), vec4<bool>(true, var_0.c.x, var_0.c.x, true), arg_1.c.x))), Struct_3(func_1(arg_1.c.x, Struct_3(func_1(false, Struct_3(arg_3), global1[_wgslsmith_index_u32(u_input.b, 5u)])), global1[_wgslsmith_index_u32(0u, 5u)])), global1[_wgslsmith_index_u32(u_input.a, 5u)]);
    return vec4<i32>(u_input.d, -2147483647i, -2147483647i, -1i);
}

fn func_6(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_3 {
    global2 = array<vec2<f32>, 1>();
    global2 = array<vec2<f32>, 1>();
    var var_0 = arg_2;
    var var_1 = select(!all(vec3<bool>(true | var_0.c.x, !arg_2.c.x, true)), -404f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x)))), !var_0.c.x);
    var var_2 = abs(_wgslsmith_mult_vec2_i32(max(func_5(arg_3.x, Struct_2(vec2<f32>(arg_2.a.x, global0.a.x), var_0.b, var_0.c), arg_0.yx, arg_2).wx, arg_0.zy << (arg_3.yz % vec2<u32>(32u))), arg_0.zw)) & _wgslsmith_clamp_vec2_i32(arg_0.xw, vec2<i32>(~1i, -u_input.d), arg_0.xx);
    return Struct_3(func_1(!arg_2.c.x, Struct_3(arg_2), Struct_4(Struct_3(Struct_2(vec2<f32>(arg_2.a.x, 727f), -1i, arg_2.c)))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = vec2<u32>(u_input.a, 22267u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(3187f, 178f, arg_1.a.a.x, arg_1.a.a.x) * vec4<f32>(1909f, -307f, 836f, 353f))), func_6(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.b, 2147483647i, -36806i, arg_1.a.b), vec4<i32>(arg_1.a.b, arg_0.b, 13589i, 0i)), 1u, func_1(false, Struct_3(Struct_2(vec2<f32>(-224f, 2063f), u_input.d, arg_1.a.c)), global1[_wgslsmith_index_u32(var_0.x, 5u)]), select(u_input.c, u_input.c, true)).a.c.x)), global0.a, any(!vec4<bool>(arg_0.c.x, false, false, arg_1.a.c.x)))));
    global2 = array<vec2<f32>, 1>();
    global1 = array<Struct_4, 5>();
    var_1 = func_4(abs(abs(~u_input.c)), vec3<f32>(1257f, -1239f, arg_0.a.x));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.a))));
    let var_1 = func_7(Struct_2(global2[_wgslsmith_index_u32(~select(~u_input.b, 4294967295u, true), 1u)], abs(0i), vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))), func_6(reverseBits(func_5(reverseBits(1u), Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], u_input.d, vec3<bool>(true, false, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(-1i, -45726i)), func_1(true, Struct_3(Struct_2(vec2<f32>(287f, 419f), -34673i, vec3<bool>(true, false, true))), Struct_4(Struct_3(Struct_2(global2[_wgslsmith_index_u32(57852u, 1u)], u_input.d, vec3<bool>(true, true, false))))))), ~(~(~u_input.c.x)), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -198f) + vec2<f32>(global0.a.x, global0.a.x)), u_input.d, vec3<bool>(true, true, true)), _wgslsmith_sub_vec4_u32(u_input.c, u_input.c) | _wgslsmith_sub_vec4_u32(u_input.c, reverseBits(vec4<u32>(u_input.c.x, 2782u, 3892u, u_input.c.x)))), ~countOneBits(~vec3<u32>(1u, u_input.b, u_input.b)));
    let var_2 = func_7(Struct_2(_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(abs(9006u), 1u)] - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, -249f))))), -2147483647i, var_1.c), Struct_3(func_1(var_1.c.x, func_6(vec4<i32>(u_input.d, u_input.d, 27244i, 10049i) << (u_input.c % vec4<u32>(32u)), _wgslsmith_div_u32(u_input.b, u_input.c.x), Struct_2(global0.a.xx, -42945i, var_1.c), u_input.c ^ vec4<u32>(0u, u_input.a, 90333u, 1u)), Struct_4(Struct_3(var_1)))), vec3<u32>(~(~4294967295u), min(~u_input.b, u_input.a), 0u) << (~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a), u_input.c.xwy, vec3<u32>(u_input.b, 0u, u_input.b)), vec3<u32>(21787u, 0u, 86315u)) % vec3<u32>(32u))).b;
    var var_3 = func_6(~_wgslsmith_clamp_vec4_i32(vec4<i32>(func_6(vec4<i32>(u_input.d, 40963i, u_input.d, 1i), 35815u, var_1, u_input.c).a.b, 0i, var_1.b & var_2, var_1.b), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, var_2, -15988i, u_input.d), vec4<i32>(2147483647i, var_2, var_1.b, -2147483647i)), firstLeadingBit(vec4<i32>(0i, 15400i, -2147483647i, -1i))), 1u, func_1(true, Struct_3(var_1), Struct_4(Struct_3(Struct_2(vec2<f32>(-838f, -131f), u_input.d, var_1.c)))), vec4<u32>(firstLeadingBit(u_input.c.x), firstLeadingBit(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, 4294967295u, u_input.c.x), u_input.c.zxz), ~vec3<u32>(0u, 4294967295u, u_input.b))), ~(_wgslsmith_clamp_u32(u_input.b, 36742u, 33372u) | ~u_input.c.x), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(21314i, var_1.b), var_1.b), _wgslsmith_div_f32(var_3.a.a.x, _wgslsmith_f_op_f32(max(1f, 2200f))), select(~vec3<u32>(u_input.a, u_input.a, 1u), u_input.c.yyy & ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, 72786u), vec3<u32>(58615u, u_input.a, u_input.a)), var_3.a.c.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.b, u_input.a), u_input.c)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), u_input.c.zwx))));
}

