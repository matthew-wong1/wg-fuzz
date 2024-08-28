struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global0 = Struct_2(arg_0.a, vec4<bool>(!global0.d.x, false, true, arg_0.d.x), global0.a.a.zz, !(!vec3<bool>(true, any(vec4<bool>(global0.d.x, arg_0.b.x, global0.d.x, true)), any(arg_0.d))));
    var var_0 = 529f;
    var_0 = -1499f;
    var var_1 = ~_wgslsmith_add_u32(arg_0.a.c, ~21794u >> ((arg_0.a.b.x << (_wgslsmith_div_u32(1u, 19411u) % 32u)) % 32u));
    var var_2 = vec3<i32>(arg_0.a.a.x, _wgslsmith_add_i32(arg_0.a.a.x, _wgslsmith_mod_i32(0i, global0.c.x)), _wgslsmith_sub_i32(global0.c.x, global0.a.a.x));
    return vec2<i32>(arg_0.a.a.x ^ 2147483647i, arg_0.a.a.x);
}

fn func_2() -> f32 {
    global0 = Struct_2(global0.a, global0.b, func_3(Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(global0.a.a, global0.a.a), vec2<u32>(29267u, global0.a.b.x), 36541u, global0.a.d), select(!global0.b, global0.b, global0.d.x), firstLeadingBit(global0.c), global0.b.wxx)), global0.b.zyx);
    var var_0 = select(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(19805u, u_input.a.x), select(u_input.a.x, u_input.a.x, false), _wgslsmith_mult_u32(0u, global0.a.d.x)), ~(~u_input.a.x)), global0.a.d.xy, global0.b.x) >> (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(39752u, 4294967295u), vec2<u32>(13487u, global0.a.b.x))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.b.x, u_input.a.x), _wgslsmith_mult_vec2_u32(global0.a.b, vec2<u32>(global0.a.d.x, global0.a.b.x))))) % vec2<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -global0.a.a, global0.a.a << (_wgslsmith_div_vec4_u32(~vec4<u32>(global0.a.b.x, 15193u, 3028u, global0.a.d.x), select(vec4<u32>(4294967295u, 92971u, 1u, var_0.x), vec4<u32>(4294967295u, 0u, global0.a.b.x, 26911u), vec4<bool>(global0.d.x, false, false, global0.d.x))) % vec4<u32>(32u))), vec2<u32>(57159u, abs(var_0.x)), ~global0.a.c, ~(~vec3<u32>(var_0.x, u_input.a.x, _wgslsmith_sub_u32(4294967295u, global0.a.c))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1f))))) - -388f);
    let var_3 = global0.b;
    return _wgslsmith_f_op_f32(select(-1225f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1504f)), 899f)), true));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(2471f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))));
    global0 = Struct_2(global0.a, select(!global0.b, global0.b, global0.d.x), vec2<i32>(firstLeadingBit(min(13582i, global0.a.a.x)) >> (_wgslsmith_add_u32(u_input.a.x, firstTrailingBit(u_input.a.x)) % 32u), global0.c.x), select(global0.b.yxw, global0.b.xyy, global0.d.x));
    global0 = Struct_2(Struct_1(~vec4<i32>(global0.c.x, global0.c.x, _wgslsmith_sub_i32(1i, global0.c.x), -global0.c.x), vec2<u32>(_wgslsmith_mod_u32(select(global0.a.d.x, 1801u, true), u_input.a.x >> (50546u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(96490u, global0.a.d.x, global0.a.d.x, 0u), select(vec4<u32>(1u, 43965u, global0.a.d.x, 4294967295u), vec4<u32>(u_input.a.x, global0.a.d.x, u_input.a.x, global0.a.d.x), global0.b.x))), _wgslsmith_sub_u32(~44585u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 55188u), ~vec3<u32>(1u, u_input.a.x, global0.a.c))), reverseBits(abs(global0.a.d) >> ((vec3<u32>(u_input.a.x, u_input.a.x, global0.a.d.x) << (global0.a.d % vec3<u32>(32u))) % vec3<u32>(32u)))), !global0.b, global0.c, global0.b.wyw);
    var var_1 = Struct_2(Struct_1(global0.a.a >> (vec4<u32>(min(u_input.a.x, 43u), _wgslsmith_clamp_u32(22192u, 12177u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(4252u, 19518u)), ~u_input.a.x) % vec4<u32>(32u)), global0.a.b, u_input.a.x, ~vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_clamp_u32(u_input.a.x, global0.a.c, 4294967295u))), select(!select(global0.b, global0.b, global0.d.x), !vec4<bool>(-2022f <= var_0, var_0 <= var_0, any(vec2<bool>(global0.d.x, global0.b.x)), var_0 == -239f), false), -global0.a.a.zz, !global0.b.xww);
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(~1883i, -_wgslsmith_mod_i32(-2147483647i, ~1i), select(666i, _wgslsmith_mult_i32(global0.c.x, global0.a.a.x) | 1i, global0.d.x), i32(-1i) * -2147483647i), vec4<i32>(abs(max(46841i, var_1.c.x)), global0.c.x, ~reverseBits(global0.c.x | -1i), _wgslsmith_mod_i32(i32(-1i) * -58099i, var_1.c.x)));
    return var_1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.a.a.x;
    var var_1 = abs(u_input.a.x);
    var_1 = 0u;
    var_0 = ~(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global0.c.x ^ global0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, 22533i), vec2<i32>(global0.c.x, 42358i))), firstLeadingBit(_wgslsmith_div_i32(global0.c.x, 2147483647i))) ^ _wgslsmith_clamp_i32(func_1() | global0.c.x, _wgslsmith_div_i32(-2147483647i, 1i), 2147483647i));
    var var_2 = (i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_add_i32(2939i, global0.a.a.x), ~global0.a.a.x)) != -select(0i, -14303i, true);
    let var_3 = select(vec3<i32>(global0.c.x, -select(func_1(), global0.a.a.x << (global0.a.d.x % 32u), false), -13154i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.c.x, global0.c.x & -2147483647i, 1i), global0.a.a.xyz, vec3<i32>(-global0.c.x, -global0.a.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c.x, -11314i), global0.c))) | countOneBits(global0.a.a.zzy), select(select(global0.b.yzz, select(vec3<bool>(false, global0.b.x, global0.b.x), vec3<bool>(true, global0.b.x, false), any(vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x))), global0.b.wwy), !vec3<bool>(false, any(global0.d.zz), true), !(!select(vec3<bool>(global0.d.x, true, false), global0.d, global0.b.yzy))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(firstTrailingBit(vec2<i32>(global0.c.x, global0.a.a.x)), vec2<i32>(0i, 11520i), global0.d.x)) | -countOneBits(var_3.xz), 1i, reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, global0.a.c) >> (u_input.a % vec2<u32>(32u)), global0.a.d.zz) ^ vec2<u32>(~u_input.a.x, ~u_input.a.x)), global0.a.a.x ^ -62884i, global0.c ^ ((vec2<i32>(-1i) * -vec2<i32>(-28751i, -37704i)) << (vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.d.x, 0u, 4294967295u, global0.a.d.x), vec4<u32>(27653u, u_input.a.x, 36206u, u_input.a.x))) % vec2<u32>(32u))));
}

