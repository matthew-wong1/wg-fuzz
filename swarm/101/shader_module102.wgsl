struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, true, true));

var<private> global2: vec4<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = arg_0.b;
    return Struct_2(~(~select(_wgslsmith_mult_u32(0u, 31804u), arg_0.b.a, var_0.d)), arg_3.x, arg_0.b);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = !(!all(select(vec3<bool>(true, false, true), global1.a, true)));
    global2 = vec4<i32>(global2.x, arg_1.a.x, -2147483647i, global2.x);
    var var_1 = Struct_5(-1201f, arg_2.c, func_2(Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1305f), 644f), arg_2.c, 1163f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-870f)), func_2(Struct_5(-786f, arg_2.c, arg_2.c.c), _wgslsmith_f_op_f32(-arg_2.c.c), Struct_4(vec2<i32>(2147483647i, u_input.a), arg_1.b), global0.xzy | global0.xwz).c.c), arg_1, reverseBits(min(arg_1.b, vec3<u32>(arg_2.b, arg_2.a, 0u)))).c.c);
    let var_2 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(min(-vec4<i32>(1713i, 553i, 0i, u_input.c), firstTrailingBit(vec4<i32>(arg_1.a.x, global2.x, u_input.a, -1i))), ~vec4<i32>(global2.x, arg_1.a.x, u_input.a, 8531i) & -vec4<i32>(22615i, 48674i, arg_1.a.x, -28233i)), vec4<i32>(-countOneBits(10935i), u_input.a, ~_wgslsmith_mod_i32(arg_1.a.x, 21326i), 9608i));
    var var_3 = abs(0i);
    return -_wgslsmith_mod_i32(-u_input.c, 0i);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(5595i, _wgslsmith_mod_i32(0i, func_3(~vec2<u32>(arg_2.x, global0.x), Struct_4(global2.wz, global0.zyx), func_2(Struct_5(1630f, Struct_1(22851u, 47583u, arg_0.x, global1.a.x), arg_0.x), 106f, Struct_4(vec2<i32>(-7196i, global2.x), vec3<u32>(global0.x, 0u, 31116u)), vec3<u32>(global0.x, 0u, u_input.b)), Struct_3(global1.a)))), i32(-1i) * -u_input.a, u_input.c, -4003i);
    let var_1 = ~u_input.d;
    let var_2 = arg_0.x;
    var var_3 = countOneBits(~_wgslsmith_div_u32(0u, 4294967295u));
    var var_4 = _wgslsmith_f_op_f32(var_2 + -510f);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(select(select(!global1.a, !select(vec3<bool>(global1.a.x, false, global1.a.x), vec3<bool>(true, global1.a.x, true), global1.a.x), any(select(vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), vec4<bool>(true, false, true, false), false))), vec3<bool>(all(!global1.a), global1.a.x, global1.a.x), !select(vec3<bool>(global1.a.x, true, global1.a.x), func_1(vec3<f32>(346f, 2245f, -253f), 371f, vec3<u32>(global0.x, u_input.b, u_input.b)), vec3<bool>(true, true, false))));
    global0 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~firstLeadingBit(u_input.b), u_input.b, _wgslsmith_dot_vec3_u32(global0.wxw, ~global0.zzx), ~_wgslsmith_dot_vec3_u32(global0.zzy, global0.xzz)), ~(vec4<u32>(1u, global0.x, global0.x, global0.x) << (abs(vec4<u32>(1686u, u_input.b, 1173u, u_input.b)) % vec4<u32>(32u)))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(global0.x, 0u, 30215u, 18792u)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, global0.x, 36741u, u_input.b), vec4<u32>(global0.x, 45579u, u_input.b, 4294967295u))));
    global2 = _wgslsmith_mod_vec4_i32(select(~(-_wgslsmith_add_vec4_i32(vec4<i32>(-14579i, u_input.c, u_input.c, 5431i), vec4<i32>(1i, 7023i, u_input.c, global2.x))), vec4<i32>(-25701i >> (global0.x % 32u), -u_input.d, ~(-11096i), _wgslsmith_mod_i32(u_input.a, -2147483647i)) | vec4<i32>(global2.x, firstLeadingBit(u_input.c), u_input.c, _wgslsmith_mod_i32(-6844i, -51398i)), vec4<bool>(false, global1.a.x, -786f <= _wgslsmith_f_op_f32(ceil(1076f)), global1.a.x)), vec4<i32>(global2.x, ~reverseBits(_wgslsmith_mod_i32(47565i, global2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-40683i), 1i), -global2.xy), -1i));
    global0 = ~(~select(vec4<u32>(u_input.b, 0u, global0.x, u_input.b), ~vec4<u32>(u_input.b, global0.x, 4294967295u, global0.x), all(global1.a)) ^ firstLeadingBit(~(~vec4<u32>(4294967295u, global0.x, 1u, u_input.b))));
    global1 = Struct_3(global1.a);
    var var_0 = vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(global0.wz & (vec2<u32>(global0.x, u_input.b) ^ global0.yz), abs(~vec2<u32>(4294967295u, 29351u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-723f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1000f), 1578f)));
}

