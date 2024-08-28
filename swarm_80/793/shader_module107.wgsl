struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-96401i, 1005i, -22344i), true, vec3<u32>(4294967295u, 40337u, 1u), vec2<u32>(4294967295u, 4294967295u), 259f);

var<private> global1: bool = false;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> bool {
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = !(func_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2407f) - arg_0.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1958f, global2.c.e)))), countOneBits(-5922i) >= u_input.a.x) || func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.xz)) - _wgslsmith_f_op_vec2_f32(exp2(arg_0.xy))), _wgslsmith_f_op_f32(global0.e + arg_0.x) >= _wgslsmith_f_op_f32(select(867f, global2.b.e, true))));
    let var_1 = vec2<bool>(arg_1.a | false, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(arg_0.yx));
    var var_3 = Struct_1(global2.b.a, !all(!(!vec4<bool>(true, true, var_0, true))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(global2.c.c) << (vec3<u32>(93553u, 4294967295u, global2.c.c.x) % vec3<u32>(32u)), countOneBits(reverseBits(global0.c))), global2.b.c), global2.b.c.xx, _wgslsmith_f_op_f32(global0.e - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1443f + _wgslsmith_f_op_f32(-global0.e)), arg_0.x)));
    global1 = !any(!vec4<bool>(var_0, !var_3.b, arg_1.a & global2.b.b, var_1.x));
    return var_3.a.x;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global2 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(~func_2(vec4<f32>(1924f, global2.c.e, global0.e, -204f), Struct_3(global2.c.b)), -(~6192i))), Struct_1(max(_wgslsmith_mod_vec3_i32(global2.b.a, u_input.a) & _wgslsmith_div_vec3_i32(vec3<i32>(global0.a.x, global0.a.x, u_input.a.x), global0.a), abs(vec3<i32>(-23077i, 36543i, -2147483647i))), true, ~_wgslsmith_mod_vec3_u32(arg_0, vec3<u32>(global0.d.x, global2.c.c.x, 63268u)), ~max(global0.c.xx, max(global2.c.d, vec2<u32>(global0.d.x, 12969u))), 313f), global2.c, 38480u, -(~u_input.a.xy));
    var var_0 = vec4<bool>(true, !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2.c.e)), -1151f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1108f * global2.c.e) * _wgslsmith_f_op_f32(ceil(996f)))), global0.b, !global0.b);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(610f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.e)))))) > _wgslsmith_f_op_f32(max(278f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e - 771f)))));
    let var_3 = global2.c;
    return Struct_2(var_3.a.x, Struct_1(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), firstTrailingBit(_wgslsmith_add_i32(-38214i, 2147483647i)), _wgslsmith_div_i32(i32(-1i) * -2147483647i, abs(global2.b.a.x))), all(!var_0.zxz), vec3<u32>(~4294967295u, ~global2.b.d.x | (591u >> (1u % 32u)), ~global0.c.x), ~(~(~vec2<u32>(global2.d, global0.d.x))), global2.c.e), Struct_1(vec3<i32>(min(1i, -1i), _wgslsmith_add_i32(2147483647i, u_input.a.x), _wgslsmith_div_i32(-72576i, -25170i)) >> (abs(vec3<u32>(34369u, var_3.d.x, var_3.d.x)) % vec3<u32>(32u)), any(select(var_0.yw, var_0.wx, false)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4398u, var_3.c.x), ~vec2<u32>(30959u, var_3.c.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, arg_0.x), ~0u), global2.d), ~arg_0.xz, var_3.e), _wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(4294967295u, global2.c.c.x) << (_wgslsmith_mult_u32(11285u, var_3.d.x) % 32u)), _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.x ^ arg_0.x, _wgslsmith_clamp_u32(arg_0.x, global2.d, global0.c.x)), _wgslsmith_mod_u32(global0.d.x, reverseBits(arg_0.x)))), u_input.a.zx);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(-global0.a.x <= 34211i);
    var_0 = Struct_3(arg_1.c.b);
    global0 = Struct_1(u_input.a, arg_2 & all(vec3<bool>(true, true, true)), ~vec3<u32>(abs(max(arg_0.x, arg_1.d)), _wgslsmith_add_u32(_wgslsmith_mult_u32(global2.d, arg_3.d), 4294967295u), global2.c.d.x), global0.c.zy, -930f);
    var var_1 = Struct_1(reverseBits(~global0.a), global2.c.b, vec3<u32>(_wgslsmith_clamp_u32(func_1(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, global2.c.c.x, 1u), arg_0.wyw)).c.c.x, global2.c.c.x, ~func_1(arg_1.b.c).d), ~(~103832u), 16952u), min(select(~global2.c.d, firstLeadingBit(vec2<u32>(global2.d, arg_1.b.d.x)), true) ^ vec2<u32>(arg_3.b.c.x, arg_0.x), global2.c.d ^ global0.c.zz), _wgslsmith_f_op_f32(round(-1141f)));
    var var_2 = Struct_3(arg_1.c.b);
    return arg_1.b;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = !arg_0.b;
    var var_0 = Struct_2(1i, func_1(vec3<u32>(1u, _wgslsmith_clamp_u32(0u, arg_0.d.x, 7050u) << (global0.c.x % 32u), ~global2.c.d.x)).c, Struct_1(~u_input.a, !(!(-1000f > global0.e)), vec3<u32>(~global0.c.x, 1u, reverseBits(0u >> (arg_0.c.x % 32u))), firstLeadingBit(abs(arg_0.d)) | global0.d, -556f), _wgslsmith_dot_vec3_u32(abs(abs(global0.c << (vec3<u32>(global2.b.d.x, global0.c.x, 13057u) % vec3<u32>(32u)))), ~arg_0.c), u_input.a.zx);
    global0 = Struct_1(~arg_0.a & abs(arg_0.a), global2.c.e <= var_0.b.e, vec3<u32>(reverseBits(1u), arg_0.c.x, ~global2.b.d.x), vec2<u32>(firstLeadingBit(10589u), _wgslsmith_div_u32(~global2.b.c.x, var_0.b.c.x)) & global0.d, -1000f);
    let var_1 = global0.a;
    var var_2 = var_0.c.e;
    return Struct_1(var_0.b.a, true, reverseBits(arg_0.c), ~vec2<u32>(~global2.b.c.x, 46126u), _wgslsmith_f_op_f32(f32(-1f) * -1127f));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    var var_0 = global2.b.a.x;
    var var_1 = global2.c;
    var var_2 = false;
    var var_3 = func_1(max(vec3<u32>(70719u, 19596u, 0u) << (arg_0.c % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~arg_0.c, vec3<u32>(global0.d.x, global2.c.d.x, 4294967295u))) | _wgslsmith_clamp_vec3_u32((global0.c >> (var_1.c % vec3<u32>(32u))) & global2.c.c, vec3<u32>(~var_1.d.x, global2.d, ~72977u), ~abs(global2.c.c))).c;
    let var_4 = select(!vec2<bool>(arg_0.b, true), select(!(!vec2<bool>(false, global2.c.b)), vec2<bool>(true, _wgslsmith_f_op_f32(-var_3.e) >= -1000f), vec2<bool>(true, true)), !vec2<bool>(select(u_input.a.x, -65525i, global0.b) > max(var_3.a.x, global2.a), !all(vec3<bool>(true, true, false))));
    return func_1(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 34658u, 23697u, global2.c.d.x), min(reverseBits(vec4<u32>(var_1.c.x, global0.c.x, 1u, 57509u)), vec4<u32>(4294967295u, global2.c.d.x, 1u, 35155u))), countOneBits(firstLeadingBit(0u << (var_3.d.x % 32u))), _wgslsmith_mod_u32(1u, 4294967295u) >> (~var_1.c.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_5(func_4(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 48053u, 7505u, 31069u), vec4<u32>(4294967295u, 21783u, 1u, global2.b.c.x)), abs(vec4<u32>(69871u, global2.b.c.x, global0.d.x, global0.c.x))), func_1(~vec3<u32>(global2.b.d.x, 0u, 1u)), true, func_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global0.d.x), global0.c)))), Struct_3(global0.b));
    global0 = global2.c;
    var var_0 = func_5(global2.b);
    global2 = Struct_2(u_input.a.x & var_0.a.x, func_6(Struct_1(vec3<i32>(func_2(vec4<f32>(global2.c.e, -1089f, -814f, global2.b.e), Struct_3(false)), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 22078i), global0.a.xz)), true, global0.c, ~global2.c.c.zz, -1130f), Struct_3(all(vec3<bool>(global2.b.b, true, var_0.b)) == true)).b, func_5(func_1(global0.c >> (global2.c.c % vec3<u32>(32u))).c), max(func_1(min(vec3<u32>(0u, 14997u, 48474u), global2.c.c << (global2.c.c % vec3<u32>(32u)))).b.d.x, ~_wgslsmith_sub_u32(global0.d.x << (var_0.d.x % 32u), _wgslsmith_div_u32(1u, global0.d.x))), vec2<i32>(-59412i, min(18186i, firstLeadingBit(abs(global2.a)))));
    global2 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.e, var_0.e, -378f, 1108f), vec4<f32>(-539f, global2.c.e, global2.b.e, global0.e)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, global2.c.e, -682f, global0.e) * vec4<f32>(376f, var_0.e, 1000f, -1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1805f, -394f, -1763f, global0.e), vec4<f32>(-337f, global2.c.e, 227f, 1665f), vec4<bool>(true, global2.b.b, global0.b, global0.b))))), Struct_3(true)), Struct_1(~(u_input.a >> (~global2.c.c % vec3<u32>(32u))), global0.b | any(!vec4<bool>(true, global0.b, var_0.b, var_0.b)), vec3<u32>(var_0.d.x, 1u, global2.c.c.x), vec2<u32>(_wgslsmith_add_u32(4294967295u, global0.d.x), _wgslsmith_sub_u32(~52942u, 1u)), _wgslsmith_f_op_f32(round(var_0.e))), Struct_1(vec3<i32>(-1i) * -vec3<i32>(global2.b.a.x, -9618i, 0i), !(!global2.b.b), vec3<u32>(~global2.b.c.x, func_4(max(vec4<u32>(global2.c.c.x, 38158u, 1640u, global2.d), vec4<u32>(global0.d.x, 0u, global0.d.x, global0.d.x)), func_1(global2.b.c), global0.b && true, Struct_2(var_0.a.x, Struct_1(vec3<i32>(var_0.a.x, 28674i, 1i), global2.b.b, vec3<u32>(41232u, global0.c.x, global0.d.x), global0.d, -270f), global2.c, 1u, u_input.a.yy)).d.x, min(var_0.d.x, abs(global0.c.x))), select(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.x, global2.c.c.x), vec2<u32>(global2.c.d.x, 1u))), vec2<u32>(abs(global0.c.x), ~5438u), true), func_1(abs(global2.c.c) ^ _wgslsmith_mult_vec3_u32(var_0.c, var_0.c)).b.e), ~abs(_wgslsmith_add_u32(global0.c.x ^ global0.d.x, ~1u)), u_input.a.yy);
    global2 = func_1(vec3<u32>(global0.c.x, var_0.d.x, ~35167u));
    var var_1 = _wgslsmith_dot_vec2_u32(global0.c.yx, max(func_5(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(global2.a, u_input.a.x, 0i), vec3<i32>(8164i, u_input.a.x, var_0.a.x)), true, ~global2.c.c, ~var_0.d, var_0.e)).d, select(vec2<u32>(0u, firstTrailingBit(39294u)), vec2<u32>(~global0.c.x, 5543u << (global0.c.x % 32u)), !select(vec2<bool>(true, false), vec2<bool>(false, true), global0.b))));
    var var_2 = true != global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0.c).b.d.x, min(var_0.d.x << (29522u % 32u), countOneBits(~(6314u & var_0.d.x))));
}

