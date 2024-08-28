struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2;

var<private> global2: vec4<f32>;

var<private> global3: Struct_2 = Struct_2(1000f, 4294967295u, Struct_1(vec3<u32>(0u, 0u, 58493u), vec3<u32>(0u, 1u, 21744u), 2583u));

var<private> global4: vec4<f32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_2(168f, _wgslsmith_mult_u32((~1u | abs(global3.c.c)) ^ ~28879u, global1.c.c), global3.c);
    var var_1 = select(!(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), false)), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), u_input.b.x != 45108i), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), false)), vec3<bool>(false, false, true), ~(global3.b << (global1.b % 32u)) != _wgslsmith_mod_u32(~1u, select(43586u, 40811u, false))), true);
    let var_2 = global3.c;
    var_1 = select(!(!(!select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, true, var_1.x), var_1.x))), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(369f, global0.x)) <= _wgslsmith_f_op_f32(global2.x + 1f), false, true), vec3<bool>(any(vec2<bool>(false, var_1.x)), false, true));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.x, global0.x, false)) - _wgslsmith_f_op_f32(global3.a * 108f))) + 1030f), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a.x, 36975u & var_2.b.x), var_0.b, var_2.b.x), var_0.b >> (select(~4294967295u, var_2.b.x ^ 4294967295u, false) % 32u)), Struct_1(var_0.c.a, _wgslsmith_div_vec3_u32(~global1.c.a << ((vec3<u32>(global1.b, global3.c.a.x, 1u) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(global3.c.b, ~var_0.c.a)), ~(~var_2.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1144f, global0.x, var_1.x))))))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = global1.c;
    var var_1 = !all(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(func_3()), 0u, Struct_1(u_input.a, arg_0.b | ~(arg_0.a & vec3<u32>(0u, var_0.a.x, var_0.b.x)), var_0.a.x));
    return Struct_2(global3.a, 13827u, var_2.c);
}

fn func_1() -> f32 {
    let var_0 = global3.c;
    global2 = vec4<f32>(-357f, _wgslsmith_f_op_f32(round(-535f)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -385f));
    let var_1 = true;
    global3 = func_2(global1.c);
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(981f, global3.a, global1.a, -301f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1942f, -806f, 467f, -598f) * vec4<f32>(global0.x, 1184f, global3.a, global0.x)), vec4<f32>(global2.x, global1.a, global3.a, global4.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a, global4.x, global4.x, -541f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-737f, global0.x, global4.x, global4.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1120f, 206f, 1183f, 208f) + vec4<f32>(-1638f, global3.a, global3.a, global4.x)))) - vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * global1.a) + _wgslsmith_f_op_f32(-global0.x)), -186f, -1798f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(round(-810f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2138f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-930f, global0.x)), _wgslsmith_f_op_f32(func_1()), -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2224f, global0.x, global1.a, global1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-757f, global3.a, -667f, 2142f)), all(vec4<bool>(false, true, true, false)))))));
    global3 = Struct_2(1000f, abs(func_2(Struct_1(global3.c.b, global3.c.b, 0u)).c.c), Struct_1(global1.c.b, _wgslsmith_add_vec3_u32(global1.c.a, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global3.c.c), vec3<u32>(global1.c.c, u_input.a.x, 4294967295u))) >> (min(~vec3<u32>(0u, global1.c.a.x, global3.c.c), ~vec3<u32>(4294967295u, u_input.a.x, 30398u)) % vec3<u32>(32u)), ~u_input.a.x));
    global3 = Struct_2(_wgslsmith_f_op_f32(func_3()), _wgslsmith_clamp_u32(2645u, u_input.a.x, u_input.a.x), func_2(func_2(func_2(func_2(global3.c).c).c).c).c);
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(940f * _wgslsmith_f_op_f32(f32(-1f) * -196f)) - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2238f))))), _wgslsmith_div_u32(1u, u_input.a.x) ^ ~_wgslsmith_add_u32(select(9476u, global3.b, false), 0u), global3.c);
    var var_1 = ~vec4<i32>(u_input.b.x, u_input.b.x, firstTrailingBit(u_input.b.x), firstTrailingBit(u_input.b.x ^ _wgslsmith_div_i32(123i, 2147483647i)));
    var var_2 = global3.c;
    global1 = Struct_2(742f, _wgslsmith_dot_vec2_u32(~min(min(vec2<u32>(1u, 16560u), global3.c.b.zy), global1.c.a.yz), vec2<u32>(~1u, abs(4294967295u) << (u_input.a.x % 32u))), global3.c);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1433f, 767f, global4.x, _wgslsmith_f_op_f32(f32(-1f) * -910f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(624f + global0.x))) - global1.a), _wgslsmith_div_f32(758f, _wgslsmith_f_op_f32(min(-453f, global0.x))), _wgslsmith_sub_vec3_i32(max(~(~var_1.zzw), _wgslsmith_add_vec3_i32(select(var_1.ywz, var_1.wwz, false), -var_1.zxz)), var_1.ywx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-923f, global2.x, -511f, global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-651f)) + _wgslsmith_f_op_f32(func_1()))) + _wgslsmith_f_op_f32(f32(-1f) * -586f)));
}

