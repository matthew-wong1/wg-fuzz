struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: Struct_4;

var<private> global2: Struct_3 = Struct_3(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), Struct_1(4294967295u, 506f), Struct_1(4294967295u, 1152f));

var<private> global3: array<vec2<bool>, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    var var_0 = global1.a.x;
    let var_1 = select(vec2<bool>(false, global1.b.x), global1.b.xw, !(~max(u_input.c.x, u_input.c.x) <= arg_0.x));
    var_0 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-215f, _wgslsmith_f_op_f32(f32(-1f) * -943f), global1.b.x)));
    let var_2 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1186f, 966f, -925f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.b, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(global1.c.b.b * global2.b.b)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.a))))), select(select(global1.b, select(vec4<bool>(true, global1.b.x, var_1.x, var_1.x), !global1.b, select(global1.b.x, false, true)), vec4<bool>(any(var_1), true, true, true)), !select(!global1.b, !vec4<bool>(true, var_1.x, false, global1.b.x), !global1.b), u_input.c.x <= _wgslsmith_sub_i32(1i, 2147483647i)), global1.c);
    var_0 = 596f;
    return _wgslsmith_div_f32(global1.a.x, global2.c.b);
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1240f, arg_0), _wgslsmith_f_op_f32(-175f + global1.a.x))), _wgslsmith_f_op_f32(global1.c.a.b + _wgslsmith_f_op_f32(1903f * global1.a.x))), global1.a), vec4<bool>(global1.b.x, !(!global1.b.x), false, global1.b.x), Struct_2(global2.b, global2.c, Struct_1(global2.a.x, _wgslsmith_f_op_f32(exp2(global1.c.a.b))), _wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.c.x, firstTrailingBit(u_input.c.x), 1i, 1i), 28141u))));
    let var_0 = global1.c;
    var var_1 = abs(-4685i);
    let var_2 = global1.a;
    var var_3 = vec2<u32>(1u, ~_wgslsmith_dot_vec4_u32(global2.a, ~vec4<u32>(global2.a.x, 4294967295u, global1.c.a.a, global2.c.a)));
    return global1.c;
}

fn func_1(arg_0: i32) -> u32 {
    global3 = array<vec2<bool>, 4>();
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(global1.c.b.b, -1610f, global1.c.d)))), !(!global1.b), func_2(-834f));
    var var_0 = global1.a;
    global0 = array<vec3<i32>, 31>();
    global2 = Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c.a, max(1u, 4294967295u) | _wgslsmith_dot_vec4_u32(global2.a, global2.a), select(25697u, global1.c.c.a, all(vec2<bool>(true, false))), firstLeadingBit(6460u)), ~global2.a, global2.a), global1.c.c, Struct_1(_wgslsmith_mult_u32(~global1.c.c.a, ~u_input.b) << (((u_input.a.x >> (global1.c.a.a % 32u)) ^ (global1.c.c.a >> (global2.c.a % 32u))) % 32u), 1031f));
    return max(~0u, global2.c.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = 13000u;
    return global1.c.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    global2 = Struct_3(abs(abs(max(global2.a, vec4<u32>(41031u, global2.b.a, u_input.b, global1.c.a.a)) & global2.a)), Struct_1(u_input.a.x, -127f), Struct_1(abs(global2.a.x), -256f));
    global1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(global2.c.b - func_2(_wgslsmith_f_op_f32(f32(-1f) * -371f)).d), _wgslsmith_f_op_f32(-arg_1.b), global2.b.b), !select(!vec4<bool>(false, global1.b.x, arg_0.x, false), select(arg_0, vec4<bool>(arg_0.x, false, global1.b.x, true), select(vec4<bool>(arg_0.x, arg_0.x, global1.b.x, arg_0.x), global1.b, false)), vec4<bool>(all(vec2<bool>(global1.b.x, global1.b.x)), u_input.c.x >= -62495i, false, arg_0.x)), Struct_2(Struct_1(1u, 924f), func_4(global0[_wgslsmith_index_u32(u_input.b, 31u)], Struct_4(vec3<f32>(-1521f, arg_1.b, -112f), global1.b, Struct_2(global1.c.c, arg_1, Struct_1(1u, arg_1.b), arg_1.b))), Struct_1(4294967295u, -1014f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.b)), global2.b.b)));
    var var_0 = func_2(-798f).c;
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.a, select(u_input.a, global2.a.xzy, any(global1.b.ww))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-563f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.b.b, -720f, _wgslsmith_f_op_f32(var_0.b - 1000f))))));
    return func_4(_wgslsmith_mult_vec3_i32(abs(global0[_wgslsmith_index_u32(29342u, 31u)]), vec3<i32>(u_input.c.x, -reverseBits(u_input.c.x), -(u_input.c.x << (global1.c.b.a % 32u)))), Struct_4(global1.a, select(!select(vec4<bool>(true, true, false, false), arg_0, arg_0.x), select(select(global1.b, arg_0, vec4<bool>(false, global1.b.x, true, true)), select(global1.b, vec4<bool>(global1.b.x, arg_0.x, arg_0.x, arg_0.x), global1.b.x), arg_0.x), vec4<bool>(true, all(global1.b), select(false, global1.b.x, false), any(vec3<bool>(arg_0.x, global1.b.x, false)))), global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = func_5(vec4<bool>(global1.b.x, any(!global1.b), !all(global3[_wgslsmith_index_u32(20444u, 4u)]), global1.b.x), func_4(global0[_wgslsmith_index_u32(~(func_1(u_input.c.x) & firstLeadingBit(global1.c.a.a)), 31u)], Struct_4(global1.a, !select(global1.b, vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), global1.b), func_2(_wgslsmith_f_op_f32(round(508f))))));
    let var_2 = -680f;
    global1 = Struct_4(_wgslsmith_f_op_vec3_f32(max(global1.a, _wgslsmith_f_op_vec3_f32(trunc(global1.a)))), vec4<bool>(true, false, global1.b.x, abs(reverseBits(49329u)) < _wgslsmith_mod_u32(var_0, _wgslsmith_add_u32(var_0, global2.c.a))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) * -290f)));
    let x = u_input.a;
    s_output = StorageBuffer(min(min(~max(u_input.b, var_0), global2.b.a), ~0u), i32(-1i) * -14929i);
}

