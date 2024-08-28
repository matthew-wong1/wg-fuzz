struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: i32;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(4294967295u), Struct_2(12938u), Struct_2(31824u), Struct_2(2270u), Struct_2(24031u), Struct_2(0u), Struct_2(39456u), Struct_2(1u), Struct_2(1u), Struct_2(0u), Struct_2(42473u), Struct_2(1u), Struct_2(1u), Struct_2(1u), Struct_2(65818u), Struct_2(24747u), Struct_2(35978u), Struct_2(1u), Struct_2(0u), Struct_2(89101u), Struct_2(1u), Struct_2(0u), Struct_2(4294967295u), Struct_2(26844u), Struct_2(0u), Struct_2(4294967295u), Struct_2(0u));

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 1u, 1u, 13017u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> bool {
    global1 = i32(-1i) * -1i;
    let var_0 = !select(select(vec2<bool>(true, any(arg_3.a)), vec2<bool>(any(vec2<bool>(true, arg_3.a.x)), arg_0), global0.zy), !(!(!vec2<bool>(true, arg_1.a.x))), true);
    var var_1 = arg_3;
    let var_2 = all(vec3<bool>(true, any(arg_1.a.xw), false));
    global1 = u_input.d;
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = ~arg_1.a;
    global1 = abs(u_input.d);
    let var_1 = Struct_1(select(!vec4<bool>(true, func_3(true, Struct_1(vec4<bool>(global0.x, global0.x, true, global0.x), global4.xyw, vec3<u32>(0u, u_input.b, 4294967295u), -1102f), vec3<f32>(749f, 390f, 1077f), Struct_1(vec4<bool>(global0.x, false, true, global0.x), global4.wyw, global4.wyx, 1774f)), global0.x, all(vec3<bool>(global0.x, true, false))), select(vec4<bool>(!global0.x, false, any(vec3<bool>(global0.x, false, global0.x)), !global0.x), select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, global0.x, true, true), true), true), true), !select(select(vec4<bool>(true, true, global0.x, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, global0.x)), !vec4<bool>(false, global0.x, true, true), !global0.x)), ~(~abs(~global4.zyw)), arg_0 & vec3<u32>(var_0, arg_1.a, firstLeadingBit(countOneBits(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f))));
    let var_2 = -((abs(vec4<i32>(1i, u_input.d, global2.x, u_input.d)) >> (vec4<u32>(arg_1.a, 1u, min(arg_0.x, 71086u), var_0) % vec4<u32>(32u))) >> (max(max(~vec4<u32>(var_1.b.x, 0u, var_1.b.x, var_0), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.x, 12559u, var_0, arg_1.a), vec4<u32>(0u, 0u, 4294967295u, 4294967295u))), vec4<u32>(30319u, arg_1.a, ~global4.x, u_input.a.x)) % vec4<u32>(32u)));
    global2 = min(~(-min(var_2.yww, vec3<i32>(0i, u_input.d, 0i))), ~select(~(~vec3<i32>(-1i, u_input.d, var_2.x)), vec3<i32>(-33400i, global2.x >> (12848u % 32u), _wgslsmith_mod_i32(2147483647i, var_2.x)), select(var_1.a.zxw, var_1.a.xzx, !global0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(616f, var_1.d, true))))) + 1176f) - _wgslsmith_f_op_f32(-var_1.d));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(global4.wxy, _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(0u, 292u, global4.x)), global4.zzz)), global4.yzx) & _wgslsmith_div_u32(~firstLeadingBit(0u), arg_2.a), 27u)];
    global4 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(select(~6873u, ~0u, true), global4.x, u_input.b, min(26430u, _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, arg_2.a, arg_2.a, u_input.b), vec4<u32>(arg_2.a, 0u, 84917u, global4.x)))), ~select(vec4<u32>(8774u, 1751u, 1u, u_input.c) >> (vec4<u32>(4382u, 4294967295u, 1u, global4.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 4294967295u, var_0.a, 1u) ^ vec4<u32>(0u, global4.x, 1u, var_0.a), arg_1 < -2350f));
    let var_1 = vec4<f32>(-395f, arg_1, -730f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global4.ywx, Struct_2(u_input.b))))));
    global1 = -12042i;
    let var_2 = vec4<bool>(true, true, true, false);
    return Struct_1(!var_2, global4.zyx, vec3<u32>(reverseBits(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, arg_2.a), u_input.a.x)), 0u, 1423u), _wgslsmith_f_op_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.x;
    var var_0 = u_input.b;
    global1 = 0i;
    global1 = firstTrailingBit(u_input.d);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1221f);
    let var_2 = Struct_1(select(vec4<bool>(false, true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, global0.x, global0.x), global0.x)), true), vec4<bool>(global0.x, !global0.x, any(vec3<bool>(global0.x, global0.x, global0.x)) == false, any(!vec4<bool>(global0.x, global0.x, true, false))), true || (!global0.x && true)), global4.xww, ~vec3<u32>(u_input.c, u_input.b & 48406u, countOneBits(u_input.a.x)) & global4.xww, -1000f);
    let var_3 = Struct_2(~u_input.b);
    var var_4 = -vec3<i32>(-2147483647i, reverseBits(_wgslsmith_mult_i32(global2.x, _wgslsmith_div_i32(u_input.d, global2.x))), -17176i);
    var var_5 = func_1(-10065i, _wgslsmith_f_op_f32(-var_2.d), Struct_2(~_wgslsmith_dot_vec2_u32(u_input.a, var_2.b.yy & global4.xx)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~abs(-countOneBits(var_4.zz)), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(3144i, global2.x)) | ~var_4.zz, var_4.yy), vec3<u32>(func_1(u_input.d, 812f, global3[_wgslsmith_index_u32(4294967295u | var_2.c.x, 27u)]).b.x >> (global4.x % 32u), 119217u, _wgslsmith_mult_u32(0u, 86056u)), var_4.x);
}

