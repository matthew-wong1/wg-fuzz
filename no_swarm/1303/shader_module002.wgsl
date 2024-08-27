struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 15>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = !select(global2.yw, !(!global2.yz), all(vec4<bool>(true, all(vec4<bool>(global2.x, false, global2.x, true)), false, !global2.x)));
    global0 = Struct_1(abs(global0.a), vec3<f32>(global1[_wgslsmith_index_u32((~global0.a.x ^ global0.a.x) ^ global0.a.x, 15u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), global1[_wgslsmith_index_u32(~global0.a.x, 15u)]) - 822f), _wgslsmith_f_op_f32(global0.b.x - 951f)));
    global2 = !vec4<bool>(true, var_0.x, var_0.x, !all(select(vec4<bool>(var_0.x, var_0.x, false, global2.x), vec4<bool>(var_0.x, true, true, global2.x), false)));
    let var_1 = Struct_2(global2.xw, Struct_1(~vec3<u32>(~2017u, _wgslsmith_mult_u32(global0.a.x, global0.a.x), _wgslsmith_div_u32(60390u, global0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b, global0.b))), vec4<bool>(true, false, global2.x & (global1[_wgslsmith_index_u32(~global0.a.x, 15u)] != 735f), 1u >= ~global0.a.x));
    let var_2 = any(select(var_1.c, var_1.c, true | var_1.c.x));
    return firstTrailingBit(4294967295u);
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1584f * -1000f)));
    global2 = vec4<bool>(all(select(!vec4<bool>(false, global2.x, arg_0.a.x, false), vec4<bool>(all(global2.zxx), true, any(vec4<bool>(true, true, global2.x, arg_0.a.x)), any(vec4<bool>(false, global2.x, arg_0.a.x, true))), !(global2.x || true))), true, true, !(all(vec3<bool>(global2.x, false, arg_0.a.x)) && true));
    var var_1 = func_3();
    return global2.x;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = vec4<bool>(any(!(!vec2<bool>(global2.x, global2.x))), global2.x, !func_2(Struct_3(!vec3<bool>(global2.x, true, false))), 1i < _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(-427i, u_input.a), u_input.a ^ u_input.a), firstLeadingBit(firstLeadingBit(-2147483647i))));
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1170f, 100f, 1166f, global1[_wgslsmith_index_u32(0u, 15u)]))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-389f, 674f, global0.b.x, global1[_wgslsmith_index_u32(global0.a.x, 15u)]))))))));
    let var_3 = -u_input.a | abs(0i);
    let var_4 = firstLeadingBit(-19074i);
    return Struct_2(select(!vec2<bool>(!var_0.x, any(vec3<bool>(var_0.x, var_0.x, false))), !var_0.zz, vec2<bool>(false, var_0.x)), Struct_1(abs(abs(global0.a)) << (vec3<u32>(_wgslsmith_sub_u32(4294967295u, 4294967295u), func_3(), 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(160f, -345f, var_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, -338f, var_2.x) * var_2.xyz))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, arg_0, 266f))), (true & var_0.x) | all(vec2<bool>(false, global2.x))))), vec4<bool>(func_2(Struct_3(global2.yzx)), false, false, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1[_wgslsmith_index_u32(4294967295u, 15u)]);
    var var_1 = Struct_3(!select(vec3<bool>(all(vec4<bool>(true, var_0.a.x, var_0.a.x, false)), 4294967295u >= var_0.b.a.x, var_0.c.x || true), vec3<bool>(true, var_0.c.x, global2.x & var_0.c.x), select(-390f > global0.b.x, global2.x, !global2.x)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2199f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * global0.b.x) * _wgslsmith_f_op_f32(round(global0.b.x))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(53063u, global0.a.x, 41069u), select(var_0.b.a.x, 0u, true)), 15u)], global2.x)))), -855f, var_0.b.b.x);
    global2 = vec4<bool>(false, false, func_2(Struct_3(var_0.c.yxx)), ~(i32(-1i) * -2147483647i) < min(firstLeadingBit(u_input.a ^ u_input.a), reverseBits(_wgslsmith_add_i32(u_input.a, u_input.a))));
    let var_3 = ~(_wgslsmith_clamp_i32(u_input.a, ~u_input.a, _wgslsmith_sub_i32(firstLeadingBit(-1i), _wgslsmith_clamp_i32(u_input.a, 2147483647i, -2147483647i))) >> (global0.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(38552u, ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 5296i) & vec3<i32>(u_input.a, 19909i, var_3), vec3<i32>(var_3, u_input.a, u_input.a) ^ vec3<i32>(var_3, u_input.a, var_3))));
}

