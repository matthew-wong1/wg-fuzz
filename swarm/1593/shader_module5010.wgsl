struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<f32>(765f, 395f, 1000f), 20604i);

var<private> global1: Struct_3;

var<private> global2: array<vec4<i32>, 5>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1349f - _wgslsmith_f_op_f32(-global0.a.x)), 1897f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(-1000f, global0.a.x, 1054f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global1.b.b)), vec3<f32>(global0.a.x, global0.a.x, -1094f)))))), ~0i);
    global2 = array<vec4<i32>, 5>();
    let var_0 = true;
    global2 = array<vec4<i32>, 5>();
    global1 = Struct_3(!global1.a, global1.b);
    return _wgslsmith_dot_vec3_u32(u_input.a.xxx ^ (_wgslsmith_mod_vec3_u32(u_input.a.xwz, min(vec3<u32>(1u, 59306u, 1u), vec3<u32>(u_input.a.x, 1u, 4294967295u))) >> (~(~vec3<u32>(1u, 647u, 24505u)) % vec3<u32>(32u))), abs(vec3<u32>(~29745u, global1.b.a.a.x, ~(~0u))));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(global1.a, Struct_2(global1.b.d, global0.a, !global1.b.c, global1.b.a));
    global0 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-564f, -1579f)))), _wgslsmith_f_op_f32(max(global0.a.x, global1.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(358f)))), 44416i);
    var var_1 = countOneBits(u_input.a.x >> ((var_0.b.d.a.x >> (u_input.a.x % 32u)) % 32u));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.a.a.x, 1u) >> (global1.b.a.a % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 0u)), global1.b.d.a << ((vec2<u32>(34649u, 4294967295u) << (global1.b.a.a % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(!var_0.b.c.x, var_0.b.c.x)), vec2<u32>(72087u, ~u_input.a.x)));
    global2 = array<vec4<i32>, 5>();
    return !vec4<bool>(!(all(vec2<bool>(true, global1.b.c.x)) || all(vec3<bool>(false, global1.a, false))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, global0.b), -2147483647i) < global0.b, global1.a, true);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_add_u32(39426u, func_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(firstTrailingBit(-1i), _wgslsmith_div_i32(2147483647i, -40944i)), global0.b)));
    var var_1 = select(select(vec4<bool>(true, global1.b.c.x, -233f >= _wgslsmith_f_op_f32(-global0.a.x), global1.a), !select(!vec4<bool>(global1.a, false, global1.a, false), vec4<bool>(false, false, global1.b.c.x, false), vec4<bool>(true, global1.b.c.x, global1.b.c.x, true)), select(vec4<bool>(select(true, true, global1.b.c.x), !global1.b.c.x, true, true), func_3(), true)), func_3(), !(abs(-20291i) < reverseBits(global0.b)) && any(select(vec3<bool>(false, false, global1.b.c.x), !vec3<bool>(true, false, global1.b.c.x), select(vec3<bool>(false, true, global1.a), vec3<bool>(global1.a, true, false), global1.b.c.x))));
    global1 = Struct_3(false, global1.b);
    let var_2 = -1089f;
    var var_3 = 471f > _wgslsmith_div_f32(global1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.x, 2026f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, 1449f)) * -245f)));
    return Struct_3(all(!vec4<bool>(true, false, global1.b.c.x, true)), Struct_2(global1.b.d, _wgslsmith_f_op_vec3_f32(abs(global1.b.b)), !global1.b.c, global1.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec3_i32(~(~_wgslsmith_add_vec3_i32(~vec3<i32>(global0.b, global0.b, 1i), vec3<i32>(global0.b, global0.b, global0.b))), ~(select(~vec3<i32>(global0.b, 1i, 2147483647i), ~vec3<i32>(global0.b, 24261i, global0.b), true == global1.a) << (u_input.a.wxy % vec3<u32>(32u))), ~(~vec3<i32>(-2147483647i, ~60228i, _wgslsmith_add_i32(53501i, global0.b))));
    let var_1 = global1.b;
    let var_2 = firstLeadingBit(var_0.yz);
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(max(70592u, ~(global1.b.d.a.x | u_input.a.x)), 52837u, var_1.d.a.x, var_1.a.a.x), ~(vec4<u32>(firstLeadingBit(var_1.a.a.x), 4294967295u, abs(48258u), abs(47505u)) ^ countOneBits(vec4<u32>(var_1.a.a.x, 1671u, var_1.d.a.x, var_1.a.a.x) ^ vec4<u32>(var_1.d.a.x, var_1.a.a.x, 4627u, 1u))));
    global1 = func_1();
    let var_4 = global1.b.b.yz;
    var var_5 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(func_1().b.b)) * var_1.b), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0, _wgslsmith_add_vec3_i32(var_0 | var_0, var_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, -9444i, -33448i, var_2.x), global2[_wgslsmith_index_u32(var_1.d.a.x, 5u)]) >> (var_1.a.a.x % 32u)));
    let var_6 = Struct_4(vec3<f32>(-1234f, -449f, _wgslsmith_f_op_f32(f32(-1f) * -237f)), -2680i);
    global2 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d.a, 853f, firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(21435u, global1.b.d.a.x)), firstTrailingBit(abs(vec2<u32>(4294967295u, var_1.d.a.x))))));
}

