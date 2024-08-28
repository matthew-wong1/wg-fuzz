struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(32876u, vec4<bool>(true, true, false, false), 4657i, Struct_1(vec3<u32>(0u, 4294967295u, 1u), 4294967295u, vec4<u32>(0u, 17619u, 28360u, 51170u), -1000f, vec2<f32>(1000f, -104f)));

var<private> global1: bool = true;

var<private> global2: vec3<u32> = vec3<u32>(30632u, 0u, 4294967295u);

var<private> global3: array<vec2<f32>, 12>;

var<private> global4: Struct_3;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: i32) -> u32 {
    var var_0 = Struct_2(~(~min(8891u, ~19395u)), vec4<bool>(all(select(select(vec4<bool>(global0.b.x, true, global4.b.x, true), vec4<bool>(true, global0.b.x, true, true), false), global0.b, vec4<bool>(global4.b.x, true, false, false))), all(global0.b.zw), true, false), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -5199i, global0.c, global0.c), (vec4<i32>(2147483647i, -2147483647i, -5462i, -9061i) << (vec4<u32>(global2.x, 1u, global0.a, global2.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_i32(vec4<i32>(-38324i, arg_1, u_input.c.x, -2147483647i), vec4<i32>(2147483647i, 0i, 2147483647i, -1i))), -u_input.b), Struct_1(~(~select(u_input.a, vec3<u32>(1u, u_input.e, global2.x), global0.b.yzy)), u_input.a.x, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(global0.d.c, vec4<u32>(global0.a, global0.a, 4294967295u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.d.c.x, 106509u, 0u, global0.d.a.x), global0.d.c)), ~(global0.d.c << (global0.d.c % vec4<u32>(32u)))), global4.c.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(global4.c, vec2<f32>(global0.d.e.x, -852f), global4.b.x)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-271f - -310f))))));
    global4 = Struct_3(~_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(49833i, ~arg_1, max(2147483647i, -28324i))), !global0.b.zy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-819f))), -123f), !any(vec2<bool>(false, all(vec3<bool>(true, global4.b.x, false)))), -2147483647i);
    let var_1 = 11118i;
    var var_2 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(_wgslsmith_mult_u32(1u, global0.a), global2.x | 12665u, ~70654u) << (vec3<u32>(1u & global2.x, 9678u >> (var_0.a % 32u), 0u) % vec3<u32>(32u))), vec3<u32>(var_0.d.b, global2.x, var_0.d.c.x));
    var var_3 = ~var_0.c;
    return abs(12811u);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_3(u_input.c | reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, 13037i) & _wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, global0.c), vec3<i32>(2147483647i, global4.a.x, -14494i))), arg_0, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.x, u_input.e), 12u)], false, ~0i);
    let var_1 = ~(~func_3(_wgslsmith_f_op_f32(-global4.c.x), -2147483647i)) > _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, _wgslsmith_dot_vec4_u32(global0.d.c, vec4<u32>(u_input.e, 10125u, global0.d.c.x, 0u)), global0.a, min(4294967295u, 44452u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(global0.d.c, vec4<u32>(0u, u_input.a.x, 0u, u_input.e), global0.b), vec4<u32>(84310u, global2.x, u_input.e, global0.d.b)), firstTrailingBit(global0.d.c), vec4<u32>(3676u, _wgslsmith_mult_u32(global2.x, 72371u), global0.d.a.x << (28933u % 32u), abs(1u))));
    var var_2 = vec4<i32>(9593i, -42125i, 0i, _wgslsmith_add_i32(global4.a.x, 19308i)) >> (min(vec4<u32>(~1u, global0.d.b, _wgslsmith_mod_u32(u_input.d, _wgslsmith_mod_u32(4294967295u, global0.d.b)), ~34386u), global0.d.c) % vec4<u32>(32u));
    let var_3 = max(_wgslsmith_mult_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(1u, 24658u, 0u), 1u), min(~global0.d.c.x, global0.d.c.x)), u_input.a.x);
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(select(~4294967295u, firstTrailingBit(0u), all(arg_0)), ~abs(4294967295u), _wgslsmith_dot_vec3_u32(abs(global0.d.a), abs(global0.d.a))) | 3812u, 4294967295u);
    return Struct_1(vec3<u32>(0u, firstTrailingBit(global2.x), ~0u), firstTrailingBit(1u), abs(~vec4<u32>(abs(1u), 54303u, ~26298u, var_3)), _wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-621f, global4.c.x), 1216f)), vec2<f32>(_wgslsmith_f_op_f32(1062f * var_0.c.x), global0.d.e.x)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global2 = _wgslsmith_mult_vec3_u32(~select(max(global0.d.a, u_input.a), vec3<u32>(22640u, 55123u, 7372u), vec3<bool>(global4.b.x, global4.d, false)) >> (vec3<u32>(~26293u >> (global2.x % 32u), 1u, _wgslsmith_mod_u32(46742u | global2.x, 1u)) % vec3<u32>(32u)), u_input.a);
    let var_0 = func_2(vec2<bool>(!(!(!global4.b.x)), !global4.b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(round(-630f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-127f, _wgslsmith_f_op_f32(trunc(global4.c.x)))))), func_2(vec2<bool>(true, false)).d, global4.c.x));
    global3 = array<vec2<f32>, 12>();
    let var_2 = -select(min(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, 51628i, 8126i), vec3<i32>(u_input.c.x, 0i, 2147483647i)), max(vec3<i32>(0i, u_input.c.x, global4.e), global4.a)), firstTrailingBit(vec3<i32>(global0.c, -26190i, 1i) ^ vec3<i32>(14709i, global0.c, 50780i)), select(select(vec3<bool>(true, global4.b.x, global0.b.x), vec3<bool>(global4.b.x, false, global0.b.x), true), vec3<bool>(true, global0.b.x, global4.d), !global0.b.xyz)) << (vec3<u32>(~(~(~0u)), ~(abs(u_input.e) ^ ~global0.a), ~(~var_0.b)) % vec3<u32>(32u));
    return StorageBuffer(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(!(!(!(!vec2<bool>(global4.b.x, global0.b.x)))));
    let x = u_input.a;
    s_output = func_1(global0.c);
}

