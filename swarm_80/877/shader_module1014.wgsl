struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global0 = arg_2;
    var var_0 = select(!arg_2.b, global0.b, !(!vec4<bool>(u_input.d.x == -2147483647i, !global0.b.x, true && arg_2.b.x, arg_2.b.x)));
    var var_1 = ~firstTrailingBit(-1i);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-767f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1377f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1385f)) - _wgslsmith_f_op_f32(f32(-1f) * -1187f))))));
    var var_3 = select(var_0.zx, vec2<bool>(true, true), true);
    return vec4<bool>(true, true, global0.b.x, global0.b.x);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<i32>) -> vec4<bool> {
    global0 = Struct_1(select(true, !(!global0.a && true), !(_wgslsmith_mult_i32(-45154i, 1i) == (-3292i ^ u_input.c))), global0.b);
    global0 = Struct_1(true, select(global0.b, select(!(!global0.b), global0.b, func_3(Struct_2(vec3<u32>(arg_1, arg_1, 4294967295u), vec4<u32>(26450u, 0u, 34193u, arg_1)), Struct_2(vec3<u32>(arg_1, arg_1, 1u), vec4<u32>(arg_1, 41343u, arg_1, 0u)), Struct_1(false, global0.b))), !global0.b.x));
    let var_0 = vec3<i32>(-10849i, countOneBits(u_input.d.x), _wgslsmith_clamp_i32(arg_2.x, u_input.c, -2147483647i));
    global0 = Struct_1(any(global0.b), global0.b);
    global0 = Struct_1(true, vec4<bool>(global0.b.x && global0.b.x, true, max(1u, _wgslsmith_mult_u32(arg_1, 42534u)) < ~76564u, false));
    return vec4<bool>(global0.b.x, arg_1 <= abs(arg_1), global0.b.x, !all(!(!vec4<bool>(global0.b.x, global0.b.x, true, global0.b.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = Struct_1(global0.a, global0.b);
    global0 = Struct_1(false, vec4<bool>(any(global0.b.yzx), true, select(true, true, true), true));
    let var_0 = 1057f;
    global0 = Struct_1(any(vec2<bool>(true, !(!global0.b.x))), vec4<bool>(false, any(!global0.b), arg_2, (max(36887i, 4462i) == u_input.e) || true));
    global0 = Struct_1(true, vec4<bool>(!any(func_2(-1374f, arg_1.b.x, vec2<i32>(u_input.c, u_input.c))), var_0 <= var_0, arg_2, global0.b.x && (true != !global0.a)));
    return Struct_1(any(vec4<bool>(!arg_2, all(global0.b.xxz), arg_2, !global0.a)) || (select(~u_input.e, -7877i, arg_0 != arg_0) <= _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, 49008i), u_input.d.zz), abs(vec2<i32>(u_input.c, 36697i)))), !select(select(select(global0.b, global0.b, global0.b), vec4<bool>(true, global0.a, false, arg_2), global0.b), vec4<bool>(any(vec4<bool>(true, arg_2, false, global0.b.x)), false, arg_1.b.x < 7369u, true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~38103u, Struct_2(firstTrailingBit(~vec3<u32>(1u, 0u, 1u)), countOneBits(vec4<u32>(1u, 1u, 1u, 1u) & select(vec4<u32>(0u, 1u, 16459u, 0u), vec4<u32>(77250u, 31788u, 0u, 0u), global0.b))), all(global0.b.wwz) && global0.a);
    var var_0 = Struct_3(false, u_input.d.x >> ((_wgslsmith_mult_u32(0u, 4294967295u) >> (_wgslsmith_clamp_u32(0u, 0u, firstLeadingBit(38616u)) % 32u)) % 32u), true);
    let var_1 = max(u_input.d, -select(firstLeadingBit(u_input.d) << (~vec3<u32>(5047u, 0u, 4294967295u) % vec3<u32>(32u)), -u_input.d, vec3<bool>(true, false, global0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(0u), _wgslsmith_mult_u32(min(4294967295u, abs(25136u)), abs(_wgslsmith_clamp_u32(208u, 59515u, 32586u))), ~select(abs(1u), 7172u, all(global0.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(41396u, 6631u, min(631u, 4294967295u), 1u), vec4<u32>(1u, 1u, 1u, 1u))), u_input.a.zz);
}

