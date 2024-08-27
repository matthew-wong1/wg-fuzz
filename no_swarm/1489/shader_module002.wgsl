struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global0 = arg_3;
    global0 = Struct_1(arg_2.a, -1992f, true, select(select(select(global0.d, vec3<bool>(false, true, false), !arg_2.d), !global0.d, vec3<bool>(arg_2.c & true, arg_3.e.x, true)), !global0.d, arg_3.d), select(select(vec2<bool>(true, true), !vec2<bool>(false, arg_2.c), !arg_0), select(select(!vec2<bool>(arg_0, false), select(vec2<bool>(global0.c, true), vec2<bool>(arg_3.e.x, false), arg_3.d.xz), arg_3.a >= -1i), !arg_3.e, !vec2<bool>(false, global0.d.x)), -22781i > -global0.a));
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_sub_i32(1i, ~29547i);
    var_1 = -(i32(-1i) * -2147483647i);
    return !arg_3.d;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(u_input.b.x, -353f, true && global0.e.x, select(!func_3(select(true, false, true), _wgslsmith_div_vec4_u32(u_input.c, u_input.c), Struct_1(653i, -939f, false, global0.d, vec2<bool>(global0.e.x, false)), Struct_1(global0.a, 426f, true, global0.d, global0.d.zz)), !global0.d, !global0.d), vec2<bool>(global0.d.x || select(global0.c | arg_2.x, func_3(true, vec4<u32>(15603u, 71658u, 0u, arg_1.a), Struct_1(u_input.a, 1466f, arg_2.x, global0.d, global0.e), Struct_1(global0.a, -1082f, arg_2.x, vec3<bool>(global0.e.x, arg_2.x, false), vec2<bool>(arg_2.x, arg_2.x))).x, all(vec2<bool>(false, arg_2.x))), arg_2.x));
    var var_1 = var_0;
    var var_2 = Struct_2(1u, var_1.b, ~_wgslsmith_mod_u32(countOneBits(89109u), ~u_input.d) ^ 36108u, 1000f);
    let var_3 = Struct_1(-26033i, 1052f, true, func_3((global0.b <= _wgslsmith_f_op_f32(round(-905f))) & true, vec4<u32>(40678u, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a, 20796u, u_input.c.x), u_input.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_1.c, 23430u), u_input.c.zzy) << (_wgslsmith_mod_u32(var_2.a, 0u) % 32u), var_2.a), var_0, Struct_1(reverseBits(var_0.a), -980f, true | any(global0.d.yz), global0.d, !(!arg_2))), !select(arg_2, select(vec2<bool>(global0.d.x, false), var_0.d.xx, all(vec2<bool>(false, false))), vec2<bool>(any(vec3<bool>(false, false, false)), true)));
    var_1 = var_0;
    return Struct_2(~(firstLeadingBit(_wgslsmith_sub_u32(arg_1.c, u_input.c.x)) | _wgslsmith_div_u32(4294967295u, 45885u >> (u_input.c.x % 32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0, global0.b)))), _wgslsmith_dot_vec2_u32(u_input.c.xw, ~_wgslsmith_clamp_vec2_u32(u_input.c.yx, _wgslsmith_div_vec2_u32(u_input.c.zy, u_input.c.zy), ~u_input.c.wx)), var_1.b);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> bool {
    global0 = arg_1;
    var var_0 = !global0.d;
    let var_1 = vec4<i32>(i32(-1i) * -arg_1.a, firstLeadingBit(reverseBits(max(~u_input.b.x, _wgslsmith_mult_i32(u_input.a, u_input.b.x)))), arg_1.a, min(-firstTrailingBit(u_input.b.x), u_input.b.x));
    var var_2 = firstLeadingBit(vec2<i32>(firstTrailingBit(~u_input.a), 0i) ^ u_input.b);
    var var_3 = Struct_2(_wgslsmith_add_u32(_wgslsmith_clamp_u32(58613u, arg_2, ~u_input.d), 32689u), -435f, ~32336u, _wgslsmith_f_op_f32(-arg_3.d));
    return any(vec2<bool>(false, false));
}

fn func_1() -> vec3<bool> {
    var var_0 = !(!(!vec3<bool>(all(vec4<bool>(false, true, false, global0.c)), global0.d.x, true)));
    let var_1 = Struct_1(u_input.b.x, global0.b, true, select(global0.d, global0.d, true), global0.d.zz);
    var_0 = vec3<bool>(var_0.x, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, -253f, global0.b, var_1.b)), Struct_1((2147483647i << (u_input.d % 32u)) | firstLeadingBit(global0.a), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(step(var_1.b, 1000f)) > 280f, !vec3<bool>(true, global0.e.x, var_1.e.x), var_0.xy), 4294967295u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), Struct_2(firstLeadingBit(u_input.c.x), global0.b, 4294967295u, -890f), select(vec2<bool>(false, true), !var_1.e, select(vec2<bool>(true, false), vec2<bool>(var_1.d.x, false), vec2<bool>(false, true))))), true);
    let var_2 = Struct_2(~(~u_input.c.x ^ 1u), 1425f, ~(_wgslsmith_mod_u32(9605u, ~52994u) ^ ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(961f * -1586f), -1430f)) + var_1.b)));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, 1480f)), vec3<f32>(global0.b, -1000f, 865f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, global0.b, global0.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 714f, var_2.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-222f, var_1.b, -1105f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, -1553f, -1068f), vec3<f32>(-527f, var_1.b, var_2.b))), !func_3(global0.d.x, u_input.c, var_1, Struct_1(10203i, var_1.b, var_0.x, global0.d, vec2<bool>(false, var_1.e.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.b * global0.b), func_2(global0.b, var_2, vec2<bool>(false, var_0.x)).d, -1000f) * vec3<f32>(global0.b, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(global0.b * var_1.b))))));
    return !vec3<bool>(global0.e.x, any(global0.e), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, 1000f, !global0.c, !func_1(), !(!global0.d.zx));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(ceil(-424f)), Struct_2(u_input.d, var_0.b, 35238u, var_0.b), global0.e).b), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(floor(var_0.b))))))) - _wgslsmith_f_op_f32(select(global0.b, global0.b, any(!vec3<bool>(false, global0.d.x, false)))));
    var_0 = Struct_1(max(u_input.b.x, var_0.a), 1739f, global0.c, vec3<bool>(true, var_0.c || global0.c, false), global0.e);
    var var_2 = -(i32(-1i) * -13719i);
    var var_3 = abs(min(~vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, -1i, var_0.a), vec4<i32>(global0.a, var_0.a, global0.a, global0.a)), u_input.b.x ^ 28938i), (_wgslsmith_div_vec3_i32(vec3<i32>(30577i, var_0.a, global0.a), vec3<i32>(global0.a, global0.a, var_0.a)) << (_wgslsmith_div_vec3_u32(u_input.c.xyw, u_input.c.zwx) % vec3<u32>(32u))) & ~countOneBits(vec3<i32>(u_input.b.x, var_0.a, -2147483647i))));
    var var_4 = Struct_1(-_wgslsmith_clamp_i32((0i << (u_input.d % 32u)) & var_0.a, abs(select(2147483647i, u_input.a, true)), _wgslsmith_sub_i32(var_3.x, global0.a)), 1000f, any(!vec3<bool>(!global0.e.x, true, var_0.c)), select(!vec3<bool>(true, true, u_input.c.x >= u_input.d), vec3<bool>(false, !any(var_0.d), true), !(!(var_0.b != var_0.b))), var_0.e);
    var_0 = Struct_1(-17668i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(ceil(-552f)))), any(func_3(any(!vec4<bool>(var_4.d.x, true, true, true)), max(u_input.c, u_input.c), Struct_1(global0.a, _wgslsmith_f_op_f32(-global0.b), true, !vec3<bool>(var_4.d.x, global0.d.x, var_4.c), select(var_0.e, vec2<bool>(true, true), var_0.d.yx)), Struct_1(global0.a, -269f, all(vec4<bool>(false, global0.c, true, var_4.e.x)), global0.d, vec2<bool>(true, false)))), select(func_3(true, u_input.c, Struct_1(var_0.a, _wgslsmith_f_op_f32(var_0.b - global0.b), !var_4.e.x, vec3<bool>(true, false, true), func_1().yx), Struct_1(_wgslsmith_sub_i32(var_3.x, 51526i), var_0.b, var_0.e.x, global0.d, global0.e)), func_1(), vec3<bool>(all(!global0.d.zz), var_4.d.x, any(vec3<bool>(false, true, true)) & var_4.e.x)), vec2<bool>(true, !(!global0.d.x || false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(global0.a, var_3.x)), _wgslsmith_add_i32(1i, var_0.a), 30602i), ~countOneBits(firstLeadingBit(vec3<i32>(u_input.a, 42783i, var_3.x)))), var_0.b);
}

