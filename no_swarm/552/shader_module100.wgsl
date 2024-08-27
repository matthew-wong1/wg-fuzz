struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(46975i, 1i);

var<private> global1: Struct_3 = Struct_3(1i, 16229u, vec4<i32>(-34324i, 1i, 0i, 0i), Struct_2(Struct_1(0u, vec4<bool>(false, false, true, true)), 10443u, 234f, vec3<f32>(1000f, -432f, 1157f)), Struct_1(7794u, vec4<bool>(true, true, false, true)));

var<private> global2: array<vec2<f32>, 25>;

var<private> global3: Struct_1;

var<private> global4: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    var var_0 = true;
    let var_1 = -33445i;
    global2 = array<vec2<f32>, 25>();
    let var_2 = global3.b.x;
    var var_3 = Struct_3(var_1, ~global1.e.a, vec4<i32>(min(select(var_1, -1i, all(vec3<bool>(global3.b.x, false, false))), reverseBits(u_input.b.x)), max(2147483647i, 1i), -2147483647i, u_input.a << (select(_wgslsmith_add_u32(34963u, global1.b), 18777u, all(arg_3.xwy)) % 32u)), Struct_2(global1.d.a, global3.a & _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a, 21027u, arg_0.a, arg_0.a), vec4<u32>(0u, global3.a, global3.a, arg_0.a) ^ vec4<u32>(6052u, arg_0.a, global1.d.a.a, 4294967295u)), -113f, global1.d.d), Struct_1(select(9996u, firstTrailingBit(~global3.a), !(!global4.x)), vec4<bool>(arg_3.x, any(arg_0.b), _wgslsmith_f_op_f32(round(global1.d.c)) <= _wgslsmith_f_op_f32(round(arg_2)), global4.x)));
    return 1033f;
}

fn func_2() -> bool {
    let var_0 = !vec2<bool>(!global3.b.x, all(select(global4.yy, global3.b.ww, vec2<bool>(true, false))) || true);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.d.c)));
    let var_2 = global4.zz;
    var var_3 = global4.xy;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-306f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global1.d.a, false, global1.d.d.x, global3.b)), _wgslsmith_f_op_f32(min(var_1, -676f)))))));
    return global3.b.x;
}

fn func_1() -> Struct_3 {
    let var_0 = global1.d.d.x;
    var var_1 = ~_wgslsmith_div_vec2_u32(~(~vec2<u32>(8260u, 0u)), abs(~(~vec2<u32>(global3.a, global1.d.a.a))));
    global2 = array<vec2<f32>, 25>();
    global3 = Struct_1(4294967295u, global1.e.b);
    global4 = select(vec3<bool>(all(vec2<bool>(true, 23705u >= global1.d.b)), all(global3.b) && global1.d.a.b.x, func_2()), select(select(!select(vec3<bool>(true, global4.x, global1.d.a.b.x), vec3<bool>(global4.x, global3.b.x, global1.e.b.x), global3.b.wyz), select(vec3<bool>(true, global3.b.x, true), vec3<bool>(global3.b.x, false, true), select(global1.e.b.www, vec3<bool>(true, false, false), global3.b.wyx)), true), !vec3<bool>(true, true, all(global3.b.yx)), !(!vec3<bool>(true, true, global1.d.a.b.x))), global4.x & any(global3.b.zz));
    return Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-10931i, 2147483647i, -(i32(-1i) * -2147483647i), u_input.b.x), vec4<i32>(abs(u_input.b.x), -2147483647i, ~(global1.a << (0u % 32u)), abs(global1.a >> (global3.a % 32u)))), global3.a, select(global1.c, select(global1.c, -reverseBits(global1.c), global1.d.a.b), true), Struct_2(global1.d.a, 4294967295u | ~abs(var_1.x), _wgslsmith_f_op_f32(func_3(global1.d.a, all(vec2<bool>(global3.b.x, global1.e.b.x)), global1.d.c, vec4<bool>(any(global1.e.b.wxx), !global3.b.x, func_2(), !global1.e.b.x))), global1.d.d), Struct_1(global3.a, vec4<bool>(func_2(), global1.d.c <= 401f, global4.x, true)));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(global2[_wgslsmith_index_u32(global1.d.b, 25u)]));
    global4 = select(!global3.b.xyy, !(!select(global3.b.wyz, arg_1.d.a.b.wxz, any(vec3<bool>(true, false, global1.e.b.x)))), global3.b.x);
    var_0 = _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_f_op_vec2_f32(func_1().d.d.zx - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_1.d.d.xx, _wgslsmith_div_vec2_f32(arg_1.d.d.zx, global2[_wgslsmith_index_u32(global1.b, 25u)])), _wgslsmith_f_op_vec2_f32(-arg_1.d.d.yx), arg_1.a > _wgslsmith_div_i32(global1.c.x, global1.a)))));
    var var_1 = arg_1.d.c;
    var var_2 = Struct_3(u_input.b.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(~1u, ~arg_1.d.b)), firstTrailingBit(vec2<u32>(~0u, global1.e.a))), reverseBits(vec4<i32>(global1.c.x ^ (i32(-1i) * -1i), arg_1.c.x, select(global1.a, 1i, true), ~arg_0)), Struct_2(Struct_1(arg_1.e.a, arg_1.e.b), global1.d.b ^ 0u, -642f, global1.d.d), Struct_1(~(~(global1.b >> (1u % 32u))), vec4<bool>(_wgslsmith_f_op_f32(round(global1.d.c)) < -1000f, true || !global1.e.b.x, true, global1.e.b.x)));
    return _wgslsmith_f_op_f32(trunc(993f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(-1i, func_1()));
    let var_1 = global1.d.a;
    let var_2 = -125f;
    global0 = -(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.x, global1.a), global1.c.zx), global1.a) & global1.c.xx);
    global1 = Struct_3(2147483647i, _wgslsmith_sub_u32(global1.b, var_1.a), vec4<i32>(~func_1().c.x, global1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-global1.c.x, firstLeadingBit(2147483647i), ~global1.c.x, global1.a), global1.c), global0.x), global1.d, global1.d.a);
    var var_3 = func_1();
    let var_4 = i32(-1i) * -(global0.x | ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(var_3.a, 0i), -8974i)), abs(_wgslsmith_div_vec2_i32(u_input.b, var_3.c.xx) & _wgslsmith_sub_vec2_i32(vec2<i32>(global1.c.x, var_3.a), global1.c.xz))), 228f);
}

