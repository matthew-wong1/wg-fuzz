struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: vec2<f32> = vec2<f32>(-644f, -283f);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(false, true, true), vec2<f32>(2813f, 1000f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -823f)))));
    let var_1 = global1.x;
    var var_2 = arg_2.c;
    global0 = array<u32, 10>();
    var var_3 = vec3<f32>(-1217f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(226f)))), _wgslsmith_f_op_f32(f32(-1f) * -1273f));
    return _wgslsmith_f_op_vec2_f32(-var_0);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(vec4<bool>(global2.c.x != 174f, global2.b.x && true, any(global2.a.wwx), global2.a.x), global2.a.yxw, _wgslsmith_f_op_vec2_f32(func_3(abs(vec4<u32>(global0[_wgslsmith_index_u32(4577u, 10u)], global0[_wgslsmith_index_u32(18539u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], u_input.a.x)), 981f, Struct_1(global2.a, global2.b, vec2<f32>(-474f, 209f)), Struct_1(vec4<bool>(global2.a.x, false, global2.b.x, false), vec3<bool>(global2.b.x, global2.a.x, true), global2.c))))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), u_input.a.x >> (48154u % 32u)), 1u, ~_wgslsmith_mult_u32(43081u, global0[_wgslsmith_index_u32(39912u, 10u)])), _wgslsmith_sub_vec3_u32(abs(u_input.a), select(countOneBits(u_input.a), vec3<u32>(u_input.a.x, 1u, 4294967295u), true))), Struct_1(vec4<bool>(true, global2.a.x, all(select(vec4<bool>(global2.a.x, false, true, global2.a.x), vec4<bool>(global2.a.x, true, true, global2.a.x), global2.a.x)), global2.b.x), vec3<bool>(!(!global2.b.x), any(vec2<bool>(global2.a.x, true)), global2.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-316f, global1.x))), _wgslsmith_f_op_f32(615f + _wgslsmith_f_op_f32(-110f + -124f)))), Struct_1(vec4<bool>(true, global2.b.x, true, true), !vec3<bool>(global2.a.x, 469f == global1.x, all(global2.b.yy)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2230f, global1.x)) * _wgslsmith_f_op_f32(global2.c.x - global1.x)), _wgslsmith_f_op_f32(-882f * _wgslsmith_f_op_f32(select(-1541f, -364f, global2.a.x))))));
    let var_1 = Struct_1(vec4<bool>(true, global2.b.x, !all(!var_0.a.a.a.wz), var_0.d.a.x), select(global2.b, vec3<bool>(all(var_0.a.a.b.yz), any(vec2<bool>(true, true)), true), vec3<bool>(var_0.a.a.a.x, false, true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.c.c - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.c.c, vec2<f32>(-685f, global2.c.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.c.x, global1.x) + var_0.a.a.c))), vec2<f32>(1512f, _wgslsmith_f_op_f32(-global1.x)))));
    let var_2 = Struct_1(select(var_1.a, global2.a, var_0.c.a.x), select(!select(var_0.c.b, global2.b, true), !select(select(vec3<bool>(global2.b.x, false, var_1.a.x), vec3<bool>(var_0.c.a.x, var_1.b.x, var_0.d.a.x), vec3<bool>(global2.a.x, global2.a.x, true)), !var_1.a.zyw, var_0.a.a.a.xwz), var_1.b), _wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c + vec2<f32>(985f, 1631f)) * var_0.a.a.c)))));
    global0 = array<u32, 10>();
    let var_3 = abs(-reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.c, u_input.c, u_input.b), vec4<i32>(-14108i, -32595i, u_input.c, u_input.b)))) << (~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 10u)], select(_wgslsmith_mult_u32(var_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_div_u32(var_0.b.x, var_0.b.x), true), u_input.a.x) % vec4<u32>(32u));
    return Struct_1(var_2.a, select(select(!global2.a.zww, select(var_2.b, !vec3<bool>(global2.b.x, true, true), var_1.b.x), all(vec3<bool>(true, var_0.d.a.x, false))), !var_2.b, var_0.a.a.a.xwy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -599f), var_2.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, global2.c.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.c.x, arg_0.c.c.x) + _wgslsmith_f_op_vec2_f32(global2.c - global2.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(785f, global2.c.x), global2.c) * _wgslsmith_f_op_vec2_f32(vec2<f32>(166f, -1000f) * arg_1.a.c))))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_div_vec2_f32(arg_0.a.a.c, vec2<f32>(arg_0.a.a.c.x, -2134f));
    let var_3 = ~arg_0.b.yy;
    let var_4 = arg_1.a;
    return abs(vec4<u32>(_wgslsmith_mult_u32(30839u, max(62536u, var_3.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(81147u, 84190u << (global0[_wgslsmith_index_u32(1u, 10u)] % 32u)), 59390u), global0[_wgslsmith_index_u32(1u, 10u)], ~38929u));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -412f);
    let var_1 = !vec2<bool>(false, global2.b.x);
    global2 = Struct_1(global2.a, select(global2.a.zyz, global2.b, vec3<bool>(all(select(vec2<bool>(var_1.x, true), vec2<bool>(global2.a.x, var_1.x), vec2<bool>(false, true))), (arg_1.x >= 25275u) | false, (-1i != arg_0) & all(global2.b))), global2.c);
    var var_2 = vec3<bool>(!(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(103624u, 10u)], 20464u) > _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(1u, arg_1.x))), var_1.x, all(global2.b.zz));
    let var_3 = select(global2.b, func_2().a.wyx, !any(!(!global2.a)));
    return -abs(_wgslsmith_clamp_i32(u_input.c, arg_0, arg_0));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<i32>(-58782i, func_5(~reverseBits(~0i), func_4(Struct_3(Struct_2(Struct_1(vec4<bool>(arg_1.x, false, false, true), vec3<bool>(global2.a.x, global2.a.x, true), vec2<f32>(global1.x, 1844f))), _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], global0[_wgslsmith_index_u32(8111u, 10u)], global0[_wgslsmith_index_u32(17506u, 10u)]), u_input.a), func_2(), Struct_1(vec4<bool>(true, arg_1.x, true, false), arg_1.zzx, global2.c)), Struct_2(func_2()))), _wgslsmith_mult_i32(max(_wgslsmith_add_i32(~1i, _wgslsmith_clamp_i32(-1i, u_input.b, u_input.b)), abs(u_input.c)), abs(firstTrailingBit(~u_input.b))), _wgslsmith_sub_i32(~abs(func_5(u_input.c, vec4<u32>(arg_0.x, 55875u, 6482u, arg_0.x))), 1i));
    var var_1 = _wgslsmith_clamp_i32(var_0.x, 1i, func_5(_wgslsmith_dot_vec4_i32((vec4<i32>(-2147483647i, 0i, var_0.x, var_0.x) >> (vec4<u32>(34372u, 1u, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, var_0.x, u_input.b), vec4<i32>(-34998i, u_input.c, u_input.b, 0i), vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i)), -select(vec4<i32>(-5781i, 18995i, 6294i, 0i), vec4<i32>(var_0.x, u_input.b, -2522i, 0i), vec4<bool>(true, true, true, global2.b.x))), ~vec4<u32>(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(113748u, 10u)]), 10u)], _wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(8707u, 10u)]), 4294967295u >> (u_input.a.x % 32u), 1u)));
    let var_2 = -209f;
    let var_3 = 532f;
    let var_4 = Struct_3(Struct_2(func_2()), u_input.a, func_2(), func_2());
    return Struct_1(global2.a, global2.a.yww, global2.c);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_vec3_i32(abs(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, 1i, -1i), vec3<i32>(2147483647i, u_input.b, 1i), vec3<i32>(u_input.c, arg_0, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, arg_0, arg_0), vec3<i32>(arg_0, 22631i, 22162i))), vec3<i32>(-1i, u_input.b, -2147483647i))), ~vec3<i32>(arg_0, _wgslsmith_clamp_i32(arg_0, -31187i, _wgslsmith_mod_i32(arg_0, 7064i)), arg_0));
    var var_2 = _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a.x, 1u), 10u)], 10u)], 10u)], 4294967295u);
    var_0 = func_1(vec3<u32>(1564u, u_input.a.x | ~4294967295u, _wgslsmith_add_u32(u_input.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(1u, 10u)], 51376u), vec4<u32>(42872u, 4294967295u, 4294967295u, 47970u)), 0u)), select(var_0.a, !arg_1.a, vec4<bool>(var_0.a.x, !global2.b.x, true, any(!vec3<bool>(false, false, arg_2.a.a.x)))));
    let var_3 = global0[_wgslsmith_index_u32(~(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 77805u), 10u)]) & 20304u), 10u)];
    return ~(~(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-9923i, var_1.x, -1i, -10942i), vec4<i32>(-56159i, var_1.x, u_input.c, 1i)), var_1.x, -var_1.x, abs(var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 1i, -1i ^ u_input.c), func_6(i32(-1i) * -u_input.b, Struct_1(!global2.a, !vec3<bool>(true, true, global2.a.x), _wgslsmith_div_vec2_f32(global2.c, global2.c)), Struct_2(func_1(u_input.a, global2.a)), !global2.b));
    let var_1 = Struct_2(Struct_1(!(!global2.a), global2.a.zww, vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.c.x)))))));
    var var_2 = global1.x;
    let var_3 = -50118i >> (abs(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) % 32u);
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.a.x, 0u), u_input.c, ~min(62428u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)] ^ 16952u, countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 10u)]))));
}

