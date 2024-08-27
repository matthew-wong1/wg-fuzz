struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_1, 14>;

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> bool {
    global1 = array<Struct_1, 14>();
    var var_0 = Struct_1(_wgslsmith_add_i32(arg_1.x, -15125i), -vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, arg_1.x, u_input.b), vec3<i32>(arg_1.x, arg_1.x, u_input.a.x)), 0i, 2147483647i, 1i), ~(~_wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.d), u_input.d | u_input.d)));
    var var_1 = vec2<i32>(0i & var_0.a, -12746i);
    let var_2 = var_0.a;
    var_1 = vec2<i32>(abs(-60617i), ~var_1.x);
    return arg_0 && global2.x;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global2 = !select(vec4<bool>(func_3(u_input.c != u_input.a.x, vec2<i32>(2147483647i, 1i)), any(vec4<bool>(global0.x, global2.x, false, true)), !global2.x, true), select(!select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, true, global0.x, global2.x), global0.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, global2.x), vec4<bool>(true, false, true, global2.x)), !select(vec4<bool>(global0.x, global0.x, true, global2.x), vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(true, global0.x, false, global0.x))), vec4<bool>(true, func_3(true, u_input.a.zx | vec2<i32>(18189i, 58212i)), true, u_input.a.x == u_input.c));
    global0 = !(!select(select(global2.yw, select(global2.yx, vec2<bool>(false, global2.x), false), !global2.x), select(global2.zy, !global2.xx, !vec2<bool>(true, global2.x)), all(global2.zw) | true));
    global1 = array<Struct_1, 14>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.c, u_input.c), u_input.c << (1u % 32u), u_input.c << (u_input.d.x % 32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -17236i, u_input.c), u_input.a & u_input.a)), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), abs(vec4<i32>(u_input.a.x, 57942i, 0i, -1i))) ^ (min(vec4<i32>(u_input.a.x, u_input.b, 2147483647i, -40726i), vec4<i32>(u_input.c, -37862i, u_input.c, 1i)) ^ -vec4<i32>(7840i, u_input.b, u_input.a.x, -3876i)), _wgslsmith_div_vec4_u32(~select(u_input.d, vec4<u32>(arg_0, 0u, arg_0, arg_0), true), firstTrailingBit(_wgslsmith_sub_vec4_u32(u_input.d, u_input.d)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)), _wgslsmith_f_op_f32(f32(-1f) * -1423f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2824f, -2325f)))), vec4<bool>(global0.x, true, !(select(false, true, global0.x) & true), !(!global2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, -761f, _wgslsmith_f_op_f32(f32(-1f) * -780f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1450f, 646f, 718f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1125f, 1152f, 1210f)))))), global1[_wgslsmith_index_u32(~u_input.d.x, 14u)]);
    var var_1 = var_0.c.x;
    return !select(!(!var_0.c.zwz), global2.zyz, var_0.c.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: i32) -> i32 {
    let var_0 = Struct_2(Struct_1(max(~_wgslsmith_mod_i32(2147483647i, u_input.c), arg_3), vec4<i32>(2147483647i, u_input.b, -33123i, _wgslsmith_mult_i32(max(u_input.b, arg_3), u_input.a.x)), u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-990f, -324f, -1077f), vec3<f32>(828f, 666f, 1000f))))))), select(select(vec4<bool>(arg_2.x, !arg_2.x, !global2.x, arg_2.x), select(vec4<bool>(arg_2.x, true, true, global0.x), !vec4<bool>(true, true, arg_0.x, arg_2.x), any(vec2<bool>(arg_0.x, global0.x))), vec4<bool>(false, arg_1.x >= u_input.d.x, true, true)), vec4<bool>(true, true, global0.x, false), (_wgslsmith_clamp_u32(arg_1.x, 19252u, u_input.d.x) << (16492u % 32u)) >= ~firstTrailingBit(102198u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(723f * -519f), 1f)) * vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-754f, -980f)) * -920f), _wgslsmith_f_op_f32(ceil(260f)))), Struct_1(select(-15520i, min(u_input.b, u_input.a.x), arg_2.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, arg_3, -24723i, arg_3), vec4<i32>(1i, 81179i, u_input.c, u_input.a.x)), u_input.c, ~u_input.a.x, -26748i) >> (~max(u_input.d, vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x)) % vec4<u32>(32u)), vec4<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, 56595u, 15849u), u_input.d.ywz), arg_1.x)));
    global1 = array<Struct_1, 14>();
    global0 = select(!vec2<bool>(_wgslsmith_f_op_f32(sign(824f)) < _wgslsmith_f_op_f32(abs(var_0.b.x)), all(vec4<bool>(global2.x, false, var_0.c.x, global0.x)) | true), vec2<bool>(any(vec4<bool>(global0.x, false, true, true)) || select(arg_2.x, var_0.c.x, any(var_0.c)), any(var_0.c.wyy)), global2.x | any(var_0.c.xzz));
    global1 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(select(arg_3, 1i & (arg_3 << (arg_1.x % 32u)), !(var_0.b.x != var_0.d.x)), _wgslsmith_add_i32(-27620i, ~0i)), 19978i, -15853i);
    return -2147483647i;
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_1, 14>();
    let var_0 = vec3<i32>(u_input.a.x, ~(~1i), -u_input.b);
    var var_1 = global1[_wgslsmith_index_u32(28723u ^ (1u << (~_wgslsmith_mult_u32(u_input.d.x, ~u_input.d.x) % 32u)), 14u)];
    var_1 = Struct_1(_wgslsmith_div_i32(~1i, func_4(select(global2.zzz, vec3<bool>(false, false, global2.x), vec3<bool>(false, global0.x, true)), ~select(var_1.c.wx, u_input.d.wz, false), func_2(~4294967295u), var_0.x ^ min(u_input.a.x, 1i))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(reverseBits(-17334i), var_0.x << (41447u % 32u)), 0i, -32875i, reverseBits(-24040i)), vec4<i32>(u_input.b, var_0.x | (i32(-1i) * -22384i), -46913i, -_wgslsmith_dot_vec2_i32(u_input.a.zx, var_0.yz))), u_input.d);
    let var_2 = Struct_2(Struct_1(1i, -var_1.b, _wgslsmith_mod_vec4_u32(var_1.c, abs(vec4<u32>(17383u, 39302u, 1u, var_1.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(574f, -276f, 658f) * vec3<f32>(-1818f, 1616f, -105f))))), select(select(!select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, global2.x, true)), select(select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global0.x, true, global2.x, true)), select(vec4<bool>(global2.x, false, global2.x, global0.x), vec4<bool>(global0.x, false, global2.x, global2.x), true), true), true), select(!(!vec4<bool>(true, global2.x, false, false)), !vec4<bool>(global2.x, global2.x, global0.x, global2.x), select(select(vec4<bool>(global0.x, global2.x, global2.x, global0.x), vec4<bool>(global0.x, false, global0.x, true), false), vec4<bool>(global2.x, global0.x, true, global2.x), select(vec4<bool>(global2.x, global2.x, global0.x, global2.x), vec4<bool>(true, false, true, global0.x), vec4<bool>(global0.x, false, global0.x, true)))), !vec4<bool>(true, func_2(0u).x, all(global2.xwy), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(278f, -555f, -632f), vec3<f32>(419f, 735f, -137f)), vec3<f32>(-164f, 1369f, -173f), global2.wwz)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-932f, -973f, -887f))))), Struct_1(var_1.b.x, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -var_1.b, var_1.b), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, u_input.d.x, var_1.c.x)), ~vec4<u32>(u_input.d.x, var_1.c.x, var_1.c.x, 4294967295u))));
    return StorageBuffer(abs(var_2.e.b.yx), abs(~(select(4294967295u, var_2.a.c.x, true) << (var_1.c.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(vec4<bool>(false, true, any(global2.wxz), true), !vec4<bool>(global2.x, any(vec3<bool>(global0.x, global0.x, global2.x)), true, global0.x), vec4<bool>(global0.x, global0.x && !global0.x, -5596i < _wgslsmith_mod_i32(u_input.a.x, u_input.c), global2.x & (false && global0.x)));
    let var_0 = firstTrailingBit(reverseBits(~1u));
    var var_1 = u_input.d;
    global1 = array<Struct_1, 14>();
    var var_2 = select(global2.wzw, vec3<bool>(false, (all(global2.wxz) && true) && global0.x, any(select(!global2.wx, global2.wz, global2.wx))), global2.x);
    let var_3 = u_input.d.yz;
    let var_4 = false;
    var var_5 = 1994f;
    var var_6 = false;
    let x = u_input.a;
    s_output = func_1();
}

