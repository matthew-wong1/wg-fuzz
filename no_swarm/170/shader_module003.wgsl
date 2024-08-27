struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 238i, -1i);

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<vec4<bool>, 8>;

var<private> global4: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, 0i, -38071i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1() -> i32 {
    global0 = -firstLeadingBit(u_input.e.wyy);
    var var_0 = vec4<bool>(!((true | (2147483647i == global1.x)) || true), false || any(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), true, false);
    global0 = vec3<i32>(i32(-1i) * -global4.x, abs(abs(global1.x)), _wgslsmith_add_i32(0i, ~(~global1.x))) ^ max(global4.xyy | (vec3<i32>(global0.x, -1065i, global4.x) | -vec3<i32>(-62615i, global1.x, 1i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0.x, 28377i), global4.yyx), vec3<i32>(global1.x, ~global1.x, ~u_input.a)));
    var var_1 = global4.zxz;
    let var_2 = select(var_0.xyw, var_0.wxw, !vec3<bool>(var_0.x, var_0.x, any(!vec3<bool>(var_0.x, var_0.x, false))));
    return firstTrailingBit(37147i & _wgslsmith_add_i32(global0.x, -2019i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1293f);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1503f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)))));
    var var_2 = u_input.c;
    let var_3 = vec2<u32>(u_input.d | 54819u, ~0u);
    var var_4 = vec4<i32>(-1i, max(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-6439i, global1.x, u_input.e.x)), -vec3<i32>(0i, -1i, -16864i)), u_input.e.wxx), ~global4.x), 2147483647i, _wgslsmith_add_i32(func_1(), abs(-18562i | u_input.a)) << (23946u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(global1.x >> (reverseBits(1u) % 32u), global4.x, false), var_3, 16248u);
}

