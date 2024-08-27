struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: bool;

var<private> global2: u32 = 1u;

var<private> global3: vec4<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    let var_0 = vec4<u32>(abs((1u >> (u_input.b.x % 32u)) >> (u_input.d.x % 32u)), firstLeadingBit(_wgslsmith_div_u32(~u_input.d.x, max(1u, u_input.d.x))), firstTrailingBit(~u_input.d.x), ~35782u) | _wgslsmith_div_vec4_u32(countOneBits(~firstLeadingBit(vec4<u32>(4294967295u, u_input.d.x, u_input.a, u_input.d.x))), ~vec4<u32>(u_input.d.x, ~u_input.b.x, u_input.d.x, max(u_input.a, 29024u)));
    return u_input.c.x;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    let var_0 = 26881i;
    global3 = abs(reverseBits(vec4<i32>(-14629i, u_input.c.x, -41449i, global3.x) >> (~(vec4<u32>(u_input.a, 0u, u_input.a, u_input.b.x) | vec4<u32>(u_input.b.x, 27858u, u_input.d.x, u_input.a)) % vec4<u32>(32u))));
    global3 = vec4<i32>(_wgslsmith_mod_i32(countOneBits(~(-2147483647i)), -1i), -global3.x, var_0 ^ var_0, -25625i ^ _wgslsmith_mod_i32(var_0, func_3() >> (u_input.d.x % 32u)));
    let var_1 = ~u_input.c | u_input.c;
    var var_2 = arg_0.a;
    return max(u_input.c.x, ~select(-2584i, 30925i, arg_0.a.b && false)) ^ _wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(var_0, 1i));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    global3 = ~vec4<i32>(_wgslsmith_add_i32(func_2(arg_1, arg_2), global3.x), _wgslsmith_div_i32(-u_input.c.x ^ 1i, ~u_input.c.x | arg_3.x), i32(-1i) * -24717i, _wgslsmith_clamp_i32(11821i, arg_3.x, _wgslsmith_mod_i32(-4014i, global3.x) ^ (0i | arg_3.x)));
    let var_0 = arg_2;
    global2 = ~(~43210u);
    var var_1 = 0u;
    global0 = select(arg_2.b, select(!select(vec3<bool>(true, false, true), !vec3<bool>(false, arg_1.b.x, var_0.b.x), arg_2.b), !vec3<bool>(global0.x, true, any(var_0.b.yz)), select(var_0.b, select(vec3<bool>(arg_2.a.b, var_0.b.x, var_0.b.x), arg_1.b, 52980i < global3.x), !vec3<bool>(global0.x, arg_1.b.x, true))), arg_1.b);
    return arg_1.a.c;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a;
    global2 = _wgslsmith_sub_u32(u_input.a, u_input.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~reverseBits(u_input.b.x)), vec2<u32>(abs(49112u), _wgslsmith_div_u32(u_input.d.x, u_input.b.x)) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(89041u, 4294967295u), abs(vec2<u32>(4294967295u, u_input.b.x))) % vec2<u32>(32u))) % 32u);
    global0 = !vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -508f) == arg_0.a, all(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, false, false), vec3<bool>(true, global0.x, true))) && any(vec3<bool>(global0.x, true, false)), any(select(global0.yx, global0.xz, true)));
    var var_1 = ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.b.x, u_input.a), countOneBits(u_input.b.x)) & _wgslsmith_div_u32(min(firstTrailingBit(45851u), _wgslsmith_mod_u32(~29675u, abs(u_input.a))), ~51071u);
    var var_2 = vec4<u32>(4294967295u << (_wgslsmith_sub_u32(~(~30747u), firstTrailingBit(~u_input.d.x)) % 32u), firstTrailingBit(~(~61499u >> (abs(0u) % 32u))), max(~90457u, ~u_input.a), 48436u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global0.zx, global0.xx, true && global0.x);
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(2164f + -525f)), !(!var_0.x & (global3.x > u_input.c.x)), func_4(func_1(1f, Struct_3(Struct_2(Struct_1(-981f), global0.x, Struct_1(1145f), vec2<f32>(1000f, -541f), vec4<f32>(-566f, 1060f, -1593f, -311f)), vec3<bool>(false, var_0.x, false)), Struct_3(Struct_2(Struct_1(-684f), var_0.x, Struct_1(-101f), vec2<f32>(-1077f, 2571f), vec4<f32>(-1031f, 1000f, 1000f, -898f)), vec3<bool>(false, false, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, global3.x), global3.xy))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1571f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 612f, 282f, -227f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(887f, -632f, 1000f, -499f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, 355f, 1378f, -400f)))))), !vec3<bool>(all(!vec2<bool>(var_0.x, var_0.x)), false || all(vec3<bool>(true, false, var_0.x)), u_input.a == ~u_input.a));
    var var_2 = vec3<u32>(_wgslsmith_div_u32(1u, firstLeadingBit(_wgslsmith_mod_u32(u_input.d.x, 52106u)) | abs(u_input.d.x)), min(28667u, 0u), ~firstLeadingBit(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), 1u)));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d.x))));
    global2 = var_2.x & ~37046u;
    let var_4 = vec2<f32>(471f, _wgslsmith_f_op_f32(floor(var_1.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-433f, var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-448f - var_1.a.c.a) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3))))), var_3);
}

