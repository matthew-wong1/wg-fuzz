struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(true, 3282f, Struct_2(vec3<i32>(-1i, 1i, 0i), Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), -310f, 3916i, vec2<i32>(-10544i, i32(-2147483648)), vec4<u32>(67656u, 19364u, 4294967295u, 0u)), vec3<bool>(true, true, false)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> i32 {
    return global1.c.b.d.x;
}

fn func_3() -> vec4<u32> {
    let var_0 = global1.c.c.x && any(global1.c.c.yz);
    return ~global0.e;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> i32 {
    var var_0 = -reverseBits(global0.a.x);
    global0 = global1.c.b;
    var var_1 = !select(!vec4<bool>(arg_0, global0.e.x != arg_1.x, all(global1.c.c), true || global1.c.c.x), vec4<bool>(!arg_0, !all(vec2<bool>(false, arg_0)), !select(true, arg_0, global1.a), _wgslsmith_f_op_f32(-744f * global0.b) >= global0.b), global1.c.c.x);
    let var_2 = global1.c;
    let var_3 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.b.b))), u_input.b, vec2<i32>(-31506i, -2147483647i) >> (vec2<u32>(~(0u << (global0.e.x % 32u)), u_input.c << (reverseBits(4294967295u) % 32u)) % vec2<u32>(32u)), _wgslsmith_div_vec4_u32(arg_1, ~_wgslsmith_sub_vec4_u32(global0.e, firstTrailingBit(var_2.b.e))));
    return _wgslsmith_add_i32(5197i, u_input.b ^ firstTrailingBit(var_3.c));
}

fn func_1() -> Struct_2 {
    global0 = Struct_1(vec3<i32>(global1.c.a.x, _wgslsmith_mult_i32(u_input.a.x, func_2(true) & _wgslsmith_sub_i32(-52569i, 14584i)), i32(-1i) * -u_input.b), 1416f, abs(_wgslsmith_div_i32(global0.c, func_4(!global1.c.c.x, func_3()))), -global0.d, vec4<u32>(firstTrailingBit(~u_input.c), ~(u_input.c >> (global0.e.x % 32u)), 66449u, 0u));
    let var_0 = global1.c.b;
    let var_1 = select(vec2<bool>(all(select(global1.c.c, global1.c.c, !global1.c.c)), !global1.c.c.x), !global1.c.c.xx, !global1.c.c.zx);
    global1 = Struct_3((-11991i | abs(var_0.a.x)) <= -(-u_input.b ^ u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1271f, var_0.b) + _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-1806f - _wgslsmith_f_op_f32(-global1.c.b.b))), global1.c);
    global1 = Struct_3(any(vec3<bool>(_wgslsmith_f_op_f32(global0.b - 829f) <= 181f, true, all(!vec2<bool>(true, var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.b - global1.c.b.b), _wgslsmith_f_op_f32(-global0.b)))))), Struct_2(min(vec3<i32>(_wgslsmith_add_i32(-20390i, global0.c), -global0.d.x, -1i), _wgslsmith_mod_vec3_i32(-var_0.a, firstTrailingBit(vec3<i32>(global1.c.a.x, global1.c.a.x, 2147483647i)))), Struct_1(min(vec3<i32>(-20358i, u_input.a.x, var_0.c), vec3<i32>(global0.c, 7990i, global1.c.b.a.x)) ^ ~vec3<i32>(-43301i, -23457i, 2147483647i), global0.b, -49054i, global0.a.xz | global1.c.a.yx, ~global1.c.b.e), global1.c.c));
    return Struct_2(var_0.a, global1.c.b, global1.c.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    global1 = Struct_3(!all(!vec2<bool>(true, arg_0.c.x)) || true, -1000f, func_1());
    let var_0 = 4294967295u;
    let var_1 = arg_0.c.x;
    var var_2 = _wgslsmith_add_u32(min(~select(~global0.e.x, global0.e.x, all(vec4<bool>(false, var_1, var_1, arg_0.c.x))), ~(~_wgslsmith_div_u32(u_input.c, 41233u))), ~1u);
    var_2 = ~u_input.c;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~global0.d.x);
    let var_1 = func_5(func_1(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, global0.b, global1.c.b.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global0.b, global0.b)) * _wgslsmith_div_vec3_f32(vec3<f32>(-250f, global1.b, global1.c.b.b), vec3<f32>(global1.b, -430f, 1321f)))), vec3<f32>(2126f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1280f))), global1.b)));
    var var_2 = global1.c;
    var_2 = var_1;
    global1 = Struct_3(false, -456f, func_5(Struct_2(~global0.a, func_5(Struct_2(vec3<i32>(2147483647i, -31886i, var_1.a.x), Struct_1(vec3<i32>(var_2.a.x, -2147483647i, -1i), -345f, var_1.b.c, vec2<i32>(global1.c.a.x, u_input.a.x), global1.c.b.e), var_2.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(615f, var_2.b.b, var_1.b.b))).b, !var_2.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, 3155f, -871f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(225f, var_2.b.b, -565f), vec3<f32>(var_2.b.b, -856f, 1606f), vec3<bool>(var_1.c.x, true, true)))) - vec3<f32>(-712f, global0.b, -990f))));
    let var_3 = var_2.b.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(853f - _wgslsmith_f_op_f32(f32(-1f) * -116f)), 1i, _wgslsmith_add_vec2_i32(global1.c.a.zx, ~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.b.a.xx, var_2.b.a.yx), vec2<i32>(1i, u_input.a.x))), -749f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(621f)), 642f, _wgslsmith_f_op_f32(var_2.b.b + 1764f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2768f, global1.c.b.b, global1.c.b.b))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-164f, global0.b, 333f))));
}

