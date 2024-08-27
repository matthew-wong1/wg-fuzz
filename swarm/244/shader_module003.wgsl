struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<u32>(28939u, 4294967295u), vec4<i32>(-1i, 0i, 15656i, -34021i), vec2<i32>(-9272i, 10084i));

var<private> global2: array<vec4<f32>, 2>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-187f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(675f - 958f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -667f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-819f, 828f), -984f))), 815f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global0.d.x, 2u)])) + global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 70418u), 2u)]), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-160f, 365f), _wgslsmith_f_op_f32(776f * -2136f), _wgslsmith_f_op_f32(round(-864f)), _wgslsmith_f_op_f32(min(-1000f, -1161f))))))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(-855f, var_0.x))))), var_0.x));
    let var_2 = vec2<u32>(4294967295u, 81069u);
    var var_3 = 1i;
    let var_4 = _wgslsmith_f_op_f32(sign(var_0.x));
    return u_input.d.yz & abs(~_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, 0u)), firstLeadingBit(vec2<u32>(var_2.x, 6045u))));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(global1.d.x >= u_input.b, global1.b.x, global0.c, u_input.d.zy);
    let var_0 = global0.c;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2229f)), -248f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(720f, 1000f))))))));
    var var_2 = Struct_1(!(!select(vec2<bool>(global0.c.a.x, global1.a.x), !vec2<bool>(global1.a.x, false), global1.a.x)), vec2<u32>(~(~_wgslsmith_clamp_u32(u_input.d.x, global0.b, var_0.b.x)), 0u), global0.c.c, var_0.c.zw ^ _wgslsmith_clamp_vec2_i32(global1.c.yz >> (global0.c.b % vec2<u32>(32u)), global0.c.c.xx, abs(global1.d)));
    let var_3 = true;
    return Struct_2(true & global0.a, u_input.d.x, Struct_1(select(!var_0.a, !(!vec2<bool>(true, var_0.a.x)), true), ~func_3(), global0.c.c ^ max(vec4<i32>(42291i, u_input.e.x, -6367i, -32790i), vec4<i32>(-1i, 1i, 27609i, -2147483647i)), ~global0.c.d), abs(~firstTrailingBit(var_2.b)) << (vec2<u32>(120955u, ~_wgslsmith_mult_u32(global1.b.x, 2462u)) % vec2<u32>(32u)));
}

fn func_1() -> Struct_2 {
    let var_0 = 38830u;
    var var_1 = Struct_1(select(global0.c.a, vec2<bool>(!(global0.a == true), ~(-7058i) < (48747i >> (u_input.d.x % 32u))), -_wgslsmith_div_i32(global1.d.x, global0.c.d.x) < ~(~2147483647i)), global1.b, global1.c, reverseBits(vec2<i32>(global1.c.x >> (0u % 32u), 8964i) ^ max(global1.c.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 30150i), u_input.e.yz))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = Struct_1(!vec2<bool>(true, 4294967295u != _wgslsmith_div_u32(u_input.d.x, global0.c.b.x)), vec2<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.d.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(11089u, global0.b), reverseBits(1u)))), vec4<i32>(_wgslsmith_sub_i32(~16739i, 9963i), _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(global1.c.x ^ 0i, ~2147483647i, 34797i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, -41720i ^ var_0.c.d.x), abs(func_1().c.d.x)), global1.d.x), -func_2().c.d >> (var_0.d % vec2<u32>(32u)));
    global1 = Struct_1(!select(vec2<bool>(all(vec4<bool>(true, true, false, false)), var_0.c.a.x), select(select(global0.c.a, global0.c.a, true), !global1.a, vec2<bool>(false, global1.a.x)), select(any(vec4<bool>(true, global0.a, var_0.a, var_0.c.a.x)), true, global0.a)), countOneBits(var_0.d), abs(func_1().c.c) | _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 16913i, global0.c.c.x), global1.c) & vec4<i32>(1i, var_0.c.d.x, global0.c.d.x, -2147483647i), min(vec4<i32>(42538i, 1i, var_0.c.d.x, u_input.c), vec4<i32>(global1.d.x, global0.c.c.x, global0.c.c.x, 102579i))), firstTrailingBit(-(~u_input.e.xx)));
    var var_1 = -1i;
    let var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-118f, 752f))))), 153f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-711f, _wgslsmith_f_op_f32(step(-903f, 757f))))), ~(~vec3<u32>(global1.b.x, 0u, 0u) | vec3<u32>(global1.b.x, u_input.d.x, _wgslsmith_mod_u32(var_0.b, 0u))), 1u, countOneBits(-1i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_2.d.x, global0.c.d.x), 0i ^ global0.c.c.x, global1.d.x), func_1().c.c.zzz), reverseBits(_wgslsmith_mod_i32(43705i, global1.d.x) >> (~4294967295u % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, abs(var_2.c.x)), var_2.d)));
}

