struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(true, vec4<bool>(false, false, true, false), false), Struct_1(true, vec4<bool>(false, true, true, true), false), Struct_1(true, vec4<bool>(false, true, false, true), false), Struct_1(true, vec4<bool>(false, false, false, false), false), Struct_1(false, vec4<bool>(false, true, false, true), true), Struct_1(true, vec4<bool>(true, true, false, true), true), Struct_1(true, vec4<bool>(false, true, false, true), true), Struct_1(true, vec4<bool>(false, true, false, false), true), Struct_1(true, vec4<bool>(true, true, true, true), false), Struct_1(true, vec4<bool>(true, false, true, false), false), Struct_1(false, vec4<bool>(true, true, true, true), true), Struct_1(true, vec4<bool>(true, false, false, true), false), Struct_1(true, vec4<bool>(true, false, false, true), false), Struct_1(true, vec4<bool>(true, false, false, false), true), Struct_1(false, vec4<bool>(true, false, false, false), false), Struct_1(true, vec4<bool>(true, false, false, true), true), Struct_1(false, vec4<bool>(true, true, false, true), true), Struct_1(true, vec4<bool>(true, true, true, true), true), Struct_1(false, vec4<bool>(false, true, true, true), true), Struct_1(true, vec4<bool>(false, false, true, true), true));

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> u32 {
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 972f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), var_0, 602f));
    global3 = -(~(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b, u_input.b, global3.x) ^ vec4<i32>(u_input.b, global3.x, global3.x, -2147483647i), ~vec4<i32>(-1i, 80212i, 53725i, u_input.b)) | _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 23701i, -1i, global3.x), vec4<i32>(41396i, 1i, global3.x, 12829i)), countOneBits(vec4<i32>(0i, global3.x, global3.x, global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global3.xwx ^ -vec3<i32>(0i, -1i, -1i), _wgslsmith_add_vec3_i32(-global3.yyw, vec3<i32>(1i, -2147483647i, u_input.b))), -36597i, global3.x), _wgslsmith_f_op_f32(-536f * _wgslsmith_f_op_f32(-588f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_1.x))), vec3<i32>(-global3.x, _wgslsmith_dot_vec2_i32(global3.yx | global3.zz, global3.zz), _wgslsmith_sub_i32(-56189i, 1i)) << (vec3<u32>(0u, _wgslsmith_sub_u32(func_1(), ~15628u), 0u) % vec3<u32>(32u)), ~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(11303u, 51954u))), 4294967295u & u_input.a);
}

