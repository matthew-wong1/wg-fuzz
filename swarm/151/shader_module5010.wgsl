struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, true, -454f, Struct_2(Struct_1(vec3<u32>(20725u, 1u, 22457u), vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 11229u), vec4<bool>(false, true, false, false))));

var<private> global1: Struct_1;

var<private> global2: i32 = 0i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_3(!global1.b.x, !any(global0.d.a.b.wy), _wgslsmith_f_op_f32(min(-190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), global0.d);
    var_0 = Struct_3(!global0.b, any(global1.b), _wgslsmith_f_op_f32(304f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.c)), 1188f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(559f))))), var_0.d);
    global1 = Struct_1(~_wgslsmith_add_vec3_u32(~firstLeadingBit(global0.d.a.a), firstTrailingBit(var_0.d.a.a)), vec4<bool>(true, !((var_0.a | true) | arg_0.x), (0i >> (global0.d.b.a.x % 32u)) >= ~min(0i, 0i), global0.a));
    global1 = var_0.d.a;
    global1 = Struct_1(max(vec3<u32>(arg_1.x, _wgslsmith_sub_u32(4294967295u, 32323u), ~global0.d.b.a.x), vec3<u32>(0u, u_input.b, abs(global0.d.a.a.x))) >> ((vec3<u32>(~u_input.a, 0u, _wgslsmith_sub_u32(42257u, arg_1.x)) & ~select(vec3<u32>(36999u, arg_1.x, 1u), global1.a, false)) % vec3<u32>(32u)), vec4<bool>(global0.d.a.b.x | true, any(select(select(global0.d.a.b, global1.b, false), var_0.d.a.b, false)), !(!global1.b.x), arg_0.x));
    return vec2<bool>(false, arg_0.x);
}

fn func_2() -> u32 {
    var var_0 = select(global0.d.a.b.xw, select(func_3(!(!vec2<bool>(global0.d.a.b.x, global1.b.x)), vec2<u32>(u_input.a, 13103u) & global0.d.b.a.zz), !global1.b.xy, true), any(global0.d.a.b.wy));
    var var_1 = global1.b.wxw;
    var var_2 = Struct_3(true, false, _wgslsmith_f_op_f32(f32(-1f) * -246f), global0.d);
    var_1 = !global0.d.a.b.zyw;
    let var_3 = global0.c;
    return ~(~0u) & var_2.d.b.a.x;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_4 {
    global0 = Struct_3(any(select(select(vec4<bool>(false, global1.b.x, global0.a, true), select(global0.d.a.b, global0.d.a.b, false), !global0.d.b.b.x), global1.b, false)), global0.d.b.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c * -1269f))), Struct_2(Struct_1(vec3<u32>(func_2(), 139365u, ~4294967295u), global1.b), Struct_1(global1.a, select(!global0.d.a.b, select(global0.d.a.b, global0.d.a.b, global0.d.b.b), vec4<bool>(true, true, true, true)))));
    global0 = Struct_3(false, !(!global0.d.b.b.x == !(!global1.b.x)), _wgslsmith_f_op_f32(-global0.c), Struct_2(Struct_1(~vec3<u32>(global1.a.x, global0.d.b.a.x, 0u), global1.b), global0.d.b));
    let var_0 = vec3<u32>(6399u, firstTrailingBit(~u_input.a), 4294967295u) << (vec3<u32>(~u_input.a, arg_0, 9719u) % vec3<u32>(32u));
    global0 = Struct_3(true, true, 1431f, global0.d);
    global0 = Struct_3(!all(!vec3<bool>(global1.b.x, global1.b.x, global0.d.a.b.x)), !any(select(global1.b.xyz, !global1.b.xzx, global1.b.www)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.c)), global0.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(-1573f - global0.c)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-709f, -1831f, global0.a)), _wgslsmith_f_op_f32(sign(global0.c)))))), global0.d);
    return Struct_4(Struct_3(any(global1.b.zz), global0.d.a.b.x, _wgslsmith_f_op_f32(round(global0.c)), Struct_2(global0.d.a, Struct_1(~vec3<u32>(9617u, var_0.x, 67663u), !global1.b))), ~(firstLeadingBit(-arg_1) & 44680i));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> StorageBuffer {
    global1 = arg_1.a.d.b;
    let var_0 = ~arg_1.b;
    global1 = func_1(1u, arg_2).a.d.a;
    let var_1 = func_1(_wgslsmith_clamp_u32(~global0.d.a.a.x, ~arg_0 >> (~global1.a.x % 32u), ~_wgslsmith_dot_vec2_u32(global1.a.xz, max(global1.a.xx, vec2<u32>(arg_3.b.a.x, 51353u)))), ~min(abs(arg_1.b), 1i) & 1933i);
    let var_2 = vec4<bool>(any(select(arg_1.a.d.a.b.wzw, !(!arg_1.a.d.a.b.xzz), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, arg_2), vec2<i32>(-2147483647i, var_1.b)) < func_1(arg_1.a.d.a.a.x, arg_2).b)), arg_0 != 10521u, global0.c > -1410f, global1.b.x);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-646f, var_1.a.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-996f, -380f)) - vec2<f32>(-363f, var_1.a.c))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.c + -1644f) - -1000f))), _wgslsmith_sub_i32(reverseBits(arg_1.b), ~7678i), ~arg_3.a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -198f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(0u, func_1(global0.d.b.a.x, 1i >> (~(global1.a.x << (u_input.b % 32u)) % 32u)), firstTrailingBit(_wgslsmith_mod_i32(abs(-42184i), reverseBits(_wgslsmith_mult_i32(1i, -2147483647i)))), Struct_2(Struct_1(abs(abs(vec3<u32>(4294967295u, global0.d.a.a.x, 0u))), !func_1(4294967295u, 0i).a.d.a.b), global0.d.b));
}

