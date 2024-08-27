struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(449f, 920f), vec2<f32>(1000f, 310f), vec2<f32>(538f, -1754f));

var<private> global1: array<vec3<i32>, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(42149u, 9724u, u_input.b.x, 34925u), vec4<u32>(1u, 22414u, u_input.b.x, u_input.a))), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-496f + 243f)))), vec4<i32>(1i, 1i, 1i, 1i)), -1i >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u) ^ reverseBits(4294967295u), abs(~0u)) % 32u), Struct_1(vec4<u32>(1u, min(u_input.a >> (4294967295u % 32u), ~33683u), firstTrailingBit(u_input.d.x), countOneBits(~u_input.a)), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(516f, -284f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(615f)) - 1305f)), _wgslsmith_div_vec4_i32(min(vec4<i32>(0i, 3951i, 20535i, -5570i), ~vec4<i32>(-2147483647i, 0i, 68540i, 2147483647i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 36155i, 2147483647i, -25206i), vec4<i32>(39154i, 1i, 2147483647i, -12192i)))), global1[_wgslsmith_index_u32(1u, 16u)], vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -111f))), -1233f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1034f, -1240f))), -364f, true)), _wgslsmith_f_op_f32(-1f)));
    global0 = array<vec2<f32>, 3>();
    let var_1 = Struct_3(var_0.a, vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) && true, false, all(vec4<bool>(true, true, any(vec3<bool>(false, true, true)), all(vec3<bool>(false, false, true)))), true), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_0.c.d.x, -11798i), _wgslsmith_mod_vec3_i32(-global1[_wgslsmith_index_u32(63190u | u_input.b.x, 16u)], (global1[_wgslsmith_index_u32(var_0.a.a.x, 16u)] >> (vec3<u32>(u_input.b.x, var_0.a.a.x, u_input.c) % vec3<u32>(32u))) >> (u_input.d % vec3<u32>(32u))), vec3<i32>(var_0.a.d.x, -35021i, -1i)), Struct_1(var_0.a.a, ~var_0.a.a.xyw, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.c.c)), var_0.a.c)), countOneBits(var_0.a.d)), Struct_1(var_0.a.a, ~vec3<u32>(45328u, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_0.c.b.x, 36335u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(var_0.c.c + -1177f)))), vec4<i32>(var_0.a.d.x, i32(-1i) * -2147483647i, -3469i, var_0.a.d.x)));
    var var_2 = Struct_3(var_1.a, var_1.b, -_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(var_0.b, var_0.c.d.x, 46448i) >> (vec3<u32>(1u, u_input.d.x, 4294967295u) % vec3<u32>(32u))), abs(firstTrailingBit(vec3<i32>(var_0.c.d.x, -2147483647i, var_1.a.d.x)))), var_0.a, Struct_1(vec4<u32>(u_input.d.x, firstLeadingBit(~u_input.a), firstLeadingBit(1u), abs(abs(45799u))), countOneBits(abs(~vec3<u32>(u_input.c, 0u, u_input.d.x))), -251f, ~_wgslsmith_mult_vec4_i32(~var_1.a.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, var_1.c.x, var_0.c.d.x), vec4<i32>(var_0.c.d.x, -1i, var_1.c.x, -22676i), var_1.a.d))));
    var var_3 = -299f;
    return _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.a.b.x, firstTrailingBit(var_2.a.a.x), ~4294967295u), var_2.d.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = Struct_3(Struct_1(vec4<u32>(var_0, select(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(27463u, 46432u, 46896u)), u_input.a >> (var_0 % 32u), true), var_0, func_3()), u_input.d, 1127f, vec4<i32>(select(1i, 0i, true), 1i, ~(~1311i), 1i)), vec4<bool>(!select(false, any(vec4<bool>(true, false, false, true)), false), any(vec4<bool>(true, any(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, true)), true)), true, all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_mult_vec3_i32(firstTrailingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-22890i, -4468i, -6850i), global1[_wgslsmith_index_u32(var_0, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)])), ~(~vec3<i32>(1i, 0i, 60425i))), Struct_1(vec4<u32>(~_wgslsmith_mod_u32(var_0, 1u), u_input.a, 39247u, _wgslsmith_clamp_u32(16176u, u_input.a, 1u)), u_input.d, _wgslsmith_f_op_f32(step(606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(870f, 131f, false))))), vec4<i32>(countOneBits(48494i) << (u_input.a % 32u), -_wgslsmith_add_i32(0i, -39380i), _wgslsmith_mult_i32(~(-1i), -11557i), _wgslsmith_sub_i32(0i, 1i))), Struct_1(abs(countOneBits(abs(vec4<u32>(52213u, u_input.a, var_0, var_0)))), reverseBits(u_input.d), 1000f, -vec4<i32>(1i, 1i, 1i, 1i)));
    var var_2 = var_1;
    var var_3 = ~var_2.c.x;
    var var_4 = max(var_2.a.a, vec4<u32>(42696u, 1u, _wgslsmith_add_u32(u_input.d.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(22011u, var_1.d.b.x), vec2<u32>(var_2.d.b.x, 4294967295u))), _wgslsmith_sub_u32(u_input.d.x, (84124u & var_1.d.a.x) ^ u_input.b.x)));
    return var_1.d;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_2.a, 1761i, Struct_1(min(~vec4<u32>(arg_0, arg_0, 36917u, u_input.d.x), _wgslsmith_add_vec4_u32(arg_2.c.a, _wgslsmith_mod_vec4_u32(arg_2.c.a, vec4<u32>(arg_2.c.b.x, 1u, 0u, u_input.b.x)))), vec3<u32>(56133u, arg_0, ~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(exp2(arg_1.x))))), arg_2.c.d), arg_2.c.d.zwz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), 532f, arg_2.e.x), _wgslsmith_f_op_vec4_f32(trunc(arg_2.e))))));
    global0 = array<vec2<f32>, 3>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(arg_2.e.xyw, vec3<f32>(arg_2.c.c, -1398f, 514f), true))))))) * arg_2.e.xyz);
    global1 = array<vec3<i32>, 16>();
    var var_2 = -vec4<i32>(max(arg_2.c.d.x, min(31800i, _wgslsmith_add_i32(0i, arg_2.c.d.x))), -31053i, -_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u), 16u)], arg_2.c.d.zww), arg_2.c.d.x);
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0.a.c;
    var var_1 = _wgslsmith_div_u32(u_input.c, select(_wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(arg_0.e.a, _wgslsmith_add_vec4_u32(arg_0.a.a, vec4<u32>(0u, u_input.b.x, 1u, 79194u))), _wgslsmith_clamp_u32(0u, arg_0.a.b.x, 1u)), ~(~arg_0.e.b.x ^ 1u), all(!(!vec3<bool>(false, true, arg_0.b.x)))));
    let var_2 = Struct_1(select(~firstLeadingBit(vec4<u32>(u_input.a, arg_2, arg_0.d.b.x, 4294967295u)), firstLeadingBit(~(vec4<u32>(arg_0.d.a.x, arg_2, arg_2, 0u) << (vec4<u32>(u_input.a, arg_2, u_input.a, arg_0.a.b.x) % vec4<u32>(32u)))), !select(vec4<bool>(true, arg_1, arg_0.b.x, true), vec4<bool>(true, false, arg_1, arg_0.b.x), any(vec4<bool>(arg_0.b.x, true, arg_1, false)))), ~firstTrailingBit(arg_0.d.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0)), -2028f), arg_0.d.d);
    let var_3 = select(~arg_0.e.a.yxy, abs(vec3<u32>(u_input.c, arg_0.a.b.x ^ arg_2, 0u)), !(reverseBits(arg_0.c.x) > ~(~2147483647i)));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f + _wgslsmith_f_op_f32(var_2.c * var_2.c))) - _wgslsmith_f_op_f32(min(1f, 1442f)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 16>();
    let var_0 = Struct_2(func_4(Struct_3(func_1(u_input.b.x, vec2<f32>(1325f, -173f), Struct_2(Struct_1(vec4<u32>(u_input.c, u_input.b.x, 4294967295u, 0u), vec3<u32>(37317u, 1u, u_input.b.x), 598f, vec4<i32>(1i, -1i, -2147483647i, 2147483647i)), 0i, Struct_1(vec4<u32>(u_input.a, u_input.a, 32780u, u_input.a), vec3<u32>(1u, u_input.b.x, 34823u), -1000f, vec4<i32>(-2147483647i, 9932i, 1i, -20688i)), vec3<i32>(-4546i, 27383i, 0i), vec4<f32>(-1160f, -487f, 619f, 715f))), vec4<bool>(true, true, true, true), select(vec3<i32>(1i, -1i, -29366i), select(vec3<i32>(-1376i, 2147483647i, -1i), vec3<i32>(-1i, -28151i, 41311i), vec3<bool>(false, false, true)), vec3<bool>(false, true, true)), Struct_1(firstTrailingBit(vec4<u32>(u_input.a, u_input.c, u_input.b.x, 1u)), ~u_input.d, 1f, -vec4<i32>(11453i, -43092i, 35544i, -362i)), Struct_1(~vec4<u32>(4294967295u, u_input.b.x, u_input.a, 40269u), abs(vec3<u32>(4294967295u, 7342u, u_input.c)), _wgslsmith_div_f32(-780f, 786f), ~vec4<i32>(-18390i, -1i, 24865i, 0i))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), u_input.a, -1i), ~(-1i), Struct_1(select(vec4<u32>(~u_input.b.x, select(4294967295u, 7452u, true), u_input.b.x >> (8863u % 32u), func_2().a.x), countOneBits(func_4(Struct_3(Struct_1(vec4<u32>(u_input.d.x, u_input.b.x, u_input.a, u_input.c), vec3<u32>(u_input.b.x, u_input.c, 53541u), -356f, vec4<i32>(55891i, 29290i, 13744i, 41107i)), vec4<bool>(true, true, true, true), vec3<i32>(15752i, 1i, -2147483647i), Struct_1(vec4<u32>(u_input.d.x, 27096u, 1u, u_input.b.x), u_input.d, 1757f, vec4<i32>(-1i, -1i, 13650i, -24333i)), Struct_1(vec4<u32>(u_input.b.x, u_input.c, 593u, 0u), vec3<u32>(0u, 21702u, u_input.c), -335f, vec4<i32>(1i, -12673i, 3077i, -2147483647i))), false, 4294967295u, 11517i).a), vec4<bool>(true, true, true, true)), ~(~select(vec3<u32>(87561u, 1u, 4294967295u), u_input.d, vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -209f), select(reverseBits(-vec4<i32>(47969i, -2147483647i, -59992i, 0i)), vec4<i32>(~15764i, abs(0i), func_2().d.x, _wgslsmith_mod_i32(1i, -13510i)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))), reverseBits(vec3<i32>(-25057i, 2147483647i, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1175f, 311f, -1565f, 123f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -2003f, 442f, -1000f) - vec4<f32>(-1000f, 1000f, 273f, 1288f)))))));
    let var_1 = Struct_3(func_1(func_2().b.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(164f, 982f))) * vec2<f32>(1000f, var_0.e.x)), global0[_wgslsmith_index_u32(6105u, 3u)])), var_0), !vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), reverseBits(func_1(var_0.a.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.a.c))), var_0).d.zyw), Struct_1(_wgslsmith_mod_vec4_u32(var_0.a.a, ~func_4(Struct_3(Struct_1(var_0.c.a, vec3<u32>(u_input.a, 0u, 42858u), -198f, vec4<i32>(var_0.d.x, -9775i, var_0.b, var_0.c.d.x)), vec4<bool>(true, false, false, true), var_0.a.d.xwx, var_0.a, Struct_1(vec4<u32>(var_0.a.a.x, u_input.a, 4294967295u, var_0.c.b.x), u_input.d, -1000f, var_0.c.d)), false, var_0.a.b.x, var_0.b).a), select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.a.a.x, u_input.b.x, var_0.c.b.x), abs(vec3<u32>(11408u, 0u, var_0.a.b.x)), min(var_0.a.a.xyz, var_0.a.a.xww)), min(var_0.a.b, u_input.d), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(min(func_4(Struct_3(var_0.a, vec4<bool>(false, false, true, true), global1[_wgslsmith_index_u32(u_input.d.x, 16u)], var_0.a, var_0.c), true, var_0.c.b.x, -1i).c, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.c, 1104f), func_4(Struct_3(var_0.a, vec4<bool>(true, false, false, true), vec3<i32>(-1i, var_0.c.d.x, 0i), var_0.c, var_0.c), false, u_input.c, var_0.d.x).c)))), -vec4<i32>(var_0.d.x, var_0.b, var_0.b, var_0.c.d.x)), func_4(Struct_3(var_0.c, vec4<bool>(true, true, true, true), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-37031i, var_0.d.x), vec2<i32>(-2147483647i, -1i)), _wgslsmith_sub_i32(var_0.b, 17989i), ~var_0.c.d.x), var_0.a, func_4(Struct_3(Struct_1(vec4<u32>(var_0.a.b.x, u_input.d.x, u_input.b.x, u_input.a), u_input.d, var_0.c.c, var_0.c.d), vec4<bool>(false, false, true, false), global1[_wgslsmith_index_u32(0u, 16u)], var_0.c, Struct_1(vec4<u32>(88125u, 26359u, u_input.d.x, u_input.b.x), var_0.c.a.xxz, var_0.e.x, vec4<i32>(0i, 19841i, -15685i, 0i))), all(vec4<bool>(false, true, false, true)), ~u_input.b.x, -2147483647i | var_0.b)), any(vec4<bool>(false, true, false, false)) & true, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a.x, 66449u, u_input.d.x), u_input.d), ~_wgslsmith_mod_i32(var_0.a.d.x, var_0.a.d.x)));
    let var_2 = _wgslsmith_div_u32(~reverseBits(_wgslsmith_dot_vec3_u32(var_1.e.b, ~var_0.a.b)), func_3());
    var var_3 = -max(-var_0.c.d, firstLeadingBit(reverseBits(firstTrailingBit(var_0.c.d))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(4294967295u, 3u)]);
}

