struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<i32> {
    global0 = abs(~(-firstTrailingBit(arg_0.b)) << (firstTrailingBit(reverseBits(vec3<u32>(u_input.c.x, 1u, arg_1.a.b))) % vec3<u32>(32u)));
    global1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, u_input.a), -1409i);
    global0 = vec3<i32>(~(-20529i), arg_2.x, _wgslsmith_div_i32(67261i, _wgslsmith_mod_i32(9696i, -global0.x)) & 0i);
    var var_0 = arg_1;
    let var_1 = Struct_2(Struct_1(arg_0.a, _wgslsmith_mult_u32(min(var_0.e.b, 4294967295u), abs(u_input.c.x))), arg_1.a, vec3<u32>(_wgslsmith_mod_u32(var_0.c.x, _wgslsmith_div_u32(arg_0.a, 1u)), max(u_input.c.x ^ 0u, _wgslsmith_mod_u32(arg_1.c.x | 0u, var_0.b.b)), 39609u), ~(-23537i | arg_2.x), Struct_1(_wgslsmith_sub_u32(~u_input.b.x, ~42033u) & _wgslsmith_clamp_u32(min(8965u, 10264u), arg_1.c.x, firstTrailingBit(34107u)), var_0.a.a));
    return arg_2.wzw;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> vec3<i32> {
    let var_0 = vec2<f32>(-1272f, arg_0);
    global0 = _wgslsmith_sub_vec3_i32(~(vec3<i32>(-69077i, 63679i, _wgslsmith_sub_i32(0i, 1i)) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a, 4294967295u, 4294967295u), u_input.b.wwz) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(-reverseBits(vec3<i32>(u_input.a, -28273i, u_input.a)), ~vec3<i32>(0i, global0.x, -1i)), _wgslsmith_mult_vec3_i32(func_3(Struct_3(arg_1.a, vec3<i32>(u_input.a, global0.x, 24772i), -315f, Struct_1(17909u, 25412u)), Struct_2(Struct_1(1u, arg_1.b), arg_1, u_input.b.yyw, -20404i, Struct_1(0u, arg_1.b)), vec4<i32>(-1i, global0.x, global0.x, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-30867i, 1i, -2147483647i), vec3<i32>(-70159i, 26035i, u_input.a)) << (~u_input.b.yzz % vec3<u32>(32u)))));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1816f), all(vec4<bool>(arg_2, arg_2, false, false))))))));
    let var_2 = u_input.c;
    return -vec3<i32>(39361i, select(-6816i, 1i, true) & _wgslsmith_mod_i32(-67075i, ~global0.x), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(-33144i, abs(global0.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    global0 = vec3<i32>(_wgslsmith_sub_i32(~u_input.a, u_input.a), -(global0.x >> (~(~arg_1.b) % 32u)), 52328i);
    let var_0 = Struct_3(~u_input.b.x | 20837u, ~func_2(arg_2, arg_1, true), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1334f, _wgslsmith_f_op_f32(-arg_2), arg_0))))), arg_1);
    let var_1 = arg_2;
    global0 = vec3<i32>(-1i) * -(-vec3<i32>(u_input.a, 2147483647i, -2147483647i) | var_0.b);
    let var_2 = Struct_1(78384u, 33698u);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-3937i, 35049i, 0i), vec3<i32>(global0.x, -724i, -u_input.a)) >> (min(~vec3<u32>(u_input.c.x, 0u, u_input.c.x), u_input.b.zxy) % vec3<u32>(32u)));
    let var_1 = ~(12553i & var_0.x);
    let var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global0.x, 2147483647i, -14266i << (1u % 32u)), _wgslsmith_sub_vec3_i32((vec3<i32>(u_input.a, 2147483647i, 2147483647i) ^ vec3<i32>(global0.x, global0.x, var_1)) ^ vec3<i32>(-55061i, -15599i, 1i), -func_1(true, Struct_1(u_input.c.x, 0u), 275f))), _wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, global0.x, var_0.x), -vec3<i32>(global0.x, u_input.a, 25254i))), ~(~abs(vec3<i32>(21223i, -1i, var_0.x)))));
    var var_3 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec4_u32(reverseBits(u_input.b), vec4<u32>(~125148u, 17304u, 64430u, ~12009u))), max(-vec3<i32>(35715i, 1i, 37348i) ^ (vec3<i32>(-1i) * -var_2), var_2), 1419f, Struct_1(u_input.b.x, abs(u_input.c.x << ((u_input.c.x >> (u_input.b.x % 32u)) % 32u))));
    var var_4 = Struct_2(var_3.d, Struct_1(~(~4294967295u), var_3.d.b), u_input.b.zwz, var_3.b.x, Struct_1(0u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.c, -243f))), 571f, ~(~select(countOneBits(var_4.c), var_4.c, vec3<bool>(true, true, true))), 25364u, u_input.b.yy);
}

