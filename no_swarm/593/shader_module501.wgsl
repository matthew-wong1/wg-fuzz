struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<f32>(-121f, 338f), 31155i), Struct_3(vec2<f32>(693f, 700f), 64372i), Struct_3(vec2<f32>(-3117f, 764f), 0i), Struct_3(vec2<f32>(727f, 1000f), 2147483647i), Struct_3(vec2<f32>(-513f, -543f), 12850i), Struct_3(vec2<f32>(188f, -184f), -2690i), Struct_3(vec2<f32>(407f, 1213f), -1i), Struct_3(vec2<f32>(804f, -2088f), -12528i), Struct_3(vec2<f32>(361f, 131f), i32(-2147483648)), Struct_3(vec2<f32>(-246f, -913f), 2147483647i), Struct_3(vec2<f32>(810f, 848f), 15405i), Struct_3(vec2<f32>(-578f, 1906f), 73964i), Struct_3(vec2<f32>(372f, -910f), i32(-2147483648)), Struct_3(vec2<f32>(-367f, -423f), 20293i), Struct_3(vec2<f32>(852f, -650f), 0i), Struct_3(vec2<f32>(906f, -662f), 14978i), Struct_3(vec2<f32>(-917f, -534f), -1i), Struct_3(vec2<f32>(1251f, -686f), 2147483647i));

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    let var_0 = ~select(reverseBits(vec2<u32>(1u, ~66926u)), abs(abs(arg_2.xx)), global1.yw);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0);
    var var_2 = -1086f;
    let var_3 = Struct_1(~vec4<i32>(u_input.a.x ^ -4294i, u_input.d, min(~u_input.c.x, i32(-1i) * -5133i), i32(-1i) * -u_input.b.x), ~12479u, vec3<bool>(global1.x, select(all(!vec4<bool>(global1.x, true, false, global1.x)), global1.x, false), global1.x));
    var var_4 = any(vec4<bool>(!(!global1.x) & false, global1.x, arg_0.x >= var_1.x, var_3.c.x));
    return firstLeadingBit(~1u);
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<bool> {
    let var_0 = ~abs(select(37863u, 23113u, true));
    var var_1 = Struct_1(u_input.c, ~abs(func_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1224f, -1451f))), 989f, vec4<u32>(4294967295u, var_0, 1u, var_0) ^ vec4<u32>(8823u, 4294967295u, 4294967295u, var_0))), global1.ywz);
    global0 = array<Struct_3, 18>();
    global1 = !vec4<bool>(var_1.c.x, any(var_1.c.zx) | true, (i32(-1i) * -25857i) == _wgslsmith_add_i32(~arg_0, 1i), !var_1.c.x);
    var var_2 = Struct_5(var_1.b << (64661u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-157f, 1259f)))))), 962f, Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, -1000f, -367f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-490f, 471f, -121f), vec3<f32>(-558f, -476f, 126f))), vec3<f32>(-733f, 404f, _wgslsmith_f_op_f32(round(260f))))), all(!vec3<bool>(var_1.c.x, global1.x, var_1.c.x))), Struct_1(vec4<i32>(u_input.a.x, min(~arg_0, -u_input.d), var_1.a.x, arg_1), var_1.b, vec3<bool>(global1.x | any(global1.yzw), var_1.c.x, !all(vec2<bool>(false, false)))));
    return vec4<bool>(true, true, !(all(vec4<bool>(true, true, false, var_1.c.x)) && all(var_1.c)) && all(vec3<bool>(any(var_2.e.c.xx), any(vec3<bool>(false, false, var_2.d.b)), !var_1.c.x)), !(!all(select(vec4<bool>(false, true, global1.x, var_2.d.b), vec4<bool>(var_2.d.b, true, var_1.c.x, false), global1.x))));
}

fn func_1() -> vec4<bool> {
    global1 = vec4<bool>(true, false, true, global1.x);
    global1 = !select(!func_2(abs(-15861i), -1i), !vec4<bool>(false, !global1.x, true, any(global1.wyx)), func_2(-_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), -_wgslsmith_sub_i32(u_input.d, -10585i)));
    var var_0 = ~u_input.b.x;
    var var_1 = ~(~(~1u | _wgslsmith_clamp_u32(18639u, 65330u, 41433u))) >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(3165u, 0u)) ^ 1u, 45753u), 44597u, (select(1u, 0u, false) >> (firstTrailingBit(0u) % 32u)) << (~1u % 32u)) % 32u);
    return func_2(select(u_input.d, -49817i, false), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global0 = array<Struct_3, 18>();
    global1 = vec4<bool>(false || select(false, false, u_input.c.x > -1i), global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1458f))) == 848f, true);
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(1i, -32226i), firstTrailingBit(-20284i), -u_input.b.x, i32(-1i) * -2147483647i), vec4<i32>(0i, -52749i, i32(-1i) * -2147483647i, u_input.a.x) | (_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(-2054i, 31725i, u_input.d, 3218i)) ^ -u_input.c)), 1u, func_1().xzx);
    let var_1 = ~_wgslsmith_clamp_i32(max(u_input.d, -var_0.a.x) >> (var_0.b % 32u), ~(-6151i), firstTrailingBit(var_0.a.x | 8246i) | (reverseBits(1i) << (~var_0.b % 32u)));
    let var_2 = Struct_4(false, -(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.a.xyz, u_input.a, u_input.a), vec3<i32>(var_1, -1i, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, var_0.a.x), u_input.a)) << (vec3<u32>(abs(var_0.b), 1u, 1u) % vec3<u32>(32u))), _wgslsmith_mod_u32(var_0.b, firstLeadingBit(var_0.b)), Struct_1(var_0.a, ~(~var_0.b), select(!(!var_0.c), func_2(min(u_input.b.x, var_1), u_input.c.x).ywz, !func_1().ywz)));
    let var_3 = !var_0.c;
    var_0 = Struct_1(-u_input.c, 83195u, global1.xyw);
    global0 = array<Struct_3, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1262f * 632f))))), var_1);
}

