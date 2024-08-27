struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(-23058i, 1i, i32(-2147483648)), Struct_1(2147483647i, 33476u, vec4<f32>(1438f, -588f, -450f, 545f), 1u));

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_5, 12>;

var<private> global3: Struct_3;

var<private> global4: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(41725i, 61997i, 58997i), vec3<i32>(1i, 1i, -26488i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(0i, -5454i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -3663i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(2147483647i, 54405i, 1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> u32 {
    let var_0 = ~vec2<u32>(~4294967295u, u_input.b);
    let var_1 = true;
    var var_2 = Struct_2(-vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0.a.xz, vec2<i32>(19146i, 2147483647i)), ~(-1i)), -u_input.a.x, ~(1i ^ global0.a.x)), Struct_1(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), -2147483647i), 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(global0.b.c.x + _wgslsmith_f_op_f32(-global0.b.c.x)), _wgslsmith_f_op_f32(trunc(-674f)), _wgslsmith_div_f32(_wgslsmith_div_f32(2380f, global0.b.c.x), _wgslsmith_f_op_f32(step(-1388f, 194f))), global0.b.c.x), arg_1.x));
    let var_3 = vec3<i32>(countOneBits(-2147483647i), u_input.a.x, -56539i);
    var var_4 = u_input.b;
    return 0u | _wgslsmith_sub_u32(arg_1.x, _wgslsmith_mult_u32(global3.a, ~45558u));
}

fn func_1() -> Struct_2 {
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(global1.x, global0.b.b, func_2(!(!vec2<bool>(global3.b, true)), countOneBits(~vec2<u32>(u_input.b, global0.b.b)))), firstLeadingBit(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, u_input.b, 42287u)), vec3<u32>(~global1.x, 3120u, global0.b.d))));
    global4 = array<vec3<i32>, 7>();
    var var_0 = ~(firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(-4074i, 0i), 1i << (global1.x % 32u))) ^ 1i);
    return Struct_2(-select(vec3<i32>(global0.b.a, _wgslsmith_sub_i32(-40207i, 1i), firstTrailingBit(global0.b.a)), ~(-vec3<i32>(-2147483647i, global0.a.x, global0.a.x)), !(!vec3<bool>(global3.b, global3.b, false))), Struct_1(~(0i | u_input.a.x), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(global3.a, 1u), max(39989u, 21959u)), global3.c, ~abs(u_input.b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_5(func_1().b, Struct_1(arg_1.b.a, arg_2.a, global0.b.c, abs(arg_0.a)), Struct_2(u_input.a, func_1().b), Struct_4(min(reverseBits(select(vec4<u32>(global1.x, global1.x, arg_2.a, 0u), vec4<u32>(global3.a, global3.a, 48195u, global3.a), false)), vec4<u32>(1u, 22115u, u_input.b, 1u) << (select(vec4<u32>(arg_0.a, global0.b.b, 81851u, 4294967295u), vec4<u32>(68974u, arg_2.a, global0.b.b, 5033u), vec4<bool>(false, arg_2.b, arg_2.b, true)) % vec4<u32>(32u))), 5203u, global0.b.c.x, Struct_2(~(arg_1.a | u_input.a), func_1().b)), max(-u_input.a.x, countOneBits(-_wgslsmith_add_i32(arg_1.a.x, arg_1.a.x))));
    let var_1 = arg_0.b;
    global2 = array<Struct_5, 12>();
    var var_2 = arg_2.c.x;
    global2 = array<Struct_5, 12>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(121f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.d.b.c.x * arg_1.b.c.x), _wgslsmith_f_op_f32(ceil(global0.b.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -340f);
    let var_2 = -969f >= _wgslsmith_f_op_f32(func_3(Struct_3(var_0.b.b, false, _wgslsmith_f_op_vec4_f32(-func_1().b.c)), Struct_2(~(global4[_wgslsmith_index_u32(0u, 7u)] << (vec3<u32>(3752u, 4294967295u, var_0.b.d) % vec3<u32>(32u))), global0.b), Struct_3(min(~global0.b.d, global0.b.d), true, var_0.b.c)));
    global0 = Struct_2(~countOneBits(~vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(select(-(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 27809i, 10153i, global0.b.a), vec4<i32>(u_input.a.x, u_input.a.x, var_0.b.a, var_0.b.a)) | (vec4<i32>(-2147483647i, var_0.b.a, 1i, -28559i) & vec4<i32>(u_input.a.x, 5664i, 20933i, 27578i))), min(_wgslsmith_add_vec4_i32(~vec4<i32>(global0.b.a, u_input.a.x, u_input.a.x, -48286i), select(vec4<i32>(1i, global0.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -44027i, 71471i, var_0.b.a), var_2)), vec4<i32>(global0.b.a, var_0.a.x, -global0.b.a, firstTrailingBit(48242i))), select(select(!vec4<bool>(false, false, false, global3.b), select(vec4<bool>(global3.b, false, global3.b, true), vec4<bool>(global3.b, false, var_2, true), vec4<bool>(var_2, true, true, false)), select(vec4<bool>(true, false, global3.b, global3.b), vec4<bool>(true, true, global3.b, global3.b), global3.b)), vec4<bool>(var_2, true, var_2, all(vec2<bool>(global3.b, global3.b))), !(!vec4<bool>(global3.b, false, false, false)))), 1u, -1963f, firstLeadingBit(_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(u_input.b << (global1.x % 32u), 7u)], -vec3<i32>(u_input.a.x, -28110i, var_0.a.x)) << (0u % 32u)), max(~vec4<i32>(firstTrailingBit(u_input.a.x), -50567i, reverseBits(2147483647i), var_0.a.x ^ 19160i), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(global0.a.x, 0i, global0.b.a, var_0.a.x)), vec4<i32>(var_0.a.x, 0i, -2147483647i, var_0.b.a) << (vec4<u32>(18450u, global3.a, 4294967295u, 4294967295u) % vec4<u32>(32u)), max(countOneBits(vec4<i32>(-2147483647i, 2147483647i, global0.a.x, -50465i)), min(vec4<i32>(0i, 51772i, global0.a.x, u_input.a.x), vec4<i32>(global0.a.x, 14884i, u_input.a.x, global0.b.a))))));
}

