struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(30619u, 11987u, 36721u)), Struct_1(vec3<u32>(28450u, 0u, 17757u)), vec2<i32>(-11016i, 1i), vec2<u32>(38928u, 934u), vec3<f32>(2372f, -1141f, -1007f));

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> u32 {
    global1 = Struct_3(!((~global0.c.x ^ u_input.c.x) == firstLeadingBit(u_input.c.x)), global0.e, arg_0.b.a.x);
    let var_0 = select(!select(vec3<bool>(!global1.a, arg_0.c, arg_0.a > 0i), select(vec3<bool>(global1.a, false, arg_0.c), select(vec3<bool>(global1.a, true, true), vec3<bool>(global1.a, arg_0.c, true), true), !vec3<bool>(arg_0.c, false, global1.a)), vec3<bool>(true, any(vec4<bool>(global1.a, true, false, global1.a)), arg_0.c)), !vec3<bool>(arg_0.c, !(true || global1.a), true), global1.a);
    var var_1 = Struct_5(vec2<u32>(min(u_input.a.x, arg_0.b.a.x), 61610u), ~(i32(-1i) * -max(global0.c.x, -917i)), 47638u);
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~36019i, -51231i, firstLeadingBit(~(-2147483647i)), ~max(2147483647i, u_input.c.x)), abs(~vec4<i32>(-101227i, -3864i, -57419i, -2147483647i))), abs(reverseBits(-vec4<i32>(arg_0.a, -2147483647i, -131i, 47086i)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 45108u, u_input.a.x, 8779u), ~vec4<u32>(0u, global0.a.a.x, global1.c, global0.b.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(96114u, 0u, var_1.c, 32445u), vec4<u32>(4294967295u, 0u, 9891u, arg_3.x))) % vec4<u32>(32u))), vec4<i32>(arg_0.a >> (countOneBits(4294967295u) % 32u), _wgslsmith_dot_vec3_i32(-u_input.c, u_input.c) & ~_wgslsmith_clamp_i32(2147483647i, -2147483647i, u_input.c.x), ~45545i, _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, i32(-1i) * -26111i), arg_0.a)));
    let var_3 = _wgslsmith_div_i32(2147483647i, arg_0.a);
    return max(46059u, u_input.b.x);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(7771u, max(global0.a.a.x, 92676u)) << (~select(~vec2<u32>(u_input.b.x, 1u), ~u_input.b, !global1.a) % vec2<u32>(32u)), u_input.a);
    global1 = Struct_3(!global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(386f + 1496f), global0.e.x)), -621f, _wgslsmith_f_op_f32(floor(1525f))) + global0.e), func_3(Struct_4(~global0.c.x, global0.a, global1.a), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-182f + 794f), global0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.b.xy, ~u_input.a));
    global2 = _wgslsmith_sub_i32(global0.c.x >> (global0.d.x % 32u), global0.c.x);
    var var_1 = global0.b.a >> (vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(7650u, 18756u), vec2<u32>(global1.c, global1.c)), vec2<u32>(29739u, 88764u) & global0.a.a.zx) << (max(_wgslsmith_mult_u32(var_0, global0.d.x), _wgslsmith_dot_vec3_u32(global0.b.a, global0.b.a)) % 32u), _wgslsmith_dot_vec2_u32(abs(firstTrailingBit(vec2<u32>(52346u, 1u))), u_input.b), 58240u) % vec3<u32>(32u));
    global2 = -u_input.c.x;
    return Struct_2(Struct_1(global0.b.a), Struct_1(~max(global0.a.a, global0.b.a) | ~global0.a.a), firstLeadingBit(vec2<i32>(~(i32(-1i) * -2147483647i), -56998i)), global0.a.a.xz, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.e.x, global1.b.x)) - _wgslsmith_div_f32(-1447f, global1.b.x)), _wgslsmith_f_op_f32(floor(-954f)), global1.b.x))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global2 = ~firstLeadingBit(-(~u_input.c.x));
    var var_0 = func_2();
    var var_1 = ~40293u;
    var var_2 = func_2();
    global2 = func_2().c.x;
    return Struct_1(~var_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, global1.b.x)), global1.b.zy, !vec2<bool>(true, global1.a))))), global0.a, reverseBits(reverseBits(func_2().c) | vec2<i32>(8763i, global0.c.x)), vec2<u32>(44865u, 4294967295u) & _wgslsmith_mult_vec2_u32(vec2<u32>(40972u, global1.c) << (~global0.b.a.yz % vec2<u32>(32u)), ~(~u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f * global0.e.x)), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-935f)))));
    var var_0 = 58619u & _wgslsmith_sub_u32(~abs(func_2().a.a.x), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.a.a.x, 8975u, 16068u, global1.c)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.b.x, 14385u), ~vec4<u32>(0u, global1.c, global1.c, global1.c))));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-103f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1775f))), _wgslsmith_f_op_f32(floor(global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-722f - global0.e.x), func_2().e.x))))));
    var var_2 = -1i;
    let var_3 = vec2<bool>(1295f < _wgslsmith_f_op_f32(round(-845f)), any(!select(select(vec2<bool>(global1.a, true), vec2<bool>(false, global1.a), vec2<bool>(global1.a, global1.a)), !vec2<bool>(true, global1.a), select(vec2<bool>(true, global1.a), vec2<bool>(true, global1.a), global1.a))));
    global1 = Struct_3(false, global0.e, _wgslsmith_dot_vec4_u32((_wgslsmith_add_vec4_u32(vec4<u32>(36001u, 57506u, 0u, 1u), vec4<u32>(1u, 2238u, 4294967295u, 0u)) >> (~vec4<u32>(1u, 0u, u_input.b.x, u_input.a.x) % vec4<u32>(32u))) | (vec4<u32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, u_input.b.x) & vec4<u32>(u_input.a.x, global0.b.a.x, 1u, global0.a.a.x)), ~_wgslsmith_add_vec4_u32(select(vec4<u32>(global0.b.a.x, global1.c, global0.b.a.x, 1u), vec4<u32>(4294967295u, global0.d.x, 0u, 108883u), vec4<bool>(global1.a, true, false, global1.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c, u_input.a.x, 1u, u_input.a.x), vec4<u32>(global1.c, global0.b.a.x, global0.b.a.x, 33598u), vec4<u32>(0u, 95068u, 744u, global0.a.a.x)))));
    var var_4 = Struct_3(false, vec3<f32>(-760f, global1.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.e.x), global0.e.x))), abs(abs(u_input.a.x)));
    var var_5 = vec4<i32>(2147483647i, reverseBits(global0.c.x), u_input.c.x, global0.c.x) & (_wgslsmith_mod_vec4_i32(min(max(vec4<i32>(0i, global0.c.x, -2147483647i, global0.c.x), vec4<i32>(12358i, u_input.c.x, 43898i, -81108i)), vec4<i32>(u_input.c.x, -71061i, u_input.c.x, u_input.c.x)), select(vec4<i32>(global0.c.x, 1491i, 1312i, -12061i), vec4<i32>(1i, u_input.c.x, u_input.c.x, -40948i), global1.a) | vec4<i32>(2147483647i, -1i, -2147483647i, global0.c.x)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 43287u, 0u, 0u) << (firstTrailingBit(vec4<u32>(var_4.c, var_4.c, global0.b.a.x, 2356u)) % vec4<u32>(32u)), ~vec4<u32>(var_4.c, u_input.a.x, global0.d.x, global0.b.a.x)) % vec4<u32>(32u)));
    var_5 = _wgslsmith_div_vec4_i32(reverseBits(max(-(~vec4<i32>(u_input.c.x, u_input.c.x, var_5.x, global0.c.x)), ~vec4<i32>(var_5.x, u_input.c.x, 1i, u_input.c.x) << (max(vec4<u32>(global0.d.x, 4294967295u, global0.d.x, 4294967295u), vec4<u32>(var_4.c, 4294967295u, 0u, global0.d.x)) % vec4<u32>(32u)))), reverseBits(-vec4<i32>(0i, global0.c.x, 1i, -2147483647i)) << (max(~vec4<u32>(global1.c, 0u, u_input.a.x, global0.d.x), reverseBits(~vec4<u32>(14177u, var_4.c, u_input.a.x, 0u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 5775i, global0.c.x, u_input.c.x), vec4<i32>(0i, -2147483647i, -12557i, 20391i)))), select(select(reverseBits(vec2<i32>(2147483647i, 0i)), firstTrailingBit(global0.c), var_3), vec2<i32>(select(-50331i, global0.c.x, var_4.a) & global0.c.x, _wgslsmith_div_i32(_wgslsmith_add_i32(global0.c.x, u_input.c.x), u_input.c.x)), var_3), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_5.x, countOneBits(13511i), -var_5.x), -10575i));
}

