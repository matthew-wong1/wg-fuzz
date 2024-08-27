struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: u32;

var<private> global2: array<f32, 28>;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(15403i, -9083i, 2147483647i), vec3<bool>(true, false, false));

var<private> global4: f32 = -1756f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(abs(u_input.e.wx), countOneBits(u_input.e.yx)), global3.a.zx, abs(vec2<i32>(global3.a.x, u_input.e.x))), vec2<i32>(global3.a.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(global3.a.x, -3035i, global3.a.x, u_input.b), vec4<i32>(2147483647i, global3.a.x, -1i, global3.a.x)), u_input.e))), u_input.e, _wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, u_input.c), ~u_input.c), ~u_input.c << (firstLeadingBit(vec4<u32>(u_input.d, u_input.c.x, u_input.a.x, 64711u)) % vec4<u32>(32u)))), Struct_1(vec3<i32>(u_input.b, global3.a.x, u_input.e.x), vec3<bool>(!global3.b.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 5u)] + 111f) != -335f, (u_input.b < u_input.b) && global3.b.x)));
    global1 = var_0.c.x;
    var var_1 = _wgslsmith_clamp_u32(~(_wgslsmith_sub_u32(var_0.c.x, 4294967295u) & _wgslsmith_clamp_u32(firstTrailingBit(1u), 79236u, 1u)), 0u, 0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, ~0u), reverseBits(u_input.c.yyx)) % 32u));
    var var_2 = select(vec4<bool>(!(!(true & global3.b.x)), all(var_0.d.b.xy) && (u_input.d == min(71725u, var_0.c.x)), false, !(var_0.c.x != var_0.c.x)), !vec4<bool>(all(vec4<bool>(true, false, var_0.d.b.x, true)) && true, global3.b.x, var_0.c.x <= countOneBits(4294967295u), true), var_0.d.b.x);
    var var_3 = countOneBits(_wgslsmith_dot_vec2_i32(~u_input.e.yz, select(firstTrailingBit(vec2<i32>(-12126i, u_input.b)), select(global3.a.zy, u_input.e.wz, false), any(vec2<bool>(var_2.x, true))))) >> ((~_wgslsmith_dot_vec4_u32(~vec4<u32>(43192u, var_0.c.x, var_0.c.x, 5139u), var_0.c) & u_input.c.x) % 32u);
    return vec4<u32>((~(~u_input.c.x) | ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 0u), var_0.c.yw)) | var_0.c.x, _wgslsmith_mod_u32(u_input.a.x, ~1u), var_0.c.x, u_input.a.x);
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = ~(~countOneBits(u_input.c.zz));
    let var_1 = Struct_2(global3.a.x, u_input.e, func_3(), Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, u_input.b, 13254i), global3.a), firstLeadingBit(global3.a)), global3.b));
    global2 = array<f32, 28>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 5u)], global0[_wgslsmith_index_u32(34470u, 5u)]))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), 1f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(var_0.x, 28u)])), global2[_wgslsmith_index_u32(38095u, 28u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(94759u, 28u)], global0[_wgslsmith_index_u32(0u, 5u)]) - vec2<f32>(-777f, global2[_wgslsmith_index_u32(var_0.x, 28u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-674f, global2[_wgslsmith_index_u32(124015u, 28u)])), select(vec2<bool>(false, false), vec2<bool>(true, global3.b.x), false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), vec2<f32>(1225f, global2[_wgslsmith_index_u32(12856u, 28u)]), -40489i == var_1.d.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(var_0.x, 28u)], 392f), vec2<f32>(2632f, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]), arg_0.x)))), any(!(!vec4<bool>(global3.b.x, var_1.d.b.x, arg_0.x, var_1.d.b.x))))));
    let var_3 = var_1.d;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-1i, -2147483647i), _wgslsmith_dot_vec4_i32(var_1.b, vec4<i32>(var_1.d.a.x, -2147483647i, 1i, var_1.d.a.x)), var_1.d.a.x) << ((max(u_input.c, u_input.c) | abs(u_input.c)) % vec4<u32>(32u)), vec4<i32>(-10370i, ~(-u_input.b), 1i, u_input.e.x)) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.x, abs(1u)), 86117u) % 32u);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global2 = array<f32, 28>();
    global3 = arg_0;
    let var_0 = Struct_2(2147483647i, vec4<i32>(func_2(global3.b.yz), u_input.b, -4076i, func_2(global3.b.zx)) & vec4<i32>(30092i, u_input.e.x, _wgslsmith_div_i32(arg_0.a.x, i32(-1i) * -2147483647i), firstLeadingBit(_wgslsmith_sub_i32(global3.a.x, -1i))), u_input.c, Struct_1(countOneBits(-(vec3<i32>(41222i, global3.a.x, -2147483647i) | vec3<i32>(15612i, arg_0.a.x, 7933i))), !(!select(global3.b, vec3<bool>(true, true, arg_0.b.x), global3.b.x))));
    let var_1 = var_0.d;
    global0 = array<f32, 5>();
    return Struct_2(arg_0.a.x, -(-var_0.b & reverseBits(var_0.b ^ vec4<i32>(0i, -1i, -1i, -2147483647i))), firstTrailingBit(u_input.c), Struct_1(vec3<i32>(~0i ^ var_1.a.x, 54221i, ~(i32(-1i) * -1i)), global3.b));
}

fn func_4(arg_0: Struct_2) -> u32 {
    var var_0 = func_1(Struct_1(-(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), global3.a) ^ ~vec3<i32>(u_input.e.x, u_input.b, arg_0.d.a.x)), select(vec3<bool>(!arg_0.d.b.x, true, !arg_0.d.b.x), vec3<bool>(any(global3.b), true, true), true))).c.x;
    var_0 = arg_0.c.x;
    global1 = 0u;
    global0 = array<f32, 5>();
    var_0 = 1u;
    return 25374u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~u_input.d), u_input.c.x, select(abs(max(_wgslsmith_dot_vec3_u32(u_input.c.zwx, u_input.c.yzy), u_input.d | u_input.a.x)), func_4(func_1(Struct_1(vec3<i32>(global3.a.x, u_input.e.x, global3.a.x), vec3<bool>(global3.b.x, global3.b.x, global3.b.x)))), (1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.d), vec3<u32>(0u, u_input.c.x, 36597u)) % 32u)) < 10u));
    global1 = _wgslsmith_clamp_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(4294967295u), ~20965u, 4294967295u << (u_input.a.x % 32u)), vec3<u32>(u_input.c.x, 29417u, u_input.a.x) & ~u_input.c.zwz) & 27741u, u_input.c.x);
    global4 = _wgslsmith_f_op_f32(1604f + global2[_wgslsmith_index_u32(76032u, 28u)]);
    let var_1 = Struct_1(vec3<i32>(-min(1i, firstTrailingBit(global3.a.x)), max(_wgslsmith_div_i32(~28656i, u_input.e.x), -2147483647i), firstTrailingBit(_wgslsmith_sub_i32(~u_input.e.x, global3.a.x))), func_1(Struct_1(u_input.e.zzw, global3.b)).d.b);
    var var_2 = func_1(func_1(func_1(Struct_1(min(vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a), var_1.b)).d).d).d;
    var var_3 = ~var_0.yy;
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, 247f, -682f) - vec3<f32>(global0[_wgslsmith_index_u32(1u, 5u)], -1101f, 1506f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(var_3.x, 5u)], -237f))))))))));
    global0 = array<f32, 5>();
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~_wgslsmith_div_i32(~(-17985i), ~var_1.a.x));
}

