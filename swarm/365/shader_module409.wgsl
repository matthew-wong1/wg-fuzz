struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-2012f, -215f), Struct_1(true), vec4<i32>(-27562i, 5328i, -87697i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = global1.c.x;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), Struct_1(global1.b.a), _wgslsmith_sub_vec4_i32(global1.c, vec4<i32>(firstTrailingBit(~global1.c.x), _wgslsmith_clamp_i32(firstLeadingBit(global1.c.x), 1i, _wgslsmith_div_i32(global1.c.x, 0i)), -global1.c.x, 7037i)));
    return vec2<f32>(_wgslsmith_f_op_f32(max(-1107f, _wgslsmith_f_op_f32(-var_1.a.x))), -681f);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f + global1.a.x) - 1770f), 974f)))));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-938f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.x)) * _wgslsmith_f_op_f32(1378f * _wgslsmith_f_op_f32(-290f - -344f))))));
    let var_1 = 4294967295u;
    var_0 = 806f;
    global1 = Struct_2(global1.a, global1.b, -firstLeadingBit(~(-vec4<i32>(2147483647i, global1.c.x, global1.c.x, global1.c.x))));
    return Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), global1.a), global1.b, _wgslsmith_sub_vec4_i32(reverseBits(-abs(global1.c)), _wgslsmith_sub_vec4_i32(global1.c, ~firstTrailingBit(vec4<i32>(global1.c.x, global1.c.x, global1.c.x, 2147483647i)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    let var_0 = func_2();
    let var_1 = u_input.a >> ((u_input.a >> (vec2<u32>(u_input.a.x, ~(u_input.b ^ 68969u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = vec4<u32>(0u, min(var_1.x >> (countOneBits(var_1.x) % 32u), var_1.x) & firstLeadingBit((var_1.x | u_input.b) & 48369u), 29349u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b, abs(_wgslsmith_clamp_u32(17158u, var_1.x, 23369u))), var_1.x));
    var var_3 = var_1.x;
    var var_4 = func_2();
    return var_0.b.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)) >= 1382f);
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.a, vec2<f32>(1347f, -1000f), arg_3.a & global1.b.a))), func_1(~(global1.c ^ global1.c), Struct_1(arg_3.a)))), Struct_1(arg_3.a || (arg_1 != arg_1)), ~_wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.c.x, 0i, 1i, arg_0.x), abs(global1.c & global1.c), abs(global1.c)));
    global0 = array<vec4<u32>, 3>();
    global0 = array<vec4<u32>, 3>();
    global0 = array<vec4<u32>, 3>();
    return vec4<bool>(true, global1.b.a, true, true);
}

fn func_5(arg_0: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1518f), global1.a.x), global1.a));
    return global1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(func_4(vec2<i32>(13762i << (u_input.b % 32u), -4550i), 1u, 1i, Struct_1(func_1(global1.c, global1.b))), vec4<bool>(!func_2().b.a, func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c.x, 45031i, global1.c.x, -8851i), global1.c), Struct_1(true)), global1.b.a, !func_4(vec2<i32>(global1.c.x, global1.c.x), 4294967295u, 0i, Struct_1(global1.b.a)).x), vec4<bool>(!global1.b.a | !global1.b.a, !(global1.b.a | true), global1.b.a, any(select(vec4<bool>(global1.b.a, global1.b.a, false, global1.b.a), vec4<bool>(global1.b.a, global1.b.a, global1.b.a, global1.b.a), false)))));
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(abs(-16046i), func_2().c.x, 30365i, 70592i), global1.c), vec4<i32>(global1.c.x, ~firstLeadingBit(-global1.c.x), global1.c.x, 50527i));
    var var_1 = global1.a;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)) + _wgslsmith_f_op_f32(f32(-1f) * -204f)) + global1.a.x), _wgslsmith_f_op_f32(abs(-481f)));
    let var_3 = global1.c.x;
    let var_4 = true;
    global0 = array<vec4<u32>, 3>();
    let var_5 = _wgslsmith_add_vec4_i32(-global1.c, global1.c);
    global0 = array<vec4<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(583f, vec2<u32>(u_input.a.x, ~_wgslsmith_clamp_u32(~1u, abs(15614u), ~u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(247f, var_2), _wgslsmith_f_op_vec2_f32(round(global1.a))))));
}

