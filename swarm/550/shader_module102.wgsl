struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(1u, 0u, 1u)), Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(13087u, 48442u, 30174u)), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(20143u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(true, false, false, true), vec3<u32>(52303u, 33741u, 30211u)), Struct_1(vec4<bool>(false, true, true, false), vec3<u32>(5882u, 4294967295u, 35927u)), Struct_1(vec4<bool>(false, true, false, true), vec3<u32>(0u, 4294967295u, 4294967295u)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = select(vec3<bool>(~(~27945u) < _wgslsmith_div_u32(1u, _wgslsmith_div_u32(65447u, u_input.c)), !arg_3.a, _wgslsmith_f_op_f32(812f + _wgslsmith_div_f32(-458f, -743f)) > _wgslsmith_f_op_f32(-613f - _wgslsmith_div_f32(arg_3.b.a.x, -1837f))), select(vec3<bool>(arg_1, !global0.x, select(select(true, false, false), all(vec2<bool>(false, arg_1)), true)), arg_3.b.b.a.zww, !all(select(arg_3.b.b.a, vec4<bool>(true, global0.x, false, arg_3.a), vec4<bool>(arg_3.b.b.a.x, arg_3.a, arg_1, false)))), true);
    var var_1 = reverseBits(~reverseBits(_wgslsmith_clamp_u32(firstTrailingBit(50976u), _wgslsmith_clamp_u32(u_input.c, arg_3.b.b.b.x, 1u), arg_3.b.b.b.x)));
    global2 = array<Struct_1, 6>();
    var_1 = firstLeadingBit(_wgslsmith_sub_u32(arg_3.b.b.b.x, arg_3.b.b.b.x));
    var var_2 = u_input.d.ywx << (arg_3.b.b.b % vec3<u32>(32u));
    return select(var_0.zy, select(select(vec2<bool>(global0.x, false), select(select(vec2<bool>(var_0.x, arg_3.a), var_0.xy, vec2<bool>(true, false)), select(vec2<bool>(true, true), var_0.xx, arg_3.a), arg_3.b.b.a.ww), !select(arg_3.b.b.a.wx, vec2<bool>(true, global0.x), vec2<bool>(true, true))), select(vec2<bool>(all(arg_3.b.b.a.yz), !arg_1), select(select(arg_3.b.b.a.xw, var_0.zz, false), select(arg_3.b.b.a.xy, vec2<bool>(true, false), vec2<bool>(true, arg_1)), !arg_3.a), arg_3.b.b.a.xy), vec2<bool>(arg_1, !arg_1)), arg_3.b.b.a.x);
}

fn func_2(arg_0: f32) -> Struct_4 {
    global0 = select(!vec2<bool>(any(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, global0.x, true, false), vec4<bool>(false, false, global0.x, global0.x))), any(select(vec2<bool>(false, false), vec2<bool>(false, global0.x), true))), select(!(!func_3(u_input.d.yx, global0.x, -548i, Struct_4(global0.x, Struct_2(vec4<f32>(arg_0, 2200f, 1923f, arg_0), Struct_1(vec4<bool>(false, false, global0.x, global0.x), vec3<u32>(u_input.c, 18319u, u_input.c)))))), vec2<bool>(true, all(vec4<bool>(global0.x, false, global0.x, global0.x))), all(!vec4<bool>(global0.x, global0.x, true, false)) & true), !(!vec2<bool>(true, global0.x)));
    var var_0 = Struct_4(global0.x, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -187f, -1000f, 698f))))), global2[_wgslsmith_index_u32(1u, 6u)]));
    global1 = array<Struct_3, 20>();
    var var_1 = var_0.b;
    let var_2 = Struct_4(!all(var_1.b.a.zx), var_0.b);
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> f32 {
    let var_0 = func_2(1000f);
    var var_1 = select(select(!vec2<bool>(any(vec2<bool>(arg_3.x, false)), true), select(vec2<bool>(func_3(vec2<i32>(u_input.a.x, u_input.b), arg_2.x, u_input.a.x, Struct_4(global0.x, Struct_2(var_0.b.a, var_0.b.b))).x, 4294967295u <= u_input.c), vec2<bool>(!var_0.a, any(vec4<bool>(arg_3.x, arg_3.x, true, false))), func_2(_wgslsmith_f_op_f32(sign(1724f))).b.b.a.wz), func_2(-1008f).a), func_3(vec2<i32>(abs(-51943i), i32(-1i) * -3474i), var_0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(min(u_input.a, u_input.d.xz), vec2<i32>(-1i, 0i)), u_input.a), Struct_4(arg_2.x, var_0.b)), false);
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(-2169f)))))).b;
    let var_3 = arg_0.x;
    global0 = arg_2.yx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-306f - -1175f)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> Struct_4 {
    global2 = array<Struct_1, 6>();
    var var_0 = ~firstTrailingBit(~(~(~4294967295u)));
    let var_1 = arg_1.a.x;
    var var_2 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 + _wgslsmith_div_f32(-139f, var_1))))))).b;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(295f - arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(804f))));
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1080f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1846f, 406f, -1000f, 1048f) + vec4<f32>(476f, 687f, -2318f, -528f))))))));
    global0 = !(!vec2<bool>(global0.x || select(global0.x, true, global0.x), (false || global0.x) || true));
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(1u, ~(~u_input.c), _wgslsmith_add_u32(u_input.c, ~1u) >> (u_input.c % 32u))), 20u)];
    let var_2 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec4<f32>(var_1.d.a.x, var_1.d.a.x, var_1.d.a.x, 1000f), var_0.ww, vec3<bool>(var_1.a.b.a.x, false, false), var_1.a.b.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_1.d.a.x) + _wgslsmith_f_op_f32(-var_1.d.a.x)), var_1.d.a.x), var_0.x, -945f), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + 124f))).b, ~reverseBits(-942i), -countOneBits(abs(abs(u_input.d))));
    let var_3 = true | var_1.d.b.a.x;
    var var_4 = select(-u_input.d, -u_input.d, var_1.d.b.a);
    var var_5 = func_4(vec4<f32>(-464f, -400f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f * _wgslsmith_f_op_f32(sign(var_1.d.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.a.x), var_1.d.a.x, var_2.b.b.a.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.a.x + -1061f))))), var_1.d, _wgslsmith_dot_vec4_i32((vec4<i32>(-1i) * -u_input.d) | _wgslsmith_clamp_vec4_i32(u_input.d, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_4.x, var_4.x, 1i), vec4<i32>(u_input.a.x, u_input.d.x, 1i, var_4.x)), -vec4<i32>(-16690i, var_4.x, var_4.x, -1i)), u_input.d), u_input.d).b;
    var var_6 = var_5.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(-1i, 0i, 20944i, u_input.b)), -vec4<i32>(var_4.x, 2147483647i, var_4.x, var_4.x)) << (abs(~(vec4<u32>(37182u, 113870u, var_2.b.b.b.x, var_1.b.x) ^ vec4<u32>(3618u, 4294967295u, 46371u, 4294967295u))) % vec4<u32>(32u)), 1292f, countOneBits(var_4.zx));
}

