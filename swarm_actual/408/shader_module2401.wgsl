struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-237i, 699i);

var<private> global1: array<u32, 6>;

var<private> global2: i32 = 0i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<i32> {
    global0 = -(~((-vec2<i32>(34576i, global0.x) << (u_input.a.xx % vec2<u32>(32u))) << (~u_input.a.zx % vec2<u32>(32u))));
    var var_0 = abs(u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(590f, 533f) - vec2<f32>(-1000f, 1071f)))))));
    return vec4<i32>(_wgslsmith_div_i32(1i, -global0.x), global0.x, 1i, _wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(abs(-36273i), 1i), _wgslsmith_mult_i32(global0.x, 0i) >> (0u % 32u)), global0.x));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -vec3<i32>(arg_0, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(-4183i, -9536i), -1i), arg_0);
    global0 = vec2<i32>(arg_0, ~var_0.x);
    var var_1 = _wgslsmith_clamp_i32(countOneBits(-19946i >> ((global1[_wgslsmith_index_u32(u_input.a.x, 6u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 6u)] % 32u)) % 32u)), _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0.x, 1i) >> (u_input.a.zy % vec2<u32>(32u)), -var_0.yx, select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<i32>(2147483647i, _wgslsmith_mod_i32(-28205i, arg_1.b))), arg_1.b) & 22700i;
    var var_2 = Struct_2(vec4<u32>(0u, 12836u, ~66205u, u_input.a.x), arg_1);
    let var_3 = Struct_2(var_2.a, Struct_1(abs(abs(u_input.a.x)) >> (arg_1.a % 32u), var_0.x));
    return Struct_1(87798u, _wgslsmith_sub_i32(1i, 1i | var_3.b.b));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    let var_0 = func_3(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(func_2(), vec4<i32>(-41894i, global0.x, -18787i, -1i)) << (~(u_input.a.x & u_input.a.x) % 32u), i32(-1i) * -(~1i)), Struct_1(_wgslsmith_mod_u32(1u, 4294967295u), -2147483647i));
    var var_1 = ~u_input.a.zx;
    var var_2 = arg_0.x;
    var var_3 = Struct_2(~(~abs(vec4<u32>(0u, 40225u, global1[_wgslsmith_index_u32(12569u, 6u)], 4294967295u)) >> (vec4<u32>(_wgslsmith_mult_u32(var_0.a, 46124u), 1u, abs(4294967295u), ~11146u) % vec4<u32>(32u))), func_3(-29686i, var_0));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(sign(349f)));
    return true;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: i32) -> Struct_4 {
    global2 = ~(_wgslsmith_mult_i32(arg_1.x, _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(global0.x, arg_0))) ^ arg_0);
    var var_0 = select(_wgslsmith_add_i32(1i, ~min(12147i, 0i)), _wgslsmith_dot_vec2_i32(arg_1.yz << (select(u_input.a.xy, vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), true) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2522i), arg_1.yz)), !all(vec3<bool>(false, false, false))) >> (global1[_wgslsmith_index_u32(55929u, 6u)] % 32u);
    var var_1 = reverseBits(global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 6u)]);
    var var_2 = min(u_input.a.xx, ~reverseBits(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 4294967295u)));
    let var_3 = Struct_4(func_3(~arg_1.x, Struct_1(~48935u & ~u_input.a.x, arg_0 | -arg_1.x)), !(!(firstLeadingBit(u_input.a.x) <= ~1u)), Struct_2(_wgslsmith_clamp_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 102664u), vec4<u32>(27028u, var_2.x, global1[_wgslsmith_index_u32(var_2.x, 6u)], u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 42098u), vec4<u32>(u_input.a.x, var_2.x, var_2.x, 1u)), abs(abs(vec4<u32>(var_2.x, 0u, 0u, 1u)))), func_3(1i >> (1u % 32u), Struct_1(39250u, 3025i))), arg_2);
    return Struct_4(var_3.c.b, max(~var_3.c.b.b, -var_3.a.b) != (58874i & _wgslsmith_mod_i32(abs(arg_2), var_3.d ^ -2147483647i)), Struct_2(vec4<u32>(_wgslsmith_mult_u32(96261u, select(1u, u_input.a.x, true)), ~firstLeadingBit(var_3.c.a.x), u_input.a.x, 52466u), Struct_1(12349u, var_3.a.b)), global0.x | _wgslsmith_add_i32(-global0.x, -(~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0.x, countOneBits(select(~(~vec3<i32>(global0.x, -31766i, -2147483647i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(-9742i, global0.x, 0i)), vec3<bool>(select(false, false, false), func_1(vec2<bool>(false, false)), false))), global0.x);
    var var_1 = Struct_1(1u, -18177i);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-732f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-392f, 2337f, _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(trunc(576f)), 9416u <= var_1.a))));
    let var_4 = ~(-firstTrailingBit(countOneBits(-vec4<i32>(23746i, -14419i, global0.x, var_1.b))));
    var var_5 = func_4(_wgslsmith_dot_vec4_i32(-var_4, max(~(~vec4<i32>(var_0.c.b.b, var_1.b, -28992i, 13808i)), var_4)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global0.x >> (29399u % 32u), var_0.d, global0.x), ~_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b, var_1.b, global0.x), var_4.xzz), vec3<i32>(0i, 1i, _wgslsmith_sub_i32(-1i, ~26260i))), i32(-1i) * -2147483647i).a;
    var var_6 = -func_3(_wgslsmith_div_i32(countOneBits(var_1.b), global0.x), Struct_1(var_1.a ^ _wgslsmith_mult_u32(4294967295u, var_1.a), -var_1.b)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-878f, _wgslsmith_f_op_f32(select(1313f, 729f, false)))) - _wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), ~(u_input.a.x & u_input.a.x), firstLeadingBit(35195u));
}

