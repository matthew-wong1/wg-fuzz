struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: vec4<f32> = vec4<f32>(-1188f, -1323f, 1720f, 1334f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> vec4<bool> {
    var var_0 = (~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_0.x), -vec2<i32>(arg_2.x, -2719i)) ^ (min(vec2<i32>(1i, arg_3.x), vec2<i32>(0i, 13364i)) >> (firstTrailingBit(vec2<u32>(58060u, 13848u)) % vec2<u32>(32u)))) >> (abs(firstTrailingBit(~(~vec2<u32>(4294967295u, 18746u)))) % vec2<u32>(32u));
    global1 = array<vec3<bool>, 13>();
    global1 = array<vec3<bool>, 13>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.x, global2.x), 268f));
    var var_2 = u_input.a;
    return vec4<bool>(all(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-global2.x) <= _wgslsmith_f_op_f32(sign(-404f)), true, _wgslsmith_f_op_f32(-global2.x) >= _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(global2.x - global2.x))))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_4 {
    global1 = array<vec3<bool>, 13>();
    global1 = array<vec3<bool>, 13>();
    return Struct_4(Struct_2(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(0i, -52348i, -24743i, 2147483647i)) & vec4<i32>(u_input.b, -2225i, -27263i, 40691i), firstTrailingBit(vec4<i32>(-3528i, -2147483647i, 11470i, -12928i)) & _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, 0i, 2471i, 0i), vec4<i32>(2147483647i, 10607i, -57814i, 2147483647i)))), arg_0.b.x, Struct_3(u_input.a.x, 1u, Struct_1(-65535i, !func_3(vec4<i32>(arg_0.a, 8145i, u_input.b, 4028i), u_input.b, vec4<i32>(arg_0.a, 35262i, 2147483647i, -27719i), vec4<i32>(2147483647i, u_input.a.x, u_input.b, -16059i)), global2.x), abs(u_input.a.zz), Struct_1(_wgslsmith_div_i32(1i, ~(-2147483647i)), arg_0.b, _wgslsmith_f_op_f32(max(-1426f, -639f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4) -> vec2<u32> {
    global1 = array<vec3<bool>, 13>();
    let var_0 = func_2(arg_1.c.e, all(arg_1.c.c.b.wyz) & (617f >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.c.e.c, 1231f), -354f, any(vec3<bool>(arg_1.c.c.b.x, false, false))))));
    let var_1 = func_2(Struct_1(_wgslsmith_sub_i32(func_2(var_0.c.e, var_0.b).a.a.x >> (_wgslsmith_mod_u32(var_0.c.b, 6054u) % 32u), _wgslsmith_sub_i32(u_input.b ^ -42263i, min(var_0.a.a.x, u_input.a.x))), func_2(func_2(arg_1.c.c, arg_1.c.e.b.x).c.e, arg_1.b).c.e.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_1.c.c.c)))))), var_0.b).a;
    var var_2 = var_0.c.c;
    var var_3 = arg_1.c.e;
    return max(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_0.x, var_0.c.b), 1u), arg_0.xx), _wgslsmith_mult_vec2_u32(~select(arg_0.xx, arg_0.zz, true), arg_0.xy)) << (reverseBits(countOneBits(_wgslsmith_mod_vec2_u32(reverseBits(arg_0.zy), arg_0.xx))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = true;
    var_0 = var_1;
    var var_2 = 1u & ~_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(74299u, 36192u)), func_1(vec3<u32>(61112u, 1u, 21927u), Struct_4(Struct_2(vec4<i32>(u_input.a.x, -15685i, u_input.b, 12227i)), var_1, Struct_3(u_input.a.x, 43524u, Struct_1(u_input.a.x, vec4<bool>(var_1, var_1, true, var_1), global2.x), vec2<i32>(1i, u_input.a.x), Struct_1(u_input.a.x, vec4<bool>(var_1, var_1, false, var_1), global2.x)))));
    let var_3 = vec2<i32>(-1i, _wgslsmith_mult_i32(min(_wgslsmith_dot_vec2_i32(max(vec2<i32>(0i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.b)), ~u_input.a.xz), 2147483647i | abs(u_input.a.x)), u_input.a.x ^ u_input.b));
    var var_4 = -_wgslsmith_add_i32(~(var_3.x & u_input.a.x), var_3.x);
    var_4 = u_input.a.x ^ ~15152i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(select(~39191u, func_2(Struct_1(3013i, vec4<bool>(true, true, true, var_1), -2066f), true).c.b, var_1), func_2(func_2(Struct_1(u_input.b, vec4<bool>(false, var_1, var_1, false), global2.x), var_1).c.c, var_1).c.b), ~_wgslsmith_add_vec2_u32(vec2<u32>(37545u, 37482u), vec2<u32>(1u, 1u))), _wgslsmith_mult_vec4_i32(reverseBits(min(vec4<i32>(8585i, u_input.a.x, -28726i, 0i) ^ vec4<i32>(u_input.a.x, -38199i, u_input.a.x, 23665i), -vec4<i32>(-2147483647i, u_input.a.x, 9286i, 2147483647i))), vec4<i32>(-14716i, -2147483647i, u_input.a.x, var_3.x)));
}

