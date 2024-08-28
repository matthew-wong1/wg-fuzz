struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<bool>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, -261f);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, -1614f, global0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, -1000f, -1070f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1000f, -470f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, 1025f, global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1492f, global0.x, -977f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.x, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * var_0.x) - 1256f), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -442f, global0.x))))))));
    var var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 20u)];
    let var_2 = u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-398f, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-248f, var_0.x) - -1762f))));
}

fn func_2() -> vec4<u32> {
    var var_0 = vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-840f, global0.x))))), global0.x, -507f);
    var var_1 = 4077i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(sign(global0.x)), abs(~(_wgslsmith_dot_vec2_i32(u_input.d, u_input.d) & firstTrailingBit(u_input.d.x))), ~(~reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), vec2<u32>(u_input.c, u_input.c), u_input.a.zy))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f)))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 9558i, 25182i, var_2.b), _wgslsmith_add_vec4_i32(-u_input.b, u_input.b), false), u_input.b), ~select(vec2<u32>(~6603u, ~u_input.c), vec2<u32>(firstTrailingBit(38636u), u_input.c), 0u >= ~u_input.a.x));
    global3 = array<Struct_1, 20>();
    return ~firstTrailingBit(vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_clamp_u32(0u, 3812u, var_2.c.x), var_2.c.x, _wgslsmith_add_u32(42505u, var_3.c.x))) | vec4<u32>(54625u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, 0u, var_2.c.x, var_2.c.x)), firstTrailingBit(vec4<u32>(4294967295u, 17304u, u_input.c, 1u)) >> (vec4<u32>(1u, var_2.c.x, 10135u, var_3.c.x) % vec4<u32>(32u))), u_input.c, _wgslsmith_dot_vec4_u32(select(vec4<u32>(34256u, u_input.c, var_2.c.x, var_2.c.x), vec4<u32>(57414u, 1u, 4294967295u, 0u), true), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c.x, var_3.c.x, u_input.a.x, 67641u), vec4<u32>(var_2.c.x, var_2.c.x, 5385u, 86229u))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-global0.x);
    global3 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1758f)));
    global2 = u_input.b.x < u_input.d.x;
    var var_2 = _wgslsmith_clamp_vec4_u32(func_2(), vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.zx, min(u_input.a.xx, u_input.a.zy)), 20919u, 11109u, _wgslsmith_mod_u32(~1u, u_input.c)), select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 0u), vec4<u32>(u_input.a.x, u_input.c, u_input.c, 0u)), _wgslsmith_sub_u32(u_input.c, u_input.c), 1u, ~u_input.c), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 87433u)), vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c) << (vec4<u32>(0u, u_input.c, 4294967295u, u_input.a.x) % vec4<u32>(32u))), true)) >> (~(~select(max(vec4<u32>(0u, 1u, u_input.a.x, u_input.c), vec4<u32>(0u, u_input.a.x, u_input.c, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 23717u, 0u, 90293u), vec4<u32>(19653u, 2701u, 17393u, 0u)), !vec4<bool>(global1.x, false, false, true))) % vec4<u32>(32u));
    return Struct_1(-1690f, firstLeadingBit(-_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, u_input.d.x)), -vec2<i32>(u_input.d.x, 33489i))), var_2.zw);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_2.c.x), vec2<u32>(4294967295u, 30921u))), max(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_0, u_input.c)), vec2<u32>(95145u, 0u) | u_input.a.xx)) >> (arg_2.c.x % 32u), ~arg_2.c.x);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -981f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.x)))), _wgslsmith_f_op_f32(-global0.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yx - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1499f, global0.x) * vec2<f32>(-1490f, arg_2.a)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, 2335f, arg_2.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, arg_2.a, -1000f)))))));
    global1 = vec4<bool>(global1.x, true, arg_3.x, false);
    return Struct_1(_wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a))))), func_1().b, ~(~vec2<u32>(arg_2.c.x, arg_1.x)));
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = global1.x;
    global2 = false;
    var var_1 = global0.xz;
    var var_2 = arg_0;
    let var_3 = func_4(func_2().x, countOneBits(abs(~(~u_input.a))), func_1(), vec2<bool>(global1.x, global1.x));
    return vec2<bool>(any(select(select(select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, false, false, false)), !vec4<bool>(global1.x, global1.x, global1.x, false), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, false, false, false), vec4<bool>(global1.x, true, false, global1.x))), select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x), true), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, false, false), true), vec4<bool>(true, true, true, true)), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.a, ~u_input.a, !global1.xxz);
    var var_1 = select(func_5(func_4(var_0.x, ~var_0, func_1(), select(!global1.zz, global1.yy, !vec2<bool>(global1.x, false)))), func_5(global3[_wgslsmith_index_u32(select(min(~0u, 37504u >> (var_0.x % 32u)), _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(var_0.x, u_input.c)), false), 20u)]), global1.yy);
    global2 = var_1.x;
    global3 = array<Struct_1, 20>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 467f, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, -782f, global0.x) + vec3<f32>(global0.x, -797f, -1000f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -681f, global0.x))), vec3<f32>(global0.x, 403f, global0.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, 1139f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -148f, global0.x))))))));
    global3 = array<Struct_1, 20>();
    let var_2 = Struct_1(global0.x, -15312i, vec2<u32>(u_input.c, _wgslsmith_mod_u32(u_input.c, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(401f)) - _wgslsmith_div_f32(1000f, var_2.a)), u_input.b.wxz);
}

