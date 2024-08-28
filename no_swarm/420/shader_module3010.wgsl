struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_3,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-66370i, 0i, 0i);

var<private> global1: array<vec3<i32>, 29>;

var<private> global2: array<Struct_3, 23>;

var<private> global3: array<Struct_2, 6>;

var<private> global4: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> bool {
    global2 = array<Struct_3, 23>();
    let var_0 = arg_0;
    let var_1 = vec2<i32>(u_input.a, abs((i32(-1i) * -global0.x) >> (1u % 32u)));
    var var_2 = ~firstTrailingBit(vec3<u32>(1u, u_input.b.x >> (5747u % 32u), 0u));
    var var_3 = u_input.b.x <= _wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)));
    return true;
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_i32(abs(global1[_wgslsmith_index_u32(~countOneBits(4294967295u), 29u)]) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -global0.x, _wgslsmith_div_i32(u_input.a, 2147483647i)), vec3<i32>(abs(u_input.a), global0.x, 2147483647i)), abs(vec3<i32>(_wgslsmith_mod_i32(0i, -global0.x), -22011i, -9890i)));
    let var_1 = Struct_5(Struct_2(select(!select(arg_2.a, vec3<bool>(true, arg_2.a.x, arg_2.a.x), false), vec3<bool>(arg_2.a.x, all(vec4<bool>(true, true, true, false)), true & arg_2.a.x), arg_2.a), abs(select(~vec3<u32>(99971u, arg_2.b.x, 4294967295u), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), arg_2.a.x))), Struct_4(u_input.b, u_input.b, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_2.b, u_input.b.yzx), arg_1 >> (64752u % 32u)), u_input.b.x), 23u)], any(select(arg_2.a, arg_2.a, arg_2.a.x)), Struct_1(firstTrailingBit(-14970i))), 0u);
    global0 = global1[_wgslsmith_index_u32(select(4294967295u, abs(~(~arg_1 & u_input.b.x)), !var_1.b.d), 29u)];
    var var_2 = var_1.b.c.d;
    global3 = array<Struct_2, 6>();
    return 1u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global3 = array<Struct_2, 6>();
    var var_0 = global3[_wgslsmith_index_u32(~(~max(func_3(vec3<f32>(169f, 1741f, 1571f), 4294967295u, Struct_2(vec3<bool>(true, false, true), u_input.b.yzz)) | u_input.b.x, 4294967295u)), 6u)];
    global1 = array<vec3<i32>, 29>();
    global2 = array<Struct_3, 23>();
    global1 = array<vec3<i32>, 29>();
    return Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(global0.xy, select(global0.xx, vec2<i32>(-2147483647i, u_input.a), vec2<bool>(false, false)))), ~_wgslsmith_clamp_vec2_i32(global0.yx, ~vec2<i32>(u_input.a, global0.x), min(global0.zy, vec2<i32>(0i, u_input.a)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec4<bool> {
    var var_0 = ~(~firstTrailingBit(~abs(arg_3)));
    let var_1 = arg_1.a;
    let var_2 = firstLeadingBit(i32(-1i) * -_wgslsmith_mult_i32(1i, u_input.a));
    var var_3 = _wgslsmith_f_op_f32(round(-792f));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(496f * _wgslsmith_f_op_f32(round(682f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f + 492f) - _wgslsmith_f_op_f32(floor(2823f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1002f)), _wgslsmith_f_op_f32(-199f - -120f)))), _wgslsmith_f_op_f32(ceil(1230f)));
    return !select(select(vec4<bool>(true, any(vec2<bool>(true, arg_2.a.x)), any(vec3<bool>(false, true, arg_0)), false), select(vec4<bool>(arg_0, false, arg_0, true), select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_2.a.x, arg_2.a.x), vec4<bool>(true, false, false, true)), arg_2.a.x && arg_2.a.x), select(!vec4<bool>(true, arg_0, false, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_0, false, false), arg_0)), select(vec4<bool>(true, 1u > u_input.b.x, arg_2.a.x, any(vec4<bool>(arg_2.a.x, true, true, arg_0))), !vec4<bool>(false, true, arg_0, false), !all(arg_2.a)), !(!arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(-2147483647i, u_input.a, -18907i, _wgslsmith_sub_i32(global0.x, u_input.a)), vec4<i32>(u_input.a, global0.x, global0.x, 21208i), select(!vec4<bool>(true, func_1(Struct_1(0i)), true, true), select(func_4(all(vec3<bool>(true, true, true)), func_2(Struct_1(-2147483647i)), global3[_wgslsmith_index_u32(~u_input.b.x, 6u)], 4294967295u), vec4<bool>(true, true, true, true), all(vec2<bool>(false, false))), func_4(true, func_2(func_2(Struct_1(32746i))), Struct_2(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), u_input.b.wwy), u_input.b.x)));
    var var_1 = vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(904f, -791f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-222f * 893f))))), 2040f));
    global2 = array<Struct_3, 23>();
    var var_2 = !(!select(func_4(true, func_2(Struct_1(-23888i)), global3[_wgslsmith_index_u32(abs(2847u), 6u)], 1u), !func_4(false, Struct_1(2147483647i), global3[_wgslsmith_index_u32(u_input.b.x, 6u)], 38347u), vec4<bool>(true, true, true, true)));
    global4 = false;
    let var_3 = Struct_2(select(var_2.zww, vec3<bool>(var_2.x, false, !(!var_2.x)), false), u_input.b.wyx);
    let var_4 = vec3<bool>(!any(var_2.xwy), var_2.x, false);
    global3 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2093f, var_1.x, 664f) * vec3<f32>(var_1.x, -1279f, var_1.x))))))), global0.zz, ~var_0.yx, ~max(u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x), u_input.b)), reverseBits(-vec4<i32>(global0.x, global0.x, -45535i, 0i) & vec4<i32>(global0.x | 2147483647i, ~9749i, u_input.a, _wgslsmith_dot_vec3_i32(var_0.xxw, global1[_wgslsmith_index_u32(var_3.b.x, 29u)]))));
}

