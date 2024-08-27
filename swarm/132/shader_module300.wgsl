struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
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

var<private> global0: array<vec2<bool>, 11>;

var<private> global1: array<vec2<f32>, 4>;

var<private> global2: Struct_4;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = Struct_4(vec3<i32>(7038i, _wgslsmith_clamp_i32(arg_2.b.a, arg_0, _wgslsmith_clamp_i32(-1i, -global2.c, _wgslsmith_sub_i32(arg_0, arg_1))), arg_1), !vec4<bool>(!(!arg_2.a.c.c), global2.b.x, any(global2.b.wyz), arg_2.b.c.b.x < -1005f), 2147483647i, global2.b.x);
    global0 = array<vec2<bool>, 11>();
    global0 = array<vec2<bool>, 11>();
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_clamp_u32(u_input.c.x, ~1826u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(68085u, u_input.c.x), u_input.c.ww), ~1u)), u_input.c.x);
    var var_2 = !select(vec3<bool>(any(!vec2<bool>(global2.b.x, global2.b.x)), global2.d, _wgslsmith_mult_i32(23802i, arg_0) == 1i), global2.b.yxw, true);
    return vec3<f32>(1000f, 944f, _wgslsmith_f_op_f32(abs(arg_2.a.b.b.x)));
}

fn func_2() -> Struct_3 {
    global1 = array<vec2<f32>, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(-countOneBits(global2.c), global2.c, Struct_3(Struct_2(_wgslsmith_mult_i32(global2.a.x, u_input.a), Struct_1(u_input.b.xw, vec2<f32>(-1215f, -1245f), global2.d, global2.b.x), Struct_1(u_input.b.yy, vec2<f32>(901f, 1330f), true, global2.d)), Struct_2(u_input.a << (1u % 32u), Struct_1(vec2<i32>(u_input.b.x, 65790i), vec2<f32>(761f, -987f), true, true), Struct_1(u_input.b.xx, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], false, false))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, 1000f, 1000f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-109f, -1535f, -201f), vec3<f32>(-502f, 1236f, 799f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1085f, 532f, -774f), vec3<f32>(1000f, -1000f, 175f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(383f, -1000f, 274f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(441f, 1547f, -1160f), vec3<f32>(-198f, -1217f, 688f), global2.b.ywy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(808f, 1058f, 1594f) + vec3<f32>(995f, -425f, 629f)))))));
    var var_1 = Struct_5(u_input.b.xz);
    var var_2 = !(!(any(vec2<bool>(false, false)) && (-235f > _wgslsmith_f_op_f32(step(899f, -468f)))));
    let var_3 = Struct_2(2147483647i, Struct_1(min(max(vec2<i32>(-2147483647i, global2.c), firstLeadingBit(vec2<i32>(var_1.a.x, -2147483647i))), vec2<i32>(var_1.a.x, ~(-22932i))), global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(min(u_input.c.x, u_input.c.x), countOneBits(1u))), 4u)], select(global2.b.x, true, all(!global2.b.xwz)), global2.b.x), Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, 2147483647i), ~vec2<i32>(var_1.a.x, -2147483647i)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), true, global2.d));
    return Struct_3(Struct_2(1i, var_3.b, var_3.c), Struct_2(min(-19653i, ~(var_3.c.a.x & 0i)), Struct_1(select(vec2<i32>(-1i, var_3.c.a.x) ^ var_3.c.a, _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.a.x, 1i), var_3.b.a), select(global0[_wgslsmith_index_u32(60057u, 11u)], global2.b.yz, false)), global1[_wgslsmith_index_u32(u_input.c.x, 4u)], !global2.b.x, global2.b.x || select(global2.b.x, var_3.c.c, var_3.b.d)), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(28987i, var_3.a), -vec2<i32>(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_3.c.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1000f))), true, !global2.b.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> Struct_5 {
    global1 = array<vec2<f32>, 4>();
    var var_0 = firstTrailingBit(firstLeadingBit(u_input.c.wy));
    global0 = array<vec2<bool>, 11>();
    var var_1 = Struct_5(select(u_input.b.xw, _wgslsmith_add_vec2_i32(arg_1.a.b.a, vec2<i32>(-55504i, arg_1.b.b.a.x)), true) << (~(~min(vec2<u32>(u_input.c.x, var_0.x), vec2<u32>(0u, 0u))) % vec2<u32>(32u)));
    let var_2 = select(global2.b, !vec4<bool>(true, all(!vec4<bool>(true, false, arg_2, false)), arg_2, arg_1.b.b.d), global2.b);
    return Struct_5(firstLeadingBit(arg_1.a.b.a));
}

fn func_5(arg_0: Struct_5) -> vec2<i32> {
    var var_0 = arg_0;
    global2 = Struct_4(select(firstTrailingBit(firstTrailingBit(global2.a) | _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.c, 7088i, arg_0.a.x), vec3<i32>(-12085i, u_input.b.x, global2.c), global2.a)), vec3<i32>(~arg_0.a.x, ~var_0.a.x, countOneBits(_wgslsmith_clamp_i32(global2.c, arg_0.a.x, 25801i))), global2.b.x), vec4<bool>(all(global2.b.zw), true, true, global2.b.x), _wgslsmith_dot_vec3_i32(global2.a, global2.a), (u_input.c.x >= _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, 0u), u_input.c))) || true);
    global0 = array<vec2<bool>, 11>();
    let var_1 = vec4<i32>(arg_0.a.x, global2.c, arg_0.a.x, u_input.b.x);
    var var_2 = arg_0;
    return -vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_div_i32(-14652i, -1i), -var_0.a.x), func_2().a.a);
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_1(~func_5(func_4(_wgslsmith_f_op_f32(837f - -1000f), func_2(), all(global2.b.zww), -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-230f, _wgslsmith_f_op_f32(233f * 970f)) - global1[_wgslsmith_index_u32(~(u_input.c.x & 84696u), 4u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, -718f))))), all(global2.b.wxx), global2.d | false);
    var var_1 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, -65272i), firstTrailingBit(global2.a)), 0i) >= var_0.a.x;
    var var_2 = vec2<bool>(global2.b.x, !(!global2.d == global2.d));
    var_1 = global2.d;
    var_1 = (_wgslsmith_f_op_f32(f32(-1f) * -400f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x))))) & true;
    return Struct_5(firstTrailingBit(u_input.b.yy) ^ ~abs(select(var_0.a, u_input.b.xx, global2.b.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.b.xw >> (u_input.c.zz % vec2<u32>(32u));
    var var_1 = select(vec3<i32>(u_input.a, var_0.x, 0i), u_input.b.wyx, global2.b.yxz);
    let var_2 = global2.b;
    let var_3 = func_1();
    var_1 = global2.a | (-vec3<i32>(-10649i, 19838i, -83080i) >> (_wgslsmith_sub_vec3_u32(reverseBits(u_input.c.yxy) << (min(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.xzw) % vec3<u32>(32u)), vec3<u32>(u_input.c.x, 4294967295u, countOneBits(u_input.c.x))) % vec3<u32>(32u)));
    global1 = array<vec2<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_i32(var_0.x, ~global2.c)));
}

