struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
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

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(1u, 0u, 21535u, 32439u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 0u, 4294967295u, 51206u), vec4<u32>(48961u, 12817u, 4294967295u, 73309u), vec4<u32>(0u, 29720u, 0u, 22845u), vec4<u32>(19680u, 0u, 4294967295u, 1u), vec4<u32>(1u, 49082u, 0u, 4294967295u), vec4<u32>(13880u, 1u, 0u, 0u), vec4<u32>(26829u, 1u, 4294967295u, 50122u), vec4<u32>(41827u, 23112u, 4294967295u, 3417u), vec4<u32>(102212u, 0u, 1u, 47560u), vec4<u32>(1u, 4294967295u, 0u, 36160u), vec4<u32>(42922u, 1u, 27246u, 67699u), vec4<u32>(0u, 4294967295u, 1u, 77386u));

var<private> global1: array<vec4<bool>, 4>;

var<private> global2: vec4<bool>;

var<private> global3: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(3930u, 6712u), vec2<u32>(21035u, 17659u), vec2<u32>(89842u, 17180u), vec2<u32>(1776u, 31470u), vec2<u32>(9518u, 0u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 57388u), vec2<u32>(67202u, 7724u), vec2<u32>(37159u, 4294967295u), vec2<u32>(1u, 42625u), vec2<u32>(20955u, 9544u), vec2<u32>(1u, 3976u), vec2<u32>(0u, 1u), vec2<u32>(1u, 51901u), vec2<u32>(2871u, 30315u), vec2<u32>(1u, 18825u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 3570u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(-1i, -vec4<i32>(0i, ~_wgslsmith_sub_i32(1i, 1i), 1i, u_input.c.x << (u_input.e % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1934f, 523f) + vec2<f32>(781f, 1471f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1002f, 282f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1695f, 557f))))));
    global0 = array<vec4<u32>, 15>();
    let var_1 = true;
    var var_2 = u_input.c.x;
    return u_input.a;
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global2 = global1[_wgslsmith_index_u32(~arg_0, 4u)];
    return vec3<bool>(false || (~_wgslsmith_div_u32(arg_0, 4294967295u) > arg_0), !(_wgslsmith_clamp_u32(24082u, 1u, u_input.d.x) > ~3790u) && global2.x, !global2.x);
}

fn func_1() -> Struct_1 {
    let var_0 = func_3(func_2());
    let var_1 = Struct_1((_wgslsmith_mult_i32(u_input.c.x, -52770i << (1u % 32u)) & -19718i) << ((~firstTrailingBit(u_input.e) | ~(0u >> (1u % 32u))) % 32u), -((abs(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i)) | vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)) >> (vec4<u32>(29706u, ~25504u, 4294967295u, ~u_input.d.x) % vec4<u32>(32u))), vec2<f32>(-1642f, _wgslsmith_f_op_f32(1f * -380f)));
    global3 = array<vec2<u32>, 19>();
    let var_2 = Struct_2(var_1.c.x, var_1.b.zxw, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(600f, 1000f))), -2020f, _wgslsmith_f_op_f32(f32(-1f) * -1367f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1444f, var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(260f, 642f, var_1.c.x))))));
    let var_3 = var_1.b;
    return Struct_1(var_2.b.x, vec4<i32>(-44277i, firstTrailingBit(var_3.x), 35326i, firstTrailingBit(_wgslsmith_mod_i32(var_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(39583i, var_2.b.x), vec2<i32>(var_1.a, 80473i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !global1[_wgslsmith_index_u32(u_input.d.x, 4u)];
    let var_0 = func_1();
    let var_1 = var_0;
    let var_2 = var_0;
    let var_3 = min(vec3<u32>(u_input.d.x, _wgslsmith_div_u32(4294967295u, u_input.d.x), ~(1u << (~4294967295u % 32u))), u_input.b);
    var var_4 = firstTrailingBit(var_2.b.x);
    let var_5 = 27734i;
    var var_6 = Struct_2(var_0.c.x, var_0.b.wxz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -507f, var_2.c.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.c.x, -1345f, var_2.c.x), vec3<f32>(751f, -1754f, var_0.c.x), global2.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.c.x, -496f, -362f)))))));
    var var_7 = -6780i;
    let x = u_input.a;
    s_output = StorageBuffer(48245u);
}

