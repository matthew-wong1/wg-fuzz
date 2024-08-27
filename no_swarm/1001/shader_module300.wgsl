struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<f32> {
    global2 = Struct_2(vec2<i32>(abs(-u_input.a.x) << (36768u % 32u), 37861i), global1[_wgslsmith_index_u32(abs(~u_input.b.x), 3u)], Struct_1(1u, true, global2.d.b), Struct_1(u_input.b.x, global2.d.c, all(vec4<bool>(!global2.d.c, true, true, global2.b.b && false))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_add_u32(u_input.b.x, 0u)), firstLeadingBit(67455u), global2.b.a, 1u), firstTrailingBit(vec4<u32>(2953u, 21821u, u_input.b.x, u_input.b.x)) >> (u_input.b % vec4<u32>(32u))), 3u)]);
    let var_0 = countOneBits(abs(~vec2<u32>(global2.b.a, 22716u)));
    let var_1 = global0.zwy;
    let var_2 = 18015u;
    let var_3 = _wgslsmith_dot_vec2_i32(global2.a, vec2<i32>(~(-16574i), var_1.x));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 157f) + _wgslsmith_f_op_f32(f32(-1f) * -257f))) + -194f), -461f, _wgslsmith_f_op_f32(-741f + -953f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(130f + 277f)))))));
}

fn func_4(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2119f * _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(613f, arg_0.x))) * -865f));
    global1 = array<Struct_1, 3>();
    let var_1 = vec3<bool>(false, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_3()).x, 321f)) <= var_0);
    let var_2 = -global0.yxw;
    var var_3 = select(select(select(!(!vec4<bool>(var_1.x, global2.e.b, true, true)), vec4<bool>(true, all(vec4<bool>(global2.b.c, false, false, var_1.x)), global2.d.c, var_1.x), select(vec4<bool>(false, global2.c.b, true, false), vec4<bool>(var_1.x, global2.d.c, false, global2.d.b), !vec4<bool>(global2.e.c, global2.d.c, var_1.x, var_1.x))), select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(true, false, true, var_1.x), vec4<bool>(global2.b.c, true, true, global2.b.b)), vec4<bool>(!var_1.x, false | global2.e.b, global0.x <= var_2.x, true), !select(vec4<bool>(var_1.x, global2.e.c, false, true), vec4<bool>(global2.d.b, global2.d.b, global2.b.b, var_1.x), var_1.x)), select(select(!vec4<bool>(global2.d.c, global2.d.c, global2.d.c, global2.c.b), vec4<bool>(true, true, var_1.x, false), select(vec4<bool>(var_1.x, global2.c.b, false, false), vec4<bool>(var_1.x, true, false, var_1.x), var_1.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(true, global2.b.b, global2.c.c, var_1.x), true), true), vec4<bool>(global2.e.a <= 55191u, !var_1.x, var_1.x != true, select(false, false, false)))), vec4<bool>(!select(any(var_1), true, any(vec4<bool>(var_1.x, global2.c.b, false, true))), global2.e.c, global2.e.c, global2.e.b), select(vec4<bool>(true, true, true, true), !vec4<bool>(global2.d.c, false, any(var_1.zy), true), !(!vec4<bool>(var_1.x, true, true, true))));
    return firstTrailingBit(-reverseBits(vec4<i32>(global2.a.x, var_2.x, -2147483647i, global0.x))) >> (u_input.b % vec4<u32>(32u));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_add_vec4_i32(~func_4(_wgslsmith_f_op_vec4_f32(func_3())), ~vec4<i32>(-22354i, u_input.a.x, _wgslsmith_dot_vec2_i32(global2.a, vec2<i32>(0i, global2.a.x)), -19082i) | _wgslsmith_clamp_vec4_i32(min(abs(vec4<i32>(-312i, 28490i, global2.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, -1i, 11089i, -23733i) << (u_input.b % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -71446i, global0.x, -44449i) & vec4<i32>(2147483647i, global2.a.x, global0.x, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 25139i, global0.x, 4735i), vec4<i32>(u_input.a.x, 2147483647i, global0.x, -1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -6525i, 56677i, 2147483647i), vec4<i32>(global0.x, 0i, -1505i, u_input.a.x), vec4<i32>(u_input.a.x, 45594i, global2.a.x, -1i)) ^ max(vec4<i32>(-70240i, global0.x, global0.x, global0.x), vec4<i32>(global0.x, global0.x, u_input.a.x, global2.a.x))));
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(1i, u_input.a.x, 1i, u_input.a.x)), vec4<i32>(-_wgslsmith_add_i32(-1i, -35092i), -_wgslsmith_div_i32(-49392i, _wgslsmith_add_i32(-1i, 0i)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global2.a.x, -30541i)), vec2<i32>(-30256i, global0.x) & u_input.a) & firstTrailingBit(28125i >> (u_input.b.x % 32u)), firstTrailingBit(_wgslsmith_sub_i32(16945i, -1i)) ^ 1i));
    var var_0 = global2.a.x;
    let var_1 = global2.e.a;
    global0 = vec4<i32>(abs(_wgslsmith_add_i32(u_input.a.x, 1i)) ^ u_input.a.x, _wgslsmith_clamp_i32(reverseBits(-31106i), firstLeadingBit(~17507i), _wgslsmith_add_i32(-9294i, ~(-8489i))) >> (~4294967295u % 32u), 1i, u_input.a.x);
    return global2.d;
}

fn func_1() -> Struct_2 {
    var var_0 = 12108i;
    global0 = vec4<i32>(0i, 7157i & _wgslsmith_sub_i32(-5987i >> (global2.b.a % 32u), ~global2.a.x), u_input.a.x, u_input.a.x) << (vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~0u >> (max(61781u, u_input.b.x) % 32u)), 7322u, 4294967295u, u_input.b.x) % vec4<u32>(32u));
    var var_1 = func_2();
    var var_2 = ~(~(vec3<u32>(55301u, _wgslsmith_mod_u32(u_input.b.x, 4294967295u), _wgslsmith_add_u32(21726u, u_input.b.x)) | ~(~u_input.b.xxz)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-128f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-592f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-469f, -782f), _wgslsmith_f_op_f32(step(-748f, -557f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1773f - _wgslsmith_f_op_f32(1377f * -405f)))));
    return Struct_2(reverseBits(global2.a), global2.e, Struct_1(~_wgslsmith_mod_u32(firstTrailingBit(80871u), _wgslsmith_add_u32(21418u, 1u)), !all(vec2<bool>(false, global2.d.c)), var_1.b), func_2(), Struct_1(~25260u, false, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 570f;
    global1 = array<Struct_1, 3>();
    let var_1 = global0.x >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), u_input.b) % 32u);
    global1 = array<Struct_1, 3>();
    global0 = ~reverseBits(firstTrailingBit(vec4<i32>(global0.x, u_input.a.x, 70276i & u_input.a.x, 0i)));
    let var_2 = !(!vec4<bool>((var_0 >= 854f) | (false == global2.b.b), var_0 > 1000f, true, true | (global2.a.x != 2147483647i)));
    global2 = func_1();
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstTrailingBit(min(14707u, ~global2.d.a)), _wgslsmith_add_u32(~(~u_input.b.x), ~(~u_input.b.x))), min(max(u_input.b, u_input.b & u_input.b), ~(~u_input.b)), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 1u), abs(countOneBits(global2.e.a)), 0u << (1u % 32u)), -1525f);
}

