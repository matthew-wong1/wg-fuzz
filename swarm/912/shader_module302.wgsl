struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_3;

var<private> global2: array<u32, 12> = array<u32, 12>(1u, 1u, 46160u, 1u, 1u, 33010u, 84543u, 4294967295u, 0u, 13210u, 1u, 2275u);

var<private> global3: array<bool, 24> = array<bool, 24>(false, true, true, true, true, true, true, true, true, true, false, false, true, true, false, true, false, true, false, true, false, true, false, true);

var<private> global4: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(!select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 12u)], 24u)], true, true), vec4<bool>(global3[_wgslsmith_index_u32(54062u, 24u)], false, true, false), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 24u)], false, global1.a.x)), select(vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 24u)], false, true), global1.a.x), vec4<bool>(false, true, global3[_wgslsmith_index_u32(6098u, 24u)], global1.a.x)), vec4<bool>(any(global1.a.zx), global1.a.x, any(vec2<bool>(true, true)), !global1.a.x), true || !global1.a.x), u_input.c.x, abs(u_input.a) >> (vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.c.x), select(global2[_wgslsmith_index_u32(u_input.d.x, 12u)], u_input.c.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 24u)])), u_input.d.x) % vec2<u32>(32u)), u_input.d.x);
    global4 = Struct_1(-1i, ~(-42374i), ~global4.c);
    global4 = Struct_1(13403i, global4.b, _wgslsmith_mod_vec2_i32(vec2<i32>(30572i, _wgslsmith_mod_i32(-u_input.a.x, ~(-3558i))), var_0.c));
    global3 = array<bool, 24>();
    var_0 = Struct_4(var_0.a, 0u, countOneBits(var_0.c), global2[_wgslsmith_index_u32(~var_0.b, 12u)]);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(421f + _wgslsmith_f_op_f32(round(-781f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -116f))))))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(max(712f, -175f)) >= _wgslsmith_f_op_f32(func_3());
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(421f - _wgslsmith_div_f32(109f, 725f)), _wgslsmith_f_op_f32(ceil(385f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(695f, 402f)))))));
    global0 = _wgslsmith_mult_u32(1u, abs(45168u));
    var var_2 = Struct_2(Struct_1(u_input.a.x, u_input.a.x, select(_wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, 17499i), firstTrailingBit(vec2<i32>(2147483647i, u_input.a.x))), -(global4.c & vec2<i32>(2147483647i, global4.b)), !global3[_wgslsmith_index_u32(abs(10611u), 24u)])), Struct_1(2147483647i, ~_wgslsmith_sub_i32(u_input.a.x, 1i), vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(23420i, 30532i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -21920i, 1i, u_input.a.x), vec4<bool>(false, false, false, var_0)), -vec4<i32>(u_input.a.x, global4.c.x, 1i, -58140i)), 2147483647i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), -1468f, -1562f, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(var_1.x + var_1.x));
    let var_3 = Struct_2(var_2.b, Struct_1(~u_input.a.x, -2147483647i, u_input.a), var_2.c, var_2.d, -1954f);
    return global1.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = !(!vec4<bool>(true, !func_2(u_input.c.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.wyw, vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 12u)], u_input.b, u_input.c.x)), u_input.d.xyw), 24u)], global1.a.x));
    global3 = array<bool, 24>();
    var var_1 = Struct_3(vec3<bool>(all(select(vec3<bool>(true, global1.a.x, false), var_0.xwx, false)) && any(select(global1.a.zy, var_0.zz, false)), true, global1.a.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-122f, 942f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, 1000f)), true))))) * vec2<f32>(_wgslsmith_f_op_f32(-1290f + -773f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-674f)))))));
    var_1 = Struct_3(select(select(select(select(var_1.a, vec3<bool>(true, true, true), global1.a), select(vec3<bool>(global1.a.x, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10875u, 12u)], 24u)]), var_0.wwx, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], 24u)]), true), vec3<bool>(false, var_0.x, 4294967295u >= u_input.c.x), vec3<bool>(var_0.x, true, false)), var_0.zxy, vec3<bool>(any(vec3<bool>(var_0.x, false, true)), any(var_1.a.xz), _wgslsmith_mult_i32(global4.c.x, 61097i) >= abs(-2147483647i))));
    return Struct_1(_wgslsmith_clamp_i32(-9681i, 0i, _wgslsmith_sub_i32(u_input.a.x & 78986i, 1i)), ~global4.a, ~vec2<i32>(_wgslsmith_div_i32(min(global4.b, 1i), i32(-1i) * -2147483647i), global4.b << (firstTrailingBit(u_input.b) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(select(select(global1.a, select(vec3<bool>(true, global3[_wgslsmith_index_u32(41908u, 24u)], false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], true, true), select(vec3<bool>(global1.a.x, true, false), global1.a, false)), any(vec2<bool>(false, false))), global1.a, false));
    let var_2 = _wgslsmith_mod_vec3_u32(~abs(u_input.d.www), u_input.d.xyx);
    let var_3 = abs(3794i);
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(select(4382u, _wgslsmith_mult_u32(0u, var_2.x), ~global4.b != _wgslsmith_mod_i32(var_0.b, global4.b)), var_2.x, _wgslsmith_add_u32(1u, 57813u)), vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.d.yz, vec2<u32>(0u, 1u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, var_2.x), vec3<u32>(u_input.b, var_2.x, var_2.x)), _wgslsmith_dot_vec2_u32(u_input.c, var_2.xy), ~_wgslsmith_mod_u32(1u, 29570u) ^ ~firstTrailingBit(4294967295u)));
    global0 = ~abs(27715u);
    let var_5 = !var_1.a;
    var var_6 = Struct_5(~vec4<u32>(~var_2.x, ~var_4.x, 47864u, abs(var_4.x)) & vec4<u32>(1u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(var_2.x, 12u)] << (var_2.x % 32u), 0u), _wgslsmith_mod_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 12u)], u_input.d.x), global2[_wgslsmith_index_u32(~1u, 12u)]), 1u));
    global1 = Struct_3(vec3<bool>(var_5.x, all(select(select(vec4<bool>(var_1.a.x, global3[_wgslsmith_index_u32(2216u, 24u)], false, var_1.a.x), vec4<bool>(false, true, false, true), var_5.x), select(vec4<bool>(true, var_1.a.x, global3[_wgslsmith_index_u32(var_4.x, 24u)], true), vec4<bool>(true, var_1.a.x, var_1.a.x, global1.a.x), vec4<bool>(var_5.x, global1.a.x, true, true)), false)), global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(global4.c ^ vec2<i32>(var_3 << (_wgslsmith_dot_vec4_u32(var_6.a, vec4<u32>(9432u, 4294967295u, u_input.c.x, 46780u)) % 32u), -4573i), _wgslsmith_div_vec3_u32(~(var_6.a.yyx & var_2), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_4.x, 22298u, 7339u), vec3<u32>(1u, var_2.x, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(var_6.a.x, 12u)], global2[_wgslsmith_index_u32(var_2.x, 12u)])))));
}

