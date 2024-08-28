struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(288f, -603f);

var<private> global1: array<Struct_1, 22>;

var<private> global2: bool;

var<private> global3: vec3<i32> = vec3<i32>(0i, -1i, i32(-2147483648));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    global2 = arg_0;
    var var_0 = ~(~vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 1u)), 40484u));
    var var_1 = ~(-10418i);
    var var_2 = ~u_input.c.x;
    let var_3 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(~u_input.a.x, ~u_input.c.x, abs(0u))), u_input.d);
    return Struct_1(arg_0 & arg_0, global0.x, ~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 9745u), u_input.a) << (var_0.x % 32u))), _wgslsmith_f_op_f32(-global0.x), ~(~var_3.x));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -691f;
    var var_1 = any(!select(select(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a)), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, arg_0.a), true), arg_0.a), vec2<bool>(true | arg_0.a, all(vec4<bool>(arg_0.a, false, arg_0.a, true))), !(!arg_0.a)));
    var var_2 = global1[_wgslsmith_index_u32(abs(u_input.a.x), 22u)];
    var var_3 = func_2(arg_0.a, _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.e.x, u_input.b, global3.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(global3.x, u_input.b, 0i), vec3<i32>(-2147483647i, 47299i, u_input.b)))), ~(reverseBits(vec3<i32>(-1i, -2147483647i, global3.x)) ^ ~vec3<i32>(global3.x, global3.x, 6457i))), arg_0.a, -abs(abs(reverseBits(global3.zy))));
    var var_4 = -52728i;
    return Struct_1(_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-893f - global0.x), _wgslsmith_f_op_f32(-var_2.b))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_2.b)), 161f))))), _wgslsmith_dot_vec2_u32((~vec2<u32>(var_2.c, 16527u) ^ vec2<u32>(0u, u_input.d.x)) | min(~vec2<u32>(var_2.c, 90028u), u_input.d.yz), vec2<u32>(~(arg_0.c | arg_0.e), func_2(func_2(var_2.a, vec3<i32>(global3.x, -1i, -20518i), false, global3.zz).a, vec3<i32>(-2147483647i, -24053i, u_input.e.x), true, ~vec2<i32>(-6258i, 2147483647i)).e)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d))), var_3.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = func_3(global1[_wgslsmith_index_u32(arg_0.c, 22u)]);
    global1 = array<Struct_1, 22>();
    let var_1 = Struct_1(true, _wgslsmith_div_f32(595f, _wgslsmith_f_op_f32(-var_0.d)), 1369u >> (var_0.e % 32u), arg_0.d, arg_0.c);
    let var_2 = Struct_1(-42237i == _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.e.x), u_input.e.x, 21185i), vec3<i32>(~global3.x, _wgslsmith_clamp_i32(2147483647i, u_input.b, 73761i), _wgslsmith_sub_i32(-9654i, u_input.b))), func_2(true, -abs(~vec3<i32>(u_input.b, u_input.e.x, u_input.b)), var_1.a, max(vec2<i32>(31992i, _wgslsmith_add_i32(global3.x, u_input.e.x)), ~global3.xy)).d, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(46262u, 24795u, var_1.c), reverseBits(u_input.d)), _wgslsmith_add_vec3_u32(~vec3<u32>(47420u, var_1.c, 1u), vec3<u32>(47082u, var_0.e, 44249u))), abs(vec3<u32>(u_input.d.x, _wgslsmith_add_u32(u_input.a.x, 1u), u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110f + 1108f) + _wgslsmith_f_op_f32(trunc(var_0.b)))), _wgslsmith_mod_u32(reverseBits(var_1.c), 38958u));
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.e, ~(~arg_0.e), abs(countOneBits(9090u)), countOneBits(var_1.c)), ~vec4<u32>(var_0.c, countOneBits(var_2.e), 14828u, arg_1.e)), ~(~vec4<u32>(0u, 0u, 8414u, 1u) << (vec4<u32>(0u, 17095u, var_2.c, var_1.c) % vec4<u32>(32u))) >> (~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_1.c, var_1.c, 1u, 42699u)), vec4<u32>(arg_1.e, var_0.e, 4294967295u, var_2.e)) % vec4<u32>(32u)));
    return ~(-abs(global3.x));
}

fn func_1() -> StorageBuffer {
    global3 = ~_wgslsmith_sub_vec3_i32(~min(vec3<i32>(global3.x, -77855i, global3.x), vec3<i32>(u_input.e.x, u_input.e.x, global3.x)) ^ _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(global3.x, 1i, -2147483647i)), ~vec3<i32>(global3.x, global3.x, u_input.b)), max(firstTrailingBit(vec3<i32>(-1i, -1i, 2515i)) ^ reverseBits(vec3<i32>(0i, global3.x, 0i)), ~(-vec3<i32>(global3.x, -20720i, -2147483647i))));
    var var_0 = ~_wgslsmith_mult_i32(-18665i, func_4(global1[_wgslsmith_index_u32(~(~70186u), 22u)], func_3(func_2(true, vec3<i32>(-1i, -31142i, u_input.b), false, u_input.e))));
    let var_1 = !vec2<bool>(all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true)), true);
    var var_2 = ~vec4<u32>(firstTrailingBit(abs(0u)) >> (u_input.a.x % 32u), _wgslsmith_sub_u32(~reverseBits(0u), 5958u), 1u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(44325u, 4294967295u), vec2<u32>(16145u, u_input.c.x)));
    var var_3 = !var_1.x;
    return StorageBuffer(vec3<i32>(max(firstLeadingBit(_wgslsmith_div_i32(-48265i, global3.x)), firstLeadingBit(global3.x)), global3.x, -(~_wgslsmith_add_i32(-16199i, u_input.e.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(max(913f, 1050f)), _wgslsmith_f_op_f32(abs(-1231f))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-2147483647i, u_input.e.x, 0i, global3.x)), vec4<i32>(_wgslsmith_mult_i32(u_input.b, u_input.e.x), global3.x << (u_input.c.x % 32u), -u_input.b, global3.x) << (countOneBits(abs(vec4<u32>(var_2.x, 1u, 4294967295u, 0u))) % vec4<u32>(32u)), vec4<i32>(max(2147483647i, -5662i), countOneBits(u_input.b) & -48233i, _wgslsmith_sub_i32(global3.x, u_input.b), _wgslsmith_clamp_i32(30854i, 1i, 0i))), -min(abs(select(vec3<i32>(u_input.b, global3.x, -1i), vec3<i32>(-29341i, 2147483647i, u_input.b), var_1.x)), abs(vec3<i32>(-4239i, global3.x, u_input.e.x) ^ vec3<i32>(-1i, u_input.b, u_input.b))), _wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(~48676u, ~min(u_input.d.x, 0u), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, 24501u)), vec3<u32>(var_2.x, (var_2.x << (var_2.x % 32u)) >> (1u % 32u), u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

