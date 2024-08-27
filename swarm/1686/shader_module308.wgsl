struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(32115i, 1i), vec2<i32>(-6122i, 20536i), vec2<i32>(-23356i, 2147483647i), vec2<i32>(11872i, 2824i), vec2<i32>(37206i, 1i), vec2<i32>(1i, 0i), vec2<i32>(45119i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-6918i, -18023i), vec2<i32>(-48941i, 31186i), vec2<i32>(0i, 15175i), vec2<i32>(-47675i, 27672i), vec2<i32>(1i, -44677i), vec2<i32>(-1i, 1433i), vec2<i32>(20586i, 36519i), vec2<i32>(-39943i, 52855i), vec2<i32>(10360i, 158i), vec2<i32>(2147483647i, -23715i), vec2<i32>(1i, 1i), vec2<i32>(16775i, 47434i), vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(37430i, -1i), vec2<i32>(34477i, -1i), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 21569i), vec2<i32>(-25659i, -55172i));

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 24>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = max(-_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(23087i, 0i)) << (select(vec2<u32>(global0.a.d.b, u_input.d), vec2<u32>(global0.a.d.e.x, global0.a.d.b), vec2<bool>(false, true)) % vec2<u32>(32u)), global2.a.wz), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(global0.a.d.a.wyx, global0.d.d.a.zzw), -firstLeadingBit(vec3<i32>(8615i, global2.a.x, u_input.c.x))), select(vec3<i32>(_wgslsmith_mult_i32(global0.d.b, global2.d), ~(-7205i), global2.a.x << (global0.a.a.x % 32u)), global0.a.d.a.yzz, select(!vec3<bool>(global0.a.c, global0.d.c, global0.a.c), vec3<bool>(true, global0.d.c, true), false))));
    global1 = array<vec2<i32>, 29>();
    var var_1 = -359f;
    let var_2 = global0.d.d;
    var var_3 = !select(select(!vec2<bool>(global0.d.c, global0.d.c), vec2<bool>(true, true), !select(vec2<bool>(global0.d.c, false), vec2<bool>(false, false), vec2<bool>(true, global0.d.c))), select(!vec2<bool>(global0.a.c, true), !(!vec2<bool>(global0.a.c, global0.a.c)), false), !select(!vec2<bool>(global0.d.c, global0.d.c), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    return ~u_input.d;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    global1 = array<vec2<i32>, 29>();
    global0 = Struct_3(global0.a, firstLeadingBit(vec3<i32>(25742i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1572i, 54776i), global2.a.xz)), ~global0.a.b)), _wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(global0.c)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.d.c, global2.c, 1000f))))))), Struct_2(global0.a.a, -(~global2.d) | arg_0, true, Struct_1(global2.a, global2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.d.c, global2.c)), _wgslsmith_mod_i32(global0.d.d.d, global0.a.d.d | u_input.e.x), vec3<u32>(~global2.e.x, ~36217u, abs(global0.d.a.x)))));
    global2 = Struct_1(u_input.c, ~51063u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.c))), -_wgslsmith_mult_i32(-(global0.a.b << (48873u % 32u)), reverseBits(reverseBits(-35531i))), global0.a.d.e);
    global0 = Struct_3(Struct_2(vec4<u32>(global2.e.x & u_input.b.x, u_input.b.x, ~(~4294967295u), global2.e.x), -u_input.a.x, all(vec4<bool>(true, global0.d.c, select(true, global0.d.c, false), true)), Struct_1(reverseBits(_wgslsmith_clamp_vec4_i32(global2.a, u_input.c, vec4<i32>(2147483647i, u_input.a.x, global2.d, 43904i))), firstLeadingBit(func_3()), global0.d.d.c, _wgslsmith_dot_vec4_i32(global0.a.d.a, global2.a), global2.e)), global2.a.yxw & min(-vec3<i32>(global2.d, arg_0, global2.d), vec3<i32>(firstTrailingBit(-3596i), _wgslsmith_div_i32(-2147483647i, 1i), max(0i, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1085f * 1225f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global2.c)))))), Struct_2(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global2.e.x, u_input.d, 6312u), ~vec4<u32>(10500u, 0u, global2.e.x, 8193u)), max(global0.a.a, global0.d.a) << (select(vec4<u32>(u_input.b.x, global0.d.d.b, global2.e.x, 63476u), global0.d.a, global0.d.c) % vec4<u32>(32u)), vec4<bool>(false, true, !global0.d.c, global0.d.c)), global0.d.b << (_wgslsmith_mult_u32(~global0.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(16842u, 4294967295u, 0u, global0.d.d.e.x), global0.d.a)) % 32u), true, Struct_1(_wgslsmith_clamp_vec4_i32(~vec4<i32>(1817i, global0.d.b, global0.d.d.d, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, -2147483647i, global2.a.x), vec4<i32>(arg_0, 33001i, global0.b.x, arg_0)), _wgslsmith_add_vec4_i32(u_input.c, global0.d.d.a)), _wgslsmith_add_u32(u_input.d, 1u), global0.c.x, -2147483647i, select(global0.d.d.e, global2.e, !vec3<bool>(global0.a.c, global0.d.c, global0.a.c)))));
    var var_0 = Struct_2(~vec4<u32>(~(~global2.e.x), min(~u_input.d, reverseBits(0u)), global2.e.x, 34187u), i32(-1i) * -1i, true, Struct_1(global2.a, ~global2.e.x, -141f, 46309i, select(select(global2.e, vec3<u32>(1u, 0u, 77185u), true) & vec3<u32>(52585u, global2.b, 43473u), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(60747u, 35129u, 15691u)), vec3<u32>(47214u, 9283u, global0.a.d.e.x) & vec3<u32>(46040u, global0.a.a.x, 0u)), global0.d.c)));
    return _wgslsmith_clamp_vec3_i32(var_0.d.a.yyz, min(global2.a.wyz, -global2.a.zzz), vec3<i32>(_wgslsmith_div_i32(global2.d, i32(-1i) * -11798i), _wgslsmith_clamp_i32(i32(-1i) * -global0.b.x, global0.b.x >> (1u % 32u), u_input.a.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.d.b, 2147483647i), global0.d.d.a.x)));
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2(i32(-1i) * -1i);
    global3 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-587f, global2.c), vec2<f32>(634f, global0.a.d.c), false)))))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.c.xy)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.yx * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global0.c.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1190f, var_1.x) * var_1))))));
    let var_3 = vec2<f32>(var_2.x, -965f);
    return max(abs(~global0.a.d.e), abs(max(min(global0.a.a.wyx, select(vec3<u32>(30426u, 39747u, 93011u), global0.d.a.xxz, true)), ~global0.a.d.e ^ vec3<u32>(0u, u_input.d, global2.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 24>();
    let var_0 = ~func_1();
    global3 = array<Struct_2, 24>();
    var var_1 = Struct_1(global2.a, abs(~(4294967295u ^ global2.e.x) >> (u_input.b.x % 32u)), global2.c, global2.d, _wgslsmith_add_vec3_u32(~global0.a.d.e, reverseBits(func_1())));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f));
    let var_3 = vec3<u32>(~_wgslsmith_div_u32(min(reverseBits(var_0.x), _wgslsmith_mult_u32(global0.a.d.e.x, 20092u)), func_1().x), ~countOneBits(~1u), ~global2.e.x);
    let var_4 = select(!vec3<bool>(!global0.a.c, true, 3603u <= ~var_1.e.x), select(select(vec3<bool>(false, global0.d.c, any(vec3<bool>(true, true, true))), !select(vec3<bool>(global0.d.c, global0.d.c, global0.a.c), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), global0.a.c), vec3<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global0.d.c, global0.d.c))), all(select(vec2<bool>(global0.d.c, global0.d.c), vec2<bool>(global0.d.c, global0.a.c), vec2<bool>(true, true)))), select(vec3<bool>(true, global0.d.c, false), !vec3<bool>(false, global0.a.c, true), vec3<bool>(!global0.a.c, !global0.d.c, true))), global0.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.d ^ firstTrailingBit(global0.a.d.e.x), ~(~39119u), ~var_3.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 12446u, global0.d.a.x)), vec3<u32>(1u, global2.b, var_0.x))), global0.a.a);
}

