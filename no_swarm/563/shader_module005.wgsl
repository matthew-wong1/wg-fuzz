struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: Struct_4,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, -39096i, -24635i);

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<bool, 11>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> u32 {
    return select(1u, arg_1, false);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<i32>) -> i32 {
    global0 = arg_2.zwy;
    global2 = array<bool, 11>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-global3.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1, arg_1)))))), Struct_4(global3.b, Struct_2(global3.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global3.b))))), vec4<bool>(true, u_input.d < ~firstTrailingBit(arg_0), false, abs(_wgslsmith_dot_vec3_i32(arg_2.wyz, vec3<i32>(u_input.c, arg_2.x, -9438i))) <= -firstLeadingBit(global0.x)));
    var var_1 = global1[_wgslsmith_index_u32(u_input.e, 26u)];
    global1 = array<Struct_1, 26>();
    return _wgslsmith_mult_i32(-1i, i32(-1i) * -arg_2.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_4) -> i32 {
    global0 = -vec3<i32>(_wgslsmith_mult_i32(32475i, func_3(_wgslsmith_clamp_u32(arg_1, u_input.a.x, u_input.d), -588f, vec4<i32>(2147483647i, global3.a.x, global0.x, arg_2.b.a.x) << (vec4<u32>(1u, 1u, 4294967295u, arg_1) % vec4<u32>(32u)))), -arg_2.b.a.x, max(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.c, -2147483647i), vec4<i32>(global0.x, 2147483647i, -2147483647i, global0.x)), abs(vec4<i32>(u_input.c, global0.x, 7205i, u_input.c))), ~1i));
    let var_0 = arg_2.b;
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zy, select(~vec2<u32>(26957u, u_input.a.x) << (vec2<u32>(u_input.e, 83707u) % vec2<u32>(32u)), u_input.a.yy, _wgslsmith_f_op_f32(min(-613f, 1000f)) != _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_add_vec2_u32(vec2<u32>(32793u, ~abs(0u)), _wgslsmith_clamp_vec2_u32(abs(firstTrailingBit(vec2<u32>(4294967295u, u_input.e))), reverseBits(u_input.b), ~vec2<u32>(arg_1, 3045u))));
    var var_2 = global3.b.x;
    let var_3 = reverseBits(arg_1);
    return global3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 13999u;
    global2 = array<bool, 11>();
    let var_1 = u_input.b | select(vec2<u32>(_wgslsmith_mod_u32(~u_input.d, 1u), 24348u), ~(~(~vec2<u32>(u_input.e, u_input.a.x))), vec2<bool>(global2[_wgslsmith_index_u32(func_1(Struct_3(1u, u_input.a.x, Struct_2(vec2<i32>(global3.a.x, global0.x), vec4<f32>(global3.b.x, global3.b.x, 794f, global3.b.x))), 1u), 11u)], true));
    var var_2 = firstTrailingBit(_wgslsmith_mult_i32(6418i, abs(global0.x))) & _wgslsmith_mod_i32(_wgslsmith_add_i32(func_2(vec4<f32>(global3.b.x, 1061f, global3.b.x, global3.b.x), u_input.b.x, Struct_4(vec4<f32>(-1063f, global3.b.x, 858f, global3.b.x), Struct_2(global3.a, vec4<f32>(-1237f, -1844f, global3.b.x, 717f)))) & global0.x, global3.a.x), -1i);
    var_0 = abs(_wgslsmith_div_u32((~var_1.x << (~var_1.x % 32u)) >> (u_input.d % 32u), var_1.x));
    var var_3 = Struct_5(vec4<f32>(global3.b.x, -1172f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(trunc(global3.b.x))))), 1323f), _wgslsmith_f_op_f32(1670f * _wgslsmith_f_op_f32(-global3.b.x)), Struct_4(global3.b, Struct_2(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -7583i), vec2<i32>(global0.x, global3.a.x)), _wgslsmith_f_op_vec4_f32(select(global3.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(841f, global3.b.x, -790f, global3.b.x))), global2[_wgslsmith_index_u32(var_1.x, 11u)])))), select(!vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 11u)] || false, true, true, !global2[_wgslsmith_index_u32(6035u, 11u)]), !vec4<bool>(false, true, all(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], false)), true), select(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(var_1.x, 11u)], true)), vec4<bool>(true, global2[_wgslsmith_index_u32(var_1.x, 11u)] || true, global2[_wgslsmith_index_u32(var_1.x, 11u)], u_input.c <= u_input.c), true)));
    var_2 = -func_2(vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(388f, global3.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(949f)) + _wgslsmith_f_op_f32(select(-507f, -434f, var_3.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1741f)))), -1616f), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.x, abs(u_input.b.x)), 300u), Struct_4(vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(global3.b.x * global3.b.x), _wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(2551f - global3.b.x)), var_3.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(func_3(var_1.x, 750f, vec4<i32>(-31705i, var_3.c.b.a.x, global0.x, var_3.c.b.a.x)), -1i, global3.a.x)), var_3.c.b.a.x), _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(-1i, -7754i), 24151i, func_3(4294967295u, global3.b.x, vec4<i32>(u_input.c, 1i, var_3.c.b.a.x, -1i)), global3.a.x), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(44613i, var_3.c.b.a.x, 0i, u_input.c), ~vec4<i32>(u_input.c, global0.x, 0i, var_3.c.b.a.x))));
}

