struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<u32>;

var<private> global2: vec3<f32>;

var<private> global3: array<bool, 32>;

var<private> global4: array<Struct_4, 4>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), Struct_2(65032u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b.b)))), 1u | global1.x, arg_1.b.d, _wgslsmith_f_op_vec2_f32(arg_1.b.e + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 633f))))))), true);
    global4 = array<Struct_4, 4>();
    var var_1 = arg_1.b;
    global0 = vec4<i32>(~0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~arg_1.b.d.x, arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -1i), arg_1.b.d.ww), abs(arg_1.b.d.x)), vec4<i32>(~arg_0.x, i32(-1i) * -2147483647i, i32(-1i) * -35871i, abs(12217i))), arg_1.b.d.x), -_wgslsmith_div_i32(13062i, -1i) | arg_1.b.d.x, reverseBits(_wgslsmith_mult_i32(~arg_1.b.d.x, countOneBits(var_0.b.d.x)) | _wgslsmith_mult_i32(arg_0.x << (4294967295u % 32u), arg_1.b.d.x)));
    global4 = array<Struct_4, 4>();
    return !(!vec4<bool>(!var_0.c, global3[_wgslsmith_index_u32(0u, 32u)], !var_0.c || global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 32u)], var_0.c));
}

fn func_2() -> Struct_4 {
    global0 = vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-35412i, global0.x << (firstLeadingBit(u_input.a.x) % 32u)), _wgslsmith_add_i32(0i, 1i)), firstLeadingBit(abs(3826i)), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(global0.x), _wgslsmith_sub_i32(global0.x, -1i)) & select(max(vec2<i32>(global0.x, -69087i), global0.yy), -vec2<i32>(global0.x, global0.x), global3[_wgslsmith_index_u32(countOneBits(4330u), 32u)]), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(min(vec2<i32>(1i, global0.x), vec2<i32>(global0.x, global0.x)), vec2<i32>(global0.x, global0.x)), global0.xw)));
    let var_0 = !select(select(!vec3<bool>(global3[_wgslsmith_index_u32(48314u, 32u)], global3[_wgslsmith_index_u32(39941u, 32u)], true), vec3<bool>(true, false, true), true), vec3<bool>(all(select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 32u)], false, global3[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(6842u, 32u)], false), false)), true, any(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], false), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 32u)], true), global3[_wgslsmith_index_u32(global1.x, 32u)]))), !vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], true, all(vec4<bool>(global3[_wgslsmith_index_u32(global1.x, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)], false, false))));
    let var_1 = global2.xy;
    var var_2 = var_0.x;
    var var_3 = var_0.x;
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1639f - global2.x))), func_3(-(~global0.xyw), Struct_3(var_1.x, Struct_2(4294967295u, global2.x, 16324u, vec4<i32>(20018i, 28114i, -27688i, global0.x), vec2<f32>(-442f, -2564f)), true), global2.x), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, global0.x, -33128i), ~vec3<i32>(2147483647i, 50194i, 0i), !global3[_wgslsmith_index_u32(global1.x, 32u)]), _wgslsmith_mult_vec3_i32(-global0.zzz, _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, -1i, -75061i), global0.wxz))), u_input.a.x, ((vec2<u32>(6298u, 1u) | u_input.a) | u_input.a) & _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(8886u, 50474u)), ~vec2<u32>(4294967295u, global1.x), u_input.a)), vec4<i32>(-55465i, 2147483647i, -_wgslsmith_add_i32(global0.x >> (global1.x % 32u), select(-34243i, -2147483647i, false)), global0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_4) -> u32 {
    let var_0 = arg_1.a.a == arg_1.a.a;
    var var_1 = func_2().a;
    global4 = array<Struct_4, 4>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, var_1.a)) - var_1.a) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-284f, -1093f)), _wgslsmith_f_op_f32(-151f - 873f))))), _wgslsmith_f_op_f32(select(1945f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1985f)))), !func_2().a.b.x)), -285f);
    global4 = array<Struct_4, 4>();
    return 1u;
}

fn func_1() -> Struct_4 {
    let var_0 = vec2<bool>(true, select(any(vec2<bool>(global3[_wgslsmith_index_u32(23002u, 32u)], true)), global3[_wgslsmith_index_u32(func_4(Struct_1(_wgslsmith_f_op_f32(global2.x + 1423f), vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 32u)], true, true), vec3<i32>(-36647i, 2147483647i, -52976i), ~u_input.a.x, vec2<u32>(u_input.a.x, global1.x)), global4[_wgslsmith_index_u32(~(~0u), 4u)], vec4<i32>(global0.x, 21734i, 420i, global0.x), func_2()), 32u)], any(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global2.x != 462f))));
    let var_1 = Struct_4(func_2().a, select(-vec4<i32>(~(-28483i), 1i, -global0.x, _wgslsmith_dot_vec2_i32(global0.wz, global0.xz)), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, 0i, -17407i), vec4<i32>(1612i, 0i, global0.x, global0.x), vec4<i32>(global0.x, 1i, 1i, 36622i)), vec4<i32>(-32285i, 44247i, global0.x, 60233i), vec4<i32>(39424i, global0.x, global0.x, global0.x)), vec4<bool>(global2.x > global2.x, any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(global1.x, 32u)])) & false, false, true & !var_0.x)));
    let var_2 = ~select(vec4<u32>(4294967295u, global1.x | var_1.a.e.x, 1u, 1u) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 2151u, var_1.a.e.x, 6393u), vec4<u32>(0u, 27815u, 0u, var_1.a.e.x)) & _wgslsmith_mult_vec4_u32(vec4<u32>(28850u, global1.x, global1.x, global1.x), vec4<u32>(0u, u_input.a.x, global1.x, 0u))), ~(~(vec4<u32>(global1.x, u_input.a.x, 9356u, u_input.a.x) | vec4<u32>(45112u, 1u, 33824u, 4294967295u))), all(!(!var_1.a.b.wy)));
    var var_3 = Struct_2(var_2.x, -459f, var_1.a.e.x, var_1.b, global2.yy);
    var var_4 = Struct_2(u_input.a.x, -1239f, countOneBits(var_3.a) | (48241u << (max(31268u, global1.x) % 32u)), var_1.b & -var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global2.zx)))));
    return global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~u_input.a, var_2.zx), ~0u), _wgslsmith_add_u32(var_3.c | 0u, ~(~global1.x))), min(global1.x, select(min(~4294967295u, u_input.a.x), ~abs(1u), true)), 40684u), 4u)];
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<f32>) -> Struct_2 {
    global0 = firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(arg_0, 2147483647i, 1i), _wgslsmith_dot_vec4_i32(~arg_2, func_2().b), global0.x, -1i));
    global1 = ~vec2<u32>(~_wgslsmith_sub_u32(1u, ~arg_1.a.e.x), ~u_input.a.x);
    global3 = array<bool, 32>();
    global0 = arg_1.b;
    global3 = array<bool, 32>();
    return Struct_2(_wgslsmith_dot_vec4_u32(~firstTrailingBit(~vec4<u32>(arg_1.a.e.x, arg_1.a.d, arg_1.a.d, u_input.a.x)), abs(reverseBits(vec4<u32>(global1.x, arg_1.a.e.x, 0u, u_input.a.x))) & ~select(vec4<u32>(arg_1.a.e.x, global1.x, global1.x, 4294967295u), vec4<u32>(0u, u_input.a.x, global1.x, 1u), arg_1.a.b)), 1000f, ~global1.x, abs(vec4<i32>(abs(_wgslsmith_sub_i32(global0.x, -2147483647i)), -2147483647i, -2147483647i, arg_1.b.x)), _wgslsmith_f_op_vec2_f32(select(arg_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3)), select(!(!arg_1.a.b.yz), !func_2().a.b.yy, func_3(vec3<i32>(14385i, global0.x, -1i), Struct_3(-982f, Struct_2(u_input.a.x, 157f, 49214u, vec4<i32>(2147483647i, arg_0, arg_2.x, arg_1.a.c.x), vec2<f32>(arg_1.a.a, arg_3.x)), global3[_wgslsmith_index_u32(115333u, 32u)]), arg_1.a.a).x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 32u)], (-global0.x < _wgslsmith_mult_i32(25929i, global0.x)) && false, true, global3[_wgslsmith_index_u32(~(~u_input.a.x), 32u)]);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1313f, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(global2.x, global2.x)))))) - _wgslsmith_f_op_f32(-global2.x));
    let var_2 = func_5(2147483647i << (~u_input.a.x % 32u), func_1(), vec4<i32>(func_1().a.c.x & -(i32(-1i) * -2147483647i), 17986i, 0i, _wgslsmith_clamp_i32(0i, global0.x, global0.x ^ global0.x) >> (select(u_input.a.x, ~0u, true & var_0.x) % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-865f, 465f)));
    let var_3 = u_input.a.x;
    global0 = var_2.d;
    var var_4 = _wgslsmith_add_i32(var_2.d.x, _wgslsmith_add_i32(-2147483647i, ~global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, func_2().b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_mult_u32(reverseBits(49838u << (var_3 % 32u)), func_1().a.d), var_2.d);
}

