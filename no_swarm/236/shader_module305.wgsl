struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<u32>(60666u, 101879u, 51632u), vec2<i32>(-30380i, 2147483647i), 1u, -9014i);

var<private> global1: array<bool, 31> = array<bool, 31>(true, true, true, false, true, true, true, true, true, false, false, true, true, true, false, false, false, true, true, true, true, true, true, true, true, false, true, false, true, true, false);

var<private> global2: Struct_1;

var<private> global3: i32 = i32(-2147483648);

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!select(select(select(vec2<bool>(global2.a.x, global0.a.x), global2.a, global0.a), !global0.a, vec2<bool>(global2.a.x, true)), vec2<bool>(global2.a.x, true), _wgslsmith_mod_u32(u_input.b.x, global2.d) > ~1u), ~vec3<u32>(u_input.b.x ^ 0u, global2.d, 1u) & global0.b, ~vec2<i32>(2147483647i, _wgslsmith_clamp_i32(global2.e, global0.e, -9722i) ^ global0.e), countOneBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(global2.b.x, 4294967295u), ~global0.b.x)) << (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(global2.e, global2.e, global0.e), vec3<i32>(2147483647i, global0.e, 27960i)), -firstTrailingBit(vec3<i32>(-1i, global0.e, global0.c.x))));
    let var_1 = 1u;
    return Struct_1(vec2<bool>(var_0.a.x, false), firstTrailingBit(global0.b), vec2<i32>(i32(-1i) * -3547i, global0.e), ~u_input.b.x, -global2.e);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -(vec3<i32>(28155i, i32(-1i) * -43060i, global2.e) & select(_wgslsmith_add_vec3_i32(vec3<i32>(9768i, global0.e, -2147483647i), vec3<i32>(global2.e, arg_1.c.x, global0.c.x) | vec3<i32>(global0.c.x, global0.c.x, -12071i)), ~(vec3<i32>(2147483647i, global2.e, -1i) & vec3<i32>(-17817i, global2.c.x, arg_1.c.x)), vec3<bool>(true, all(global0.a), true)));
    let var_1 = arg_1;
    let var_2 = !select(vec3<bool>(global2.a.x, true || (416f <= arg_0), all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), !vec3<bool>(!global1[_wgslsmith_index_u32(var_1.b.x, 31u)], true, true | global2.a.x), _wgslsmith_f_op_f32(258f * _wgslsmith_f_op_f32(step(-1280f, -254f))) < arg_0);
    global4 = !func_2().a;
    let var_3 = Struct_1(select(func_2().a, vec2<bool>(arg_1.a.x && (var_2.x && false), true), vec2<bool>(~1u == firstTrailingBit(u_input.a.x), any(vec2<bool>(false, false)))), global0.b, firstLeadingBit(~vec2<i32>(33108i, -global2.e)), _wgslsmith_div_u32(~(~_wgslsmith_sub_u32(19137u, global0.b.x)), ~global2.d), ~25873i);
    return func_2();
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: u32) -> vec4<bool> {
    let var_0 = func_3(_wgslsmith_f_op_f32(-344f * 182f), func_2());
    var var_1 = select(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global0.e, var_0.c.x, arg_0.x, -29631i) & vec4<i32>(global0.c.x, arg_0.x, var_0.c.x, -1522i), ~vec4<i32>(0i, arg_0.x, 1i, -4492i), !vec4<bool>(var_0.a.x, false, false, global2.a.x)), select(select(vec4<i32>(arg_0.x, var_0.c.x, var_0.e, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, global0.c.x, var_0.c.x), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(global0.d, 31u)])), abs(vec4<i32>(7445i, -2147483647i, 0i, var_0.e)), false), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(global2.c.x, 0i, var_0.e, 16878i)), vec4<i32>(arg_0.x, var_0.e, arg_0.x, var_0.c.x) ^ vec4<i32>(2147483647i, 2147483647i, -4502i, global0.c.x))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.e, arg_0.x, global0.c.x, 25015i) << (vec4<u32>(arg_1.x, 4294967295u, 72456u, 1u) % vec4<u32>(32u)), vec4<i32>(-10978i, arg_0.x, global2.e, -1i) | vec4<i32>(-71078i, 0i, var_0.e, var_0.e), vec4<i32>(-39101i, global0.c.x, -2147483647i, arg_0.x))), ~vec4<i32>(-var_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(31681i, -2147483647i), global2.c | vec2<i32>(var_0.c.x, arg_0.x)), arg_0.x, countOneBits(reverseBits(2147483647i))), any(!vec3<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 31u)], global4.x)), global4.x, true)));
    var var_2 = Struct_1(vec2<bool>(var_0.a.x, true), ~_wgslsmith_clamp_vec3_u32(reverseBits(u_input.a), firstTrailingBit(global2.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.d, global2.b.x, 16731u), vec3<u32>(0u, u_input.a.x, 55851u), ~vec3<u32>(var_0.b.x, global0.b.x, arg_1.x))), vec2<i32>(_wgslsmith_div_i32(global2.c.x, _wgslsmith_div_i32(func_2().c.x, global2.e)), i32(-1i) * -1i), var_0.d, global2.e);
    let var_3 = _wgslsmith_add_vec2_u32(max(~var_0.b.yx, select(~reverseBits(vec2<u32>(var_0.d, 7522u)), var_2.b.yz, var_0.a)), ~abs(abs(global2.b.xz)));
    let var_4 = firstTrailingBit(vec2<i32>(-1i, -2373i)) & -var_1.zw;
    return vec4<bool>(func_2().a.x, all(select(select(!vec4<bool>(false, global4.x, var_2.a.x, false), select(vec4<bool>(var_0.a.x, true, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global0.a.x), vec4<bool>(false, global2.a.x, global4.x, global4.x), var_0.a.x), true), !(!vec4<bool>(true, false, var_2.a.x, true)), vec4<bool>(global4.x, global4.x && false, !global2.a.x, !global0.a.x))), global2.a.x, select(all(vec4<bool>(any(global0.a), var_2.a.x, false, any(vec3<bool>(true, false, false)))), true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), global0.b.x), min(~u_input.b.x, max(~global2.b.x, _wgslsmith_add_u32(4497u, u_input.a.x))) ^ 1u, global0.b.x);
    let var_1 = select(func_1(vec2<i32>(_wgslsmith_add_i32(global0.c.x & 0i, ~global0.e), global0.e), reverseBits(vec3<u32>(0u, 47952u, u_input.b.x) << (abs(vec3<u32>(35379u, global0.b.x, global0.d)) % vec3<u32>(32u))), 9677u), !vec4<bool>(!select(global2.a.x, global0.a.x, global0.a.x), (global0.e != global2.c.x) | global1[_wgslsmith_index_u32(1u, 31u)], !(global2.e < 31219i), global4.x), vec4<bool>(select(global1[_wgslsmith_index_u32(~(~var_0.x), 31u)], false, global2.a.x), !global1[_wgslsmith_index_u32(~4294967295u, 31u)], false, true));
    global4 = global2.a;
    let var_2 = Struct_1(vec2<bool>(all(vec2<bool>(select(false, global4.x, false), 37995u == global2.b.x)), !(!select(global0.a.x, global1[_wgslsmith_index_u32(var_0.x, 31u)], var_1.x))), vec3<u32>(~(_wgslsmith_sub_u32(global0.d, 31177u) << (var_0.x % 32u)), firstLeadingBit(~select(global2.d, global2.b.x, false)), 4294967295u), -vec2<i32>(_wgslsmith_mult_i32(0i, -3846i ^ global2.e), 42562i), _wgslsmith_div_u32(abs(global2.d), u_input.a.x), _wgslsmith_mult_i32(global0.e, 2147483647i) & global2.e);
    global1 = array<bool, 31>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1256f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f) - _wgslsmith_f_op_f32(-685f - 1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(427f * _wgslsmith_f_op_f32(round(803f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f * 1282f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~max(var_2.b.x, global2.b.x) << (~1u % 32u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(reverseBits(38561u), ~global2.d), abs(global2.b.x), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~0u), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, var_0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(61899u, 61128u), vec2<u32>(4294967295u, var_0.x)))), var_2.b.x), _wgslsmith_sub_i32(var_2.c.x, func_3(_wgslsmith_f_op_f32(step(var_3, _wgslsmith_f_op_f32(495f * -1087f))), var_2).c.x));
}

