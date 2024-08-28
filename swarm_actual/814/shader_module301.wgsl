struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<u32> = vec4<u32>(39333u, 0u, 0u, 0u);

var<private> global2: Struct_2 = Struct_2(vec4<bool>(false, false, false, true), vec2<f32>(1000f, -313f), vec4<bool>(true, true, true, false));

var<private> global3: Struct_2 = Struct_2(vec4<bool>(false, true, true, true), vec2<f32>(718f, -823f), vec4<bool>(false, false, true, false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global2 = Struct_2(select(vec4<bool>(false, false, false, global2.c.x), !global2.c, select(!(!global3.c), vec4<bool>(false, global2.c.x, true, global3.a.x || global3.c.x), vec4<bool>(global0.x & global2.c.x, true | global2.c.x, true, any(vec3<bool>(false, global0.x, false))))), global2.b, !vec4<bool>(global3.a.x, true, false, -u_input.a.x != u_input.b));
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-31363i, _wgslsmith_dot_vec3_i32(u_input.a.xwx, vec3<i32>(0i, u_input.a.x, 41788i)), u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(20437i, u_input.a.x), ~u_input.a.x, -1061i), ~firstLeadingBit(u_input.a.wzx))), global1.xyw | global1.zxy, countOneBits(u_input.a.xy), vec3<bool>(all(vec3<bool>(true, any(vec4<bool>(false, global3.a.x, global2.c.x, global3.a.x)), false)), true, _wgslsmith_f_op_f32(sign(981f)) > global3.b.x));
    var var_1 = Struct_1(u_input.a.xwz, vec3<u32>(_wgslsmith_clamp_u32(global1.x, ~(~0u), 1u), 46422u, var_0.b.x), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.a.x, var_0.a.x), -u_input.a) | u_input.b, _wgslsmith_dot_vec4_i32(~(u_input.a & vec4<i32>(-26707i, -43971i, -2147483647i, -1i)), ~vec4<i32>(4993i, var_0.c.x, -1i, u_input.b))), !global2.a.zzz);
    var var_2 = Struct_2(global3.a, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-201f - _wgslsmith_f_op_f32(-global2.b.x)))), 1603f), select(vec4<bool>(true, !all(var_0.d), _wgslsmith_f_op_f32(select(-421f, global2.b.x, var_0.d.x)) <= _wgslsmith_f_op_f32(max(global3.b.x, global2.b.x)), false), select(select(vec4<bool>(false, global0.x, false, var_1.d.x), vec4<bool>(true, var_0.d.x, true, true), global3.c.x), select(vec4<bool>(var_1.d.x, true, true, global2.a.x), select(vec4<bool>(global0.x, var_1.d.x, var_1.d.x, true), vec4<bool>(var_1.d.x, true, true, false), vec4<bool>(global3.c.x, false, global2.c.x, var_0.d.x)), !global3.a.x), global2.b.x < global3.b.x), !any(!global2.c)));
    let var_3 = ~_wgslsmith_add_i32((i32(-1i) * -var_0.c.x) << ((_wgslsmith_mult_u32(var_0.b.x, global1.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 1u), var_1.b.xy) % 32u)) % 32u), u_input.a.x);
    return global3.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> vec4<u32> {
    global2 = Struct_2(select(vec4<bool>(-63204i <= firstTrailingBit(u_input.b), true, arg_0.x, func_3()), select(!arg_0, select(global3.a, !arg_0, !vec4<bool>(global3.c.x, global2.c.x, true, false)), any(select(global2.c.ww, vec2<bool>(true, global3.a.x), global2.c.x))), global0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.b)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1099f, global3.b.x) * global2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.b.x, -1000f), global2.b, vec2<bool>(global0.x, false))))))), select(select(!global2.a, global2.a, false), select(vec4<bool>(true, true, global1.x == 1u, global1.x < global1.x), !select(global2.c, arg_0, false), global3.c), arg_0));
    let var_0 = Struct_2(!select(!global2.a, !(!vec4<bool>(true, arg_0.x, global3.c.x, true)), any(vec2<bool>(global2.a.x, arg_0.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1458f, arg_1), global2.b)), vec2<f32>(global2.b.x, global3.b.x), global0.x))), global2.b), select(vec4<bool>(true, !global2.a.x, true, any(select(arg_0, vec4<bool>(true, global2.a.x, global2.a.x, global3.c.x), global3.a.x))), vec4<bool>(all(vec4<bool>(false, global3.a.x, false, true)) != all(global2.a), select(true, true, any(vec4<bool>(global0.x, true, false, global0.x))), all(vec3<bool>(true, true, true)), ~u_input.b == u_input.a.x), vec4<bool>(false, global0.x, global0.x, true)));
    let var_1 = 25849i;
    var var_2 = -974f;
    var var_3 = !(!(_wgslsmith_f_op_f32(var_0.b.x * -720f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global3.b.x, arg_0.x)))));
    return _wgslsmith_add_vec4_u32(~vec4<u32>(1u << (1u % 32u), 1u, ~64147u, _wgslsmith_div_u32(global1.x, global1.x)) ^ ~(~vec4<u32>(67324u, global1.x, 39982u, global1.x)), vec4<u32>(~(global1.x >> (0u % 32u)), 1u, _wgslsmith_sub_u32(global1.x, global1.x), 89946u) >> (max(~max(vec4<u32>(global1.x, 22368u, 4294967295u, 1u), vec4<u32>(38898u, 28702u, 60132u, global1.x)), vec4<u32>(_wgslsmith_clamp_u32(global1.x, global1.x, global1.x), 0u, 4294967295u, 111475u)) % vec4<u32>(32u)));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(u_input.a.wzx, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(-2147483647i, 1i)), -2147483647i), -(~(-14667i)))), global1.zxw, vec2<i32>(0i, _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(vec4<i32>(2147483647i, u_input.a.x, -4489i, u_input.b))), u_input.a)), global2.c.wyz);
    global1 = _wgslsmith_mod_vec4_u32(func_2(global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x + -468f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b.x), global3.b.x)))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, 14368u, 58976u, 22027u), countOneBits(vec4<u32>(111624u, var_0.b.x, global1.x, 4294967295u))), vec4<u32>(global1.x >> (34877u % 32u), 0u, 4294967295u, 1u)), vec4<u32>((1u << (var_0.b.x % 32u)) | ~57105u, ~(~global1.x), _wgslsmith_mod_u32(global1.x, 7537u) << (var_0.b.x % 32u), _wgslsmith_mult_u32(abs(1u), var_0.b.x))));
    global1 = ~(vec4<u32>(~0u, 4294967295u, reverseBits(var_0.b.x), global1.x) ^ _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global1.x, global1.x, var_0.b.x, var_0.b.x)), min(vec4<u32>(90697u, global1.x, global1.x, global1.x), vec4<u32>(1u, var_0.b.x, 1u, global1.x)))) | abs(vec4<u32>(abs(global1.x ^ global1.x), 5412u, abs(var_0.b.x), select(4294967295u, var_0.b.x | global1.x, all(global3.c.zwx))));
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(~(var_0.b.x ^ 0u), 41064u) << (~firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.b.xy, vec2<u32>(global1.x, 58723u))) % 32u), ~firstTrailingBit(global1.x), min(9287u, ~countOneBits(global1.x)), _wgslsmith_sub_u32(0u, firstLeadingBit(1u) & _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, 15025u, 0u), vec4<u32>(4294967295u, 0u, 10983u, var_0.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, var_0.b.x, var_0.b.x, global1.x), vec4<u32>(1u, 49875u, global1.x, global1.x)))));
    let var_2 = _wgslsmith_add_vec2_i32(-var_0.a.zz, vec2<i32>(18523i, -1i));
    return select(var_1.x, 11551u, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global3.c, _wgslsmith_f_op_vec2_f32(min(global2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.b.x + -2609f), _wgslsmith_f_op_f32(global2.b.x * global2.b.x))))), vec4<bool>(any(!global2.a), all(global2.a), false, true));
    var var_0 = vec2<i32>(-40770i, 1i);
    var var_1 = 5969u == func_1();
    let var_2 = ~max(~global1.yw, ~vec2<u32>(~0u, ~global1.x));
    global3 = Struct_2(select(vec4<bool>(global0.x, all(!global3.a), true, all(select(vec2<bool>(true, global0.x), global3.a.wx, global3.c.zx))), vec4<bool>(global0.x, -1110f > _wgslsmith_f_op_f32(758f + global3.b.x), true, global3.b.x < -781f), !global3.c), global2.b, select(select(global3.c, !(!vec4<bool>(true, global0.x, global3.a.x, global3.c.x)), true), global2.c, !global2.c));
    let x = u_input.a;
    s_output = StorageBuffer(75152u, 17751u, global2.b.x, _wgslsmith_mod_vec2_u32(global1.zz, var_2), _wgslsmith_f_op_f32(global3.b.x * 1104f));
}

