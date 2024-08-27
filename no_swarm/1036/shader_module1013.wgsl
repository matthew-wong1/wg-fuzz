struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec2<f32>(1121f, -1432f), 2147483647i, vec2<i32>(65113i, -1i), vec2<u32>(1u, 23053u)), Struct_2(vec2<bool>(false, true), Struct_1(vec2<f32>(-624f, 121f), -1i, vec2<i32>(i32(-2147483648), 35985i), vec2<u32>(43569u, 8871u))), true, 0u, Struct_1(vec2<f32>(640f, -1791f), -101329i, vec2<i32>(2296i, 18324i), vec2<u32>(14135u, 4589u)));

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_4(global0.b, global2.b, global2.c, 0u, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.b.a) - _wgslsmith_f_op_vec2_f32(global0.b.a + global0.b.a))), -69261i, vec2<i32>(u_input.a.x, _wgslsmith_add_i32(0i, global2.e.c.x)), vec2<u32>(4294967295u, 47044u)));
    var var_1 = arg_0;
    var var_2 = Struct_4(global2.a, global2.b, true, 24825u, Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.b.a, global0.b.a, global2.b.a))))), global3.c.x, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(arg_0.b.b, 2147483647i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_0.e.c.x), vec2<i32>(1i, -18721i))), abs(var_1.b.d)));
    let var_3 = vec2<u32>(var_1.b.d.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(49729u, 4294967295u) << (0u % 32u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.d.x, 3307u, global2.d), vec3<u32>(arg_0.b.d.x, var_0.e.d.x, 87155u))))) << (abs(var_0.e.d) % vec2<u32>(32u));
    global0 = Struct_2(var_1.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1330f * var_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(103f - arg_0.b.a.x))), var_2.a.c.x, _wgslsmith_sub_vec2_i32(global0.b.c, global2.a.c), select(reverseBits(_wgslsmith_mult_vec2_u32(global3.d, vec2<u32>(var_2.d, var_0.b.b.d.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(40969u, var_0.d, var_1.b.d.x), vec3<u32>(global3.d.x, 4294967295u, 57160u)), _wgslsmith_mod_u32(0u, var_1.b.d.x)), !var_0.c)));
    return global2.d;
}

fn func_2(arg_0: i32) -> bool {
    global1 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global3.d.x ^ func_3(Struct_2(vec2<bool>(global2.b.a.x, global2.c), global2.b.b)), firstLeadingBit(~global2.a.d.x)) << (~vec4<u32>(35290u, global3.d.x << (0u % 32u), global0.b.d.x, 9948u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(abs(firstTrailingBit(vec4<u32>(global3.d.x, 0u, global0.b.d.x, 32371u)) << (vec4<u32>(23476u, 1u, 1u, global0.b.d.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(47236u, global3.d.x, 1u, global0.b.d.x), vec4<u32>(global2.d, global0.b.d.x, 0u, global3.d.x)) | vec4<u32>(47722u, global0.b.d.x, global2.d, ~global2.e.d.x)));
    var var_0 = Struct_5(_wgslsmith_add_vec3_i32(-u_input.a, vec3<i32>(abs(global0.b.b), ~(-2147483647i), _wgslsmith_div_i32(-21140i, -2147483647i)) << (_wgslsmith_add_vec3_u32(min(vec3<u32>(global2.a.d.x, 15762u, global3.d.x), vec3<u32>(1u, 4294967295u, 0u)), vec3<u32>(0u, 0u, 0u)) % vec3<u32>(32u))));
    let var_1 = Struct_5(~(~var_0.a));
    let var_2 = global0.b;
    let var_3 = ~select(15387u, var_2.d.x, all(vec2<bool>(global2.a.a.x < 1884f, select(true, global2.b.a.x, global0.a.x))));
    return false;
}

fn func_1() -> vec3<u32> {
    let var_0 = abs(0i);
    global1 = _wgslsmith_sub_u32(4294967295u, reverseBits(1u));
    let var_1 = global0.b.d.x;
    var var_2 = !(!vec4<bool>(!global0.a.x, global2.c, func_2(-16751i), !global2.c));
    global1 = countOneBits(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, global2.e.d.x, global2.a.d.x) & vec3<u32>(52411u, global3.d.x, 45369u)), vec3<u32>(global3.d.x, global2.b.b.d.x, 3337u))) ^ _wgslsmith_div_u32(1u, countOneBits(~62262u));
    return vec3<u32>(15034u, countOneBits(min(~firstTrailingBit(global2.e.d.x), 1u)), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(28249u, 0u, global2.a.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 29466u, global2.e.d.x), vec3<u32>(global0.b.d.x, global0.b.d.x, 4294967295u))), reverseBits(countOneBits(vec3<u32>(1u, 66638u, 0u)))) ^ ((min(vec3<u32>(global2.b.b.d.x, global0.b.d.x, global2.d) ^ vec3<u32>(36464u, 76220u, global3.d.x), vec3<u32>(0u, global0.b.d.x, 143842u) << (vec3<u32>(global2.d, 4294967295u, 1u) % vec3<u32>(32u))) & abs(vec3<u32>(77717u, 0u, global3.d.x))) & (~min(vec3<u32>(global2.d, 0u, 1u), vec3<u32>(global2.e.d.x, global3.d.x, 4294967295u)) & func_1()));
    var var_1 = global2.e.d.x;
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.b.a.x * -145f), global3.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, -1071f) * global2.a.a) - global3.a)), global0.b.b, global0.b.c, vec2<u32>(global2.d, ~_wgslsmith_add_u32(21190u, 1u))), Struct_2(global2.b.a, global0.b), (1u ^ var_0.x) <= global3.d.x, 1u, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3.a, global0.b.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.a.x, -831f))))), -u_input.a.x, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(0i, u_input.a.x, 0i), -42866i), global0.b.c), ~vec2<u32>(4294967295u, 1u) & vec2<u32>(~global2.d, _wgslsmith_mod_u32(global0.b.d.x, var_0.x))));
    var var_3 = Struct_5(_wgslsmith_div_vec3_i32(min(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-1i, global2.a.b, global2.b.b.c.x)), firstTrailingBit(u_input.a)), vec3<i32>(-2147483647i, 1i, _wgslsmith_add_i32(global0.b.c.x, u_input.a.x))), u_input.a));
    global1 = global2.b.b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-928f * global3.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(abs(1572f)), _wgslsmith_f_op_f32(ceil(2268f)))))));
}

