struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<i32, 18>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    let var_0 = arg_2.a;
    let var_1 = arg_2.d;
    var var_2 = Struct_2(select(~abs(var_0.a), ~(~min(arg_2.a.a, vec4<u32>(10477u, var_1.c, 35334u, 19151u))), arg_2.a.e.x), arg_0.d, arg_1.a, _wgslsmith_mod_vec4_i32(var_0.d, -(vec4<i32>(-1i) * -vec4<i32>(arg_1.d, var_0.b, -2147483647i, var_0.b))), !vec2<bool>(false, arg_1.a));
    global1 = array<i32, 18>();
    var var_3 = _wgslsmith_dot_vec3_u32(~min(arg_1.c.xwz << (var_0.a.wyw % vec3<u32>(32u)), vec3<u32>(4294967295u, 4294967295u, 24689u)), abs(vec3<u32>(~14180u, arg_2.d.c & 1u, ~arg_1.c.x))) != _wgslsmith_clamp_u32(arg_0.c.x, 14027u, arg_0.c.x);
    return arg_2.a.e.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(!func_3(Struct_4(true, vec4<f32>(282f, -1000f, 670f, 441f), vec4<u32>(u_input.a, 0u, u_input.b.x, 4294967295u), -1i), Struct_4(false, vec4<f32>(-1407f, 146f, 598f, -728f), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 19033u), arg_0.x), Struct_3(Struct_2(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.a), -44146i, false, vec4<i32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(3987u, 18u)], arg_0.x), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(u_input.b.x, 27u)], vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x), Struct_1(vec2<u32>(u_input.a, u_input.b.x), false, u_input.b.x, u_input.b, 2147483647i), vec2<f32>(530f, 564f))) & (u_input.b.x > 48620u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f * 1051f)), -523f, _wgslsmith_f_op_f32(ceil(354f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(557f, 545f), _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-649f, -1000f, 742f, 198f)))))), vec4<bool>(false, !any(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))))), vec4<u32>(select(0u, u_input.b.x, true), ~_wgslsmith_div_u32(1u, 10629u), abs(u_input.a), ~firstLeadingBit(1u)) ^ ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, 34456u, 1u, 0u) | vec4<u32>(u_input.b.x, u_input.a, 32667u, u_input.b.x)), arg_0.x);
    var var_1 = vec2<i32>(-1i, -2147483647i);
    let var_2 = Struct_4(var_0.a || !var_0.a, _wgslsmith_f_op_vec4_f32(step(var_0.b, var_0.b)), ~var_0.c, -_wgslsmith_mod_i32(1i >> (var_0.c.x % 32u), 1i) ^ -var_0.d);
    var var_3 = Struct_3(Struct_2(vec4<u32>(u_input.a, _wgslsmith_mod_u32(abs(58420u), firstTrailingBit(28470u)), ~var_0.c.x ^ u_input.a, _wgslsmith_mod_u32(var_2.c.x, var_2.c.x) >> ((var_2.c.x << (u_input.a % 32u)) % 32u)), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, var_0.d, 9826i, -11722i), firstLeadingBit(vec4<i32>(var_0.d, -1i, var_1.x, arg_0.x))), var_0.a, -select(vec4<i32>(var_0.d, global1[_wgslsmith_index_u32(var_2.c.x, 18u)], 2147483647i, 29590i), vec4<i32>(arg_0.x, var_0.d, global1[_wgslsmith_index_u32(1u, 18u)], var_2.d), var_0.c.x < 15275u), vec2<bool>(any(vec3<bool>(var_2.a, true, true)), !func_3(var_2, var_2, Struct_3(global0[_wgslsmith_index_u32(var_2.c.x, 27u)], global0[_wgslsmith_index_u32(36443u, 27u)], vec4<i32>(var_1.x, -1i, global1[_wgslsmith_index_u32(33198u, 18u)], -26762i), Struct_1(vec2<u32>(u_input.b.x, var_2.c.x), false, var_0.c.x, vec3<u32>(15321u, var_0.c.x, var_0.c.x), -2147483647i), var_0.b.zz)))), global0[_wgslsmith_index_u32(1u, 27u)], -(vec4<i32>(-1i) * -(vec4<i32>(var_0.d, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], arg_0.x, var_2.d) & vec4<i32>(arg_0.x, var_2.d, var_0.d, -2298i))), Struct_1(var_2.c.xz, true, countOneBits(var_2.c.x), (vec3<u32>(var_2.c.x, var_0.c.x, u_input.b.x) << (~var_0.c.yzz % vec3<u32>(32u))) >> (var_0.c.wxy % vec3<u32>(32u)), -1i << (var_2.c.x % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.yw * vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b.x, 1117f, true)), 370f))));
    let var_4 = ~2147483647i;
    return Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(9511u, ~0u) | vec2<u32>(~5961u, _wgslsmith_mult_u32(var_2.c.x, 1u)), var_2.c.xz | abs(select(u_input.b.yx, u_input.b.xy, var_3.b.e))), false, 9809u, _wgslsmith_mod_vec3_u32(~(~(~u_input.b)), u_input.b), var_1.x << (~18187u % 32u));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3.c;
    global0 = array<Struct_2, 27>();
    let var_1 = func_2(abs(arg_3.d.zz));
    var var_2 = false;
    let var_3 = ~abs(var_1.e) <= _wgslsmith_dot_vec4_i32(arg_3.d, vec4<i32>(~abs(arg_3.b), -1i << (var_1.a.x % 32u), _wgslsmith_sub_i32(arg_3.b, -27510i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], arg_3.b, -22344i), _wgslsmith_mod_vec3_i32(arg_3.d.xzw, arg_3.d.wyx))));
    return func_2(vec2<i32>(arg_3.b, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(4294967295u, 18u)], countOneBits(global1[_wgslsmith_index_u32(u_input.a, 18u)]) >> (~arg_0 % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(true, false);
    global0 = array<Struct_2, 27>();
    var var_1 = -(~(~_wgslsmith_clamp_vec3_i32(~arg_1.d.yww, abs(arg_3.zxz), arg_1.d.yzz)));
    var var_2 = !select(vec3<bool>(select(arg_0.c > arg_0.d.x, arg_0.b, 22992u >= arg_0.a.x), true || var_0.x, true), vec3<bool>(true, false, false), var_0.x);
    let var_3 = _wgslsmith_add_i32(-(arg_1.d.x ^ arg_0.e) >> (1u % 32u), -16837i & _wgslsmith_sub_i32(47219i >> (arg_0.c % 32u), global1[_wgslsmith_index_u32(1u, 18u)])) != (-(~arg_2.d) | (i32(-1i) * -var_1.x));
    return func_1(abs(1u), vec4<f32>(-1153f, -650f, 137f, _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(select(arg_2.b.x, 1000f, false | arg_0.b)))), abs(global1[_wgslsmith_index_u32(func_2(vec2<i32>(35583i, 33934i) ^ arg_1.d.wx).d.x, 18u)]) >= func_1(~arg_1.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -2666f, arg_2.b.x, arg_2.b.x) * vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x))), var_2.x, arg_1).e, Struct_2((vec4<u32>(0u, arg_1.a.x, arg_2.c.x, 0u) ^ countOneBits(vec4<u32>(arg_0.a.x, 6944u, 1u, arg_2.c.x))) << (vec4<u32>(13384u | arg_2.c.x, ~72099u, _wgslsmith_sub_u32(arg_1.a.x, 0u), 31332u) % vec4<u32>(32u)), arg_3.x, true, _wgslsmith_clamp_vec4_i32(arg_1.d << (vec4<u32>(1u, 21737u, arg_2.c.x, 3203u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(arg_1.d ^ arg_1.d, select(arg_1.d, vec4<i32>(89259i, global1[_wgslsmith_index_u32(1u, 18u)], arg_0.e, 0i), vec4<bool>(false, arg_2.a, false, arg_2.a))), -arg_3 ^ arg_3), vec2<bool>(arg_0.b, var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(select(_wgslsmith_mult_u32(u_input.a, 1u), _wgslsmith_add_u32(0u, 0u), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-804f, -278f, 1333f, -879f) * vec4<f32>(1000f, -818f, -1000f, -169f))))), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), Struct_2(~vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 38870u) ^ ~vec4<u32>(u_input.a, 13005u, u_input.b.x, 4294967295u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a >> (u_input.a % 32u), ~u_input.a, u_input.a), 18u)], !all(vec2<bool>(false, true)), -(vec4<i32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(22176u, 18u)], 1i, -2147483647i) ^ vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], -28179i, 2147483647i, -26241i)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true))), Struct_2(~firstLeadingBit(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.a)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(24144u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)])) >> (abs(vec2<u32>(u_input.b.x, 1u)) % vec2<u32>(32u)), vec2<i32>(abs(-29238i), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)], 2147483647i))), any(vec3<bool>(true, true, true)) | true, vec4<i32>(10764i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], reverseBits(_wgslsmith_div_i32(-24382i, 2147483647i)), global1[_wgslsmith_index_u32(u_input.a, 18u)]), vec2<bool>(false, 0u <= _wgslsmith_div_u32(u_input.a, u_input.a))), Struct_4(func_1(1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(682f, 462f, -719f, 506f) * vec4<f32>(659f, -2460f, -1241f, 1133f)), true, Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.a), _wgslsmith_sub_i32(-753i, global1[_wgslsmith_index_u32(1u, 18u)]), true, vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], -21612i, 2147483647i, 20472i), vec2<bool>(true, false))).b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(461f)) - 774f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1445f)) * -1000f), _wgslsmith_div_f32(291f, _wgslsmith_div_f32(527f, 1530f)), _wgslsmith_f_op_f32(-833f + _wgslsmith_f_op_f32(max(487f, 540f)))), vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u), global1[_wgslsmith_index_u32((abs(u_input.a) & abs(u_input.b.x)) << (max(u_input.a, countOneBits(30265u)) % 32u), 18u)]), ~(~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(42169u, 18u)], global1[_wgslsmith_index_u32(5091u, 18u)]), vec4<i32>(28654i, 10070i, -34452i, global1[_wgslsmith_index_u32(1u, 18u)]), vec4<i32>(-1i, 2730i, 2147483647i, 8652i)), abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], -1i, 30854i, global1[_wgslsmith_index_u32(4294967295u, 18u)])))));
    var var_1 = Struct_4(true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1203f, -1000f, false)))), -1460f, 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-2523f, _wgslsmith_f_op_f32(f32(-1f) * -1843f))), _wgslsmith_f_op_f32(166f * 1f)))), _wgslsmith_sub_vec4_u32(~(firstTrailingBit(vec4<u32>(u_input.a, u_input.b.x, 44873u, var_0.d.x)) | _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(11940u, 0u, u_input.b.x, 1u))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, 0u, 6291u, 74174u), vec4<u32>(var_0.c, var_0.d.x, u_input.b.x, 4294967295u), var_0.b) >> (firstLeadingBit(vec4<u32>(38733u, 1u, 92349u, 5455u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.d.yz, u_input.b.zy), u_input.a, countOneBits(u_input.a), 0u | u_input.b.x))), global1[_wgslsmith_index_u32(34558u, 18u)]);
    global0 = array<Struct_2, 27>();
    var var_2 = func_1(var_1.c.x, _wgslsmith_f_op_vec4_f32(select(var_1.b, vec4<f32>(_wgslsmith_f_op_f32(sign(-1031f)), 305f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(526f - var_1.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1061f + var_1.b.x), var_1.b.x, true))), select(var_0.b, select(true, true, var_0.b) & true, var_1.a))), var_1.b.x >= _wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_div_f32(-395f, 1003f))), Struct_2(var_1.c, _wgslsmith_add_i32(-2147483647i, reverseBits(-7542i)), false, vec4<i32>(reverseBits(-1i), var_1.d, ~4037i, var_1.d), vec2<bool>(!func_2(vec2<i32>(var_1.d, -18623i)).b, !all(vec4<bool>(var_0.b, var_1.a, true, var_0.b)))));
    var var_3 = global0[_wgslsmith_index_u32(var_2.c, 27u)];
    var_1 = Struct_4(func_4(Struct_1(func_1(var_0.c ^ var_1.c.x, _wgslsmith_f_op_vec4_f32(var_1.b + var_1.b), var_0.a.x <= 59072u, Struct_2(var_3.a, global1[_wgslsmith_index_u32(u_input.a, 18u)], false, vec4<i32>(var_1.d, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global1[_wgslsmith_index_u32(var_3.a.x, 18u)], -1i), var_3.e)).a, true, var_2.c, var_0.d, -1i), Struct_2(~_wgslsmith_sub_vec4_u32(var_3.a, vec4<u32>(var_1.c.x, 2007u, u_input.b.x, 59047u)), global1[_wgslsmith_index_u32(firstTrailingBit(1u) << (~u_input.a % 32u), 18u)], var_0.b, firstLeadingBit(vec4<i32>(var_1.d, 2147483647i, var_1.d, var_2.e)), !select(var_3.e, vec2<bool>(var_1.a, true), var_0.b)), Struct_4(var_1.a, _wgslsmith_f_op_vec4_f32(floor(var_1.b)), vec4<u32>(4294967295u, 50665u, var_2.a.x, var_1.c.x), -5805i), _wgslsmith_mult_vec4_i32(vec4<i32>(-var_2.e, func_2(vec2<i32>(var_2.e, 317i)).e, abs(var_2.e), -6587i), ~vec4<i32>(-16967i, var_3.d.x, var_0.e, var_0.e))).b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(floor(var_1.b)), vec4<bool>(true, var_2.b, true && func_4(Struct_1(var_3.a.yz, false, u_input.a, var_1.c.www, var_0.e), Struct_2(vec4<u32>(4294967295u, 70944u, 79710u, 4099u), 2147483647i, var_1.a, var_3.d, vec2<bool>(false, false)), Struct_4(true, vec4<f32>(var_1.b.x, var_1.b.x, -1136f, var_1.b.x), var_1.c, var_3.d.x), var_3.d).b, any(!vec3<bool>(var_2.b, true, false))))), countOneBits(_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(var_1.c, var_1.c), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.c, var_1.c.x, var_0.a.x, 1u), var_3.a))), 0i);
    global0 = array<Struct_2, 27>();
    let var_4 = Struct_3(global0[_wgslsmith_index_u32(~var_2.a.x, 27u)], Struct_2(vec4<u32>(4294967295u, 3123u, _wgslsmith_div_u32(0u | var_2.c, ~4294967295u), ~var_1.c.x), ~_wgslsmith_mult_i32(-1i, var_0.e), true, var_3.d, var_3.e), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, ~var_3.a.x), 4294967295u), 18u)], var_0.e, -1i, -var_3.d.x), func_2(vec2<i32>(_wgslsmith_sub_i32(~var_2.e, _wgslsmith_add_i32(var_0.e, -42646i)), 16815i)), vec2<f32>(-153f, var_1.b.x));
    var_1 = Struct_4(true, var_1.b, var_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, func_2(-var_3.d.zw).e, abs(reverseBits(global1[_wgslsmith_index_u32(15296u, 18u)])), _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(-7531i, var_1.d))), ~var_4.b.d ^ (-var_3.d ^ var_3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_4.e.x, var_4.e.x), var_4.a.d.zz);
}

