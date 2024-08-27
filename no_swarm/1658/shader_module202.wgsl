struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 10>;

var<private> global2: vec4<f32> = vec4<f32>(1246f, 850f, 646f, 593f);

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.a)) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global3.a.x, global2.x), vec3<f32>(arg_0, arg_0, 1168f))), vec3<f32>(arg_0, 161f, -926f)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1217f, 322f, global3.a.x) + global3.a)))), vec2<bool>(true, global3.b.x), vec2<bool>(true, !global3.c.x));
    global3 = Struct_1(global3.a, select(global3.b, global3.c, global3.b.x), global3.b);
    global3 = Struct_1(global3.a, vec2<bool>(any(vec3<bool>(true, true, true)), global0.x), global3.b);
    let var_0 = vec2<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a & u_input.a), abs(u_input.a ^ ~(4294967295u >> (0u % 32u))));
    let var_1 = _wgslsmith_f_op_f32(floor(global2.x));
    return global3.b;
}

fn func_2() -> Struct_1 {
    let var_0 = select(max(vec3<u32>(0u, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(1u, 4294967295u, u_input.a)), vec3<u32>(u_input.a, 4294967295u, u_input.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(17997u, 0u, 0u), vec3<u32>(69091u, u_input.a, 4294967295u)) % vec3<u32>(32u)))), min(vec3<u32>(max(~u_input.a, u_input.a), u_input.a, 2885u >> (1u % 32u)), _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(0u, u_input.a, 1u)), ~vec3<u32>(33140u, 20673u, u_input.a) >> (~vec3<u32>(61287u, 0u, u_input.a) % vec3<u32>(32u)))), true);
    let var_1 = ~_wgslsmith_div_i32(-33350i, 29503i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a.x, global2.x))), -1000f, _wgslsmith_f_op_f32(floor(global2.x))) + vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), -371f, global2.x)), !select(!global3.b, func_3(_wgslsmith_f_op_f32(global2.x * global3.a.x)), vec2<bool>(!global3.c.x, false && global3.b.x)), select(vec2<bool>(true, global3.c.x), vec2<bool>(false || select(true, false, true), false), global0.x));
    let var_3 = !(!vec3<bool>(!var_2.b.x && (var_2.a.x <= 567f), !func_3(-296f).x, true));
    var var_4 = var_2.a.xz;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global3.a))) + vec3<f32>(552f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(global3.a.x - var_4.x)))), !vec2<bool>(var_2.b.x, var_3.x), vec2<bool>(global0.x, !select(!var_2.c.x, select(global0.x, false, global0.x), false | global0.x)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(arg_0.a, global3.c.x);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, 1167f, var_0.a.a.x, arg_0.a.a.x)));
    var var_1 = ~global1[_wgslsmith_index_u32(25595u, 10u)];
    global3 = var_0.a;
    var var_2 = func_2();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(581f, global3.a.x, global3.a.x), vec3<f32>(555f, global2.x, global3.a.x))) * global2.yzx), !(!global3.b), !(!global3.b)), !any(global3.b)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1132f, -520f, _wgslsmith_div_f32(-1000f, global2.x), _wgslsmith_f_op_f32(-global3.a.x))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.a.x, 758f, global2.x))))))));
    global1 = array<i32, 10>();
    global2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1597f, var_0.a.x))) - _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(min(global3.a.x, 559f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(137f, -1000f)), var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2111f)), global3.a.x)));
    var var_1 = ~(-_wgslsmith_sub_i32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-780f))), ~32642u, vec3<i32>(-36618i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(58842u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], 25563i, global1[_wgslsmith_index_u32(48826u, 10u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 10u)], -1i, global1[_wgslsmith_index_u32(48874u, 10u)], global1[_wgslsmith_index_u32(u_input.a, 10u)])) ^ _wgslsmith_clamp_i32(-2147483647i, global1[_wgslsmith_index_u32(13860u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]), reverseBits(i32(-1i) * -1i)), max(26910i, global1[_wgslsmith_index_u32(~reverseBits(u_input.a), 10u)])));
}

