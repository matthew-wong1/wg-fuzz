struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(53393u, 4294967295u), vec2<u32>(25239u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(22560u, 1u), vec2<u32>(1u, 61012u), vec2<u32>(4258u, 0u), vec2<u32>(11924u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(6673u, 70579u), vec2<u32>(22029u, 44446u), vec2<u32>(4294967295u, 6328u), vec2<u32>(1u, 1u));

var<private> global3: array<Struct_4, 24>;

var<private> global4: vec2<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_2 {
    global1 = true;
    return arg_0.a;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = global4.x & !global4.x;
    let var_1 = u_input.a;
    let var_2 = ~(~func_2(arg_1, reverseBits(_wgslsmith_div_vec4_u32(arg_1.a.a, vec4<u32>(4294967295u, arg_1.a.a.x, arg_1.a.a.x, 6634u)))).a.x);
    global2 = array<vec2<u32>, 15>();
    let var_3 = ~(-_wgslsmith_clamp_vec2_i32(arg_0.yw, arg_0.xz, max(var_1.yy, vec2<i32>(47931i, u_input.b.x) ^ vec2<i32>(-3603i, arg_1.b))));
    return !vec4<bool>(!any(!vec4<bool>(false, false, global4.x, global4.x)), false, any(select(!vec3<bool>(global4.x, global4.x, global4.x), select(vec3<bool>(global4.x, global4.x, false), vec3<bool>(false, false, global4.x), global4.x), any(vec3<bool>(global4.x, false, global4.x)))), select(select(all(vec2<bool>(false, global4.x)), true, global4.x), !(arg_1.a.c.x <= 1451f), ~u_input.c >= firstTrailingBit(u_input.c)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(arg_0, true, all(func_3(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(0i, -15437i, arg_1.a, -1i)), Struct_3(func_2(Struct_3(Struct_2(vec4<u32>(88542u, u_input.c, 118466u, 1u), arg_1, vec4<f32>(-703f, -416f, 208f, -350f), vec4<f32>(-1361f, -1249f, 1000f, -102f)), -29264i), vec4<u32>(4294967295u, 0u, 75423u, 34394u)), ~(-11351i)))));
    global3 = array<Struct_4, 24>();
    let var_1 = -(~u_input.b);
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 40896u), max(vec2<u32>(u_input.c | u_input.c, select(8922u, u_input.c, false)), min(vec2<u32>(u_input.c, 8608u), ~vec2<u32>(u_input.c, 12094u))) & ~_wgslsmith_mod_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(60040u, u_input.c), 15u)], ~global2[_wgslsmith_index_u32(u_input.c, 15u)]));
    let var_3 = Struct_3(Struct_2(firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, var_2, 56907u), vec4<u32>(var_2, 39773u, 33273u, var_2))), Struct_1(-u_input.a.x | var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(296f, _wgslsmith_div_f32(639f, 1999f), _wgslsmith_f_op_f32(-727f + -1066f), _wgslsmith_f_op_f32(ceil(337f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(280f, -126f, -889f, 1000f), vec4<f32>(927f, -572f, 470f, -245f), vec4<bool>(global4.x, var_0, false, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(892f - -755f), _wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(step(-479f, -278f)), _wgslsmith_f_op_f32(max(-1000f, 597f))))), reverseBits(min(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-31505i, 0i, arg_1.a, -2147483647i))), var_1.x)));
    return func_2(var_3, select(var_3.a.a, abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(69213u, u_input.c, var_2, 4294967295u), vec4<u32>(u_input.c, 4294967295u, 1191u, var_2))), all(vec2<bool>(arg_0, !global4.x)))).b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> f32 {
    let var_0 = all(select(select(!func_3(vec4<i32>(arg_0.a.b.a, arg_1.a, -1i, 43995i), Struct_3(global0[_wgslsmith_index_u32(39u, 2u)], 1i)), select(!vec4<bool>(false, global4.x, false, global4.x), select(vec4<bool>(global4.x, global4.x, true, false), vec4<bool>(false, true, global4.x, global4.x), global4.x), func_3(vec4<i32>(u_input.a.x, arg_0.a.b.a, 2147483647i, -1i), Struct_3(Struct_2(arg_0.a.a, Struct_1(arg_1.a), vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.d.x, arg_0.a.c.x), arg_0.a.d), u_input.b.x))), vec4<bool>(true, u_input.c <= arg_0.a.a.x, !global4.x, all(vec2<bool>(false, global4.x)))), vec4<bool>(false, global4.x, func_3(vec4<i32>(arg_0.a.b.a, -2147483647i, arg_1.a, 0i), arg_0).x | any(vec4<bool>(false, false, false, global4.x)), true), vec4<bool>(!(u_input.b.x <= 0i), true, global4.x, _wgslsmith_div_u32(1u, 49260u) >= u_input.c)));
    let var_1 = Struct_3(Struct_2(abs(firstLeadingBit(arg_0.a.a)), Struct_1(arg_1.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.x, -339f, 349f, -157f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.x, -228f, 363f, arg_0.a.d.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-843f, 615f, 2267f, 1000f) * vec4<f32>(-640f, -309f, arg_0.a.c.x, -301f)), _wgslsmith_f_op_vec4_f32(arg_0.a.d + vec4<f32>(arg_0.a.c.x, 243f, arg_0.a.d.x, arg_0.a.d.x)), select(vec4<bool>(global4.x, true, true, var_0), vec4<bool>(true, true, true, global4.x), vec4<bool>(true, var_0, global4.x, var_0)))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.x), -1785f, -857f, 1147f)), 2147483647i);
    global2 = array<vec2<u32>, 15>();
    global4 = !vec2<bool>(!(!var_0 || (global4.x == false)), true);
    global2 = array<vec2<u32>, 15>();
    return func_2(Struct_3(func_2(arg_0, select(_wgslsmith_sub_vec4_u32(vec4<u32>(78885u, 1u, var_1.a.a.x, 4294967295u), arg_0.a.a), vec4<u32>(0u, u_input.c, 26757u, 4294967295u) & arg_0.a.a, vec4<bool>(true, global4.x, true, true))), ~(~(-2147483647i))), arg_0.a.a).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    let var_0 = u_input.a.xyx;
    var var_1 = _wgslsmith_mod_vec3_i32(countOneBits(-vec3<i32>(abs(-1i), var_0.x, 1i)), -(u_input.a.wyz << (~(~vec3<u32>(u_input.c, 8260u, u_input.c)) % vec3<u32>(32u))));
    let var_2 = Struct_1(~2147483647i);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~abs((vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c) | vec4<u32>(46134u, u_input.c, u_input.c, u_input.c)) ^ (vec4<u32>(u_input.c, 1u, 31875u, u_input.c) & vec4<u32>(u_input.c, u_input.c, u_input.c, 1u))), _wgslsmith_mod_u32(25498u, u_input.c), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(10783i, 30990i), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, var_3.a), u_input.a.wy)), i32(-1i) * -2147483647i, 2147483647i), ~(~_wgslsmith_clamp_u32(14047u, u_input.c, 82302u) << (43295u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 2u)], max(10575i, var_3.a)), func_1(global4.x, Struct_1(23503i)))), _wgslsmith_f_op_f32(func_4(Struct_3(func_2(Struct_3(global0[_wgslsmith_index_u32(u_input.c, 2u)], -1i), vec4<u32>(u_input.c, u_input.c, 55376u, u_input.c)), u_input.b.x), Struct_1(60749i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(660f, -397f)))));
}

