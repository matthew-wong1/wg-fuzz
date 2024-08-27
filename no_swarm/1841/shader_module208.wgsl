struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = -19099i;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-11405i, -21689i), Struct_1(0i, -4776i), Struct_1(41580i, 0i), Struct_1(2147483647i, 34565i), Struct_1(-43400i, -1i), Struct_1(-41287i, -1i), Struct_1(12163i, 2147483647i), Struct_1(0i, i32(-2147483648)), Struct_1(8930i, 0i), Struct_1(-14303i, 40616i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_4, arg_3: u32) -> vec2<u32> {
    global1 = _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_clamp_i32(~u_input.b << (arg_3 % 32u), _wgslsmith_mult_i32(~8524i, -8064i), i32(-1i) * -2147483647i)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(55287i, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, 17612i) & vec3<i32>(global0.a, 0i, global0.a)), (vec3<i32>(-1i, 0i, 1i) << (vec3<u32>(1u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) << (reverseBits(vec3<u32>(arg_3, 0u, arg_3)) % vec3<u32>(32u))), -17778i);
    global2 = array<Struct_1, 10>();
    global0 = Struct_1(_wgslsmith_sub_i32(global0.a, ~(-global0.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(u_input.b & u_input.b, 13002i, firstTrailingBit(u_input.b))) >> (~4294967295u % 32u));
    global0 = global2[_wgslsmith_index_u32(31497u, 10u)];
    var var_0 = 2193f;
    return u_input.a;
}

fn func_2() -> Struct_3 {
    global0 = Struct_1(u_input.b, global0.a);
    let var_0 = ~(select(~vec2<i32>(1i, 2147483647i), -(~vec2<i32>(-2147483647i, 0i)), true) >> (abs(min(u_input.c << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), func_3(Struct_5(false), true, Struct_4(182f), 24640u))) % vec2<u32>(32u)));
    global0 = Struct_1(var_0.x, -var_0.x);
    global1 = ~(-var_0.x);
    global2 = array<Struct_1, 10>();
    return Struct_3(global2[_wgslsmith_index_u32(~max(22523u, u_input.a.x) & ~u_input.a.x, 10u)]);
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = reverseBits(~(~(~u_input.a.x))) | u_input.a.x;
    global2 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-381f, -1857f))))))))));
    global2 = array<Struct_1, 10>();
    let var_2 = !vec3<bool>(true, true, abs(109731u) >= ~u_input.a.x);
    return func_2();
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = func_4(func_2());
    var var_2 = 0i;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-961f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(465f)) * -807f), 364f, arg_2)), -494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f * -154f))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(793f + _wgslsmith_f_op_f32(551f + 1048f)), _wgslsmith_f_op_f32(round(-740f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(510f + _wgslsmith_f_op_f32(-1382f + 968f)))), _wgslsmith_f_op_f32(919f - -537f), -941f));
    global1 = global0.b;
    return 0u;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>) -> Struct_5 {
    let var_0 = ~((u_input.a ^ abs(~u_input.c)) << (u_input.c % vec2<u32>(32u)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1322f, _wgslsmith_f_op_f32(abs(-1852f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-381f - -826f) - _wgslsmith_f_op_f32(f32(-1f) * -364f))))), 1u);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a - -163f), var_1.a, var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, -1824f, var_1.a, -978f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1178f, var_1.a, var_1.a, var_1.a)))))));
    let var_3 = var_2.yzw;
    var var_4 = func_2().a;
    return Struct_5(false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 10>();
    global2 = array<Struct_1, 10>();
    var var_0 = func_5(_wgslsmith_sub_u32(func_1(~1u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true, vec2<i32>(reverseBits(global0.a), u_input.b)), 56406u), vec4<i32>(-firstTrailingBit(countOneBits(-41255i)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-29744i, global0.a), 0i, 1i) | ~(~(-1i)), reverseBits(~(~(-1i))), countOneBits(abs(-2147483647i << (0u % 32u)))));
    var_0 = Struct_5(true);
    global1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-165f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1663f + 159f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(-1770f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1333f, 625f))))), func_4(func_4(func_4(Struct_3(Struct_1(2147483647i, -2147483647i))))).a.b, ~((~vec4<u32>(u_input.a.x, u_input.c.x, u_input.a.x, 1u) >> (~vec4<u32>(34867u, u_input.c.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))) | ~countOneBits(vec4<u32>(16047u, u_input.c.x, 1u, 108235u))));
}

