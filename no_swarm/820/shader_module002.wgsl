struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-737f - -568f), -231f), vec2<f32>(-444f, 1f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-279f * 1167f), -161f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(182f, 253f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-750f, -203f), vec2<f32>(-1000f, 428f))), false)), !select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)]))))));
    global0 = array<bool, 9>();
    let var_1 = select(select(!vec3<bool>(1775f > var_0.x, true, global0[_wgslsmith_index_u32(16885u, 9u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 9u)], all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], false)) || (global0[_wgslsmith_index_u32(u_input.e.x, 9u)] || true)), global0[_wgslsmith_index_u32(1u, 9u)]), select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], false))), !vec3<bool>(true, !global0[_wgslsmith_index_u32(0u, 9u)], true), global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), !select(vec3<bool>(false & global0[_wgslsmith_index_u32(0u, 9u)], true, true), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], false, global0[_wgslsmith_index_u32(u_input.e.x, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(9337u, 9u)], global0[_wgslsmith_index_u32(u_input.e.x, 9u)]), false), global0[_wgslsmith_index_u32(u_input.e.x, 9u)]));
    let var_2 = var_1.x;
    let var_3 = (!global0[_wgslsmith_index_u32(u_input.e.x, 9u)] & true) & !any(var_1);
    return select(select(var_1.xy, select(var_1.yx, !vec2<bool>(var_1.x, false), vec2<bool>(true, true)), any(vec3<bool>(true, 0u < u_input.d.x, var_1.x))), var_1.yy, any(select(vec4<bool>(true, var_2 & global0[_wgslsmith_index_u32(u_input.d.x, 9u)], all(var_1.xx), var_2), vec4<bool>(true, var_0.x != 1623f, true, false != var_3), vec4<bool>(var_1.x, true, true, true))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32) -> u32 {
    var var_0 = Struct_3(~arg_0, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(21006u, u_input.d.x, u_input.e.x, u_input.d.x), ~vec4<u32>(27249u, 1u, 32744u, 1u)) ^ select(vec4<u32>(u_input.e.x, u_input.d.x, 4294967295u, u_input.e.x), reverseBits(vec4<u32>(1u, u_input.e.x, 56618u, u_input.d.x)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)], true))), vec4<u32>(u_input.e.x ^ 4294967295u, ~u_input.e.x, 80238u, ~4294967295u) | vec4<u32>(firstLeadingBit(u_input.d.x), max(u_input.e.x, u_input.d.x), reverseBits(u_input.d.x), u_input.d.x)), Struct_1(_wgslsmith_f_op_f32(max(-1182f, _wgslsmith_f_op_f32(-487f + arg_1))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) * _wgslsmith_f_op_f32(-684f * arg_1))), vec4<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, 67300u), 9u)] != func_2(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b)).x, true, !(u_input.e.x >= _wgslsmith_sub_u32(u_input.d.x, 28712u))));
    var_0 = Struct_3(u_input.b.wy, var_0.b, var_0.c, var_0.d);
    let var_1 = Struct_5(u_input.d.zx, firstLeadingBit(~countOneBits(_wgslsmith_add_vec2_i32(u_input.c.zz, vec2<i32>(2147483647i, -54443i)))), ~select(24751u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.e.x, 4107u), abs(30299u)), any(!var_0.d)), -var_0.a.x);
    let var_2 = reverseBits(-2147483647i);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, -1066f))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(-arg_1), arg_1)));
    return _wgslsmith_dot_vec2_u32(var_1.a, abs(_wgslsmith_clamp_vec2_u32(firstLeadingBit(reverseBits(var_1.a)), vec2<u32>(select(var_0.b.x, var_1.a.x, true), countOneBits(var_0.b.x)), ~select(vec2<u32>(u_input.d.x, var_0.b.x), vec2<u32>(var_0.b.x, 15070u), global0[_wgslsmith_index_u32(var_0.b.x, 9u)]))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_5) -> vec3<u32> {
    let var_0 = Struct_1(false);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 414f, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, -408f, arg_0.x), vec4<f32>(arg_0.x, -1939f, 1165f, -610f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 854f, arg_0.x, 891f) + vec4<f32>(232f, arg_0.x, arg_0.x, 255f)))))));
    global0 = array<bool, 9>();
    let var_2 = !(!(!func_2(vec4<i32>(14403i, -2147483647i, arg_2.b.x, 0i))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -172f), select(var_2.x, true, arg_2.c <= 103307u) & arg_1)));
    return u_input.d;
}

fn func_1() -> vec4<u32> {
    global0 = array<bool, 9>();
    var var_0 = _wgslsmith_dot_vec3_i32(min(_wgslsmith_div_vec3_i32(-vec3<i32>(31014i, -30364i, u_input.b.x), ~vec3<i32>(u_input.a, u_input.b.x, 13500i)), u_input.c), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, 23562i), u_input.c))) <= u_input.c.x;
    var var_1 = ~u_input.e;
    var var_2 = false;
    var_1 = min(vec3<u32>(u_input.d.x, ~26105u, u_input.d.x), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + -1656f), _wgslsmith_f_op_f32(min(1157f, 1043f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(845f, 266f, 1817f)))), all(!func_2(u_input.b)), Struct_5(vec2<u32>(func_3(vec2<i32>(0i, u_input.a), -1176f), u_input.e.x >> (u_input.e.x % 32u)), ~reverseBits(vec2<i32>(u_input.a, 17783i)), ~_wgslsmith_add_u32(var_1.x, 4294967295u), ~(~u_input.c.x))));
    return select(_wgslsmith_div_vec4_u32(~(~vec4<u32>(73092u, u_input.e.x, 94568u, var_1.x)), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), vec4<u32>(1u, u_input.d.x, 0u, 69884u)), vec4<u32>(u_input.d.x, u_input.d.x, var_1.x, var_1.x) >> (~vec4<u32>(4294967295u, var_1.x, u_input.d.x, 104738u) % vec4<u32>(32u)), false || (true & global0[_wgslsmith_index_u32(42901u, 9u)]))), vec4<u32>(49160u, ~var_1.x, 0u, _wgslsmith_div_u32(select(92720u, var_1.x, global0[_wgslsmith_index_u32(86736u, 9u)]) | ~20523u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.d.x, var_1.x), 4294967295u))), !(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 9u)], true, global0[_wgslsmith_index_u32(5421u, 9u)], global0[_wgslsmith_index_u32(19366u, 9u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(60969u, 9u)], false, global0[_wgslsmith_index_u32(124123u, 9u)]), global0[_wgslsmith_index_u32(1u, 9u)]))));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>) -> StorageBuffer {
    var var_0 = !select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<bool>(false, arg_0), !vec2<bool>(true, global0[_wgslsmith_index_u32(94426u, 9u)])), select(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 9u)], true), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 9u)], true), global0[_wgslsmith_index_u32(arg_1.x, 9u)]), !vec2<bool>(arg_0, global0[_wgslsmith_index_u32(arg_1.x, 9u)]), true), !(!vec2<bool>(true, arg_0))), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 9u)])), vec2<bool>(arg_0, !arg_0));
    let var_1 = -1000f;
    let var_2 = Struct_4(func_3(~u_input.c.zx, 744f), !vec3<bool>(all(!vec3<bool>(arg_0, var_0.x, arg_0)), false, (u_input.d.x == arg_1.x) | !global0[_wgslsmith_index_u32(u_input.e.x, 9u)]), Struct_2(u_input.e.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(341f, var_1, var_1, var_1)))), select(vec4<bool>(arg_0, all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], var_0.x, arg_0)), false, true), select(select(vec4<bool>(true, true, true, arg_0), vec4<bool>(false, global0[_wgslsmith_index_u32(72027u, 9u)], global0[_wgslsmith_index_u32(7957u, 9u)], false), vec4<bool>(false, arg_0, global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.d.x, 9u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 9u)], var_0.x, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 9u)], arg_0, true, arg_0), arg_0), global0[_wgslsmith_index_u32(3951u, 9u)] != global0[_wgslsmith_index_u32(arg_1.x, 9u)]), var_0.x)), _wgslsmith_f_op_f32(sign(-562f)));
    let var_3 = vec3<bool>(!(any(!vec4<bool>(false, false, true, arg_0)) || select(true, true, true)), select(!(!(var_2.a > var_2.c.a)), arg_1.x <= (_wgslsmith_dot_vec3_u32(arg_1.xxx, arg_1.xxw) << (_wgslsmith_add_u32(var_2.c.a, var_2.a) % 32u)), true), any(select(vec4<bool>(!var_2.b.x, any(vec3<bool>(true, true, var_0.x)), true, arg_0), var_2.c.c, vec4<bool>(true, var_2.b.x | true, true, false))));
    var var_4 = var_2.b.x & true;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -703f))), var_1)), func_3(u_input.b.wy, _wgslsmith_f_op_f32(f32(-1f) * -1938f)), u_input.e.x, -(min(~u_input.b.xxz, u_input.b.yxw & u_input.c) ^ _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c.x, 39019i, 19466i)), select(u_input.b.yzy, u_input.c, var_2.c.c.ywx))), var_2.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = array<bool, 9>();
    let var_1 = -1i;
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    let x = u_input.a;
    s_output = func_5(all(!(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(25791u, 9u)])))), _wgslsmith_mult_vec4_u32(func_1() >> ((vec4<u32>(4475u, 4294967295u, 4294967295u, u_input.e.x) ^ vec4<u32>(u_input.e.x, u_input.d.x, 32654u, 68297u)) % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.e.x, u_input.d.x, var_0), vec4<u32>(var_0, var_0, 1u, 21084u)))));
}

