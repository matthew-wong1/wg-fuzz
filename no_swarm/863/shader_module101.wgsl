struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(55334u, 32696u, 0u, 1u), vec4<u32>(4294967295u, 28685u, 4294967295u, 11716u), vec4<u32>(0u, 20575u, 4294967295u, 7082u), vec4<u32>(1u, 32510u, 0u, 1u), vec4<u32>(0u, 6423u, 1u, 4294967295u), vec4<u32>(4294967295u, 15607u, 4987u, 4294967295u), vec4<u32>(20007u, 1u, 4294967295u, 14946u));

var<private> global1: array<Struct_1, 15>;

var<private> global2: vec3<f32> = vec3<f32>(-561f, -1000f, -1549f);

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), true, 72072i, vec3<u32>(0u, 59842u, 0u), vec2<u32>(4294967295u, 0u));

var<private> global4: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> bool {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.b, u_input.b)), ~u_input.b);
    global1 = array<Struct_1, 15>();
    let var_2 = reverseBits(_wgslsmith_dot_vec3_u32(max(abs(global3.d), ~(~vec3<u32>(u_input.a.x, 16138u, global3.d.x))), firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, u_input.a.x, 1u), global3.d))));
    return !any(!global3.a.zzw);
}

fn func_1(arg_0: vec2<f32>) -> vec3<f32> {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -1543f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(195f)) * -448f))));
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + vec2<f32>(-2659f, global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x))))) * vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), -1722f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(612f, global2.x)) - 1605f)))));
    global1 = array<Struct_1, 15>();
    let var_1 = _wgslsmith_sub_vec3_i32(firstTrailingBit(~u_input.b.wzy), u_input.b.www);
    var var_2 = !func_2(_wgslsmith_f_op_f32(f32(-1f) * -242f), !(!global3.a.yy)) | global3.b;
    return vec3<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(sign(818f))), var_0.x, _wgslsmith_f_op_f32(-var_0.x));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-988f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)), _wgslsmith_f_op_f32(-global2.x))), global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-536f))))))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(global2.x, _wgslsmith_div_f32(global2.x, var_0.x)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -187f), 358f);
    var var_2 = global4[_wgslsmith_index_u32(~abs(24139u), 1u)];
    var var_3 = Struct_1(var_2.a, all(select(var_2.a.wx, select(var_2.a.wy, arg_0.a.wz, !vec2<bool>(false, arg_0.b)), all(vec3<bool>(true, true, true)))), arg_0.c, global3.d | var_2.d, ~(~firstLeadingBit(firstLeadingBit(vec2<u32>(arg_0.d.x, arg_0.d.x)))));
    let var_4 = var_1.yxw;
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, firstTrailingBit(7817u) == 1u, true);
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1772f, global2.x)), vec3<f32>(global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global2.yz)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -889f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-540f, global2.x, global2.x))))), !global3.a.zwx));
    var var_1 = var_0.x;
    var_0 = vec3<bool>(!(!global3.b) | false, global3.a.x, any(select(global3.a, vec4<bool>(func_3(global4[_wgslsmith_index_u32(u_input.a.x, 1u)]), all(global3.a.zyw), global3.b, var_0.x != global3.a.x), !(!global3.a))));
    var var_2 = 10292u;
    let var_3 = _wgslsmith_mult_u32(5095u, ~u_input.d);
    var var_4 = Struct_1(vec4<bool>(all(select(!global3.a, !vec4<bool>(var_0.x, true, false, false), global3.a)), true, !(u_input.c == _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), all(select(!global3.a.yy, vec2<bool>(var_0.x, true), any(vec4<bool>(global3.a.x, global3.b, global3.a.x, true))))), global3.a.x, 16828i, _wgslsmith_sub_vec3_u32(vec3<u32>(var_3, ~(22450u << (var_3 % 32u)), _wgslsmith_add_u32(var_3, 4294967295u)), countOneBits(global3.d)), u_input.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1737f))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - global2.x), -105f), global2.x, var_0.x == false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -841f)), global2.x), _wgslsmith_f_op_f32(ceil(1501f)), global2.x), countOneBits(~countOneBits(vec2<u32>(var_3, 4294967295u) >> (global3.d.zx % vec2<u32>(32u)))));
}

