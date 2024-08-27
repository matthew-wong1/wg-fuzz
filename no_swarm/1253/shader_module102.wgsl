struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_2;

var<private> global2: array<u32, 10> = array<u32, 10>(46449u, 8430u, 68359u, 0u, 0u, 4294967295u, 1u, 47271u, 41327u, 33192u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<bool> {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-950f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))))), Struct_1(-28640i >= select(24836i, -41697i, arg_1.a), arg_1.b, 2147483647i), false, ~u_input.c.wwy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1083f, _wgslsmith_f_op_f32(min(277f, _wgslsmith_div_f32(global1.a.x, -371f))), _wgslsmith_f_op_f32(sign(arg_0.x)), arg_0.x)));
    var var_0 = true;
    var var_1 = Struct_3(global1.b.c, !(!(!vec4<bool>(global1.b.a, false, true, arg_2.b.x))), arg_1, countOneBits(arg_2.d));
    var_0 = false;
    var_0 = any(select(select(var_1.b.xxx, arg_2.c.b, !vec3<bool>(true, var_1.b.x, true)), !vec3<bool>(true, false, true | arg_2.c.a), vec3<bool>(select(all(var_1.b.zw), true, !global1.b.b.x), true, arg_2.c.b.x)));
    return vec4<bool>(!global1.b.b.x, arg_2.c.b.x, true, all(arg_2.b));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec4<u32>) -> i32 {
    var var_0 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1213f)), -644f), Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global1.a.x, 1141f, 1411f), vec4<f32>(global1.e.x, 712f, arg_0.x, global1.a.x))) + _wgslsmith_div_vec4_f32(global1.e, vec4<f32>(-1210f, global1.e.x, global1.e.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(global1.a, vec4<f32>(-887f, global1.a.x, -861f, 1667f))))), Struct_1(global1.c, vec3<bool>(true, true, true), -22997i), false, ~u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(global1.e)), global1.e)) - _wgslsmith_f_op_vec4_f32(floor(arg_0)))));
    global2 = array<u32, 10>();
    var var_1 = Struct_4(Struct_3(arg_2.x, !arg_1.b, var_0.b.b, -u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.e.x - _wgslsmith_f_op_f32(step(-1543f, global1.a.x))))));
    let var_2 = !(!(-645f >= _wgslsmith_f_op_f32(2252f + _wgslsmith_div_f32(var_0.a.x, 276f))));
    global2 = array<u32, 10>();
    return -2147483647i;
}

fn func_2() -> i32 {
    global2 = array<u32, 10>();
    var var_0 = Struct_1(global1.b.a, !vec3<bool>(all(select(vec3<bool>(global1.c, global1.b.b.x, true), vec3<bool>(false, false, global1.b.a), vec3<bool>(global1.c, false, true))), any(!vec4<bool>(global1.b.b.x, false, true, global1.c)), global1.b.b.x), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, global1.e.x, -440f, global1.e.x) + vec4<f32>(1613f, global1.a.x, global1.e.x, -2105f)), _wgslsmith_f_op_vec4_f32(-global1.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a * vec4<f32>(global1.a.x, global1.a.x, global1.a.x, -149f)))), Struct_3(-1i, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1198f, global1.a.x, global1.e.x, -1070f) * global1.a), global1.b, Struct_3(global1.b.c, vec4<bool>(global1.c, false, global1.c, global1.b.b.x), global1.b, u_input.a)), global1.b, ~(~vec2<i32>(global1.b.c, u_input.a.x))), (~u_input.a << (~global1.d.zx % vec2<u32>(32u))) >> (~(~vec2<u32>(u_input.c.x, 37740u)) % vec2<u32>(32u)), u_input.c));
    var var_1 = 4294967295u;
    let var_2 = vec4<u32>(4294967295u, 32776u, abs(~(global0.x >> (1u % 32u))), ~_wgslsmith_mult_u32(u_input.e, global1.d.x >> (4294967295u % 32u))) & _wgslsmith_mod_vec4_u32(min(u_input.c, ~u_input.c | _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(1872u, 487u, global1.d.x, 43409u))), vec4<u32>(global2[_wgslsmith_index_u32((global1.d.x & global2[_wgslsmith_index_u32(1u, 10u)]) << (~global2[_wgslsmith_index_u32(0u, 10u)] % 32u), 10u)], ~_wgslsmith_dot_vec4_u32(vec4<u32>(25977u, u_input.c.x, u_input.e, global1.d.x), u_input.c), abs(69069u), _wgslsmith_clamp_u32(~4294967295u, global0.x, global2[_wgslsmith_index_u32(global1.d.x & u_input.b.x, 10u)])));
    var var_3 = Struct_3(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, -1718f, global1.a.x, global1.e.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.e.x, -546f, -2345f, -980f), vec4<f32>(global1.a.x, global1.e.x, global1.a.x, global1.a.x))))), Struct_3(u_input.a.x, select(vec4<bool>(true, false, true, false), !vec4<bool>(true, false, false, var_0.a), !vec4<bool>(var_0.a, false, false, global1.c)), Struct_1(global1.c, var_0.b, _wgslsmith_clamp_i32(global1.b.c, -47932i, global1.b.c)), vec2<i32>(2147483647i, ~u_input.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-25768i, ~u_input.a.x), vec2<i32>(0i, -15746i), u_input.a ^ abs(vec2<i32>(-2147483647i, global1.b.c))), ~(var_2 | vec4<u32>(global0.x, 33970u, u_input.b.x, var_2.x))), vec4<bool>(!(-162f < _wgslsmith_f_op_f32(-global1.a.x)), var_0.b.x, !any(func_3(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, -207f), global1.b, Struct_3(-9942i, vec4<bool>(true, true, var_0.a, false), Struct_1(true, global1.b.b, var_0.c), u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1982f * global1.e.x), -1935f) <= global1.e.x), Struct_1(false, var_0.b, u_input.a.x), select(u_input.a, u_input.a, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global1.a))), Struct_1(global1.c | var_0.a, !global1.b.b, 1i), Struct_3(select(31348i, u_input.a.x, false), vec4<bool>(true, true, false, false), global1.b, u_input.a >> (vec2<u32>(27812u, u_input.e) % vec2<u32>(32u)))).zx));
    return var_3.a;
}

fn func_1() -> Struct_2 {
    let var_0 = select(u_input.c, u_input.c, false);
    let var_1 = func_2();
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.e.x, global1.e.x, -1239f))))), Struct_1(global1.c, !global1.b.b, _wgslsmith_clamp_i32(global1.b.c, -var_1, global1.b.c)), false, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(global1.d, global0.wxx & global1.d), ~u_input.c.xwy, min(vec3<u32>(global1.d.x, 4294967295u, 40127u), u_input.c.yyy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -141f, -405f, -1000f) * vec4<f32>(1323f, global1.a.x, global1.e.x, 429f))))));
    global2 = array<u32, 10>();
    var var_2 = Struct_5(global1.a.wx, Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1869f, -186f, 1835f, _wgslsmith_f_op_f32(step(892f, 1034f))), global1.e, !(!vec4<bool>(true, global1.c, global1.c, true)))), global1.b, !global1.b.b.x, global1.d, _wgslsmith_f_op_vec4_f32(global1.a * global1.e)));
    return Struct_2(vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(-520f)), _wgslsmith_f_op_f32(604f - global1.e.x), _wgslsmith_f_op_f32(-145f - var_2.b.a.x)), Struct_1(true, !func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(866f, 790f, -1090f, -1469f)), var_2.b.b, Struct_3(var_1, vec4<bool>(false, false, var_2.b.c, true), var_2.b.b, vec2<i32>(-53897i, global1.b.c))).yxw, global1.b.c), any(var_2.b.b.b), firstTrailingBit(abs(~u_input.c.yyx | var_0.xwy)), _wgslsmith_f_op_vec4_f32(-global1.e));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_5, arg_2: bool) -> Struct_4 {
    global2 = array<u32, 10>();
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(-arg_0.a.xx), arg_1.b);
    var var_1 = arg_1.b;
    let var_2 = arg_1.b;
    var var_3 = true;
    return Struct_4(Struct_3(_wgslsmith_add_i32(4281i, 65249i), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 571f, -804f, var_1.e.x) - global1.e), var_2.b, Struct_3(0i << (global0.x % 32u), vec4<bool>(false, false, false, arg_2), func_1().b, u_input.a)), func_1().b, select(u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(-42705i, 28568i), vec2<i32>(-10211i, var_1.b.c)), true) << (vec2<u32>(var_1.d.x, ~70094u) % vec2<u32>(32u))), var_1.a.x);
}

fn func_6(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(global1.a.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global1.e.ww, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.e.x, arg_2.b)))))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + var_1.x));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)), Struct_1(!all(global1.b.b.yz), !(!vec3<bool>(global1.c, false, arg_2.a.b.x)), ~((arg_1.x >> (global0.x % 32u)) << (~arg_0 % 32u))), true, vec3<u32>(6249u, 11058u, ~global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(round(global1.e)))));
    global0 = vec4<u32>(var_3.d.x, _wgslsmith_add_u32(u_input.c.x, 1u << (u_input.b.x % 32u)), 34417u, ~(~(arg_0 >> (~1u % 32u))));
    return arg_2.a.c;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> StorageBuffer {
    return StorageBuffer(~abs(_wgslsmith_add_vec3_u32(u_input.d, ~u_input.c.zww)), firstTrailingBit(_wgslsmith_mult_vec2_u32(~abs(u_input.b), abs(global0.zy))), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.b.c, ~reverseBits(u_input.a.x)), _wgslsmith_clamp_vec2_i32(countOneBits(-arg_0.d), (arg_1.d & arg_1.d) >> (global1.d.xx % vec2<u32>(32u)), abs(countOneBits(u_input.a))), -vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, 1i), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 10>();
    var var_0 = vec2<u32>(~global0.x, _wgslsmith_div_u32(0u, 4294967295u));
    let var_1 = ~reverseBits(vec2<u32>(min(1548u, ~u_input.e), _wgslsmith_clamp_u32(1u, reverseBits(global0.x), 30758u)));
    let var_2 = -(i32(-1i) * -600i);
    var var_3 = reverseBits(-firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, global1.b.c), vec2<i32>(u_input.a.x, u_input.a.x)) >> (~vec2<u32>(global0.x, global1.d.x) % vec2<u32>(32u))));
    let var_4 = global1.a.yyy;
    let x = u_input.a;
    s_output = func_7(Struct_3(select(37433i, u_input.a.x, true && global1.b.a), !(!(!vec4<bool>(true, global1.c, global1.b.b.x, true))), func_6(~var_1.x, reverseBits(min(vec4<i32>(-1i, var_2, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -15661i, u_input.a.x, 27511i))), func_5(func_1(), Struct_5(var_4.yx, Struct_2(vec4<f32>(var_4.x, 620f, var_4.x, global1.a.x), global1.b, false, vec3<u32>(0u, 114341u, var_1.x), global1.a)), all(global1.b.b)), u_input.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(~(-1i), var_3.x | -1i), vec2<i32>(-7348i, 1i << (var_1.x % 32u)))), func_5(func_1(), Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.e.zw))), func_1()), ~_wgslsmith_mod_u32(82525u, var_1.x) <= u_input.d.x).a, var_1.x, global2[_wgslsmith_index_u32(var_0.x, 10u)]);
}

