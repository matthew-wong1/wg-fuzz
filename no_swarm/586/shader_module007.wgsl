struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: array<bool, 7>;

var<private> global3: i32 = -1i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    global0 = array<Struct_1, 10>();
    global3 = -firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, u_input.b), ~vec2<i32>(-10776i, u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(15154i, u_input.b), vec2<i32>(u_input.b, u_input.b)) & _wgslsmith_div_vec2_i32(vec2<i32>(-80284i, u_input.b), vec2<i32>(2147483647i, 36179i))));
    return _wgslsmith_f_op_f32(f32(-1f) * -748f);
}

fn func_3() -> f32 {
    var var_0 = reverseBits(~vec2<i32>(~u_input.b, -u_input.b)) & vec2<i32>(countOneBits(_wgslsmith_sub_i32(i32(-1i) * -8732i, -22449i)), ~(u_input.b | u_input.b));
    var var_1 = vec2<i32>(u_input.b, var_0.x);
    let var_2 = all(select(!vec2<bool>(global2[_wgslsmith_index_u32(~u_input.a, 7u)], false), select(vec2<bool>(all(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(1u, 7u)])), !global2[_wgslsmith_index_u32(u_input.a, 7u)]), !(!vec2<bool>(global2[_wgslsmith_index_u32(3799u, 7u)], false)), !select(vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(10044u, 7u)]), true)), any(select(!vec4<bool>(global2[_wgslsmith_index_u32(13945u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], false), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 7u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], false, false, global2[_wgslsmith_index_u32(u_input.a, 7u)]), true), global2[_wgslsmith_index_u32(u_input.a, 7u)]))));
    return 1820f;
}

fn func_2() -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~33338u, 10u)];
    var var_1 = _wgslsmith_f_op_f32(var_0.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-702f))))), _wgslsmith_f_op_f32(func_3())));
    return Struct_1(vec3<u32>(abs(_wgslsmith_mod_u32(var_0.a.x >> (0u % 32u), _wgslsmith_div_u32(var_0.a.x, u_input.a))), ~13554u, ~min(var_0.a.x | var_0.a.x, _wgslsmith_dot_vec3_u32(var_0.a, var_0.a))), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1060f, 255f) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3())))), any(!vec4<bool>(true, false, global2[_wgslsmith_index_u32(4294967295u, 7u)], true)))), global1[_wgslsmith_index_u32(u_input.a, 23u)] & vec3<i32>(-(var_0.c.x | u_input.b), min(var_0.c.x ^ 0i, _wgslsmith_div_i32(-20816i, -1i)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.b), u_input.b, var_0.c.x)), vec4<i32>(-var_0.d.x, var_0.d.x, -abs(~var_0.c.x), 12195i), any(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~4294967295u), 7u)], false, !(true & var_0.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 7>();
    global0 = array<Struct_1, 10>();
    let var_0 = -min(-(~4219i), _wgslsmith_sub_i32(u_input.b, 31313i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~firstLeadingBit(~vec3<u32>(37412u, 59325u, 4294967295u)), 1u)));
    let var_2 = func_2();
    let var_3 = Struct_2(select(countOneBits(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(u_input.a, var_2.a.x, 1u, 1u)))), ~(~(~vec4<u32>(4294967295u, 5184u, var_2.a.x, var_2.a.x))), true), func_2(), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(682f, var_2.b, var_2.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_2.b, var_2.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(356f, var_2.b, var_2.b))))))));
    var var_4 = vec2<bool>(any(!vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(15688u, 34600u, 1u), var_3.a.zxw), 7u)], global2[_wgslsmith_index_u32(~29103u, 7u)], all(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 7u)])))), !any(vec2<bool>(true, true)) && !global2[_wgslsmith_index_u32(~abs(4294967295u), 7u)]);
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(max(u_input.a, ~(~u_input.a)), ~(~var_2.a.x >> (_wgslsmith_sub_u32(var_3.b.a.x, 25212u) % 32u))));
}

