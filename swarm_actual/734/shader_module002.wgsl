struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16>;

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(53507i, i32(-2147483648)), vec2<i32>(-1i, 4982i), vec2<i32>(i32(-2147483648), 3974i), vec2<i32>(2147483647i, 11322i), vec2<i32>(-15275i, 1i), vec2<i32>(-22320i, i32(-2147483648)), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(33081i, -1i), vec2<i32>(60628i, -15629i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(31i, 19783i), vec2<i32>(0i, 0i), vec2<i32>(-1i, -51934i), vec2<i32>(2147483647i, -1i), vec2<i32>(-17143i, -14040i), vec2<i32>(0i, 1i), vec2<i32>(66841i, -68302i), vec2<i32>(-15611i, -32681i), vec2<i32>(1i, -28545i), vec2<i32>(-13818i, i32(-2147483648)), vec2<i32>(-1i, 27261i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -9674i), vec2<i32>(1i, 69872i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-11854i, 0i), vec2<i32>(2147483647i, -6738i), vec2<i32>(-30356i, 1i), vec2<i32>(8680i, -17744i), vec2<i32>(-2115i, -27460i));

var<private> global2: array<vec2<i32>, 19>;

var<private> global3: vec3<bool>;

var<private> global4: vec4<u32> = vec4<u32>(0u, 39082u, 5950u, 11963u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<f32> {
    var var_0 = true;
    let var_1 = u_input.b.x | (_wgslsmith_div_i32(-u_input.a, ~_wgslsmith_div_i32(u_input.b.x, 2147483647i)) ^ abs(_wgslsmith_mult_i32(0i, -2147483647i)));
    var var_2 = Struct_3(2147483647i);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1695f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(976f)) * -511f));
    var var_4 = ~u_input.d.x;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(643f, -742f) + var_3), _wgslsmith_f_op_vec2_f32(var_3 - var_3), true)))), var_3));
}

fn func_2(arg_0: Struct_3) -> bool {
    global3 = vec3<bool>(!global3.x, ~0i != arg_0.a, global3.x);
    global0 = array<bool, 16>();
    global0 = array<bool, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3()), vec2<f32>(_wgslsmith_f_op_f32(-927f + 626f), -741f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(653f, -1308f), vec2<f32>(1062f, 657f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1061f, -158f))))));
    let var_1 = 1000f;
    return global3.x;
}

fn func_1() -> Struct_2 {
    var var_0 = firstTrailingBit(select(_wgslsmith_sub_vec2_u32(firstTrailingBit(global4.zw) | ~u_input.d, global4.yz), firstTrailingBit(global4.xz), any(vec4<bool>(global0[_wgslsmith_index_u32(global4.x, 16u)], global3.x, global3.x, false)) || true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-605f + -439f));
    var var_2 = vec3<bool>(func_2(Struct_3(u_input.b.x)), false, true);
    let var_3 = Struct_1(u_input.c.x, ~u_input.b.x, _wgslsmith_mult_i32(abs(u_input.a), _wgslsmith_dot_vec2_i32(min(~vec2<i32>(-2147483647i, -1i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, u_input.d.x, 36311u, u_input.d.x), vec4<u32>(1u, 1u, 66378u, var_0.x)), 19u)]), firstTrailingBit(countOneBits(vec2<i32>(4333i, -1i))))), u_input.c.zy >> ((global4.xx << (vec2<u32>(_wgslsmith_dot_vec3_u32(global4.wzx, vec3<u32>(4294967295u, 1u, global4.x)), _wgslsmith_add_u32(0u, global4.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_4 = global4.yxx & vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(global4.xyw, global4.zxx, vec3<u32>(var_0.x, 4294967295u, var_0.x)), firstTrailingBit(vec3<u32>(global4.x, var_0.x, 71689u))), 4294967295u, ~global4.x);
    return Struct_2(firstTrailingBit(var_3.c | -min(u_input.c.x, var_3.c)), -676f, ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, var_4.x, 28876u, 23490u)), ~vec4<u32>(26595u, 1u, 0u, u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(global3.x, true);
    global1 = array<vec2<i32>, 30>();
    let var_1 = -25869i;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = func_1();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2 - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(abs(var_3.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1, var_3.a), vec3<i32>(var_1, var_3.a, -1i)), var_1, _wgslsmith_sub_i32(-18000i, var_1)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, var_3.c.x, global4.x, 0u), vec4<u32>(var_3.c.x, 66387u, global4.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(75583u, 4294967295u, 4294967295u, u_input.d.x), vec4<u32>(global4.x, 1u, 1u, var_3.c.x))) % vec4<u32>(32u))));
}

