struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
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

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: bool = false;

var<private> global3: array<vec3<bool>, 30>;

var<private> global4: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    global1 = array<Struct_1, 24>();
    var var_0 = Struct_1(countOneBits(1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-383f, -923f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(678f * -971f), arg_0.b.x) * _wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(-arg_0.b)))));
    global4 = arg_0.a;
    let var_1 = arg_0;
    let var_2 = 4294967295u;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(0u & select(u_input.b.x, u_input.b.x, false), ~1u)), 24u)]);
    global4 = var_0.x >> ((8390u << (~u_input.b.x % 32u)) % 32u);
    global0 = firstTrailingBit(_wgslsmith_sub_vec3_i32(-abs(-vec3<i32>(30426i, global0.x, -70196i)), vec3<i32>(_wgslsmith_add_i32(-global0.x, 2147483647i ^ u_input.e), 0i, global0.x)));
    global4 = 1u;
    global4 = u_input.b.x;
    var var_1 = 30570u;
    let var_2 = Struct_1(~(u_input.b.x & u_input.b.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(118f - -2039f), _wgslsmith_f_op_f32(f32(-1f) * -429f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1014f, -333f) - vec2<f32>(252f, -793f)))))));
    var var_3 = reverseBits(-_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global0.xx, global0.yz), abs(u_input.a), -1i), abs(vec3<i32>(0i, global0.x, -3098i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(vec4<i32>(-2147483647i, u_input.c, global0.x, u_input.a), vec4<i32>(4940i, 0i, global0.x, 21534i) & vec4<i32>(57832i, global0.x, -9671i, global0.x)) | ((vec4<i32>(1i, u_input.a, global0.x, global0.x) << (vec4<u32>(4294967295u, 4294967295u, 7881u, 4294967295u) % vec4<u32>(32u))) & abs(vec4<i32>(1i, var_3.x, 13932i, global0.x)))));
}

