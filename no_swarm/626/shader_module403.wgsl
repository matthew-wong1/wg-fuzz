struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_3,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_5) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.d.x * _wgslsmith_f_op_f32(262f + 394f))));
    let var_1 = arg_0.a.b;
    global1 = !(!vec2<bool>(!arg_0.c.a, arg_2.a.c.a));
    var var_2 = var_0;
    global0 = array<vec4<f32>, 24>();
    return vec2<bool>(!var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))) - _wgslsmith_f_op_f32(f32(-1f) * -309f)) < _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(max(364f, _wgslsmith_f_op_f32(-arg_0.d.x)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~arg_0, vec4<i32>(arg_0.x, arg_0.x, -1i, 2147483647i) | arg_0) ^ arg_0, arg_0), ~countOneBits(~(-vec4<i32>(-1i, -1i, 24401i, 48109i))));
    global1 = !select(func_3(Struct_4(Struct_2(arg_1.a, Struct_1(global1.x, false), u_input.b.zy, Struct_1(global1.x, arg_1.b.b), arg_2.x), ~vec4<u32>(u_input.a.x, global2.x, 1u, u_input.c.x), arg_1, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(global2.x, 24u)]), Struct_2(arg_1.b.a, arg_1.b, var_0.zy, arg_1.b, global2.x)), Struct_2(any(vec2<bool>(arg_1.b.a, false)), arg_1.b, vec2<i32>(arg_0.x, u_input.b.x), arg_1.b, _wgslsmith_dot_vec3_u32(u_input.a.wzz, vec3<u32>(42890u, arg_2.x, 7839u))), Struct_5(Struct_4(Struct_2(arg_1.a, arg_1.b, vec2<i32>(var_0.x, 0i), arg_1.b, global2.x), u_input.a, Struct_3(false, arg_1.b), global0[_wgslsmith_index_u32(1u, 24u)], Struct_2(true, Struct_1(false, false), vec2<i32>(u_input.b.x, u_input.b.x), arg_1.b, 1u)), Struct_4(Struct_2(global1.x, arg_1.b, u_input.b.xx, Struct_1(true, arg_1.b.a), 306u), vec4<u32>(4294967295u, 4294967295u, arg_2.x, u_input.a.x), arg_1, vec4<f32>(-1000f, -1601f, arg_3, arg_3), Struct_2(true, arg_1.b, u_input.b.yy, Struct_1(false, false), 4294967295u)), -1570i)), !vec2<bool>(select(true, global1.x, false), true), !vec2<bool>(arg_1.b.a, arg_3 > arg_3));
    global0 = array<vec4<f32>, 24>();
    let var_1 = 12114u;
    let var_2 = _wgslsmith_dot_vec2_i32(~arg_0.xw, arg_0.wz);
    return Struct_1(arg_1.b.b, _wgslsmith_mult_i32(2147483647i, firstTrailingBit(min(23684i, var_0.x))) <= ~u_input.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = u_input.a;
    return arg_2;
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(633f, -979f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.d.x)) - arg_0.d.x), -1000f), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~29657u), 24u)] - _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zwx, arg_0.b.zww), 24u)])), select(!select(vec4<bool>(true, arg_0.e.a, true, true), vec4<bool>(global1.x, false, global1.x, false), false), func_4(func_2(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 1i), Struct_3(false, Struct_1(global1.x, arg_0.e.a)), u_input.a.ww, arg_0.d.x), Struct_3(false, arg_0.c.b), select(vec4<bool>(arg_0.e.b.a, arg_0.c.a, false, false), vec4<bool>(true, arg_0.a.d.b, true, arg_0.e.b.b), vec4<bool>(arg_0.e.a, true, arg_0.e.d.a, false)), arg_0.a.d), all(vec2<bool>(arg_0.a.d.a, arg_0.c.a)) == (2147483647i != u_input.b.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 24u)]) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.d) * _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(global2.x, 24u)] + arg_0.d))) * arg_0.d));
    var var_1 = select(~_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-24467i, 62468i, -1i, arg_0.e.c.x), vec4<i32>(2147483647i, u_input.b.x, arg_0.a.c.x, -1i), vec4<i32>(-1i, u_input.b.x, u_input.b.x, 2147483647i)), vec4<i32>(665i, arg_0.e.c.x, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(2469i, u_input.b.x, 1i, 42515i), vec4<i32>(-2147483647i, arg_0.e.c.x, u_input.b.x, 1i), true), vec4<i32>(6774i, -39661i, u_input.b.x, -69734i)) << (arg_0.b % vec4<u32>(32u)), vec4<bool>(global1.x, arg_0.a.c.x < -arg_0.a.c.x, true, !any(vec2<bool>(false, false)))) >> (u_input.a % vec4<u32>(32u));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(max(11834u, ~min(global2.x, 1u)), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 47879u, u_input.a.x), vec3<u32>(global2.x, 40745u, 1u)), 38900u)), 1u);
    global1 = vec2<bool>(!(!arg_0.c.b.a || !all(vec2<bool>(arg_0.c.a, arg_0.e.b.b))), true);
    var_2 = vec2<u32>(935u, ~(_wgslsmith_add_u32(abs(var_2.x), global2.x) | 4294967295u));
    return Struct_2(true, func_2(~(countOneBits(vec4<i32>(var_1.x, 25004i, -5412i, arg_0.e.c.x)) << (select(vec4<u32>(u_input.a.x, var_2.x, 102541u, 55030u), vec4<u32>(var_2.x, arg_0.b.x, 30175u, var_2.x), arg_0.a.b.a) % vec4<u32>(32u))), arg_0.c, abs(vec2<u32>(~4294967295u, ~41541u)), arg_0.d.x), vec2<i32>(var_1.x ^ ~(-72156i), ~(~37964i)), func_2(reverseBits(vec4<i32>(var_1.x, u_input.b.x, firstLeadingBit(1i), ~14793i)), Struct_3(!arg_0.c.b.a, arg_0.c.b), ~u_input.c, _wgslsmith_f_op_f32(arg_0.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, arg_0.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -402f)))), reverseBits(global2.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    var var_0 = Struct_5(Struct_4(arg_1, u_input.a, Struct_3(!func_2(vec4<i32>(-2147483647i, -30171i, 39020i, u_input.b.x), Struct_3(arg_1.a, Struct_1(global1.x, global1.x)), u_input.c, -1859f).b, arg_1.b), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_1.e, 24u)] - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(951f, arg_0.x, arg_0.x, 530f)))))), arg_1), Struct_4(arg_1, vec4<u32>(~firstTrailingBit(global2.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 0u, global2.x), u_input.a.x ^ arg_1.e), _wgslsmith_sub_u32(firstTrailingBit(58070u), u_input.a.x ^ arg_1.e), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(109973u, arg_1.e, global2.x, u_input.c.x)), vec4<u32>(global2.x, 50323u, 38388u, global2.x))), Struct_3(global1.x, arg_1.b), vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), arg_0.x, -1512f, arg_0.x), arg_1), _wgslsmith_clamp_i32(u_input.b.x >> (_wgslsmith_add_u32(~64015u, global2.x) % 32u), i32(-1i) * -1i, ~u_input.b.x));
    let var_1 = 2463u;
    var_0 = Struct_5(Struct_4(func_1(Struct_4(Struct_2(true, arg_1.b, arg_1.c, Struct_1(true, global1.x), global2.x), u_input.a, Struct_3(false, Struct_1(true, false)), var_0.a.d, func_1(var_0.b))), ~(select(vec4<u32>(global2.x, 34309u, var_0.a.e.e, global2.x), var_0.b.b, global1.x) & vec4<u32>(14705u, 0u, 12669u, var_1)), var_0.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d.x, 714f, var_0.a.d.x, 1000f))), var_0.b.a), var_0.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(24676i, -2147483647i, var_0.b.a.c.x), reverseBits(min(vec3<i32>(u_input.b.x, arg_1.c.x, var_0.a.a.c.x), u_input.b))) ^ -1i);
    global1 = select(func_3(var_0.b, Struct_2(any(vec4<bool>(false, arg_2.x, true, true)), arg_1.b, min(select(u_input.b.xy, vec2<i32>(arg_1.c.x, arg_1.c.x), global1.x), vec2<i32>(-20742i, 0i)), func_1(var_0.b).d, arg_1.e), Struct_5(var_0.b, Struct_4(arg_1, max(vec4<u32>(global2.x, global2.x, 1u, u_input.c.x), var_0.a.b), Struct_3(arg_2.x, var_0.b.e.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, arg_0.x, -1569f, -1000f)), Struct_2(false, arg_1.d, vec2<i32>(2147483647i, -1i), Struct_1(arg_1.b.a, var_0.b.a.a), 4294967295u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-14774i, -1i, -36965i, 2147483647i), vec4<i32>(u_input.b.x, 1i, var_0.b.a.c.x, -24123i)), ~var_0.b.e.c.x, min(arg_1.c.x, 1i)))), !arg_2, vec2<bool>(!arg_2.x, !(!global1.x) && false));
    var var_2 = Struct_5(var_0.a, Struct_4(func_1(var_0.a), abs(~_wgslsmith_sub_vec4_u32(u_input.a, var_0.b.b)), var_0.b.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(global2.x, 24u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, var_0.b.d.x, 784f, arg_0.x))))), Struct_2(true, func_1(Struct_4(Struct_2(false, arg_1.b, arg_1.c, var_0.b.a.b, u_input.a.x), u_input.a, Struct_3(arg_1.b.b, arg_1.d), var_0.b.d, var_0.a.a)).b, u_input.b.yy, var_0.a.e.d, ~arg_1.e)), 1i);
    return arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~max(~_wgslsmith_add_u32(u_input.a.x, u_input.c.x), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, -1736f, 1249f)), func_1(Struct_4(Struct_2(global1.x, Struct_1(global1.x, true), u_input.b.xz, Struct_1(global1.x, global1.x), 0u), vec4<u32>(10756u, global2.x, 0u, 4294967295u), Struct_3(false, Struct_1(true, true)), vec4<f32>(1957f, 793f, 743f, -239f), Struct_2(false, Struct_1(global1.x, true), u_input.b.zz, Struct_1(global1.x, global1.x), 0u))), vec2<bool>(false, global1.x))));
    let var_1 = u_input.a.zyy >> (~(vec3<u32>(1u, ~u_input.c.x, ~var_0) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global2.x, var_0, var_0), vec3<u32>(var_0, u_input.c.x, 0u) ^ vec3<u32>(var_0, 59478u, var_0))) % vec3<u32>(32u));
    var var_2 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(var_0, 24u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(0u, 24u)], vec4<f32>(1622f, -1028f, -1322f, -991f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-516f, 2216f, 693f, 1569f))))), -126f, global0[_wgslsmith_index_u32(23029u, 24u)], _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1221f, -554f), vec2<f32>(-532f, 691f), false))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1600f, -721f), _wgslsmith_f_op_vec2_f32(vec2<f32>(110f, 1151f) * vec2<f32>(892f, 494f)))))))), ~vec3<u32>(~var_1.x >> (~global2.x % 32u), abs(0u), firstTrailingBit(u_input.c.x | var_1.x)));
}

