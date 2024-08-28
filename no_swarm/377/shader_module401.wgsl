struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: Struct_5 = Struct_5(Struct_2(Struct_1(3683u, vec2<u32>(17706u, 51816u), 55227u)));

var<private> global2: Struct_1;

var<private> global3: Struct_4;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global1 = Struct_5(Struct_2(global1.a.a));
    global2 = Struct_1(91551u, max(_wgslsmith_add_vec2_u32(global2.b, arg_0), arg_0), 42153u & global1.a.a.c);
    global0 = array<vec4<u32>, 5>();
    var var_0 = Struct_2(global1.a.a);
    let var_1 = !(!(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true))));
    return var_0.a;
}

fn func_1() -> Struct_1 {
    var var_0 = global3.a.a;
    global3 = Struct_4(Struct_2(func_2(var_0.b)), -633f, abs(vec4<i32>(-global3.e.x, ~global3.c.x, _wgslsmith_div_i32(countOneBits(global3.e.x), global3.e.x << (global3.a.a.a % 32u)), ~_wgslsmith_sub_i32(18340i, 0i))), -vec3<i32>(1i, 28922i, 1i), ((~global3.e | _wgslsmith_clamp_vec2_i32(global3.e, global3.d.zy, vec2<i32>(444i, global3.d.x))) << (~global1.a.a.b % vec2<u32>(32u))) & -global3.c.xx);
    let var_1 = ~((vec3<u32>(~4294967295u, ~var_0.a, ~global2.c) << (~(vec3<u32>(var_0.c, u_input.a, global3.a.a.b.x) ^ vec3<u32>(52u, global2.a, 10860u)) % vec3<u32>(32u))) & vec3<u32>(4294967295u, 12750u, ~52228u));
    return global3.a.a;
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = ~(~global3.d.x);
    global3 = Struct_4(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -598f))))), global3.b), ~abs(firstTrailingBit(vec4<i32>(arg_0.b, 2147483647i, global3.c.x, global3.e.x))), -(_wgslsmith_div_vec3_i32(global3.c.yzz << (vec3<u32>(67315u, 11033u, 13070u) % vec3<u32>(32u)), global3.c.zxw) >> (vec3<u32>(max(113735u, 0u), reverseBits(global3.a.a.c), ~90637u) % vec3<u32>(32u))), global3.d.xx);
    global2 = func_1();
    let var_1 = global3.a.a;
    global3 = Struct_4(Struct_2(arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-701f)) - 1f))), vec4<i32>(arg_0.b >> (~(u_input.a << (11672u % 32u)) % 32u), min(select(_wgslsmith_div_i32(1i, arg_0.b), _wgslsmith_clamp_i32(arg_0.b, global3.e.x, global3.d.x), false), _wgslsmith_mult_i32(abs(1i), abs(global3.d.x))), -43843i, -1i), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(-vec3<i32>(global3.e.x, 3665i, arg_0.b), -vec3<i32>(arg_0.b, -2147483647i, arg_0.b)), ~vec2<i32>(-20096i, _wgslsmith_dot_vec4_i32(max(global3.c, vec4<i32>(arg_0.b, global3.d.x, -58935i, -2147483647i)), vec4<i32>(global3.c.x, 54558i, arg_0.b, -67947i))));
    return -(~abs(reverseBits(abs(global3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<vec4<u32>, 5>();
    global0 = array<vec4<u32>, 5>();
    var var_1 = ~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, global2.b.x), var_0.c), max(max(17568u, 21491u), global1.a.a.a) & ~(~var_0.b.x), var_0.b.x >> (4294967295u % 32u), ~(var_0.b.x | 4294967295u));
    var var_2 = Struct_4(Struct_2(Struct_1(global3.a.a.a, vec2<u32>(abs(49746u), var_0.c), var_1.x)), -1196f, max(~global3.c, _wgslsmith_mod_vec4_i32(vec4<i32>(~0i, _wgslsmith_clamp_i32(global3.d.x, global3.e.x, global3.c.x), global3.e.x, func_3(Struct_3(Struct_2(var_0), global3.d.x, global3.a.a))), global3.c)), vec3<i32>(0i, global3.d.x, _wgslsmith_clamp_i32(-2147483647i, min(_wgslsmith_mod_i32(-1i, global3.d.x), i32(-1i) * -2147483647i), global3.d.x)), global3.d.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b)))) * 1291f), var_1.zyw, vec4<i32>(global3.c.x, _wgslsmith_div_i32(_wgslsmith_div_i32(-17675i, 9382i), var_2.c.x ^ global3.d.x), min(-45420i, _wgslsmith_mult_i32(-1i, var_2.d.x)), _wgslsmith_mult_i32(max(-7699i, global3.d.x), _wgslsmith_div_i32(var_2.e.x, -1i))) | vec4<i32>(var_2.d.x, global3.e.x, reverseBits(_wgslsmith_mod_i32(-42751i, var_2.e.x)), firstTrailingBit(var_2.d.x >> (var_0.b.x % 32u))));
}

