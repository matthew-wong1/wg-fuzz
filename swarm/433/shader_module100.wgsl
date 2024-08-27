struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_2;

var<private> global3: i32 = -40629i;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = countOneBits(vec4<i32>(9906i, 0i, -u_input.a.x, select(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 25169i), vec2<i32>(-1i, u_input.a.x))), ~global2.b.x, -58102i != (global2.b.x | 2635i))));
    var var_2 = global0[_wgslsmith_index_u32(var_0, 11u)];
    global3 = global2.b.x;
    global3 = _wgslsmith_dot_vec4_i32(abs(var_1), (abs(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 2147483647i)) << (~_wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_2.e, 1u, 94213u), vec4<u32>(var_0, var_2.e, 1u, var_2.e)) % vec4<u32>(32u))) & vec4<i32>(_wgslsmith_clamp_i32(1i, -14240i, _wgslsmith_add_i32(global2.b.x, global2.b.x)), ~_wgslsmith_div_i32(-70257i, 24038i), -select(var_1.x, var_1.x, var_2.d.x), -(~u_input.a.x)));
    return select(arg_1, !vec3<bool>(all(select(vec4<bool>(false, global2.c.x, false, var_2.d.x), vec4<bool>(var_2.d.x, true, false, global1.x), vec4<bool>(global2.c.x, false, false, true))), false, true), vec3<bool>(all(select(select(vec2<bool>(arg_1.x, var_2.d.x), vec2<bool>(false, var_2.d.x), true), !global2.c.zx, true)), select(var_2.d.x || arg_1.x, !select(arg_1.x, false, true), any(!vec4<bool>(false, true, arg_1.x, false))), false));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> vec4<i32> {
    global0 = array<Struct_1, 11>();
    let var_0 = Struct_3(~1u & (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 0u, 0u)), ~vec3<u32>(0u, 15855u, 0u)) | reverseBits(1u)), Struct_1(~(-vec4<i32>(-45490i, arg_1, -27428i, -1i) | _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -23367i, 70555i, -15230i), vec4<i32>(u_input.a.x, arg_1, global2.b.x, 0i))), _wgslsmith_clamp_i32(54492i, countOneBits(-12019i | global2.b.x), -2147483647i), arg_0, select(global2.c, vec3<bool>(global1.x, !global1.x, true), global1.x), ~1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1058u), vec2<u32>(4294967295u, 4294967295u))) % 32u)), !select(select(func_3(1u, vec3<bool>(false, true, global1.x)), vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, false, false)), func_3(_wgslsmith_clamp_u32(0u, 1u, 1u), func_3(0u, vec3<bool>(true, global2.c.x, true))), global2.c));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.b.x ^ 9549i, -2147483647i, i32(-1i) * -1i, -2147483647i), var_0.b.a), _wgslsmith_sub_vec4_i32(var_0.b.a, ~var_0.b.a)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, -2147483647i, u_input.a.x, 24671i)), vec4<i32>(arg_1, global2.b.x, 0i, 0i)), var_0.b.b), -1i), _wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global2.d)), -1338f, global1.x)), 551f, _wgslsmith_f_op_f32(-874f - 789f))), select(!vec3<bool>(1i < var_0.b.b, -19529i > var_0.b.a.x, global1.x), !(!vec3<bool>(false, var_0.b.d.x, false)), func_3(0u, func_3(4294967295u, global2.c))), var_0.a);
    let var_2 = countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(var_1.a.yy), u_input.a), _wgslsmith_dot_vec3_i32(global2.b, var_1.a.xzy))) & (_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, global2.b.x, arg_1), 1i, global2.b.x, arg_1), vec4<i32>(_wgslsmith_add_i32(-5843i, var_0.b.b), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(var_0.b.b, var_1.b)), _wgslsmith_add_i32(u_input.a.x, var_1.a.x), arg_1)) << (_wgslsmith_add_u32(~117842u, _wgslsmith_div_u32(abs(4294967295u), firstTrailingBit(1u))) % 32u));
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_0.b.c.x, var_0.b.c.x)))))), vec3<i32>(~(-42634i), abs(max(u_input.a.x, var_2)) | (~var_0.b.b & ~(-1i)), ~select(0i, abs(var_1.a.x), global1.x)), global1.wyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1095f - -2628f))))) + arg_0.x));
    return vec4<i32>(select(2147483647i, 0i, true) & var_1.b, ~var_2, _wgslsmith_dot_vec2_i32(vec2<i32>(select(global2.b.x, var_1.a.x, global2.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.x, 2147483647i, 28765i), vec3<i32>(arg_1, 46412i, -45465i))), var_0.b.a.wz) | global2.b.x, _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(firstTrailingBit(var_1.a.x), 20364i)));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = Struct_1(func_2(global2.a, i32(-1i) * -1i), 0i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.a))), global2.c, 4294967295u);
    var var_1 = Struct_3(1u, Struct_1(var_0.a, ~(-33729i), var_0.c, vec3<bool>(func_3(_wgslsmith_mult_u32(var_0.e, arg_0), global2.c).x, true, true), var_0.e), select(select(!(!global2.c), !global2.c, true), !func_3(abs(var_0.e), global1.yzy), vec3<bool>(select(global2.c.x, global2.c.x, true) == (global2.b.x > global2.b.x), (2147483647i & u_input.a.x) == -2147483647i, !global1.x && !global1.x)));
    var_0 = Struct_1(func_2(vec3<f32>(_wgslsmith_f_op_f32(max(757f, -1438f)), _wgslsmith_f_op_f32(var_0.c.x * var_1.b.c.x), _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x)), u_input.a.x) << (firstTrailingBit(firstTrailingBit(max(vec4<u32>(11525u, var_1.a, var_1.a, 0u), vec4<u32>(var_0.e, arg_0, var_0.e, 34494u)))) % vec4<u32>(32u)), global2.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, var_0.c.x, var_0.c.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, var_1.b.c.x, -263f))), vec3<f32>(1413f, _wgslsmith_div_f32(470f, 1290f), _wgslsmith_f_op_f32(sign(-248f))), func_3(max(4294967295u, 39109u), !global1.ywy)))), select(func_3(_wgslsmith_div_u32(abs(var_1.a), firstLeadingBit(1u)), vec3<bool>(any(vec2<bool>(global2.c.x, global2.c.x)), true, true)), var_1.c, !vec3<bool>(all(vec3<bool>(true, global2.c.x, global2.c.x)), true, false)), var_0.e);
    var var_2 = global2.b.zy >> (countOneBits(~(vec2<u32>(57233u, arg_0) >> (abs(vec2<u32>(92688u, 62894u)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_3 = var_1.b.c.x;
    return select(95973u, 49020u, all(!global1.zzz) == (-376f >= var_0.c.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_2 {
    global1 = vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.c.x)), -278f)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.a.x)))), 1500f, true)), arg_0.b.d.x & true, arg_1.b.d.x, arg_0.c.x);
    return Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1491f, _wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0.b.c.x))))), _wgslsmith_f_op_vec3_f32(arg_0.b.c + _wgslsmith_f_op_vec3_f32(-arg_0.b.c)))), vec3<i32>(~func_2(vec3<f32>(arg_1.b.c.x, -603f, -855f), min(arg_1.b.a.x, -10627i)).x, ~u_input.a.x, global2.b.x), vec3<bool>(true, arg_0.b.d.x & global1.x, !any(!global1.yx)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c.x) + arg_0.b.c.x)))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    return Struct_3(~(~firstLeadingBit(1u)), global0[_wgslsmith_index_u32(~(~(~1u)), 11u)], vec3<bool>(1380f != arg_2, any(vec3<bool>(true, global1.x && true, global2.c.x)), !all(select(vec4<bool>(global2.c.x, arg_1.c.x, arg_1.c.x, global1.x), vec4<bool>(global2.c.x, false, global1.x, true), global2.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-global2.a.x), func_4(Struct_3(_wgslsmith_sub_u32(func_1(1u), abs(1u)), global0[_wgslsmith_index_u32(38717u << (~4294967295u % 32u), 11u)], select(vec3<bool>(false, false, true), vec3<bool>(global1.x, global2.c.x, global1.x), vec3<bool>(true, true, true))), Struct_3(1u, global0[_wgslsmith_index_u32(1u, 11u)], select(select(global1.xxx, vec3<bool>(true, global2.c.x, global2.c.x), vec3<bool>(global1.x, false, true)), vec3<bool>(true, true, global2.c.x), select(vec3<bool>(global2.c.x, global2.c.x, true), global1.ywy, global2.c.x))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 24618u, 55434u), abs(vec3<u32>(11343u, 26989u, 5820u))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(1u, 77811u, 1u))))), -1330f, _wgslsmith_div_vec3_f32(global2.a, _wgslsmith_f_op_vec3_f32(floor(global2.a))));
    var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-385f, global2.d)) * -1000f) * var_0.b.c.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.c.x)))))), func_4(Struct_3(func_5(-720f, func_4(Struct_3(var_0.a, Struct_1(var_0.b.a, var_0.b.a.x, var_0.b.c, global1.www, var_0.b.e), vec3<bool>(global2.c.x, true, global1.x)), Struct_3(0u, global0[_wgslsmith_index_u32(var_0.a, 11u)], vec3<bool>(global2.c.x, false, var_0.b.d.x)), vec3<u32>(24123u, 16539u, var_0.a)), _wgslsmith_f_op_f32(select(var_0.b.c.x, global2.a.x, true)), var_0.b.c).a, func_5(global2.a.x, func_4(Struct_3(var_0.b.e, Struct_1(vec4<i32>(var_0.b.b, global2.b.x, -11737i, var_0.b.b), var_0.b.b, global2.a, global2.c, 1u), global1.xwz), Struct_3(var_0.a, Struct_1(vec4<i32>(-31232i, global2.b.x, var_0.b.b, global2.b.x), -17148i, global2.a, var_0.c, var_0.b.e), vec3<bool>(global2.c.x, global2.c.x, var_0.b.d.x)), vec3<u32>(4294967295u, 4294967295u, 20502u)), var_0.b.c.x, var_0.b.c).b, vec3<bool>(true, true, true)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c.x) * _wgslsmith_div_f32(var_0.b.c.x, var_0.b.c.x)), Struct_2(global2.a, countOneBits(vec3<i32>(-25819i, global2.b.x, -2147483647i)), !global2.c, var_0.b.c.x), var_0.b.c.x, _wgslsmith_f_op_vec3_f32(sign(var_0.b.c))), select(vec3<u32>(_wgslsmith_mod_u32(var_0.a, 8968u), 37433u, abs(15589u)), abs(vec3<u32>(18572u, 7813u, var_0.a)), vec3<bool>(global2.b.x == global2.b.x, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(657f * -1000f) + 1045f)) - global2.a.x), vec3<f32>(_wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), -1000f, _wgslsmith_f_op_f32(-global2.a.x)));
    global1 = select(select(select(vec4<bool>(false, global2.c.x, true, var_0.b.e == var_0.b.e), select(vec4<bool>(false, global2.c.x, false, false), !vec4<bool>(true, true, true, global1.x), false), vec4<bool>(false, true, global2.c.x, true)), vec4<bool>(true, all(global2.c), var_0.b.d.x, func_5(1142f, func_4(Struct_3(5742u, Struct_1(var_0.b.a, 20722i, var_0.b.c, global1.wyw, var_0.a), var_0.b.d), Struct_3(var_0.a, Struct_1(var_0.b.a, 6920i, vec3<f32>(global2.d, global2.a.x, global2.d), vec3<bool>(true, false, true), 51506u), vec3<bool>(global2.c.x, global2.c.x, false)), vec3<u32>(var_0.a, var_0.a, var_0.b.e)), _wgslsmith_f_op_f32(var_0.b.c.x * var_0.b.c.x), var_0.b.c).b.d.x), vec4<bool>((var_0.a >> (var_0.a % 32u)) > ~var_0.b.e, true, global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 19057u, 37947u, 4294967295u), vec4<u32>(var_0.a, var_0.b.e, var_0.b.e, var_0.a)) == 1u)), select(vec4<bool>(func_5(-166f, func_4(Struct_3(0u, Struct_1(vec4<i32>(global2.b.x, u_input.a.x, -1i, -7705i), global2.b.x, vec3<f32>(-392f, global2.a.x, global2.a.x), var_0.c, var_0.b.e), vec3<bool>(global2.c.x, var_0.b.d.x, global1.x)), Struct_3(var_0.b.e, Struct_1(var_0.b.a, var_0.b.b, global2.a, vec3<bool>(true, true, global2.c.x), 4294967295u), vec3<bool>(false, true, global1.x)), vec3<u32>(5104u, var_0.a, 83319u)), _wgslsmith_f_op_f32(min(global2.a.x, var_0.b.c.x)), global2.a).b.d.x, func_4(Struct_3(4294967295u, Struct_1(vec4<i32>(var_0.b.b, -56533i, var_0.b.a.x, -1i), global2.b.x, vec3<f32>(-803f, global2.a.x, var_0.b.c.x), vec3<bool>(false, false, false), 1u), global2.c), func_5(1000f, Struct_2(var_0.b.c, var_0.b.a.xwy, vec3<bool>(global2.c.x, global1.x, global1.x), var_0.b.c.x), -355f, global2.a), vec3<u32>(1u, var_0.b.e, var_0.a) ^ vec3<u32>(31243u, var_0.b.e, var_0.a)).c.x, all(vec2<bool>(global1.x, var_0.b.d.x)) && (733f != var_0.b.c.x), true), vec4<bool>(_wgslsmith_f_op_f32(var_0.b.c.x - global2.a.x) <= _wgslsmith_f_op_f32(ceil(398f)), var_0.c.x, false, global2.c.x), !vec4<bool>(!var_0.c.x, global2.c.x, true, all(global2.c))), select(!(!select(vec4<bool>(true, global2.c.x, true, true), vec4<bool>(true, true, global2.c.x, true), true)), vec4<bool>(any(var_0.c) | !global1.x, all(vec4<bool>(false, global1.x, var_0.c.x, global1.x)), true, func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(4157u, var_0.b.e)), vec3<bool>(global2.c.x, true, true)).x), ~firstTrailingBit(var_0.b.e) < max(var_0.b.e, var_0.a)));
    global2 = func_4(func_5(_wgslsmith_f_op_f32(func_4(func_5(global2.d, Struct_2(var_0.b.c, global2.b, global2.c, var_0.b.c.x), global2.d, vec3<f32>(var_0.b.c.x, 451f, var_0.b.c.x)), Struct_3(16446u, global0[_wgslsmith_index_u32(0u, 11u)], global2.c), vec3<u32>(1u, 4294967295u, 8683u)).d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.c * global2.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -1i, 1i), vec3<i32>(var_0.b.a.x, 0i, var_0.b.b), abs(vec3<i32>(0i, var_0.b.a.x, u_input.a.x))), global2.c, var_0.b.c.x), var_0.b.c.x, _wgslsmith_f_op_vec3_f32(var_0.b.c * vec3<f32>(_wgslsmith_f_op_f32(880f - 2044f), func_4(Struct_3(22377u, Struct_1(var_0.b.a, 16367i, vec3<f32>(458f, -636f, -131f), vec3<bool>(var_0.c.x, var_0.b.d.x, true), 16754u), vec3<bool>(false, true, false)), Struct_3(var_0.b.e, Struct_1(var_0.b.a, -1i, vec3<f32>(global2.a.x, global2.d, -700f), vec3<bool>(global1.x, global1.x, global2.c.x), 12789u), global2.c), vec3<u32>(var_0.a, 4294967295u, 4294967295u)).a.x, 212f))), Struct_3(func_5(global2.a.x, func_4(Struct_3(4294967295u, Struct_1(var_0.b.a, 0i, var_0.b.c, global1.xxw, var_0.b.e), var_0.b.d), func_5(-833f, Struct_2(vec3<f32>(-833f, 1825f, -558f), var_0.b.a.wwx, vec3<bool>(global1.x, false, true), 874f), global2.a.x, var_0.b.c), ~vec3<u32>(4294967295u, 40858u, 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f), global2.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.a, vec3<f32>(392f, 407f, -1000f)))).a, Struct_1(select(var_0.b.a, var_0.b.a, vec4<bool>(global1.x, global1.x, global1.x, var_0.c.x)) ^ vec4<i32>(var_0.b.b, 0i, var_0.b.a.x, -35506i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.b.a.x, u_input.a.x, 8639i), -vec4<i32>(-2147483647i, var_0.b.a.x, var_0.b.b, 0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-754f, 1004f, global2.d)), !func_3(73970u, vec3<bool>(false, global2.c.x, false)), func_5(1634f, Struct_2(global2.a, global2.b, vec3<bool>(false, false, global1.x), -773f), -1210f, _wgslsmith_f_op_vec3_f32(-var_0.b.c)).a), func_3(0u, !var_0.c)), ~min(firstTrailingBit(vec3<u32>(var_0.a, var_0.a, 66499u)) ^ ~vec3<u32>(45546u, 30684u, var_0.b.e), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.a, var_0.b.e, 0u), vec3<u32>(var_0.a, 0u, var_0.a))));
    var var_1 = ~vec4<i32>(max(_wgslsmith_mult_i32(u_input.a.x, 20262i), var_0.b.a.x), -8007i, max(countOneBits(u_input.a.x), _wgslsmith_mod_i32(-1i, 17322i)), 7622i << (~var_0.b.e % 32u)) >> (vec4<u32>(~firstLeadingBit(1u), var_0.b.e, ~(~var_0.a), func_1(var_0.a)) % vec4<u32>(32u));
    var var_2 = func_4(Struct_3(~var_0.a | ~(var_0.a ^ var_0.b.e), global0[_wgslsmith_index_u32(~(~var_0.a) << (~0u % 32u), 11u)], func_3(~(var_0.a >> (var_0.a % 32u)), var_0.c)), func_5(-100f, func_4(func_5(-706f, func_4(Struct_3(var_0.b.e, global0[_wgslsmith_index_u32(1u, 11u)], global2.c), Struct_3(0u, Struct_1(var_0.b.a, u_input.a.x, var_0.b.c, vec3<bool>(false, global2.c.x, false), 1u), vec3<bool>(false, true, false)), vec3<u32>(var_0.a, 39223u, 15116u)), -497f, vec3<f32>(global2.d, 1550f, 282f)), Struct_3(var_0.b.e, func_5(var_0.b.c.x, Struct_2(vec3<f32>(global2.d, -958f, global2.d), vec3<i32>(2147483647i, 14463i, 2147483647i), vec3<bool>(var_0.b.d.x, true, global1.x), global2.d), var_0.b.c.x, vec3<f32>(-108f, global2.d, -540f)).b, vec3<bool>(global1.x, var_0.c.x, false)), vec3<u32>(~var_0.a, 1u, 1u)), _wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1573f, -795f, var_0.b.c.x))))), firstTrailingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.a, 4294967295u, var_0.a), min(vec3<u32>(6301u, var_0.a, 1u), vec3<u32>(var_0.b.e, var_0.b.e, 1u) | vec3<u32>(29888u, 7635u, var_0.a)), ~abs(vec3<u32>(var_0.a, 4294967295u, 0u)))));
    global1 = !select(select(select(select(vec4<bool>(var_0.b.d.x, false, var_2.c.x, true), vec4<bool>(var_2.c.x, true, true, true), false), vec4<bool>(var_2.c.x, true, true, var_2.c.x), any(vec4<bool>(global2.c.x, true, true, false))), select(!vec4<bool>(false, global2.c.x, var_0.b.d.x, global1.x), select(vec4<bool>(false, var_0.b.d.x, var_0.b.d.x, var_2.c.x), vec4<bool>(true, false, true, global1.x), vec4<bool>(true, global1.x, false, false)), false), select(select(vec4<bool>(true, true, var_2.c.x, true), vec4<bool>(var_2.c.x, true, var_2.c.x, false), vec4<bool>(var_0.c.x, true, true, var_2.c.x)), !vec4<bool>(true, global2.c.x, true, true), select(vec4<bool>(true, true, var_2.c.x, false), vec4<bool>(var_2.c.x, false, global2.c.x, false), vec4<bool>(true, var_2.c.x, var_2.c.x, false)))), vec4<bool>(var_2.c.x, !(var_0.b.e < var_0.b.e), false, var_2.d > _wgslsmith_f_op_f32(select(821f, global2.d, global1.x))), false);
    var var_3 = func_5(var_0.b.c.x, Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.b.c), vec3<i32>(-1i, _wgslsmith_mod_i32(37069i, var_1.x), 0i), vec3<bool>(true | (u_input.a.x == var_1.x), any(!global2.c.zz), global1.x), _wgslsmith_f_op_f32(-679f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1530f, 182f))))), var_0.b.c.x, vec3<f32>(var_2.d, -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_3.a, 0u, 7414u) ^ vec3<u32>(var_3.b.e, var_0.b.e, 9313u), countOneBits(vec3<u32>(4294967295u, 4294967295u, var_3.b.e)))), vec4<u32>(1u ^ var_0.a, ~var_0.a, min(46739u, var_0.b.e), ~(~0u)) ^ vec4<u32>(1u, ~_wgslsmith_div_u32(41739u, var_0.a), reverseBits(466u | var_3.b.e), 16159u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d, 305f, 427f, var_3.b.c.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1905f, var_2.d, 286f) - vec4<f32>(var_0.b.c.x, var_3.b.c.x, var_0.b.c.x, var_0.b.c.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b.c.x, global2.a.x, var_2.a.x, -818f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(458f, 722f, global2.d, -280f)))), any(var_2.c))))), i32(-1i) * -25538i, ~var_0.b.b);
}

