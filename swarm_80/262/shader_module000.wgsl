struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: array<Struct_1, 21>;

var<private> global3: array<u32, 12> = array<u32, 12>(31795u, 0u, 1u, 114878u, 0u, 4294967295u, 26601u, 0u, 0u, 0u, 0u, 60552u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global2 = array<Struct_1, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2244f, -458f, -677f), vec3<f32>(-207f, -158f, -992f))))));
    global0 = global2[_wgslsmith_index_u32(u_input.b.x | max(abs(~(~global3[_wgslsmith_index_u32(4294967295u, 12u)])), 11579u), 21u)];
    global1 = array<vec4<i32>, 9>();
    var var_1 = Struct_1(true, max(~u_input.a.zyx, vec3<i32>(_wgslsmith_mult_i32(global0.b.x, 19207i), 0i, 1i)));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(62488i, min(u_input.c, -1i)), global0.b.zz, ~global0.b.xz), _wgslsmith_clamp_vec2_i32(countOneBits(~global0.b.zz), (vec2<i32>(global0.b.x, global0.b.x) ^ vec2<i32>(u_input.c, -1i)) | firstLeadingBit(vec2<i32>(var_1.b.x, var_1.b.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.c) & var_1.b.zy, vec2<i32>(-19611i, var_1.b.x)))) & 2147483647i;
}

fn func_2(arg_0: u32, arg_1: bool) -> vec3<i32> {
    var var_0 = vec2<i32>(func_3() ^ -(0i & (5658i << (arg_0 % 32u))), 37950i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -937f), -898f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(-265f - 1977f))), _wgslsmith_f_op_f32(f32(-1f) * -2558f))));
    var var_2 = vec3<u32>(1u, ~(~4294967295u), ~1u);
    return ~abs(abs(vec3<i32>(_wgslsmith_div_i32(-78470i, var_0.x), 0i, ~u_input.a.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = 74412i;
    global1 = array<vec4<i32>, 9>();
    var var_1 = firstLeadingBit(min(func_2(max(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], u_input.b.x), 30886u), global0.a), global0.b));
    var_0 = global0.b.x;
    var var_2 = vec2<bool>(select(global0.a, !any(select(vec4<bool>(false, false, true, global0.a), vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(false, false, global0.a, global0.a))), all(select(select(vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(false, false, false), false), vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(true, global0.a, global0.a)))), true || (-756f >= _wgslsmith_f_op_f32(floor(1136f))));
    return Struct_1(any(vec4<bool>(global0.a, any(vec4<bool>(false, var_2.x, var_2.x, global0.a)), true, true)) && true, global0.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    global2 = array<Struct_1, 21>();
    var var_0 = select(vec3<bool>((arg_1.x != ~43022u) | true, select(!(!global0.a), global0.a | !global0.a, any(select(vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(global0.a, true, true, global0.a), true))), abs(0u) != ~(~u_input.b.x)), vec3<bool>(all(vec2<bool>(true, true)) & any(vec2<bool>(true, true)), all(vec3<bool>(global0.a, false, true)), global0.a), !global0.a);
    let var_1 = 0i;
    var_0 = select(!select(vec3<bool>(all(vec3<bool>(global0.a, arg_0.a, arg_0.a)), func_1().a, var_0.x && global0.a), !vec3<bool>(global0.a, true, true), !vec3<bool>(true, false, var_0.x)), vec3<bool>(select(any(vec4<bool>(arg_0.a, false, true, true)), global0.a && all(vec4<bool>(var_0.x, arg_0.a, arg_0.a, true)), all(select(vec2<bool>(var_0.x, global0.a), var_0.yy, true))), ~max(u_input.b.x, 1u) <= 46458u, var_0.x), func_1().a);
    global2 = array<Struct_1, 21>();
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_4(func_1(), vec4<u32>(~1u, global3[_wgslsmith_index_u32(4294967295u, 12u)], ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)] << (global3[_wgslsmith_index_u32(0u, 12u)] % 32u)), u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_2 = func_1();
    let var_3 = select(!select(vec2<bool>(var_2.a | global0.a, global0.a), vec2<bool>(var_2.a, any(vec4<bool>(var_2.a, false, global0.a, global0.a))), any(!vec3<bool>(global0.a, false, global0.a))), !(!vec2<bool>(true, var_2.a || var_2.a)), !var_2.a);
    let var_4 = vec4<i32>(-1i) * -(~(global1[_wgslsmith_index_u32(u_input.b.x, 9u)] ^ global1[_wgslsmith_index_u32(1u, 9u)]));
    var var_5 = ~vec3<i32>(-1i, 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, -35201i, var_4.x, -2147483647i), _wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(4294967295u, 9u)], abs(global1[_wgslsmith_index_u32(1987u, 9u)]))));
    let var_6 = abs(_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], 38696u, 1u)), vec3<u32>(1u, 1u, 1u)), global3[_wgslsmith_index_u32(~1u, 12u)]));
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(_wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(var_6, 12u)] >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_6, 12u)], 12u)] % 32u)) & ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], reverseBits(1u) & u_input.b.x), var_6), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -var_5.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yz, var_4.zx), vec2<i32>(~(-1i), -(i32(-1i) * -103637i))));
}

