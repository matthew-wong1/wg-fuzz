struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, false), 2274i, vec3<i32>(2147483647i, -1i, i32(-2147483648)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> vec2<i32> {
    var var_0 = global0[_wgslsmith_index_u32(1u, 15u)];
    return firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, abs(arg_3.b)), ~max(_wgslsmith_clamp_i32(var_0.b.x, -4951i, global2.c.x), 31797i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(select(vec2<bool>(all(select(global1.zw, vec2<bool>(false, global1.x), true)), global1.x), global2.a, !global2.a), _wgslsmith_mult_i32(~select(-709i, -2147483647i, true), ~(i32(-1i) * -u_input.c)), vec3<i32>(i32(-1i) * -global2.b, abs(global2.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-7121i, -7640i, 2147483647i, global2.c.x), vec4<i32>(u_input.c, -39839i, global2.b, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(24718i, global2.c.x, global2.c.x, global2.c.x), vec4<i32>(u_input.a.x, u_input.a.x, -32106i, u_input.a.x))), ~vec4<i32>(global2.b, u_input.c, 3342i, global2.b) & -vec4<i32>(2147483647i, global2.c.x, global2.b, global2.c.x))));
    var_0 = Struct_2(vec2<bool>(global1.x, true), u_input.a.x << (~57061u % 32u), vec3<i32>(-1i) * -vec3<i32>(0i, var_0.c.x, i32(-1i) * -16900i));
    var var_1 = Struct_1(reverseBits(vec4<i32>(min(~u_input.a.x, ~u_input.c), u_input.c, -u_input.a.x, _wgslsmith_add_i32(~global2.b, _wgslsmith_sub_i32(var_0.b, var_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(sign(1035f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 392f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), ~u_input.d.zz);
    var var_2 = reverseBits(1u);
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + 1609f), -427f));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(646f, var_1.b.x, ((i32(-1i) * -5632i) <= var_1.a.x) && var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1990f, var_1.b.x, true))) * _wgslsmith_f_op_f32(-var_1.b.x)) - _wgslsmith_f_op_f32(681f + _wgslsmith_f_op_f32(floor(320f)))), ~(-1i) > (i32(-1i) * -max(3184i, u_input.c))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_3) -> bool {
    let var_0 = global2.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1636f * _wgslsmith_f_op_f32(2512f + -237f)) - _wgslsmith_f_op_f32(step(-1000f, -3521f))), _wgslsmith_f_op_f32(f32(-1f) * -547f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2220f) * -2080f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(1945f, _wgslsmith_f_op_f32(min(-457f, 1783f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-825f + 226f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), 1051f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1708f + 289f))))));
    let var_2 = _wgslsmith_sub_i32(u_input.c, u_input.a.x) | 20987i;
    return -37252i > _wgslsmith_clamp_i32(49641i, 27507i, _wgslsmith_add_i32(arg_0.x, _wgslsmith_sub_i32(arg_0.x | var_2, -12330i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<bool>(!(!(!(u_input.c < global2.b))), !global2.a.x, abs(reverseBits(u_input.d.x) << (1u % 32u)) < ~(~u_input.b), !func_2(reverseBits(func_1(Struct_2(vec2<bool>(false, false), 34174i, global2.c), u_input.c, global0[_wgslsmith_index_u32(45711u, 15u)], Struct_2(global1.yw, -25345i, global2.c))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.d.x, 21247u), u_input.d.www)), !select(vec4<bool>(false, false, false, global1.x), vec4<bool>(global1.x, global2.a.x, global2.a.x, global1.x), vec4<bool>(false, false, global2.a.x, true)), global0[_wgslsmith_index_u32(u_input.b, 15u)]));
    let var_0 = global0[_wgslsmith_index_u32(min(58771u, u_input.b) & u_input.b, 15u)];
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1915f)) + _wgslsmith_f_op_f32(1f + -858f)), -2369f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1062f * -400f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(108f, -765f) * _wgslsmith_f_op_f32(select(-1102f, 109f, false)))))), select(true, _wgslsmith_dot_vec2_i32(u_input.a, var_0.c.ww) >= 1i, global2.a.x) & global1.x));
    let var_2 = true;
    global2 = Struct_2(vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(var_1, -2420f))) <= -260f, (true && global2.a.x) && all(!vec4<bool>(global1.x, true, global2.a.x, true))), i32(-1i) * -1i, vec3<i32>(min(~global2.c.x, -(i32(-1i) * -61282i)), -28520i, -var_0.c.x));
    global2 = Struct_2(vec2<bool>(true, all(select(vec2<bool>(global1.x, true), vec2<bool>(true, var_2), false)) || false), ~(-min(-var_0.b.x, global2.c.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(func_1(Struct_2(vec2<bool>(var_2, true), 1i, var_0.c.wyx), u_input.a.x >> (var_0.a.x % 32u), global0[_wgslsmith_index_u32(~u_input.b, 15u)], Struct_2(global1.yx, global2.c.x, vec3<i32>(u_input.c, -1i, -2147483647i))).x, _wgslsmith_sub_i32(-37757i, i32(-1i) * -1150i), var_0.c.x), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, global2.c.yy), countOneBits(_wgslsmith_clamp_i32(u_input.a.x, u_input.c, global2.c.x)))));
    let var_3 = select(~15314u, 22327u, all(vec4<bool>(true, false, ~var_0.a.x < firstTrailingBit(u_input.d.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(var_0.c.zzz, _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.c, global2.c, vec3<i32>(var_0.b.x, 0i, 25583i)), max(vec3<i32>(14236i, u_input.a.x, u_input.a.x), var_0.c.xww))), global2.c), -select(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, -13344i), vec2<i32>(var_0.b.x, 50966i)), global2.c.xz << (vec2<u32>(4294967295u, 82660u) % vec2<u32>(32u))), ~abs(var_0.c.x), global2.a.x), var_0.c.yz);
}

