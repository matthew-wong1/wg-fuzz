struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec3<u32>(0u, 1u, 4294967295u)), vec2<f32>(-1083f, 1281f), 766f, Struct_1(-578f, -459f, -1137f, vec4<u32>(0u, 1u, 1u, 4786u)));

var<private> global2: bool;

var<private> global3: array<vec4<bool>, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = global1.a;
    var var_1 = true;
    global3 = array<vec4<bool>, 13>();
    global2 = -826f > _wgslsmith_f_op_f32(abs(global1.c));
    let var_2 = -1377i;
    return -abs(~_wgslsmith_mult_i32(u_input.a, 34959i));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>) -> f32 {
    var var_0 = true;
    global2 = true;
    global1 = arg_0.a;
    var var_1 = firstTrailingBit(~vec2<i32>(u_input.a, u_input.a));
    var_0 = all(vec2<bool>(all(vec3<bool>(true, true, true)) && ((arg_0.a.a.a.x << (global1.a.a.x % 32u)) < ~4294967295u), true));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(global3[_wgslsmith_index_u32(global1.d.d.x, 13u)]);
    global3 = array<vec4<bool>, 13>();
    let var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.d.d.x, 37468u) >> (global1.a.a.yx % vec2<u32>(32u)), ~global1.a.a.zy, ~vec2<u32>(4294967295u, _wgslsmith_mult_u32(4294967295u, global1.d.d.x))) | ~(~select(vec2<u32>(global1.d.d.x, 1u) >> (vec2<u32>(0u, global1.a.a.x) % vec2<u32>(32u)), ~global1.a.a.yy, select(vec2<bool>(true, true), vec2<bool>(false, true), true)));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-global1.b.x)), global1.a.a);
    let var_3 = vec3<u32>(~countOneBits(_wgslsmith_dot_vec3_u32(~global1.d.d.yzz, global1.d.d.wwy)), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(26467u, var_1.x), global1.a.a.x ^ var_1.x), var_1.x), global1.a.a.x >> (var_1.x % 32u));
    global2 = (-(func_1(200f) | u_input.a) == (-37993i << (1u % 32u))) & true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(1334f)), vec3<f32>(var_2.a, -452f, _wgslsmith_f_op_f32(func_2(Struct_4(Struct_3(global1.a, vec2<f32>(var_2.a, -134f), global1.c, Struct_1(global1.d.b, global1.b.x, -1007f, global1.d.d)), all(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(391f, global1.d.a, global1.d.b))))));
}

