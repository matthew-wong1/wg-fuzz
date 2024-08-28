struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-512f, 264f));

var<private> global1: Struct_3 = Struct_3(vec2<bool>(true, true), Struct_1(vec2<f32>(-756f, 215f)), Struct_1(vec2<f32>(-1772f, -764f)));

var<private> global2: array<Struct_1, 23>;

var<private> global3: array<vec2<f32>, 20>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> StorageBuffer {
    var var_0 = vec4<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, 7692i), ~select(-11113i, -20857i, true), _wgslsmith_dot_vec4_i32(~vec4<i32>(35273i, -5663i, -1i, 2147483647i), firstTrailingBit(vec4<i32>(0i, 12251i, 0i, -14781i)))), -2147483647i), firstLeadingBit(5858i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, _wgslsmith_mod_i32(-38882i, 23406i)), vec2<i32>(0i, 53533i)), vec2<i32>(1i, 1i)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.a))))));
    global3 = array<vec2<f32>, 20>();
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.c.a.x)), 513f)) * vec2<f32>(-555f, -992f)));
    return StorageBuffer(var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(global0.a.x)), global1.c.a.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(0u, 20u)])))), global1.b.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global0.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 264f;
    let var_1 = global1.a.x;
    let x = u_input.a;
    s_output = func_1();
}

