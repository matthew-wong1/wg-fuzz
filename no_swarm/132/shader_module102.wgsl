struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -5872i, 24896i, -1i);

var<private> global1: Struct_4;

var<private> global2: array<i32, 18>;

var<private> global3: i32 = 32977i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    let var_0 = vec2<bool>(any(select(!vec3<bool>(global1.b, global1.b, false), vec3<bool>(global1.b, true, true), !select(vec3<bool>(global1.b, false, false), vec3<bool>(global1.b, true, false), global1.b))), global1.b);
    var var_1 = vec4<i32>(21645i, _wgslsmith_mult_i32(-firstLeadingBit(-1i), global1.d.d.a) ^ 1i, _wgslsmith_div_i32(~(-30380i), global0.x), reverseBits(_wgslsmith_add_i32(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(reverseBits(u_input.a), 18u)], -global0.x), ~global2[_wgslsmith_index_u32(global1.d.c, 18u)])));
    var var_2 = -(~var_1.x);
    let var_3 = vec4<u32>(~(~(~u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(global1.d.d.b), vec3<u32>(u_input.a, 1u, global1.d.c << (1723u % 32u))), select(1u | global1.d.d.b.x, global1.d.c, false), ~(~_wgslsmith_div_u32(global1.d.d.b.x, 59152u))), 1u, firstLeadingBit(0u));
    return firstLeadingBit(2147483647i);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(vec2<i32>(global2[_wgslsmith_index_u32(0u, 18u)], -func_3()), select(!all(select(vec3<bool>(false, false, global1.b), vec3<bool>(global1.b, true, true), false)), true, any(select(vec4<bool>(false, false, global1.b, true), vec4<bool>(global1.b, false, global1.b, global1.b), all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1566f), _wgslsmith_f_op_f32(global1.d.e.a + global1.d.d.c))), Struct_3(~1u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global1.d.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, 1000f, 186f, 232f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.b.x, -526f, 374f, global1.c.x)))), u_input.a, global1.d.d, Struct_2(global1.c.x)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1275f - var_0.c.x), _wgslsmith_f_op_f32(select(global1.d.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-665f, global1.d.d.c))), any(vec3<bool>(false, var_0.b, false)))), global1.d.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -879f, var_0.d.d.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, -354f, var_0.c.x) * vec3<f32>(var_0.c.x, -251f, 162f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global1.d.b.xyy - global1.d.b.xxz))))));
    let var_2 = !global1.b;
    var var_3 = global1.d.b.xyw;
    var var_4 = Struct_3(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, countOneBits(18927u)), global1.d.d.b.yz), ~u_input.a), var_0.d.b, ~1u, Struct_1(_wgslsmith_dot_vec3_i32(max(global0.yyz, vec3<i32>(-28720i, var_0.d.d.a, global1.d.d.a)), global0.wyx) | global2[_wgslsmith_index_u32(37950u & u_input.a, 18u)], ~var_0.d.d.b, var_0.c.x), global1.d.e);
    return Struct_4(vec2<i32>(-1i) * -firstTrailingBit(global1.a), global1.b, _wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, global1.c.x), _wgslsmith_f_op_vec2_f32(-var_1.xz)), global1.d);
}

fn func_1(arg_0: u32) -> vec4<i32> {
    global1 = func_2();
    let var_0 = -global2[_wgslsmith_index_u32(arg_0, 18u)];
    let var_1 = vec2<bool>(true, !(!global1.b));
    var var_2 = func_2().d.e;
    var var_3 = _wgslsmith_div_i32(-35267i, -reverseBits(41309i));
    return firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(var_0, global2[_wgslsmith_index_u32(max(1u, 4294967295u), 18u)], _wgslsmith_mod_i32(var_0, -2147483647i), ~2147483647i), ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0.x, 5050i, global1.d.d.a), vec4<i32>(global0.x, 1876i, global1.d.d.a, 49653i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(func_1(_wgslsmith_add_u32(u_input.a, select(23284u, global1.d.a, false))), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.x, global0.x, -48173i, -18255i), vec4<i32>(1i, 995i, global0.x, global2[_wgslsmith_index_u32(4294967295u, 18u)])) | min(vec4<i32>(global2[_wgslsmith_index_u32(880u, 18u)], global2[_wgslsmith_index_u32(global1.d.c, 18u)], global0.x, 2147483647i), vec4<i32>(62604i, -51595i, global0.x, global0.x)))), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(11562i, global2[_wgslsmith_index_u32(global1.d.c, 18u)], global1.a.x, global2[_wgslsmith_index_u32(19890u, 18u)]), vec4<i32>(0i, global2[_wgslsmith_index_u32(15453u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], 2147483647i), -vec4<i32>(0i, 18704i, global0.x, -2147483647i)) << (select(vec4<u32>(4294967295u, global1.d.d.b.x, global1.d.c, global1.d.d.b.x), ~vec4<u32>(u_input.a, u_input.a, 1u, 0u), var_0) % vec4<u32>(32u)), vec4<i32>(global1.d.d.a, global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1.d.a, 16619u, 85467u), 18u)], _wgslsmith_dot_vec3_i32(max(global0.zxy, global0.xww), global0.wzz), 53400i)));
    let var_1 = global1.d.d;
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~var_1.b.x, u_input.a), ~firstLeadingBit(vec2<u32>(55355u, var_1.b.x)), _wgslsmith_mult_vec2_u32(~(~var_1.b.yy), select(global1.d.d.b.xx, firstLeadingBit(vec2<u32>(3280u, var_1.b.x)), vec2<bool>(false, var_0)))), vec2<u32>(_wgslsmith_sub_u32(~22694u, ~_wgslsmith_clamp_u32(global1.d.d.b.x, var_1.b.x, 1u)), ~4294967295u), vec2<u32>(_wgslsmith_clamp_u32(abs(var_1.b.x | 40931u), 45108u, u_input.a), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_sub_u32(global1.d.d.b.x, global1.d.a)), 30967u)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1402f - global1.d.b.x), _wgslsmith_f_op_f32(-global1.c.x)))))), var_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.c, _wgslsmith_f_op_f32(floor(global1.c.x)))))), global1.d.e.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(func_2().d.b.x)), global1.d.b.x);
}

