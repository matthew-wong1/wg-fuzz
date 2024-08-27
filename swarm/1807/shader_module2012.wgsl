struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: u32;

var<private> global2: vec4<i32> = vec4<i32>(0i, 12240i, -72759i, 2147483647i);

var<private> global3: array<vec2<f32>, 14>;

var<private> global4: array<Struct_2, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, _wgslsmith_mod_i32(min(global2.x, 0i) << ((u_input.a.x >> (4294967295u % 32u)) % 32u), _wgslsmith_clamp_i32(arg_1.x, _wgslsmith_clamp_i32(-1i, -30258i, arg_1.x), arg_1.x)), arg_1.x), _wgslsmith_div_vec3_i32(vec3<i32>(13178i >> (u_input.a.x % 32u), global2.x & arg_1.x, arg_1.x) | firstTrailingBit(vec3<i32>(-41820i, -65777i, arg_1.x)), arg_1.xyx));
    let var_2 = Struct_4(Struct_2(false, ~countOneBits(4294967295u), ~1i));
    var var_3 = 2147483647i <= firstTrailingBit(-2147483647i);
    var_3 = false;
    return vec4<bool>(any(vec4<bool>(all(!vec4<bool>(false, true, var_2.a.a, true)), !(27016u != var_2.a.b), var_2.a.a, ~global2.x == (var_2.a.c << (66019u % 32u)))), var_2.a.a, false, var_2.a.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = 0i;
    global0 = array<f32, 5>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 5u)];
    return !select(select(func_3(u_input.a.x, abs(vec4<i32>(global2.x, global2.x, 28679i, global2.x))), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c, 5u)] != 699f, true, any(vec4<bool>(true, true, false, false)), true), true), vec4<bool>(true, true, true, true), !func_3(72697u, vec4<i32>(-1i, 0i, global2.x, global2.x)));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = arg_3.a.c;
    global2 = max(max(vec4<i32>(global2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, arg_3.a.c, 0i), vec3<i32>(5515i, arg_3.a.c, 2147483647i)), vec3<i32>(var_0, 1i, 2147483647i)), global2.x, countOneBits(-35712i)), vec4<i32>(var_0, ~var_0 ^ select(arg_3.a.c, 24449i, false), 52968i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.c, arg_3.a.c, global2.x, arg_3.a.c), vec4<i32>(-2147483647i, var_0, global2.x, arg_3.a.c)), var_0))), ((vec4<i32>(-1i) * -vec4<i32>(arg_3.a.c, arg_3.a.c, -1i, arg_3.a.c)) << ((abs(vec4<u32>(arg_2.x, 10137u, 1u, u_input.a.x)) >> (vec4<u32>(4294967295u, arg_2.x, arg_3.a.b, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) & -(_wgslsmith_mult_vec4_i32(vec4<i32>(16147i, arg_3.a.c, 2147483647i, arg_3.a.c), vec4<i32>(arg_3.a.c, 1865i, global2.x, 5425i)) & abs(vec4<i32>(global2.x, 9542i, -1i, global2.x))));
    global2 = _wgslsmith_add_vec4_i32(~(-vec4<i32>(~var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -16653i, arg_3.a.c, -38949i), vec4<i32>(-58032i, 2147483647i, 0i, 40354i)), 2147483647i, var_0)), min(_wgslsmith_mod_vec4_i32(-vec4<i32>(-66154i, var_0, 7308i, 42397i), vec4<i32>(arg_3.a.c, -2147483647i, 2147483647i, 2459i)) >> (firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_2.x, arg_3.a.b, u_input.a.x), vec4<u32>(arg_2.x, 71736u, u_input.a.x, arg_3.a.b), vec4<u32>(arg_3.a.b, arg_3.a.b, arg_3.a.b, 4294967295u))) % vec4<u32>(32u)), vec4<i32>(max(countOneBits(arg_3.a.c), -var_0), countOneBits(_wgslsmith_dot_vec3_i32(global2.xwz, vec3<i32>(arg_3.a.c, arg_3.a.c, -2147483647i))), reverseBits(_wgslsmith_add_i32(arg_3.a.c, global2.x)), var_0)));
    var var_1 = Struct_1(arg_1.x, abs(~arg_2), 2844u);
    let var_2 = Struct_4(Struct_2(arg_0, 1u, _wgslsmith_add_i32(-5392i, arg_3.a.c)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-789f, 1084f, -1171f))))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * global0[_wgslsmith_index_u32(u_input.a.x, 5u)]) - _wgslsmith_f_op_f32(max(893f, -1968f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -966f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(arg_1.x, 247f, arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_2.x, 5u)], 237f, global0[_wgslsmith_index_u32(34246u, 5u)]) * vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], -1458f, 1362f)))))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -500f), 141f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)] + -1483f))))), _wgslsmith_f_op_vec3_f32(func_4(any(func_2(Struct_1(673f, vec2<u32>(64911u, u_input.a.x), u_input.a.x), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.a, u_input.a.x))), vec2<f32>(1000f, -1000f), ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), ~u_input.a), Struct_4(global4[_wgslsmith_index_u32(max(abs(1u), ~u_input.a.x), 23u)]))));
    var var_1 = global2.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.zy);
    var var_3 = true;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-766f - _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(var_2.x * var_0.x), global3[_wgslsmith_index_u32(~u_input.a.x, 14u)], u_input.a, Struct_4(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 23u)]))).x), reverseBits(u_input.a), 9973u);
    return vec4<bool>(true, true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, !all(vec4<bool>(true, true, true, false)), all(func_1())), !vec3<bool>(true, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 5u)] - -1398f) > _wgslsmith_f_op_f32(f32(-1f) * -1331f), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), vec3<bool>(_wgslsmith_f_op_f32(-1592f + -312f) == _wgslsmith_f_op_f32(min(-997f, global0[_wgslsmith_index_u32(1u, 5u)])), false || all(vec2<bool>(true, true)), false));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(abs(1u), 5u)], min(_wgslsmith_clamp_vec2_u32(vec2<u32>(72203u, 81120u), ~_wgslsmith_div_vec2_u32(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a.x) << (_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(31834u, 29942u)) % vec2<u32>(32u))), firstLeadingBit(~u_input.a ^ vec2<u32>(u_input.a.x, u_input.a.x))), ~25153u);
    var var_2 = _wgslsmith_f_op_f32(-1101f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_1.a))))));
    global1 = firstTrailingBit(countOneBits(_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.c, var_1.c), abs(var_1.c)))) ^ ~_wgslsmith_mod_u32(~_wgslsmith_mult_u32(var_1.c, 0u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 41790u), var_1.b.x));
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b.x, _wgslsmith_mult_u32(firstTrailingBit(abs(var_1.c)), firstTrailingBit(u_input.a.x))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -329f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(239f, global0[_wgslsmith_index_u32(1u, 5u)], var_1.a))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-878f, 1988f, global0[_wgslsmith_index_u32(4294967295u, 5u)]), vec3<f32>(-987f, global0[_wgslsmith_index_u32(1u, 5u)], var_1.a)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(true, vec2<f32>(global0[_wgslsmith_index_u32(1u, 5u)], 732f), vec2<u32>(var_1.c, 50376u), Struct_4(global4[_wgslsmith_index_u32(var_1.c, 23u)])))))))));
}

