struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(67394i, vec2<i32>(1609i, 8010i), 23890u, false, true), false, vec3<f32>(-1056f, 499f, -157f), vec2<bool>(true, false), Struct_1(1i, vec2<i32>(23460i, -1i), 1213u, true, false)), Struct_2(Struct_1(16637i, vec2<i32>(49905i, 20653i), 0u, false, true), false, vec3<f32>(-1615f, -1217f, 1000f), vec2<bool>(false, true), Struct_1(37768i, vec2<i32>(2147483647i, 8540i), 87881u, true, false)), Struct_2(Struct_1(1i, vec2<i32>(28951i, 36429i), 64306u, true, true), true, vec3<f32>(-1000f, -188f, -1000f), vec2<bool>(true, false), Struct_1(0i, vec2<i32>(-18291i, 2147483647i), 49572u, true, false)), Struct_2(Struct_1(75716i, vec2<i32>(1i, 2147483647i), 0u, false, false), true, vec3<f32>(-1576f, -1188f, 1000f), vec2<bool>(false, false), Struct_1(2147483647i, vec2<i32>(-55797i, -82777i), 0u, true, false)));

var<private> global3: Struct_1;

var<private> global4: array<f32, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> u32 {
    global1 = vec4<bool>(false, !all(select(!global1.wwx, vec3<bool>(arg_0.e, arg_0.d, true), !vec3<bool>(true, true, arg_0.d))), global3.e, select(all(select(vec4<bool>(false, global1.x, global3.e, false), vec4<bool>(arg_0.e, true, false, arg_0.e), select(vec4<bool>(true, global3.e, global3.d, false), vec4<bool>(global3.d, true, false, global3.e), vec4<bool>(arg_0.d, global3.e, arg_0.d, global3.e)))), !select(false, global1.x, arg_0.d) | true, !global1.x));
    var var_0 = Struct_3(Struct_2(Struct_1(~(-23202i), vec2<i32>(1i, _wgslsmith_sub_i32(arg_0.a, 2147483647i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(31567u, 4294967295u, 26517u, 1u), ~vec4<u32>(1u, arg_0.c, 57622u, 76908u)), global3.d, !all(global1.ww)), false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(635f, -482f, global4[_wgslsmith_index_u32(82062u, 30u)]), vec3<f32>(arg_2, 1579f, -396f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, -1000f, 1464f)))), global1.yzx)), select(!select(vec2<bool>(false, global1.x), vec2<bool>(true, true), vec2<bool>(true, global1.x)), select(vec2<bool>(false, true), global1.xy, !arg_0.e), vec2<bool>(global3.e && false, global3.c == global3.c)), Struct_1(-max(1i, u_input.b.x), countOneBits(firstTrailingBit(vec2<i32>(global3.a, -2147483647i))), abs(0u), ~4294967295u < _wgslsmith_mod_u32(arg_0.c, 0u), !all(vec4<bool>(global3.d, global1.x, false, arg_0.e)))));
    let var_1 = -37769i;
    let var_2 = vec4<bool>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.zxy, vec3<i32>(2147483647i, 1i, 21113i)) | countOneBits(arg_0.b.x), -22470i) >= reverseBits(max(1i << (arg_0.c % 32u), ~2147483647i)), all(vec4<bool>(true, false, var_0.a.a.d, all(vec3<bool>(false, arg_0.d, arg_0.d)))), true, _wgslsmith_div_u32(arg_1, 7035u) >= _wgslsmith_div_u32(arg_0.c, reverseBits(global3.c) << (1u % 32u)));
    var var_3 = global3.a;
    return _wgslsmith_mod_u32(~13555u, global3.c | ~u_input.d);
}

fn func_2(arg_0: i32) -> f32 {
    global1 = !vec4<bool>(global4[_wgslsmith_index_u32(24372u, 30u)] < 1814f, true & global1.x, !global3.e, global1.x);
    let var_0 = vec3<u32>(func_3(global0[_wgslsmith_index_u32(20402u, 14u)], ~(~_wgslsmith_sub_u32(global3.c, u_input.d)), global4[_wgslsmith_index_u32(global3.c, 30u)]), 1u, u_input.d);
    let var_1 = Struct_4(var_0.zy);
    let var_2 = _wgslsmith_add_u32(u_input.d, ~var_1.a.x);
    global0 = array<Struct_1, 14>();
    return 504f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> bool {
    global2 = array<Struct_2, 4>();
    let var_0 = _wgslsmith_mult_u32(u_input.d & 19288u, 79202u);
    let var_1 = vec4<bool>(true, !any(vec3<bool>(true, true, true)) && true, all(select(!(!global1.yx), vec2<bool>(global4[_wgslsmith_index_u32(u_input.d, 30u)] <= -313f, true), global1.wx)), global1.x);
    let var_2 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(abs(1i)))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 30>();
    global0 = array<Struct_1, 14>();
    var var_0 = u_input.b;
    var var_1 = global4[_wgslsmith_index_u32(~(~74313u), 30u)];
    var var_2 = Struct_4(abs(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(global3.c, global3.c)), vec2<u32>(global3.c, 54487u)) << ((~vec2<u32>(global3.c, global3.c) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 114798u), vec2<u32>(0u, 1u))) % vec2<u32>(32u))));
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 52042u, select(_wgslsmith_add_u32(~var_2.a.x, 1u), _wgslsmith_mult_u32(global3.c, _wgslsmith_clamp_u32(var_2.a.x, global3.c, global3.c)), global3.e)), ~firstTrailingBit(~select(vec3<u32>(global3.c, var_2.a.x, u_input.d), vec3<u32>(global3.c, global3.c, global3.c), global1.x))), 14u)];
    var var_3 = var_0.x;
    var var_4 = Struct_3(global2[_wgslsmith_index_u32(var_2.a.x, 4u)]);
    var var_5 = !select(!vec4<bool>(global3.e && var_4.a.d.x, global3.d || global1.x, any(var_4.a.d), !global3.d), vec4<bool>(41901u != u_input.d, any(vec3<bool>(true, false, false)) | global1.x, func_1(global0[_wgslsmith_index_u32(u_input.d, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], -567f) || true, any(select(vec4<bool>(false, true, global1.x, false), vec4<bool>(global3.e, var_4.a.e.e, global1.x, false), true))), !vec4<bool>(!global1.x, false, all(global1.wyw), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(var_4.a.e.b.x, -20387i, -1i), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(var_0.xyw, var_0.zzw), -vec3<i32>(var_4.a.a.a, -1i, var_4.a.a.a))) >> (_wgslsmith_mult_vec3_u32(~(~vec3<u32>(0u, 4294967295u, 66037u)), ~(~vec3<u32>(0u, u_input.d, 57969u))) % vec3<u32>(32u)), global4[_wgslsmith_index_u32(var_2.a.x, 30u)], _wgslsmith_div_vec2_u32(~(~var_2.a ^ ~var_2.a), var_2.a));
}

