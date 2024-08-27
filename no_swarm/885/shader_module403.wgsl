struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 1>;

var<private> global1: Struct_2 = Struct_2(-330f, Struct_1(39608i, -2544i, false, vec4<u32>(1u, 4294967295u, 1u, 16946u)), 4294967295u);

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> vec4<bool> {
    var var_0 = Struct_1(global1.b.b, reverseBits(_wgslsmith_mult_i32(i32(-1i) * -u_input.a.x, _wgslsmith_div_i32(1i, -33703i))), global2.x, _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c, global1.c, 1u, 7656u), vec4<u32>(1u, 1u, 21220u, arg_0.d.x), global1.b.d), ~global1.b.d), ~(~global1.b.d) ^ ~global1.b.d));
    global0 = array<vec3<bool>, 1>();
    let var_1 = 2067f;
    global2 = !vec4<bool>(any(vec2<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 1u)]), true)), true, any(!vec3<bool>(var_0.c, false, global1.b.c)), any(select(vec2<bool>(var_0.c, arg_0.c), global2.zw, vec2<bool>(arg_0.c, false))));
    global0 = array<vec3<bool>, 1>();
    return select(select(select(!select(vec4<bool>(global2.x, false, true, var_0.c), vec4<bool>(false, true, arg_0.c, false), vec4<bool>(true, global2.x, true, false)), select(select(vec4<bool>(global2.x, var_0.c, false, var_0.c), vec4<bool>(true, false, true, true), vec4<bool>(false, global1.b.c, true, true)), select(vec4<bool>(global1.b.c, false, global2.x, global2.x), vec4<bool>(var_0.c, global1.b.c, false, false), arg_0.c), global2.x), select(!vec4<bool>(global2.x, true, true, true), !vec4<bool>(true, var_0.c, false, true), vec4<bool>(global1.b.c, global2.x, global1.b.c, arg_0.c))), !select(!vec4<bool>(arg_0.c, true, true, true), !vec4<bool>(false, global1.b.c, true, true), false), vec4<bool>(arg_0.c, true == all(global2.zx), false != (global1.a >= var_1), all(vec3<bool>(global1.b.c, global1.b.c, global1.b.c)))), vec4<bool>(global1.b.c, all(global2.zw), any(global0[_wgslsmith_index_u32(4537u, 1u)]), false), false);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: u32) -> Struct_2 {
    let var_0 = ~(~abs(select(vec2<u32>(1u, 20604u), global1.b.d.xz, true) | vec2<u32>(arg_1, 6316u)));
    global2 = !(!(!select(func_3(global1.b, u_input.a.wzw, 1i), vec4<bool>(true, true, global2.x, true), !global2.x)));
    global2 = func_3(global1.b, u_input.a.xxx, abs(u_input.a.x >> ((firstTrailingBit(u_input.c) & ~4294967295u) % 32u)));
    let var_1 = Struct_2(-1159f, global1.b, ~abs(arg_1));
    global2 = vec4<bool>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 4369u | global1.b.d.x, _wgslsmith_sub_u32(0u, arg_2)), arg_2) != 124119u, any(!vec4<bool>(global2.x || true, true, true, all(vec4<bool>(true, true, global2.x, var_1.b.c)))), all(vec2<bool>(true, any(global2.wy))), global2.x);
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, arg_0.a, -1537f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) * 2045f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1694f, arg_0.a, 1114f, 1265f)))) * vec4<f32>(487f, _wgslsmith_f_op_f32(min(arg_0.a, global1.a)), _wgslsmith_f_op_f32(-arg_0.a), func_2(vec2<f32>(arg_0.a, arg_0.a), global1.b.d.x, 32705u).a))));
    global1 = arg_0;
    var var_1 = arg_0.a;
    let var_2 = 25625u;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, 733f, -302f) * vec4<f32>(-660f, 640f, var_0.x, 375f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, global1.a, 109f, arg_0.a))))) + vec4<f32>(-1687f, global1.a, _wgslsmith_f_op_f32(max(-579f, _wgslsmith_div_f32(var_0.x, arg_0.a))), -345f)));
    return Struct_2(var_0.x, Struct_1(i32(-1i) * -1i, abs(~10432i), !(all(vec4<bool>(false, arg_0.b.c, false, arg_1.x)) || true), ~reverseBits(vec4<u32>(var_2, 4294967295u, 1u, 1u))), _wgslsmith_mult_u32(u_input.b, min(reverseBits(global1.b.d.x), select(22945u, 44648u, global1.b.c))) ^ _wgslsmith_add_u32(reverseBits(global1.b.d.x), (arg_0.b.d.x << (27160u % 32u)) | _wgslsmith_mult_u32(global1.b.d.x, arg_0.c)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> vec4<i32> {
    global1 = arg_0;
    global1 = func_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1328f, -1999f)))))), ~_wgslsmith_clamp_u32(4294967295u, ~4170u, u_input.c), 80678u), !vec4<bool>(!(!global1.b.c), !all(vec4<bool>(false, false, false, global2.x)), global1.b.c, !any(global2.yz)));
    global2 = select(!(!select(select(vec4<bool>(true, global1.b.c, global2.x, true), vec4<bool>(true, true, arg_2, global1.b.c), global2.x), select(vec4<bool>(false, true, arg_0.b.c, global2.x), vec4<bool>(global1.b.c, global2.x, true, false), false), !global2.x)), select(vec4<bool>(arg_2, false, !(global2.x && false), func_4(func_4(arg_0, vec4<bool>(false, false, arg_0.b.c, false)), vec4<bool>(arg_2, true, true, global2.x)).b.c), !select(!vec4<bool>(global2.x, true, true, true), vec4<bool>(global2.x, false, global2.x, false), all(vec4<bool>(arg_2, global1.b.c, arg_2, true))), !vec4<bool>(441f >= global1.a, !arg_2, false, global1.b.c == global1.b.c)), !(!arg_2));
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(max(global1.b.b, 0i), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, arg_1.x, 48558i, 24933i))), 47210i)), i32(-1i) * -1i, !(4294967295u > ~u_input.c) | select(!any(global2.zyy), !(global2.x && arg_0.b.c), !all(vec4<bool>(true, arg_0.b.c, arg_2, global2.x))), vec4<u32>(0u, ~arg_0.c >> (global1.b.d.x % 32u), u_input.c, abs(_wgslsmith_add_u32(select(arg_0.c, 47493u, false), 18833u))));
    let var_1 = var_0.c & any(func_3(func_4(arg_0, vec4<bool>(arg_2, false, true, false)).b, max(u_input.a.wwy, vec3<i32>(58109i, var_0.b, 37214i)) | -vec3<i32>(global1.b.a, arg_0.b.b, 16218i), func_2(vec2<f32>(-1435f, -143f), 63776u, u_input.c).b.b | countOneBits(-2147483647i)).xz);
    return _wgslsmith_add_vec4_i32(vec4<i32>(-31805i, reverseBits(-35866i), _wgslsmith_sub_i32(func_4(func_4(arg_0, vec4<bool>(arg_2, false, false, true)), !vec4<bool>(false, global1.b.c, true, var_1)).b.a, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.b, 1i), vec2<i32>(arg_1.x, 0i)))), -32946i), ~min(_wgslsmith_mod_vec4_i32(-u_input.a, u_input.a >> (vec4<u32>(65338u, u_input.b, 50993u, 65849u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-6378i, -10650i, global1.b.a, -23205i), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(global1.b.c, !(_wgslsmith_dot_vec4_i32(func_1(Struct_2(global1.a, global1.b, 0u), u_input.a.xw, false), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global1.b.b, 7295i, -53972i), u_input.a)) >= ~global1.b.b));
    var var_1 = Struct_1(_wgslsmith_div_i32(1i >> (_wgslsmith_mult_u32(global1.c, _wgslsmith_add_u32(4294967295u, u_input.c)) % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(18710i, -31111i), u_input.a.wx)), _wgslsmith_sub_i32(global1.b.a, 2147483647i), all(!global2.yw), vec4<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(44832u, global1.c), _wgslsmith_add_vec2_u32(global1.b.d.zx, global1.b.d.wz)), reverseBits(global1.c) & 0u), _wgslsmith_div_u32(global1.c, reverseBits(func_4(Struct_2(1000f, global1.b, 42039u), vec4<bool>(false, global2.x, false, false)).c)), (_wgslsmith_dot_vec4_u32(global1.b.d, vec4<u32>(14255u, u_input.c, u_input.b, u_input.b)) << (50525u % 32u)) | u_input.c, ~global1.b.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a, global1.a, global1.a, global1.a), vec4<f32>(global1.a, global1.a, -2232f, global1.a)))), vec4<f32>(func_2(vec2<f32>(-2126f, 158f), u_input.c, 0u).a, -1000f, -186f, global1.a), false)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(213f, -1166f, 1000f, -540f)))), u_input.b, vec2<i32>(func_4(Struct_2(-370f, Struct_1(var_1.a, -56519i, true, var_1.d), ~0u), vec4<bool>(func_3(Struct_1(-32766i, u_input.a.x, false, vec4<u32>(59466u, u_input.b, 62154u, 49942u)), vec3<i32>(global1.b.b, global1.b.a, -1i), -30051i).x, var_0.x, true, var_0.x)).b.b, 1893i & _wgslsmith_mod_i32(firstTrailingBit(-31124i), u_input.a.x)));
}

