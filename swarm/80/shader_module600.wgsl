struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

var<private> global1: u32 = 28323u;

var<private> global2: array<i32, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = 19020u;
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a.a - arg_1.b.a)), arg_1.d, arg_1.c, arg_1.a));
    let var_2 = vec4<i32>(u_input.c.x, firstTrailingBit(~var_1.a.c.x), var_1.a.c.x, var_1.a.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(0u, u_input.a.x)), min(u_input.a.zz, u_input.a.zz)) % 32u));
    var var_3 = Struct_2(arg_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.a.a.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, var_1.a.a.a.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(191f, arg_0.a.a.x) * arg_1.a.a)))), vec4<i32>(_wgslsmith_clamp_i32(arg_1.c.x, select(-82947i | global2[_wgslsmith_index_u32(u_input.a.x, 1u)], ~arg_1.c.x, true), _wgslsmith_clamp_i32(abs(-1i), -11572i, select(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(u_input.a.x, 1u)], false))), min(i32(-1i) * -20104i, ~countOneBits(0i)), -(~12992i), abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -1i, 1i), var_2.wxz), reverseBits(vec3<i32>(-44901i, var_2.x, global2[_wgslsmith_index_u32(0u, 1u)]))))), Struct_1(arg_0.a.a));
    let var_4 = false;
    return max(~1u, u_input.a.x);
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 21>();
    let var_0 = ~min(_wgslsmith_clamp_u32(min(u_input.a.x, func_3(Struct_3(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(7425u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), Struct_2(Struct_1(vec2<f32>(1631f, -987f)), Struct_1(vec2<f32>(502f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)])), vec4<i32>(u_input.b, 41921i, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(59008u, 1u)]), Struct_1(vec2<f32>(-393f, global0[_wgslsmith_index_u32(15669u, 21u)]))))), 37184u, u_input.a.x), ~(1u >> (1u % 32u)));
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2496f), -548f, _wgslsmith_f_op_f32(f32(-1f) * -1786f))));
    let var_3 = Struct_4(Struct_2(Struct_1(vec2<f32>(1000f, 538f)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.yz)), vec4<i32>(-1i, 59851i, min(-56398i, reverseBits(u_input.c.x)), global2[_wgslsmith_index_u32(firstLeadingBit(0u), 1u)]), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1, 21u)]), var_2.x))));
    return var_3.a.d;
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)] + global0[_wgslsmith_index_u32(657u, 21u)]), global0[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_div_f32(1039f, global0[_wgslsmith_index_u32(29456u, 21u)]))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1149f - 1388f) * _wgslsmith_f_op_f32(var_0.a.x + 360f)), 1261f, -955f, -1201f))));
    var var_2 = Struct_2(func_2(), func_2(), firstTrailingBit(vec4<i32>(-(~u_input.c.x), max(u_input.b, ~(-26738i)), ~global2[_wgslsmith_index_u32(114123u, 1u)], u_input.b)), func_2());
    global0 = array<f32, 21>();
    let var_3 = Struct_2(func_2(), func_2(), _wgslsmith_mult_vec4_i32(var_2.c << (min(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(4294967295u, u_input.a.x, 48878u, 57477u)) % vec4<u32>(32u)), var_2.c), var_2.d);
    return Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(var_2.b.a * var_2.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    global2 = array<i32, 1>();
    let var_0 = func_1();
    global1 = 1u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.a.x)))));
    global1 = reverseBits(~min(~u_input.a.x, u_input.a.x));
    var var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(7424i, -31642i, firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), u_input.b | global2[_wgslsmith_index_u32(61339u, 1u)]), vec4<i32>(_wgslsmith_sub_i32(-4702i, -13361i), u_input.c.x, -2147483647i, select(u_input.c.x, -51674i, false)) | max(~vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -14609i, -2147483647i, u_input.c.x), -vec4<i32>(global2[_wgslsmith_index_u32(23881u, 1u)], -1i, -27286i, u_input.c.x))), vec4<i32>(-_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.b), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, 5091i), vec3<i32>(-31674i, u_input.b, 8788i)), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(~u_input.a.x, 1u)], ~global2[_wgslsmith_index_u32(u_input.a.x, 1u)]), global2[_wgslsmith_index_u32(1u | _wgslsmith_div_u32(0u, u_input.a.x), 1u)]) << (~(~(~vec4<u32>(u_input.a.x, u_input.a.x, 13741u, 0u))) % vec4<u32>(32u)));
    let var_3 = func_2();
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(16205u, 4294967295u, 4294967295u), u_input.a), _wgslsmith_div_u32(32898u, var_4.x), ~var_4.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 2747u, 58817u, 1u), vec4<u32>(u_input.a.x, var_4.x, 32861u, 9751u))), var_4.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-646f, var_0.a.a.x, var_3.a.x, global0[_wgslsmith_index_u32(29590u, 21u)]))), vec4<f32>(var_0.a.a.x, 1000f, 659f, 354f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_4.x, 21u)], var_0.a.a.x, global0[_wgslsmith_index_u32(7060u, 21u)], var_3.a.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.a.x, var_3.a.x, -1000f, var_1), vec4<f32>(1000f, -223f, -224f, 977f), vec4<bool>(true, true, false, false)))))), var_1);
}

