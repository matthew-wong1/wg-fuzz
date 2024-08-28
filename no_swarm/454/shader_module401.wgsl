struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(4294967295u, vec3<bool>(false, false, false)), Struct_2(36524u, vec3<bool>(false, true, false)), Struct_2(1u, vec3<bool>(false, false, false)), Struct_2(1u, vec3<bool>(true, false, false)), Struct_2(0u, vec3<bool>(true, true, false)), Struct_2(0u, vec3<bool>(false, true, false)), Struct_2(6175u, vec3<bool>(true, false, false)), Struct_2(34692u, vec3<bool>(true, false, false)), Struct_2(4294967295u, vec3<bool>(true, false, false)), Struct_2(69320u, vec3<bool>(true, false, false)), Struct_2(1u, vec3<bool>(true, false, true)), Struct_2(4294967295u, vec3<bool>(false, true, false)), Struct_2(4294967295u, vec3<bool>(true, true, false)), Struct_2(87849u, vec3<bool>(true, false, false)), Struct_2(0u, vec3<bool>(false, true, false)), Struct_2(4294967295u, vec3<bool>(false, true, false)), Struct_2(15348u, vec3<bool>(false, false, true)), Struct_2(1u, vec3<bool>(true, false, true)), Struct_2(45630u, vec3<bool>(false, false, false)));

var<private> global3: Struct_2 = Struct_2(1u, vec3<bool>(true, false, false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>) -> u32 {
    let var_0 = true;
    global3 = Struct_2(~39269u, arg_1);
    let var_1 = arg_0;
    global3 = global2[_wgslsmith_index_u32(global3.a, 19u)];
    global2 = array<Struct_2, 19>();
    return global3.a;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = vec2<u32>(global3.a, _wgslsmith_clamp_u32(76161u, func_3(_wgslsmith_f_op_vec3_f32(sign(arg_1.xyx)), global3.b), 23551u)) >> (vec2<u32>(9918u, ~abs(~84564u)) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.xy, arg_1.zx, global3.b.zz)) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, arg_1.x) - vec2<f32>(231f, 601f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1389f, -1000f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 399f)))))));
    var var_1 = Struct_1(false, u_input.a.x, !select(!(!vec4<bool>(true, global3.b.x, global3.b.x, global3.b.x)), vec4<bool>(global3.b.x, global3.b.x, global3.b.x, true), vec4<bool>(false, !global3.b.x, global3.b.x, global3.b.x)));
    global0 = 1i;
    let var_2 = select(select(select(!(!vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.a)), vec4<bool>(!var_1.a, false, all(var_1.c.ww), all(vec2<bool>(global3.b.x, true))), global3.b.x), !(!(!var_1.c)), var_1.c), vec4<bool>(false, !(24878u < var_0.x), all(vec3<bool>(true, global3.b.x, !global3.b.x)), !var_1.c.x), !(arg_1.x > _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return var_1.c.xxx;
}

fn func_1(arg_0: Struct_2) -> bool {
    global3 = Struct_2(_wgslsmith_add_u32(~arg_0.a, 1u), !func_2(min(23725i, -2147483647i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, 2494f, global1.x, 138f) - vec4<f32>(-227f, global1.x, global1.x, global1.x)))), u_input.a));
    let var_0 = abs(0u ^ (4294967295u >> (global3.a % 32u)));
    global2 = array<Struct_2, 19>();
    let var_1 = select(false, abs(max(firstTrailingBit(arg_0.a), 1u)) < ~1u, any(arg_0.b.yy));
    global3 = arg_0;
    return reverseBits(1i) < _wgslsmith_add_i32(u_input.a.x, -u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))));
    let var_0 = Struct_1(false, _wgslsmith_add_i32(0i, u_input.a.x), !(!vec4<bool>(arg_2.b.x || false, any(vec2<bool>(false, arg_0.c.x)), global3.b.x, all(vec2<bool>(arg_2.b.x, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), -218f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(ceil(global1.x)), global3.b.x & false))), global1.x));
    var var_2 = arg_2;
    let var_3 = true;
    return Struct_1(!(true & arg_2.b.x), _wgslsmith_clamp_i32(countOneBits(_wgslsmith_mod_i32(u_input.a.x, 0i)), 62587i, -select(1i, -82070i, global3.b.x)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(func_1(Struct_2(_wgslsmith_add_u32(20921u, 1u), !global3.b)), _wgslsmith_mod_i32(countOneBits(u_input.a.x), u_input.a.x), !select(!vec4<bool>(global3.b.x, false, true, false), !vec4<bool>(global3.b.x, global3.b.x, false, false), !vec4<bool>(global3.b.x, global3.b.x, true, global3.b.x))), reverseBits(max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global3.a, 1u, global3.a), vec3<u32>(70905u, 71044u, global3.a), vec3<u32>(global3.a, 1u, global3.a)), ~(~vec3<u32>(4294967295u, global3.a, 4294967295u)))), Struct_2(1u, !select(global3.b, vec3<bool>(global3.b.x, true, global3.b.x), global3.b)), u_input.a.x);
    var var_1 = _wgslsmith_div_u32(1u | (_wgslsmith_mod_u32(global3.a, max(0u, 1u)) & global3.a), 4653u & global3.a);
    var var_2 = !(!(!vec2<bool>(global1.x <= global1.x, !var_0.c.x)));
    let var_3 = _wgslsmith_mod_vec2_i32(~max(-_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(-55172i, u_input.a.x), u_input.a), vec2<i32>(max(var_0.b, var_0.b), -22540i)), ~abs(_wgslsmith_div_vec2_i32(u_input.a >> (vec2<u32>(0u, global3.a) % vec2<u32>(32u)), min(vec2<i32>(-12677i, -1i), u_input.a))));
    let var_4 = firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), min(~abs(vec3<i32>(-2147483647i, var_0.b, var_0.b)), vec3<i32>(-7270i, -15694i, i32(-1i) * -26724i))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a, abs(_wgslsmith_mult_i32(var_0.b, 0i)));
}

