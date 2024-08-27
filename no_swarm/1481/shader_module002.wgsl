struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<bool>(true, true, true), 540f), Struct_1(vec3<bool>(true, true, false), 645f), Struct_1(vec3<bool>(false, true, true), -401f), Struct_1(vec3<bool>(true, false, true), 1714f), Struct_1(vec3<bool>(false, false, true), -617f), Struct_1(vec3<bool>(true, true, false), 1545f), Struct_1(vec3<bool>(true, false, false), 1955f), Struct_1(vec3<bool>(true, true, false), -370f), Struct_1(vec3<bool>(false, false, true), -1000f), Struct_1(vec3<bool>(true, true, false), -1466f), Struct_1(vec3<bool>(false, true, true), -1367f), Struct_1(vec3<bool>(true, false, false), -326f), Struct_1(vec3<bool>(false, true, true), 722f), Struct_1(vec3<bool>(true, false, false), 614f), Struct_1(vec3<bool>(true, true, false), 366f), Struct_1(vec3<bool>(true, false, false), -1964f), Struct_1(vec3<bool>(false, false, true), 512f), Struct_1(vec3<bool>(true, true, false), -374f), Struct_1(vec3<bool>(true, false, false), -344f), Struct_1(vec3<bool>(false, true, false), -1230f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec3<bool>(false, false, true), 2147483647i), Struct_3(vec3<bool>(false, true, false), -9046i), Struct_3(vec3<bool>(false, true, true), 15627i), Struct_3(vec3<bool>(false, false, false), -21371i), Struct_3(vec3<bool>(true, false, false), -6086i), Struct_3(vec3<bool>(true, false, true), 10455i), Struct_3(vec3<bool>(true, true, false), 1i), Struct_3(vec3<bool>(true, false, false), 22032i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_4 {
    global1 = global0[_wgslsmith_index_u32(~u_input.c, 20u)];
    global0 = array<Struct_1, 20>();
    global2 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))))) + global1.b);
    global1 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    return Struct_4(!select(vec4<bool>(false, !global1.a.x, global1.a.x, false & global1.a.x), vec4<bool>(false, false, any(vec4<bool>(false, global1.a.x, global1.a.x, true)), !global1.a.x), true));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_4) -> i32 {
    return firstTrailingBit(select(u_input.e.x, -1154i, all(func_2().a)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(func_3(~26065u, max(arg_1.wxx, vec3<u32>(arg_1.x, u_input.c, 79044u)), func_2()) & _wgslsmith_dot_vec3_i32(vec3<i32>(-29382i, u_input.e.x, arg_2.b), vec3<i32>(arg_2.b, 0i, arg_2.b)), u_input.b.x), arg_0 & _wgslsmith_mult_i32(~_wgslsmith_mult_i32(arg_0, u_input.b.x), arg_0));
    let var_1 = ~firstTrailingBit(vec4<u32>(~abs(arg_1.x), ~(arg_1.x & arg_1.x), 4294967295u, 7405u));
    let var_2 = Struct_2(firstTrailingBit(-1i), global0[_wgslsmith_index_u32(u_input.c & 0u, 20u)], 63321u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 1u), 20u)]);
    return Struct_3(vec3<bool>(!func_2().a.x, var_2.b.a.x & false, (any(var_2.d.a) == false) || false), ~(~(u_input.b.x << (~u_input.d.x % 32u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_3) -> Struct_4 {
    var var_0 = Struct_2((_wgslsmith_add_i32(-arg_2.b, arg_2.b) & _wgslsmith_add_i32(abs(arg_2.b), 1i)) & _wgslsmith_dot_vec3_i32(u_input.e.xxz, _wgslsmith_sub_vec3_i32(u_input.b.wwx, u_input.b.zyz)), global0[_wgslsmith_index_u32(u_input.c, 20u)], ~4294967295u, global0[_wgslsmith_index_u32(reverseBits(~(~(~u_input.c))), 20u)]);
    var var_1 = func_1(17354i, select(abs(~vec4<u32>(59324u, 4294967295u, var_0.c, u_input.d.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, var_0.c, u_input.d.x, 30065u), vec4<u32>(0u, var_0.c, var_0.c, 66445u)) | ~vec4<u32>(var_0.c, 41277u, var_0.c, var_0.c), !func_1(u_input.b.x, vec4<u32>(49825u, u_input.c, u_input.a, var_0.c), arg_2).a.x) | vec4<u32>(var_0.c & 21906u, ~(~0u), 48576u, var_0.c), global2[_wgslsmith_index_u32(abs(firstLeadingBit(_wgslsmith_clamp_u32(~1u, firstLeadingBit(12279u), ~var_0.c))), 8u)]);
    var_1 = Struct_3(vec3<bool>(true, any(!func_1(1i, vec4<u32>(u_input.d.x, 4294967295u, 43525u, var_0.c), Struct_3(arg_2.a, -1i)).a), select(true, true, true)), min(arg_2.b, arg_2.b));
    var var_2 = -39775i;
    var_0 = Struct_2(min(u_input.e.x, _wgslsmith_mult_i32(-(u_input.b.x & -47627i), -(~2147483647i))), Struct_1(func_1(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_2.b, 69204i, var_1.b), u_input.b)), ~(~vec4<u32>(var_0.c, 4294967295u, var_0.c, var_0.c)), Struct_3(vec3<bool>(arg_0.x, var_0.b.a.x, arg_2.a.x), u_input.e.x >> (0u % 32u))).a, -1384f), var_0.c, Struct_1(vec3<bool>(arg_2.a.x, false, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, var_0.b.b) - _wgslsmith_f_op_f32(1454f * global1.b))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(vec3<bool>(all(vec2<bool>(false, global1.a.x)), all(vec2<bool>(false, true)), global1.a.x), global1.a, !global1.a), global1.a.x && !global1.a.x, func_1(u_input.b.x, vec4<u32>(_wgslsmith_sub_u32(22756u, u_input.c), 62262u ^ ~u_input.a, ~firstTrailingBit(u_input.a), u_input.d.x), Struct_3(vec3<bool>(u_input.b.x < u_input.e.x, -6673i <= u_input.e.x, true), min(-1i, 48542i))));
    var var_1 = 43165u;
    let var_2 = func_2().a;
    global1 = Struct_1(select(!select(vec3<bool>(true, true, true), var_2.xyx, true), !func_4(vec3<bool>(var_0.a.x, true, true), true, func_1(2147483647i, vec4<u32>(u_input.d.x, 64051u, 1u, u_input.c), global2[_wgslsmith_index_u32(55006u, 8u)])).a.yxz, true), global1.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, global1.b, global1.b)), vec4<f32>(global1.b, -1307f, global1.b, global1.b)))));
    global1 = Struct_1(vec3<bool>(true, true, firstTrailingBit(50224u) > ~(~u_input.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, -2843f) - _wgslsmith_f_op_f32(-1953f + var_3.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.x, var_3.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_3.x, 808f))))), all(var_2.yzz))));
    let var_4 = firstLeadingBit(func_1(u_input.e.x, vec4<u32>(~1u, ~1659u, u_input.d.x, u_input.a), func_1(u_input.b.x, ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d.x, u_input.c, 66783u), vec4<u32>(u_input.c, u_input.c, 1u, u_input.d.x)), func_1(-53885i, vec4<u32>(u_input.c, u_input.d.x, 1u, u_input.a), Struct_3(var_0.a.zzy, -76202i)))).b);
    var var_5 = all(!select(vec2<bool>(var_0.a.x, !global1.a.x), global1.a.xz, func_2().a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(u_input.b.x & -1i), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, global1.b, -976f, global1.b) + var_3))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_3)) * vec4<f32>(-201f, global1.b, 1155f, var_3.x))), var_3), u_input.b | firstTrailingBit(_wgslsmith_clamp_vec4_i32(max(u_input.b, vec4<i32>(-2147483647i, 2147483647i, var_4, -31663i)), u_input.b, vec4<i32>(2147483647i, var_4, -12895i, -36002i) >> (vec4<u32>(u_input.a, u_input.c, u_input.d.x, 4294967295u) % vec4<u32>(32u)))));
}

