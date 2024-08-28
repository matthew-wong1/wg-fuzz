struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<i32, 10>;

var<private> global3: Struct_1 = Struct_1(-465i);

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = !(!arg_0);
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.a))))), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(~global0.x, global0.x)), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.a.x, global4.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global4.a, !arg_0.x && true))));
    var_1 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.a.a.x)), _wgslsmith_div_f32(var_1.a.a.x, _wgslsmith_f_op_f32(ceil(-1206f))), var_1.a.a.x)), ~(~((u_input.a.yy << (vec2<u32>(0u, global0.x) % vec2<u32>(32u))) ^ ~vec2<u32>(4294967295u, 61631u))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1142f, 139f)) - var_1.a.a.x), var_1.a.a.x, _wgslsmith_f_op_f32(429f * _wgslsmith_f_op_f32(-global4.a.x)))));
    var var_2 = var_1.c;
    let var_3 = arg_0;
    return 103809u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_4(vec4<bool>(!(!(!global1.x)), global1.x, !global1.x, global1.x), !(!vec4<bool>(global1.x, !global1.x, !global1.x, false)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.a + global4.a)) * global4.a)), global1.xx, u_input.c);
    var var_1 = _wgslsmith_dot_vec3_i32(var_0.e, _wgslsmith_mod_vec3_i32(abs(~(~vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i))), ~(~vec3<i32>(1093i, u_input.c.x, var_0.e.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x - -1356f))), vec2<f32>(global4.a.x, _wgslsmith_f_op_f32(-var_0.c.a.x))));
    var var_3 = ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(vec3<bool>(false, global1.x, true)), 23028u) | countOneBits(reverseBits(u_input.b.x)), 10u)];
    let var_4 = Struct_3(var_0.c, min(min(vec2<u32>(u_input.d.x >> (0u % 32u), u_input.d.x), select(~vec2<u32>(global0.x, 20331u), u_input.d, global1.x)), u_input.a.yy), Struct_2(var_0.c.a));
    return Struct_1(-(_wgslsmith_div_i32(var_0.e.x, u_input.c.x) >> (var_4.b.x % 32u)));
}

fn func_1(arg_0: Struct_5, arg_1: u32) -> vec2<u32> {
    global2 = array<i32, 10>();
    global3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4.a, global4.a)))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f - -340f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-409f))))), false)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), global4.a.x, _wgslsmith_f_op_f32(abs(var_0.x)))));
    global3 = Struct_1(i32(-1i) * -2147483647i);
    return u_input.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_5, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) - _wgslsmith_f_op_f32(sign(global4.a.x)));
    let var_1 = -14904i;
    global1 = arg_2.b;
    var_0 = 1f;
    var var_2 = arg_1.c.a.x;
    return func_2(_wgslsmith_f_op_f32(abs(arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(global4.a * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.a.x, global4.a.x, global4.a.x), vec3<f32>(-2732f, 726f, global4.a.x))))), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, 751f, global4.a.x) + global4.a))), _wgslsmith_add_vec2_u32(~func_1(Struct_5(global3.a, vec3<bool>(global1.x, true, true), global1.x), 48151u), reverseBits(u_input.a.xz)), Struct_2(global4.a)), Struct_5(-global3.a, vec3<bool>(!all(vec2<bool>(global1.x, false)), all(!vec4<bool>(true, global1.x, global1.x, global1.x)), true), !(_wgslsmith_f_op_f32(global4.a.x + 887f) > _wgslsmith_f_op_f32(sign(-1213f)))), !any(!select(vec4<bool>(false, false, false, true), vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x))));
    let var_1 = -8410i;
    global3 = Struct_1(~u_input.c.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1395f, -218f))))), _wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1515f), _wgslsmith_f_op_f32(f32(-1f) * -2233f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1431f))), _wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1605f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, -149f, 415f, global4.a.x))))))));
    let var_3 = select(_wgslsmith_sub_vec2_i32(max(reverseBits(u_input.c.zx), vec2<i32>(-56342i, global3.a)), vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, var_0.a)), select(firstTrailingBit(u_input.c.yz), vec2<i32>(-1i, var_1), u_input.d.x == global0.x) | ~max(u_input.c.xx, u_input.c.xx), all(select(vec3<bool>(global1.x, global1.x, global1.x), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, true), false), select(global1.x, false, true)))) << (~vec2<u32>(24115u, 56531u) % vec2<u32>(32u));
    global4 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-145f, 1228f, var_2.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, -1044f, var_2.x)), _wgslsmith_f_op_vec3_f32(step(var_2.wzz, var_2.wxz)))))));
    var var_4 = ~_wgslsmith_clamp_u32(78022u, ~countOneBits(_wgslsmith_mod_u32(1942u, 1930u)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<i32>(10857i, global3.a, func_2(global4.a.x).a));
}

