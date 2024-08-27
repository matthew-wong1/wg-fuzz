struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 4294967295u, 0u);

var<private> global1: array<f32, 16>;

var<private> global2: array<vec3<u32>, 18>;

var<private> global3: f32 = 205f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-298f * global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(0u, max(4294967295u, u_input.e.x))), 16u)]) - -1183f);
    global1 = array<f32, 16>();
    global3 = _wgslsmith_f_op_f32(-arg_2.x);
    global2 = array<vec3<u32>, 18>();
    global0 = u_input.b;
    return global0.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>, arg_3: i32) -> vec3<i32> {
    global2 = array<vec3<u32>, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(92076u, 16u)] * -1291f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~global0.x, 16u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 16u)])) + arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-764f, 809f)), arg_2.x, all(vec3<bool>(true, arg_0.a, true))))), _wgslsmith_f_op_f32(floor(1382f))));
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 16u)] + global1[_wgslsmith_index_u32(4294967295u, 16u)]), 1461f));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-657f, global1[_wgslsmith_index_u32(5845u, 16u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 16u)] * _wgslsmith_f_op_f32(f32(-1f) * -882f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.x)))))), _wgslsmith_f_op_f32(var_0.x - 326f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), -684f)), _wgslsmith_f_op_f32(f32(-1f) * -199f));
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, ~(~u_input.b.x), ~(~u_input.b.x) >> (_wgslsmith_mod_u32(~global0.x, u_input.a) % 32u)), vec4<u32>(~global0.x, 0u, ~(~_wgslsmith_add_u32(global0.x, 0u)), u_input.e.x));
    return -max(vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, arg_3), vec2<i32>(20508i, 35388i))), 0i, -1225i), u_input.c);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_3);
    let var_1 = global0.xxz;
    var var_2 = vec2<u32>(abs(_wgslsmith_mult_u32(global0.x, global0.x)), global0.x);
    var var_3 = _wgslsmith_mod_vec3_i32(-func_3(arg_1, _wgslsmith_mod_i32(u_input.d.x, 1i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-690f, 284f, arg_2.x, -348f), arg_2, vec4<bool>(true, true, arg_3, false))), ~u_input.c.x), vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, 1i), u_input.d.x ^ 45714i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d.x), vec2<i32>(2147483647i, u_input.c.x))) >> (~vec3<u32>(1u, u_input.e.x, global0.x) % vec3<u32>(32u))) >> (firstTrailingBit(u_input.b.yzx) % vec3<u32>(32u));
    return Struct_1(true);
}

fn func_4(arg_0: Struct_1) -> u32 {
    global3 = _wgslsmith_f_op_f32(sign(-680f));
    var var_0 = _wgslsmith_clamp_vec3_i32(func_3(func_2(false, Struct_1(arg_0.a), vec4<f32>(1176f, 640f, -141f, 1502f), true), _wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.xy), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 16u)], 258f, global1[_wgslsmith_index_u32(u_input.e.x, 16u)], 791f) + vec4<f32>(827f, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(u_input.a, 16u)], 692f)), -u_input.c.x) << (firstLeadingBit(abs(u_input.b.zxy)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(abs(u_input.c), vec3<i32>(u_input.d.x, 2147483647i, u_input.d.x)), vec3<i32>(u_input.d.x, u_input.d.x, ~1i)), abs(u_input.d & vec3<i32>(u_input.d.x, u_input.d.x, -2147483647i))) >> (~global0.ywx % vec3<u32>(32u));
    var var_1 = Struct_1(true);
    var_1 = Struct_1(any(!(!(!vec3<bool>(true, var_1.a, var_1.a)))));
    var var_2 = 5338u;
    return ~(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(u_input.b) >> (vec4<u32>(~4676u, func_1(u_input.c.zy, 0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(163f, global1[_wgslsmith_index_u32(u_input.b.x, 16u)]) + vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], 790f))) & abs(u_input.a ^ global0.x), 1u, func_4(func_2(false, Struct_1(false), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(37518u, 16u)], global1[_wgslsmith_index_u32(27766u, 16u)], 550f))), true))) % vec4<u32>(32u));
    var var_0 = vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 16u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -680f)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(314f, global1[_wgslsmith_index_u32(0u, 16u)]))))));
    global0 = u_input.b;
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(_wgslsmith_mod_u32(global0.x, 1u), global0.x | 59769u)) > firstLeadingBit(min(max(u_input.a, u_input.b.x), ~55187u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a, global0.x << (u_input.b.x % 32u), u_input.b.x << (u_input.a % 32u), ~1040u)), vec4<u32>(global0.x, global0.x, global0.x, u_input.b.x)));
}

