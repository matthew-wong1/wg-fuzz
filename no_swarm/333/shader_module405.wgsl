struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<bool>(false, true, false, true), false), Struct_1(vec4<bool>(true, false, false, false), true), Struct_1(vec4<bool>(false, true, false, false), true), Struct_1(vec4<bool>(false, true, true, true), false), Struct_1(vec4<bool>(true, true, false, false), true), Struct_1(vec4<bool>(true, false, true, false), false), Struct_1(vec4<bool>(true, false, true, true), true), Struct_1(vec4<bool>(false, false, false, false), true), Struct_1(vec4<bool>(false, false, true, false), false), Struct_1(vec4<bool>(false, false, false, false), true), Struct_1(vec4<bool>(false, true, true, true), true), Struct_1(vec4<bool>(true, true, true, true), false), Struct_1(vec4<bool>(true, false, true, true), true), Struct_1(vec4<bool>(false, false, false, true), true), Struct_1(vec4<bool>(true, true, true, false), true), Struct_1(vec4<bool>(false, false, true, true), false), Struct_1(vec4<bool>(false, false, false, false), false), Struct_1(vec4<bool>(false, true, true, true), false), Struct_1(vec4<bool>(false, true, true, false), false), Struct_1(vec4<bool>(true, false, false, false), true));

var<private> global1: u32 = 1u;

var<private> global2: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    global1 = arg_1.x;
    var var_0 = arg_0;
    global1 = u_input.b;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_1, arg_1) ^ (_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, 4294967295u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), min(vec2<u32>(4294967295u, 0u), arg_1)) ^ arg_1), ~arg_1), 20u)];
    var var_2 = Struct_2(arg_0.a.yw, select(1u, ~1u, arg_0.a.x), Struct_1(vec4<bool>(false, !arg_0.a.x, all(vec3<bool>(false, var_1.b, var_1.b)), true), select(true, all(vec2<bool>(true, false)), true) | (-14049i < _wgslsmith_mult_i32(u_input.c.x, u_input.a))), Struct_1(!vec4<bool>(true, true, arg_0.b, true), 64116u <= _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, arg_1.x, arg_1.x, arg_1.x)), ~vec4<u32>(u_input.b, arg_1.x, 4294967295u, 1u))));
    return var_2.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> u32 {
    global1 = arg_0.x | (func_3(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, 307u), 20u)], arg_0.xz >> (vec2<u32>(36088u, 1u) % vec2<u32>(32u))) | func_3(global0[_wgslsmith_index_u32(1u, 20u)], arg_0.zz));
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(trunc(872f));
    global2 = ~(u_input.b << (_wgslsmith_clamp_u32(countOneBits(~50297u), _wgslsmith_sub_u32(69600u, ~u_input.b), arg_0.x) % 32u));
    let var_2 = global0[_wgslsmith_index_u32(~u_input.b << (~67299u % 32u), 20u)];
    return arg_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = 19334u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, 258f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, -1000f)), vec2<bool>(true, arg_2.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1204f, -1000f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(132f, -225f), vec2<f32>(248f, 446f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))));
    let var_2 = arg_0;
    let var_3 = Struct_2(var_2.c.a.yx, u_input.b, global0[_wgslsmith_index_u32(36132u, 20u)], Struct_1(!(!vec4<bool>(true, false, false, arg_0.c.a.x)), true));
    var var_4 = true;
    return _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(-295f))) - 489f) - -527f));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = arg_2;
    var var_1 = Struct_2(arg_2.c.a.yz, 1733u, var_0.c, Struct_1(vec4<bool>(true, !all(var_0.d.a.yw), var_0.c.a.x, !arg_0), var_0.a.x));
    global0 = array<Struct_1, 20>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -522f)) - 433f) + 827f) + _wgslsmith_f_op_f32(func_4(Struct_2(select(select(arg_2.c.a.ww, var_0.c.a.zy, true), !arg_2.d.a.xy, vec2<bool>(var_0.c.b, arg_0)), func_2(vec4<u32>(0u, u_input.b, arg_2.b, var_0.b), vec3<i32>(1i, -21068i, -24722i) << (vec3<u32>(15703u, arg_2.b, arg_2.b) % vec3<u32>(32u))), Struct_1(vec4<bool>(arg_0, var_0.a.x, arg_0, arg_2.d.a.x), 0u <= u_input.b), Struct_1(select(arg_2.c.a, var_1.c.a, vec4<bool>(arg_0, false, true, var_1.c.a.x)), all(var_1.c.a))), var_1.d.b, Struct_1(vec4<bool>(!arg_2.c.a.x, any(vec3<bool>(var_0.a.x, true, true)), false, arg_1), false))));
    global2 = u_input.b;
    return _wgslsmith_mult_i32(u_input.a, -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a) ^ (i32(-1i) * -1i), u_input.c.x, u_input.a));
}

fn func_5(arg_0: vec4<i32>) -> i32 {
    global0 = array<Struct_1, 20>();
    var var_0 = false;
    var var_1 = firstTrailingBit(-_wgslsmith_mod_vec2_i32(arg_0.yz, u_input.c << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(146f, -1511f)), _wgslsmith_div_f32(-1674f, 504f)))))));
    global2 = u_input.b;
    return abs(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_5(reverseBits(vec4<i32>(func_1(true, false, Struct_2(vec2<bool>(false, false), 4294967295u, Struct_1(vec4<bool>(true, false, true, false), false), global0[_wgslsmith_index_u32(u_input.b, 20u)]), -517f), ~23452i, firstTrailingBit(-1i), u_input.c.x ^ -52963i)));
    var var_1 = !(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<bool>(true, false, true)), select(vec3<u32>(u_input.b, 23277u, u_input.b), vec3<u32>(u_input.b, u_input.b, 0u), true)), 39702u) != u_input.b);
    let var_2 = _wgslsmith_sub_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.d, -u_input.c.x, u_input.a)), firstTrailingBit(select(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a), vec3<i32>(0i, 10607i, u_input.a)), vec3<bool>(true, false, true)) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(58190u, u_input.b, u_input.b), vec3<u32>(64881u, u_input.b, u_input.b)) | ~vec3<u32>(45895u, u_input.b, u_input.b)) % vec3<u32>(32u))));
    let var_3 = _wgslsmith_sub_u32(countOneBits(min(~func_3(Struct_1(vec4<bool>(false, true, false, true), false), vec2<u32>(u_input.b, u_input.b)), u_input.b)), u_input.b);
    var var_4 = var_3;
    let var_5 = 1u;
    var var_6 = vec3<u32>(var_5, ~4294967295u, _wgslsmith_mod_u32(reverseBits(func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 23001u, var_3, u_input.b), vec4<u32>(var_3, 15068u, 0u, 3533u)), firstTrailingBit(vec3<i32>(u_input.a, u_input.d, var_2.x)))), ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_3, 37657u), vec2<u32>(var_3, 0u)), ~vec2<u32>(45523u, 15223u))));
    var var_7 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(!all(vec4<bool>(true, true, false, false)), true), false), _wgslsmith_mod_u32(abs(var_3 ^ firstLeadingBit(u_input.b)), var_5 ^ var_3), global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(~4294967295u, 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(select(var_2 << (_wgslsmith_div_vec3_u32(vec3<u32>(14669u, 4294967295u, var_6.x), vec3<u32>(12229u, 0u, var_3)) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(u_input.c.x, 62424i, 55801i) ^ vec3<i32>(-61247i, -1i, var_2.x)), any(var_7.c.a)), var_2), abs(~min(vec4<u32>(520u, 58756u, 9714u, 1u), ~vec4<u32>(0u, 27601u, 65741u, var_6.x))));
}

