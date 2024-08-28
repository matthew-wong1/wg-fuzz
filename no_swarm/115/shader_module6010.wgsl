struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: Struct_1;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: Struct_2 = Struct_2(1692f, vec3<bool>(false, true, false));

var<private> global3: vec3<u32> = vec3<u32>(1u, 16115u, 33605u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, -1000f, global0.a.x))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(f32(-1f) * -1549f), -564f)), ~u_input.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-217f, _wgslsmith_f_op_f32(select(global2.a, global2.a, false)), false)) + -1665f))), -select(global0.b, _wgslsmith_clamp_i32(~(-1i), reverseBits(global0.b), _wgslsmith_div_i32(13717i, u_input.c.x)), false));
    global1 = max(-2171i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-global0.b, -u_input.e.x, countOneBits(u_input.e.x)), u_input.e.zwx));
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~abs(~u_input.d), 4294967295u, ~_wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(4294967295u, 82528u))), reverseBits(~vec3<u32>(133272u, global3.x ^ 8861u, 4294967295u)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 957u, u_input.a), vec3<u32>(40672u, global3.x, u_input.a)), vec3<u32>(1u, global3.x, ~38524u)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.d, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 21636u, 4294967295u), vec3<u32>(u_input.d, u_input.d, 0u))), abs(~vec3<u32>(u_input.a, global3.x, 4294967295u)))));
    let var_1 = -9990i;
    var var_2 = Struct_4(u_input.c.x, Struct_3(min(reverseBits(4294967295u), 35319u) | ~_wgslsmith_clamp_u32(var_0.x, 0u, global3.x), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, global0.b, i32(-1i) * -1i), u_input.e.yzx)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(global0.a.zy, _wgslsmith_f_op_vec2_f32(select(global0.a.yy, vec2<f32>(1116f, 1000f), global2.b.yz))))), all(vec4<bool>(false, true, true, !global2.b.x)) | all(select(select(global2.b.zy, vec2<bool>(false, false), vec2<bool>(global2.b.x, false)), vec2<bool>(global2.b.x, false), any(vec2<bool>(global2.b.x, global2.b.x)))), _wgslsmith_f_op_f32(-957f * 1201f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(1u, ~_wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(u_input.d, global3.x))));
}

