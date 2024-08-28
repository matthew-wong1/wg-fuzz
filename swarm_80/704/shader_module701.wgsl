struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12>;

var<private> global1: array<Struct_3, 19>;

var<private> global2: vec2<i32>;

var<private> global3: vec4<u32>;

var<private> global4: vec3<i32> = vec3<i32>(692i, i32(-2147483648), 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    global2 = vec2<i32>(global2.x, -31933i);
    global3 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    var var_0 = Struct_1(_wgslsmith_clamp_u32(45936u, global3.x, ~u_input.b.x), _wgslsmith_div_vec3_i32(-vec3<i32>(global4.x, 1i, global4.x), -firstLeadingBit(~vec3<i32>(-2147483647i, 0i, -1i))));
    var var_1 = Struct_4(Struct_1(var_0.a, _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(countOneBits(-69i), _wgslsmith_mult_i32(var_0.b.x, -4831i), firstTrailingBit(-38779i)))), 2147483647i, select(vec3<bool>(!any(vec2<bool>(true, arg_1)), any(vec4<bool>(arg_1, arg_1, arg_1, true)) & !arg_1, !any(vec3<bool>(arg_1, arg_1, true))), select(vec3<bool>(true, select(arg_1, true, true), !arg_1), !select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, arg_1), true), vec3<bool>(arg_1, 0i > var_0.b.x, arg_2.x >= 882f)), vec3<bool>(arg_1, !arg_1, true)), _wgslsmith_clamp_u32(~(17416u << (arg_3 % 32u)), ~u_input.c.x | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3, var_0.a, u_input.a, 50079u), vec4<u32>(u_input.b.x, global3.x, 59180u, arg_3)), ~(~u_input.c.x)), (global4.x >= ~(var_0.b.x << (var_0.a % 32u))) | all(select(!vec4<bool>(arg_1, false, false, arg_1), !vec4<bool>(false, arg_1, true, false), true)));
    var var_2 = vec4<i32>(var_0.b.x & -var_0.b.x, _wgslsmith_sub_i32(-select(_wgslsmith_mult_i32(global4.x, 7855i), ~var_1.b, arg_1), 1i), (min(_wgslsmith_add_i32(2147483647i, global2.x), -27710i << (0u % 32u)) >> (~_wgslsmith_add_u32(var_0.a, global3.x) % 32u)) >> (arg_3 % 32u), firstLeadingBit(firstTrailingBit(-max(global2.x, 423i))));
    return 1f;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-880f, arg_0)))), vec2<f32>(_wgslsmith_f_op_f32(select(arg_0, arg_0, arg_1.x)), arg_0)))), !((all(arg_1.yy) && arg_1.x) | all(!vec4<bool>(true, false, arg_1.x, arg_1.x))), vec3<f32>(1000f, arg_0, -1427f), ~(~17907u)));
    var var_1 = arg_1.x;
    var var_2 = _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(u_input.a, _wgslsmith_mult_u32(u_input.c.x, ~global3.x), 42143u, 1u));
    var var_3 = vec3<bool>(!(~global4.x < abs(-53914i)), all(select(!select(vec2<bool>(arg_1.x, false), arg_1.xw, false), arg_1.zy, true)), all(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, false, false), true)) & arg_1.x);
    var_1 = true;
    return Struct_3(_wgslsmith_div_i32(global4.x, ~(~global2.x)));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(global3.xyy, ~global3.xzx), -arg_1.xzw);
    let var_1 = global1[_wgslsmith_index_u32(global3.x, 19u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(124f, -625f, 1079f) - vec3<f32>(260f, 3112f, -274f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(982f)), -254f))));
    var var_3 = true;
    var var_4 = reverseBits(min(27645u, arg_0));
    return !vec2<bool>(true, !any(vec2<bool>(true, false)));
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = !(!func_4(u_input.c.x, reverseBits(~vec4<i32>(29190i, 40190i, 1i, global4.x)), func_2(_wgslsmith_f_op_f32(select(752f, 1270f, true)), vec4<bool>(true, true, true, true))));
    global0 = array<vec4<u32>, 12>();
    let var_1 = _wgslsmith_f_op_f32(-1003f + -1189f);
    var_0 = select(vec2<bool>(false, var_0.x != var_0.x), select(!(!select(vec2<bool>(false, var_0.x), vec2<bool>(true, var_0.x), var_0.x)), vec2<bool>(false, any(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, true, true, true), vec4<bool>(var_0.x, true, true, var_0.x)))), select(vec2<bool>(true, !var_0.x), vec2<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, false, false))), var_0.x)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_0.x), func_4(15244u, vec4<i32>(-2147483647i, global2.x, 1i, global4.x), global1[_wgslsmith_index_u32(arg_0, 19u)]), !vec2<bool>(var_0.x, var_0.x))), true));
    let var_2 = select(select(vec3<i32>(global4.x, global4.x, global2.x), max(vec3<i32>(global2.x, -2147483647i, global2.x), vec3<i32>(global4.x, global4.x, -34307i)), false) >> (~firstTrailingBit(u_input.b.yyw) % vec3<u32>(32u)), reverseBits(~(~vec3<i32>(global4.x, 0i, 2147483647i))), true) >> (_wgslsmith_mod_vec3_u32(~(u_input.b.xzz | u_input.b.wwy), global3.yzw) % vec3<u32>(32u));
    return (i32(-1i) * -min(_wgslsmith_mult_i32(global4.x, 9719i), 2611i)) >> (min(u_input.b.x, reverseBits(0u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(countOneBits(u_input.b.x), ~(~(u_input.c.x << (1u % 32u)))), 17923u), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-394f - -299f))) * _wgslsmith_f_op_f32(f32(-1f) * -1696f)))), func_1(~(~(~u_input.a))), -(~global4.x & -abs(48788i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1179f, 516f, _wgslsmith_f_op_f32(355f + 681f), _wgslsmith_f_op_f32(func_3(vec2<f32>(251f, -634f), true, vec3<f32>(-222f, 194f, 938f), 1u))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1482f, -455f, 2971f, -577f) * vec4<f32>(140f, 378f, -1000f, 1000f))))), vec2<i32>(~(~58603i), -1i));
}

