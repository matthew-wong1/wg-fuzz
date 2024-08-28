struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(-32440i, 1i, 1i), vec3<i32>(-47874i, -1i, -2617i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(-7097i, 56800i, 1i), vec3<i32>(0i, 0i, 0i), vec3<i32>(6509i, -1i, 0i), vec3<i32>(-39444i, 1i, i32(-2147483648)), vec3<i32>(28985i, 2147483647i, 1i), vec3<i32>(2434i, -18389i, -1i), vec3<i32>(-1050i, 0i, -1i), vec3<i32>(28677i, -7614i, i32(-2147483648)), vec3<i32>(1i, -39546i, 1i), vec3<i32>(-1i, -7856i, -54065i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(1i, 36049i, i32(-2147483648)), vec3<i32>(-31136i, -51694i, 1i), vec3<i32>(8257i, -4645i, -7703i), vec3<i32>(0i, -11519i, 0i), vec3<i32>(0i, -22666i, -745i), vec3<i32>(8130i, -1i, -1i), vec3<i32>(2122i, 2147483647i, 1i), vec3<i32>(67690i, -10926i, -10181i), vec3<i32>(0i, 1i, -1i), vec3<i32>(-20944i, 39526i, 43645i), vec3<i32>(12031i, -1i, i32(-2147483648)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<bool>) -> bool {
    var var_0 = select(vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1910f * arg_1) * _wgslsmith_f_op_f32(abs(852f))) < _wgslsmith_f_op_f32(select(-198f, 1000f, true))), select(vec2<bool>((arg_0 & arg_0) < firstLeadingBit(arg_0), any(vec3<bool>(false, true, false))), arg_2.zw, any(!select(vec2<bool>(arg_2.x, arg_2.x), arg_2.yx, vec2<bool>(false, false)))), true);
    global3 = array<vec3<i32>, 25>();
    global0 = array<Struct_2, 4>();
    var var_1 = ~(-(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_0, -1i, -15098i), vec4<i32>(2147483647i, arg_0, 69415i, -58673i))));
    let var_2 = firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.zx, vec2<i32>(var_1.x, arg_0)) >> (~4294967295u % 32u), -var_1.x << (~u_input.a.x % 32u))) | (arg_0 >> (u_input.a.x % 32u));
    return var_0.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32) -> bool {
    var var_0 = 2147483647i;
    global3 = array<vec3<i32>, 25>();
    let var_1 = -1i;
    let var_2 = vec4<u32>(arg_0.x << (0u % 32u), 1u, ~(~1u), abs(~(~1u)));
    let var_3 = Struct_3(arg_1.xz);
    return func_3(-51024i, arg_2, select(!select(vec4<bool>(arg_1.x, false, var_3.a.x, arg_1.x), !vec4<bool>(true, arg_1.x, true, false), select(vec4<bool>(true, arg_1.x, arg_1.x, var_3.a.x), vec4<bool>(true, true, arg_1.x, var_3.a.x), var_3.a.x)), vec4<bool>(var_3.a.x || arg_1.x, !(!arg_1.x), false, false), false));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    let var_0 = select(-_wgslsmith_div_vec2_i32(vec2<i32>(-arg_0.a.x, 0i), vec2<i32>(arg_0.a.x, ~2147483647i)), vec2<i32>(arg_0.a.x, 44850i), vec2<bool>(all(vec4<bool>(false & arg_1.x, true, !arg_1.x, arg_1.x)), !func_2(vec4<u32>(14910u, u_input.a.x, 36741u, u_input.a.x), !arg_1, _wgslsmith_f_op_f32(f32(-1f) * -444f))));
    var var_1 = global2[_wgslsmith_index_u32(51851u, 13u)];
    var var_2 = 30641i;
    var var_3 = Struct_1(var_1.a);
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(861f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1069f, -1148f), 1562f)))));
    return any(select(select(select(!vec2<bool>(false, arg_1.x), !vec2<bool>(arg_1.x, arg_1.x), true), vec2<bool>(true, select(false, true, arg_1.x)), _wgslsmith_f_op_f32(-var_4.x) == var_4.x), arg_1.zz, arg_1.xz));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    let var_0 = vec4<bool>(true, !(((-1i << (0u % 32u)) << ((u_input.a.x << (21960u % 32u)) % 32u)) == 55126i), select(arg_0.x, func_2(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec3<bool>(true, true, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2231f)))), true), all(select(vec4<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), select(false, false, false), false, func_3(0i, -284f, vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x & arg_0.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(872f, 1098f) - vec2<f32>(-970f, -474f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(766f, -1256f) + vec2<f32>(-989f, -532f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -836f), _wgslsmith_f_op_f32(-822f + -407f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1194f), -395f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1390f, -789f)) - vec2<f32>(789f, -566f)))), vec2<f32>(_wgslsmith_f_op_f32(-1541f - _wgslsmith_f_op_f32(f32(-1f) * -1146f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1062f * -264f), -427f))))), arg_0.yz));
    global0 = array<Struct_2, 4>();
    let var_2 = -1000f;
    global1 = func_2(_wgslsmith_add_vec4_u32(firstTrailingBit(u_input.a), vec4<u32>(_wgslsmith_mod_u32(103517u, u_input.a.x), u_input.a.x, u_input.a.x | u_input.a.x, ~4294967295u)), select(var_0.xwy, vec3<bool>(func_1(Struct_1(vec4<i32>(-3072i, -42294i, 1i, 0i)), var_0.yxz), !var_0.x, !var_0.x), false), -1079f) && false;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_4(select(vec3<bool>(all(vec3<bool>(true, true, true)), func_1(global2[_wgslsmith_index_u32(4294967295u, 13u)], vec3<bool>(true, true, false)), all(vec4<bool>(true, false, false, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)))));
    let var_1 = ~48061u;
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    global3 = array<vec3<i32>, 25>();
    global1 = true;
    var var_2 = !func_1(global2[_wgslsmith_index_u32(reverseBits(950u), 13u)], select(vec3<bool>(func_3(-37126i, -324f, vec4<bool>(true, false, false, true)), true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    var var_3 = _wgslsmith_sub_vec2_u32(u_input.a.zz, ~(~(~reverseBits(u_input.a.yw))));
    let var_4 = 3929i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1113f, -510f, 1282f, -250f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -1582f, 1594f, 1000f), vec4<f32>(1000f, -1430f, -1274f, -2142f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1125f, -467f, -1314f, -643f))), vec4<f32>(1000f, 1829f, -735f, -616f))))), _wgslsmith_clamp_vec3_i32(global3[_wgslsmith_index_u32(firstTrailingBit(min(_wgslsmith_div_u32(u_input.a.x, var_1), 1u)), 25u)], ~reverseBits(-global3[_wgslsmith_index_u32(var_3.x, 25u)]), _wgslsmith_clamp_vec3_i32(vec3<i32>(-21097i, var_4, var_4 & var_4), vec3<i32>(-1i) * -vec3<i32>(-6059i, 40955i, 0i), global3[_wgslsmith_index_u32(~u_input.a.x, 25u)])), reverseBits(_wgslsmith_sub_i32(15943i, i32(-1i) * -27554i)), 20944i);
}

