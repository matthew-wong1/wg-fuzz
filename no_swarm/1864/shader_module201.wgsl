struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, true, true, false, true, false, true, false, false, false, true, true, false, false, true, true, true, false, false, false, false, true, true, false, true, true, true, false);

var<private> global1: bool;

var<private> global2: vec2<i32>;

var<private> global3: bool;

var<private> global4: Struct_4 = Struct_4(vec4<bool>(false, true, true, false), Struct_1(1u, vec4<bool>(false, true, true, true), vec4<i32>(-51632i, 1i, -56868i, 1i), vec3<bool>(false, true, false)), vec2<u32>(4294967295u, 2324u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> bool {
    let var_0 = global4.b;
    global3 = any(vec4<bool>((u_input.c.x > global4.c.x) || any(vec3<bool>(false, false, false)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, ~var_0.a, 0u | var_0.a), 28u)], true, var_0.d.x && true)) | false;
    let var_1 = vec3<bool>(!(!(global4.b.a != abs(31542u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-219f))) < -237f, var_0.b.x);
    var var_2 = ~vec3<u32>(~1u | firstTrailingBit(min(global4.c.x, 1u)), _wgslsmith_mod_u32(~var_0.a, max(~u_input.b, 4294967295u)), ~(~_wgslsmith_mult_u32(10183u, u_input.b)));
    var var_3 = Struct_1(11773u, global4.b.b, vec4<i32>(abs(_wgslsmith_add_i32(var_0.c.x, var_0.c.x) & _wgslsmith_div_i32(-37871i, global4.b.c.x)), -15056i, global4.b.c.x, 2147483647i), var_1);
    return var_0.d.x;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global1 = (true || !global4.a.x) | true;
    var var_0 = Struct_2(Struct_1(global4.b.a, global4.b.b, vec4<i32>(2147483647i, -62624i, 0i & _wgslsmith_div_i32(global4.b.c.x, arg_0.a), _wgslsmith_mod_i32(reverseBits(-15529i), 10761i)), select(global4.a.wyz, !global4.a.zyw, !vec3<bool>(true, global4.b.d.x, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 1000f) + vec3<f32>(-146f, 152f, -263f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-931f, -497f, -470f), vec3<f32>(-863f, 873f, -1000f))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(653f, 1372f, 1080f), vec3<f32>(1549f, 1000f, 832f)) - vec3<f32>(1f, 1f, 1f))))), vec3<i32>(1i, 8500i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -24560i, global4.b.c.x, global4.b.c.x) << (select(u_input.c, u_input.c, vec4<bool>(global4.a.x, global4.a.x, true, true)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(global4.b.c, vec4<i32>(global4.b.c.x, global4.b.c.x, arg_0.a, 21640i)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(~countOneBits(u_input.a), ~_wgslsmith_add_vec3_u32(vec3<u32>(40661u, global4.b.a, global4.b.a), u_input.c.wyw)), global4.a, var_0.a.c, select(var_0.a.b.zwz, vec3<bool>(any(vec4<bool>(false, var_0.a.b.x, global0[_wgslsmith_index_u32(global4.b.a, 28u)], false)), func_3(), var_0.a.b.x), var_0.a.d)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -749f), 870f, 2275f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-268f, 106f, 102f), var_0.b))))), _wgslsmith_div_vec3_i32(var_0.a.c.wxy, var_0.c));
    let var_2 = ~vec3<u32>(17879u, ~_wgslsmith_div_u32(u_input.a.x >> (var_0.a.a % 32u), ~var_0.a.a), 15979u);
    let var_3 = select(vec4<bool>(false & global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 56395u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a.a), var_2.zx) % 32u), 28u)], all(var_0.a.b.wx), true, all(!(!vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.a, 28u)], false, false)))), var_0.a.b, !var_1.a.b);
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    var var_0 = Struct_1(~(~1u), arg_2.a, ~vec4<i32>(-2147483647i, arg_2.b.c.x, global4.b.c.x, 0i), !vec3<bool>(true, global4.b.d.x, any(select(arg_2.a.wxy, arg_2.a.yzw, true))));
    let var_1 = Struct_2(global4.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-329f, -858f) * _wgslsmith_f_op_f32(f32(-1f) * -1199f)), -1901f, _wgslsmith_f_op_f32(floor(-812f)))), reverseBits(arg_2.b.c.wxw));
    var var_2 = global4.b;
    let var_3 = global4.b.c.x;
    var var_4 = Struct_4(select(vec4<bool>(true, true & (true && global4.b.b.x), true, !var_2.b.x), vec4<bool>(var_2.d.x, true, func_3(), true), global4.b.b), arg_2.b, select(countOneBits(vec2<u32>(0u >> (global4.b.a % 32u), 0u)), ~(~max(vec2<u32>(1u, u_input.c.x), arg_2.c)), arg_2.b.d.xz));
    return _wgslsmith_sub_u32((firstTrailingBit(~arg_2.b.a) ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(29091u, 39362u, global4.c.x), vec3<u32>(0u, 4294967295u, var_4.c.x)) ^ var_2.a)) & _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, ~u_input.a.x), ~4238u), select(~abs(_wgslsmith_add_u32(var_2.a, 31623u)), ~global4.b.a, true));
}

fn func_1() -> i32 {
    let var_0 = global4.a;
    var var_1 = vec2<u32>(_wgslsmith_div_u32(func_4(true, func_2(Struct_3(-22079i)), Struct_4(vec4<bool>(true, true, global4.b.b.x, false), global4.b, firstTrailingBit(u_input.a.zz))), u_input.d.x), 0u);
    let var_2 = Struct_4(select(!(!select(vec4<bool>(global4.b.d.x, global4.a.x, global0[_wgslsmith_index_u32(61711u, 28u)], var_0.x), vec4<bool>(false, false, var_0.x, false), vec4<bool>(global4.b.d.x, global4.b.b.x, var_0.x, var_0.x))), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, global4.b.d.x), var_0.x), global4.b, u_input.d);
    var var_3 = func_2(func_2(Struct_3(2147483647i)));
    var var_4 = u_input.a;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.b.d.xx;
    global1 = 53303i < (i32(-1i) * -func_1());
    global4 = Struct_4(!global4.a, Struct_1(0u, vec4<bool>(!(false || global0[_wgslsmith_index_u32(global4.b.a, 28u)]), all(!global4.a), true, 39985i < func_1()), vec4<i32>(firstLeadingBit(global2.x >> (0u % 32u)), _wgslsmith_mod_i32(reverseBits(-26762i), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global4.b.c.x, global4.b.c.x, global4.b.c.x), global4.b.c), global2.x), select(global4.a.wyy, global4.b.b.www, false)), vec2<u32>(4294967295u, reverseBits(~countOneBits(global4.b.a))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1243f, -191f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-237f, -115f), vec2<f32>(370f, 752f), false))))))));
    global0 = array<bool, 28>();
    global1 = !(firstLeadingBit(u_input.d.x) < global4.c.x);
    var var_2 = Struct_4(select(select(global4.b.b, vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(47748u & u_input.a.x, 28u)], var_1.x < var_1.x, var_0.x || var_0.x), false), global4.a, global4.a.x), Struct_1(~max(1u, 41145u) >> (1u % 32u), select(vec4<bool>(select(true, global0[_wgslsmith_index_u32(u_input.b, 28u)], global4.a.x), global4.b.b.x, global0[_wgslsmith_index_u32(global4.c.x, 28u)], any(vec3<bool>(global4.a.x, false, false))), select(vec4<bool>(false, global4.a.x, global4.b.d.x, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global4.b.d.x, global4.a.x), vec4<bool>(global4.b.d.x, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global4.a.x, var_0.x, false)), select(global4.b.b, global4.b.b, vec4<bool>(true, global4.b.b.x, true, global0[_wgslsmith_index_u32(26588u, 28u)]))), true), -vec4<i32>(global2.x | global2.x, global4.b.c.x ^ 2147483647i, global2.x | global2.x, global2.x), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(40502u, 28u)], var_0.x), global4.a.yyw, global4.a.x))), ~select(global4.c & ~vec2<u32>(global4.b.a, u_input.a.x), u_input.e, global4.b.b.xx));
    let var_3 = ~_wgslsmith_sub_vec2_u32(global4.c, _wgslsmith_mult_vec2_u32(~(~u_input.c.wz), _wgslsmith_div_vec2_u32(~global4.c, ~u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(global4.b.c.x);
}

