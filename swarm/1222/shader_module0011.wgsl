struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 36891u;

var<private> global1: f32;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 28309u, 24876u, 48189u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -292f), 539f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-111f)), _wgslsmith_f_op_f32(630f * -556f))), 816f))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) - var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f) * 1000f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -1701f), _wgslsmith_f_op_f32(trunc(var_1.x)));
    let var_3 = Struct_1(select(~(arg_1.a << (~35660u % 32u)), global2.x, all(select(select(vec4<bool>(arg_1.b, true, arg_1.b, true), vec4<bool>(false, true, arg_1.b, false), false), vec4<bool>(false, arg_1.b, false, true), select(vec4<bool>(arg_1.b, false, false, true), vec4<bool>(arg_1.b, true, true, false), vec4<bool>(false, false, arg_1.b, arg_1.b))))), arg_1.b, vec3<i32>(-21755i, ~(-2147483647i >> (u_input.b.x % 32u)), select(u_input.d.x, ~_wgslsmith_mult_i32(0i, u_input.a), arg_1.b)), firstLeadingBit(_wgslsmith_dot_vec2_i32(arg_1.c.yx, abs(vec2<i32>(u_input.d.x, -30905i)))));
    let var_4 = var_3.b;
    return _wgslsmith_mult_i32(var_3.c.x, firstLeadingBit(-_wgslsmith_mod_i32(-21427i, arg_1.d)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool) -> f32 {
    let var_0 = Struct_1(26629u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, arg_0.a) ^ _wgslsmith_mod_vec2_u32(global2.zz, global2.ww), ~(~u_input.c)) % 32u), arg_2, u_input.d, arg_0.d);
    let var_1 = Struct_5(false, Struct_2(arg_1.e.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global2.yy, select(u_input.c, ~vec2<u32>(11975u, 0u), select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_2, false), arg_0.b))), abs(var_0.a)), arg_1.b.a.c.x, Struct_2(Struct_1(u_input.b.x, arg_1.b.a.b, -_wgslsmith_mult_vec3_i32(arg_1.b.a.c, vec3<i32>(-1i, arg_1.b.a.c.x, var_0.c.x)), arg_1.e.a.d)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1119f, _wgslsmith_f_op_f32(abs(922f))) - _wgslsmith_f_op_f32(611f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1576f - 1085f)))));
    global0 = abs(1u);
    var var_3 = arg_1;
    return 107f;
}

fn func_2(arg_0: i32, arg_1: bool) -> vec4<bool> {
    let var_0 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, ~u_input.d.x >> (u_input.c.x % 32u), ~_wgslsmith_add_i32(arg_0, u_input.a)), u_input.d ^ firstTrailingBit(-u_input.d));
    global0 = firstTrailingBit(global2.x & ~8402u);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(func_4(Struct_1(global2.x, arg_1, ~var_0, var_0.x), Struct_5(~4294967295u > firstTrailingBit(global2.x), Struct_2(Struct_1(33913u, false, vec3<i32>(arg_0, 30676i, u_input.a), 35739i)), global2.x, _wgslsmith_add_i32(countOneBits(8091i), func_3(global2.zyw, Struct_1(1u, arg_1, vec3<i32>(u_input.d.x, 0i, u_input.a), -3136i), vec2<u32>(39895u, 4294967295u))), Struct_2(Struct_1(global2.x, false, vec3<i32>(arg_0, 31479i, u_input.d.x), var_0.x))), true)), Struct_1(41675u, !(!(true || arg_1)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_0.x, -1i, var_0.x)), vec3<i32>(var_0.x, -2147483647i << (u_input.b.x % 32u), -arg_0)), ~(~select(u_input.a, 2147483647i, arg_1))), ((var_0 ^ ~vec3<i32>(29254i, 2147483647i, arg_0)) & u_input.d) | -_wgslsmith_add_vec3_i32(u_input.d, var_0), Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global2.xxx, vec3<u32>(global2.x, 25566u, global2.x)), select(vec3<u32>(0u, 69921u, u_input.c.x), global2.zwz, vec3<bool>(arg_1, false, arg_1))), select(false, arg_1, false) & true, vec3<i32>(select(u_input.a, arg_0, arg_1), abs(var_0.x), abs(u_input.a)), arg_0)));
    var var_2 = ~var_1.b.c.xy;
    global2 = ~vec4<u32>(~(~global2.x << (~u_input.c.x % 32u)), ~(16218u ^ max(0u, global2.x)), ~_wgslsmith_clamp_u32(6147u, global2.x, ~1u), max(global2.x ^ _wgslsmith_mod_u32(var_1.b.a, var_1.b.a), _wgslsmith_div_u32(countOneBits(35660u), var_1.b.a | u_input.c.x)));
    return vec4<bool>(!(var_1.b.a == max(u_input.b.x, var_1.d.a.a)) & all(select(vec4<bool>(true, var_1.b.b, arg_1, var_1.b.b), vec4<bool>(true, true, true, true), !var_1.d.a.b)), select(select(!var_1.b.b, any(vec2<bool>(arg_1, arg_1)), !all(vec3<bool>(var_1.b.b, false, true))), select(_wgslsmith_div_f32(271f, var_1.a) != var_1.a, any(!vec4<bool>(var_1.b.b, var_1.d.a.b, true, var_1.d.a.b)), any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1))), true), all(vec2<bool>(all(vec3<bool>(true, true, arg_1)), !arg_1)) != true, arg_1);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = arg_0.x != arg_0.x;
    var var_1 = Struct_1(global2.x, global2.x >= 17065u, firstTrailingBit(arg_1.zxy), arg_1.x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1920f)) * _wgslsmith_f_op_f32(abs(1000f)))))));
    let var_2 = select(reverseBits(_wgslsmith_clamp_vec2_i32(arg_1.yw, vec2<i32>(-22228i, 9313i), _wgslsmith_div_vec2_i32(u_input.d.zz, vec2<i32>(1i, 0i)))) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, 43818i, var_1.d)), -vec3<i32>(arg_1.x, var_1.c.x, arg_1.x)), _wgslsmith_sub_i32(var_1.c.x, 14837i)), reverseBits(vec2<i32>(_wgslsmith_sub_i32(-1i, ~(-17355i)), var_1.d)), !arg_0.wz);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2071f)), _wgslsmith_f_op_f32(330f + 444f)))))), Struct_1(~select(_wgslsmith_add_u32(u_input.b.x, 18618u), 57308u, true), any(!select(arg_0, arg_0, arg_0.x)), max(-vec3<i32>(27254i, 0i, var_2.x), ~vec3<i32>(var_2.x, u_input.d.x, 0i)) >> (vec3<u32>(_wgslsmith_div_u32(var_1.a, var_1.a), 55656u, global2.x) % vec3<u32>(32u)), var_2.x), arg_1.yzx, Struct_2(Struct_1(_wgslsmith_sub_u32(global2.x, firstLeadingBit(global2.x)), var_1.b, arg_1.yxz, _wgslsmith_mult_i32(i32(-1i) * -281i, var_1.c.x))));
    return Struct_2(var_3.d.a);
}

fn func_1() -> vec4<u32> {
    let var_0 = func_5(func_2(30710i, false), firstLeadingBit(reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_div_i32(2147483647i, -13307i), 1i, max(u_input.d.x, u_input.a)))));
    return vec4<u32>(2697u, _wgslsmith_sub_u32(7501u, var_0.a.a), ~1u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, var_0.a.a, global2.x, 837u), vec4<u32>(1u, 0u, 0u, 1u)), abs(vec4<u32>(u_input.c.x, global2.x, 1u, global2.x))), ~global2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1() << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, 4254u), global2.x ^ 0u), ~(global2.x & u_input.b.x), global2.x), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(64954u, u_input.b.x, 17742u, 4294967295u), firstLeadingBit(vec4<u32>(0u, u_input.b.x, global2.x, global2.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 119382u, 1u, global2.x), select(vec4<u32>(global2.x, global2.x, 4294967295u, 0u), vec4<u32>(global2.x, u_input.b.x, 67171u, global2.x), vec4<bool>(false, false, false, true))))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_sub_u32(20795u, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global2.x, var_0.x, 4294967295u, global2.x)), abs(vec4<u32>(u_input.c.x, 2386u, 6700u, global2.x))), countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.b.x, 4294967295u, 11246u), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.c.x, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, 25022u, var_0.x))))));
    var var_2 = max(var_1, var_0.x) >> (var_1 % 32u);
    let var_3 = Struct_5(_wgslsmith_mod_u32(var_1, (global2.x >> (u_input.b.x % 32u)) ^ (1u ^ u_input.c.x)) == global2.x, func_5(vec4<bool>(true, true, true, true), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, -5753i, u_input.d.x, -38824i), vec4<i32>(13344i, u_input.a, u_input.a, -2147483647i)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 16950i, u_input.d.x, u_input.a), vec4<i32>(u_input.a, u_input.d.x, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(51787i, u_input.a, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a, -1i, -1i))))), ~(~5094u) & _wgslsmith_dot_vec4_u32(vec4<u32>(min(55884u, global2.x), _wgslsmith_mult_u32(var_1, var_0.x), firstLeadingBit(var_1), _wgslsmith_dot_vec3_u32(var_0.wyz, global2.xyy)), vec4<u32>(var_1, ~1u, _wgslsmith_dot_vec3_u32(global2.zyy, var_0.yxx), u_input.c.x)), u_input.d.x, Struct_2(Struct_1(79734u, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(15363i, u_input.d.x, u_input.a), _wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(2147483647i, u_input.d.x, -2147483647i)), u_input.d << (var_0.zyy % vec3<u32>(32u))), -func_5(vec4<bool>(true, true, false, true), vec4<i32>(1603i, u_input.a, u_input.d.x, u_input.a)).a.d)));
    let var_4 = 110184u;
    let var_5 = Struct_3(619f, var_3.b.a, vec3<i32>(-1i) * -(~var_3.b.a.c << (~global2.zwy % vec3<u32>(32u))), func_5(func_2(~u_input.d.x, false), _wgslsmith_mult_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(9687i, u_input.a, -2147483647i, -51811i), vec4<i32>(u_input.d.x, var_3.e.a.c.x, var_3.e.a.c.x, u_input.a)), countOneBits(vec4<i32>(23651i, 17813i, var_3.d, -1111i)), var_3.a), ~(vec4<i32>(-1i, u_input.d.x, -38861i, u_input.d.x) ^ vec4<i32>(var_3.d, 39192i, 2147483647i, u_input.d.x)))));
    global1 = 2326f;
    let x = u_input.a;
    s_output = StorageBuffer(37036u, 29181u);
}

