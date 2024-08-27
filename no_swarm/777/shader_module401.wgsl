struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21>;

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: Struct_3;

var<private> global3: i32;

var<private> global4: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = false;
    global4 = ~(~firstLeadingBit(vec3<u32>(global2.b.b.x, 1u, 82535u) >> (max(vec3<u32>(21857u, global2.b.b.x, global4.x), vec3<u32>(global2.a.b.x, global4.x, global2.a.b.x)) % vec3<u32>(32u))));
    global3 = _wgslsmith_dot_vec2_i32(-(~global2.e.b.yx), global2.e.b.xz >> (~(~global4.xz) % vec2<u32>(32u))) << (global2.c % 32u);
    var var_1 = vec4<bool>(!any(select(global1[_wgslsmith_index_u32(u_input.b, 15u)], vec2<bool>(false, global2.a.c), global1[_wgslsmith_index_u32(30238u, 15u)])), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(15897i, 1i), global2.d.x) <= arg_0.b.x, global2.b.c, false);
    var var_2 = global2.a;
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(global2.d, vec3<i32>(-2147483647i, 726i, global2.e.b.x))), ~(-arg_0.b)), min(_wgslsmith_sub_i32(~(arg_0.b.x >> (u_input.b % 32u)), ~(-9804i)), global2.e.b.x), _wgslsmith_div_i32(min(-2147483647i, max(global2.d.x, global2.e.b.x)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(39001i, 366i, global2.d.x, global2.d.x), vec4<i32>(arg_0.b.x, arg_0.b.x, 74902i, global2.d.x)))));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_4 {
    global1 = array<vec2<bool>, 15>();
    global3 = _wgslsmith_add_i32(_wgslsmith_add_i32(global2.e.b.x >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c, 0u), global4.zx), arg_1) % 32u), func_3(global2.e) << (32062u % 32u)), -1i);
    var var_0 = ~select(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_sub_vec3_u32(global2.a.b.zzz, global2.b.b.ywy)), global2.b.b.wwz), firstTrailingBit(vec3<u32>(firstTrailingBit(1u), 1526u, 1u)), select(vec3<bool>(global2.a.c, any(vec3<bool>(true, global2.a.c, true)), all(vec3<bool>(global2.b.c, global2.b.c, global2.a.c))), !vec3<bool>(true, global2.a.c, true), select(select(vec3<bool>(global2.b.c, false, global2.b.c), vec3<bool>(global2.b.c, false, false), vec3<bool>(true, global2.a.c, false)), !vec3<bool>(global2.b.c, global2.a.c, global2.a.c), !global2.a.c)));
    var var_1 = countOneBits(~countOneBits(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-32693i, global2.e.b.x, global2.e.b.x, 22563i), vec4<i32>(1i, 2147483647i, -7027i, global2.e.b.x), false), vec4<i32>(0i, -2147483647i, 1692i, global2.d.x), vec4<i32>(1i, 0i, global2.e.b.x, global2.d.x))));
    var var_2 = Struct_2(-101f, global2.b.b >> (vec4<u32>(arg_1, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global2.b.b.yw, vec2<u32>(1u, global4.x)), select(u_input.a.x, arg_0, global2.a.c)), ~firstTrailingBit(1u), 77095u) % vec4<u32>(32u)), all(vec4<bool>(global2.a.c, true, true, global2.b.c)));
    return Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(-575f - -891f), vec4<u32>(~var_0.x, ~78163u, arg_0, 4294967295u), false), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a)), vec4<u32>(~arg_0, var_0.x, var_0.x, abs(arg_1)), !any(vec2<bool>(global2.a.c, var_2.c))), 1u, vec3<i32>(~1i, func_3(Struct_1(global2.e.a, global2.e.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global2.d.x, global2.d.x), var_1.yyz), max(global2.d, var_1.xwy))), Struct_1(_wgslsmith_f_op_vec3_f32(select(global2.e.a, vec3<f32>(-1732f, global2.a.a, -614f), var_2.c)), ~select(var_1.xzy, vec3<i32>(-1i, 13754i, 1i), vec3<bool>(global2.b.c, false, var_2.c)))));
}

fn func_1() -> u32 {
    var var_0 = global2.e;
    global0 = array<Struct_5, 21>();
    var var_1 = true;
    var var_2 = global2.e.a.x;
    var var_3 = Struct_5(func_2(global4.x, 4294967295u), -2147483647i, func_2(81512u, (u_input.a.x ^ ~1u) | global2.c).a.a, func_2(global2.a.b.x, global2.a.b.x).a);
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -299f;
    global4 = abs(vec3<u32>(global4.x, min(4169u, global2.c), _wgslsmith_div_u32((global2.b.b.x & 4294967295u) ^ 4294967295u, func_1() >> (3387u % 32u))));
    let var_1 = _wgslsmith_mod_u32(4294967295u, select(firstLeadingBit(1u), ~firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, global2.a.b.x)), global2.b.c));
    global4 = ~firstLeadingBit(~vec3<u32>(29949u | u_input.b, var_1, _wgslsmith_dot_vec4_u32(global2.b.b, u_input.a)));
    global2 = Struct_3(func_2(~_wgslsmith_dot_vec3_u32(func_2(u_input.a.x, var_1).a.b.b.xyw, firstTrailingBit(global2.b.b.yxz)), ~(global2.b.b.x & 1u)).a.a, func_2(4294967295u, _wgslsmith_clamp_u32(4294967295u >> (global4.x % 32u), max(u_input.a.x, 4294967295u | global2.c), 1u)).a.b, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.yy, vec2<u32>(4294967295u, 0u)), firstLeadingBit(global2.b.b.zy)), global2.b.b.x), (vec3<i32>(~global2.d.x, global2.e.b.x, _wgslsmith_mult_i32(global2.e.b.x, global2.e.b.x)) ^ abs(vec3<i32>(-34807i, 1i, 13762i))) << ((vec3<u32>(~17372u, func_1(), 0u) << (vec3<u32>(55318u, 2676u, select(global4.x, 4294967295u, global2.a.c)) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(global2.e.a)), countOneBits(global2.d)));
    var var_2 = Struct_5(Struct_4(Struct_3(global2.b, global2.b, min(global4.x, 20792u) & ~var_1, _wgslsmith_div_vec3_i32(-global2.d, func_2(4312u, 7458u).a.d), Struct_1(global2.e.a, global2.e.b))), -countOneBits(_wgslsmith_div_i32(-2147483647i << (global4.x % 32u), global2.d.x)), Struct_2(-211f, ~global2.b.b, any(!vec3<bool>(true, global2.a.c, global2.b.c))), Struct_3(Struct_2(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(abs(1254f))), reverseBits(~u_input.a), select(!global2.b.c, global2.a.c, global2.b.c)), Struct_2(_wgslsmith_f_op_f32(-func_2(0u, 81986u).a.a.a), max(vec4<u32>(0u, var_1, 1u, 0u), vec4<u32>(var_1, 27976u, var_1, 1u)), global2.b.c), 0u, vec3<i32>(_wgslsmith_mult_i32(1i, 2147483647i), 18603i, 0i), Struct_1(global2.e.a, vec3<i32>(-1i, 0i, -6577i))));
    var var_3 = Struct_5(var_2.a, ~global2.e.b.x, func_2(_wgslsmith_div_u32(global2.c, 4294967295u) | 7478u, global2.a.b.x).a.a, Struct_3(var_2.a.a.a, global2.b, var_2.c.b.x, var_2.a.a.d, Struct_1(vec3<f32>(_wgslsmith_div_f32(var_0, var_2.d.b.a), var_0, _wgslsmith_f_op_f32(f32(-1f) * -880f)), _wgslsmith_add_vec3_i32(var_2.a.a.e.b, var_2.a.a.e.b))));
    var var_4 = var_2.d;
    global2 = var_2.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.a, _wgslsmith_f_op_f32(step(2115f, _wgslsmith_f_op_f32(trunc(var_0))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d.e.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.d.e.a.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(652f, 394f, var_3.a.a.a.a, var_0), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1149f, -1339f, -1000f, var_3.d.b.a))))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-575f, _wgslsmith_f_op_f32(step(var_4.b.a, -1456f)), _wgslsmith_f_op_f32(min(383f, -705f)), _wgslsmith_f_op_f32(var_2.a.a.a.a - -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1048f, var_3.c.a, -555f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(707f, -331f, var_3.c.a, var_3.a.a.a.a) + vec4<f32>(1508f, 875f, var_0, 686f))), select(!vec4<bool>(var_4.b.c, false, true, var_4.a.c), vec4<bool>(global2.a.c, var_2.a.a.a.c, var_3.c.c, var_4.b.c), select(vec4<bool>(var_2.c.c, global2.b.c, false, global2.a.c), vec4<bool>(var_2.c.c, true, false, var_2.d.b.c), var_2.c.c))))), -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.e.a.x, -810f) + _wgslsmith_f_op_vec2_f32(round(global2.e.a.xz)))))), max(firstTrailingBit(select(vec2<i32>(-17772i, var_4.d.x), vec2<i32>(global2.d.x, 14175i), true)), ~(-vec2<i32>(var_3.d.d.x, var_4.e.b.x))));
}

