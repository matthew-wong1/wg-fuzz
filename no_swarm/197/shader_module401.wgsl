struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17>;

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(2147483647i, 12949i, 55463i, -11438i), 4294967295u, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)));

var<private> global3: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(vec4<i32>(-42945i, 1i, 0i, 5180i), 1i, vec3<u32>(15116u, 50542u, 1u)), Struct_4(vec4<i32>(i32(-2147483648), 48113i, -18151i, -4849i), -26193i, vec3<u32>(0u, 1u, 4294967295u)), Struct_4(vec4<i32>(0i, 40621i, -1i, -10416i), 21740i, vec3<u32>(4294967295u, 0u, 1u)), Struct_4(vec4<i32>(-52752i, -1i, 4027i, 37531i), 2147483647i, vec3<u32>(0u, 34822u, 17858u)), Struct_4(vec4<i32>(-1i, 0i, 1i, 1i), 11396i, vec3<u32>(20866u, 1u, 4294967295u)), Struct_4(vec4<i32>(-1i, 76350i, 0i, 2147483647i), 1i, vec3<u32>(1u, 1u, 1u)), Struct_4(vec4<i32>(-25964i, i32(-2147483648), 8250i, -1i), 17350i, vec3<u32>(1u, 35678u, 0u)), Struct_4(vec4<i32>(2147483647i, 9209i, 62761i, 12326i), 25531i, vec3<u32>(0u, 1u, 4294967295u)), Struct_4(vec4<i32>(11993i, 2853i, -40615i, -1i), -1i, vec3<u32>(57551u, 0u, 9171u)), Struct_4(vec4<i32>(1i, -45085i, 2147483647i, -68415i), 0i, vec3<u32>(1u, 10155u, 1u)), Struct_4(vec4<i32>(-52646i, 2147483647i, -1i, 130063i), 2147483647i, vec3<u32>(0u, 26756u, 60146u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: u32) -> bool {
    global1 = array<vec3<bool>, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1238f, _wgslsmith_f_op_f32(-arg_2.x))), -680f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(ceil(576f))));
    var var_1 = ~min(firstLeadingBit(-1i), _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, u_input.c), _wgslsmith_dot_vec2_i32(max(global2.c.zx, vec2<i32>(2147483647i, 2065i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global2.a.x, 0i), vec2<i32>(u_input.c, global2.c.x), vec2<i32>(u_input.c, -28662i)))));
    var var_2 = 1u;
    let var_3 = vec4<f32>(408f, _wgslsmith_div_f32(767f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-941f)) + arg_1.x))), var_0.x);
    return true;
}

fn func_3() -> i32 {
    global3 = array<Struct_4, 11>();
    let var_0 = 4294967295u;
    let var_1 = !global1[_wgslsmith_index_u32(abs(~(~(54453u << (u_input.b.x % 32u)))), 21u)];
    let var_2 = Struct_4(countOneBits(-global2.a), ~u_input.a, u_input.b);
    global1 = array<vec3<bool>, 21>();
    return 1i;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = false;
    var var_1 = vec4<bool>(true, true, true, true);
    var_1 = vec4<bool>(any(vec4<bool>(func_2(Struct_3(global2.a.yy, Struct_1(-2147483647i, global2.c.x), Struct_2(vec4<i32>(global2.a.x, u_input.a, 2147483647i, 0i), global2.b, vec3<i32>(0i, u_input.a, u_input.c)), -2040i, Struct_2(vec4<i32>(-28989i, 5728i, u_input.a, u_input.a), 1u, global2.a.wyw)), vec3<f32>(-1479f, arg_0.x, arg_0.x), arg_0, 1u), var_1.x, any(var_1.yyx), var_1.x | true)) & !(!(!var_1.x)), var_1.x, true, var_1.x);
    global1 = array<vec3<bool>, 21>();
    let var_2 = Struct_3(global2.a.wz, Struct_1(-104395i | select(u_input.a, u_input.c >> (global2.b % 32u), var_1.x), u_input.c), Struct_2(vec4<i32>(func_3() ^ (global2.a.x >> (global2.b % 32u)), _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, 0i), global2.c.x | global2.c.x), ~u_input.a, select(_wgslsmith_mod_i32(u_input.a, global2.c.x), ~(-89347i), true)), firstTrailingBit(41376u), ~(vec3<i32>(-24786i, global2.a.x, 2147483647i) << (u_input.b % vec3<u32>(32u))) << (vec3<u32>(countOneBits(68450u), countOneBits(0u), u_input.d) % vec3<u32>(32u))), -32786i, Struct_2(firstLeadingBit(global2.a), ~select(global2.b, 1u ^ u_input.b.x, false | var_1.x), vec3<i32>(-global2.c.x ^ -8396i, _wgslsmith_add_i32(max(6003i, global2.c.x), -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(global2.c.x, 2147483647i)) | 25834i)));
    return var_2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 11>();
    global3 = array<Struct_4, 11>();
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, 22411u, ~4294967295u), ~abs(_wgslsmith_mod_vec4_u32(min(vec4<u32>(global2.b, 0u, 0u, 9354u), vec4<u32>(1u, global2.b, global2.b, 78716u)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.b, 19707u, u_input.d, u_input.d), vec4<u32>(35292u, u_input.d, global2.b, 0u)))));
    var var_1 = func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1084f - 637f) * 760f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-828f * 2200f) + _wgslsmith_f_op_f32(-1000f - 316f))), _wgslsmith_f_op_f32(f32(-1f) * -1733f)));
    global3 = array<Struct_4, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_1.a.x, i32(-1i) * -38112i, 0i), -(-vec4<i32>(global2.c.x, -18197i, global2.a.x, 1i) >> (vec4<u32>(1u, global2.b, 0u, 4294967295u) % vec4<u32>(32u)))), reverseBits(abs(~abs(vec3<u32>(global2.b, var_1.b, 41028u)))), _wgslsmith_mod_vec2_i32(var_1.c.zz >> (u_input.b.zx % vec2<u32>(32u)), var_1.a.xz), -769f, ~(-2147483647i));
}

