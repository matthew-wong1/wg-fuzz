struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(38468u, 0u, 0u, 4294967295u), Struct_3(Struct_1(vec4<i32>(1i, i32(-2147483648), -1i, -1i), vec3<u32>(1u, 1u, 0u), vec4<bool>(false, true, true, false), vec2<i32>(-10822i, 2147483647i)), 53942i, vec4<u32>(1u, 40989u, 36486u, 17563u), 3188i), vec3<f32>(467f, -531f, -966f), vec3<i32>(-1i, -52606i, 2147483647i));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global0 = Struct_4(~global0.a, Struct_3(arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(arg_2.a, vec4<i32>(u_input.d, arg_0.a.x, global0.d.x, arg_2.a.x)), 2147483647i >> (1u % 32u)), abs(min(arg_2.d, vec2<i32>(global0.b.d, 1i)))), ~_wgslsmith_add_vec4_u32(arg_1, global0.a), 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, _wgslsmith_f_op_f32(select(1107f, -165f, true))))), ~(-select(arg_0.a.yyz & arg_2.a.wwx, arg_2.a.yyx, select(arg_2.c.xyz, vec3<bool>(false, false, true), arg_2.c.zxy))));
    let var_0 = vec4<f32>(-1000f, global0.c.x, _wgslsmith_f_op_f32(415f * 572f), -1000f);
    let var_1 = u_input.c == 1673u;
    var var_2 = max(vec2<u32>(_wgslsmith_sub_u32(~83217u, arg_0.b.x), arg_1.x), firstLeadingBit(arg_1.zx));
    let var_3 = Struct_2(arg_2);
    return 505f;
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    global0 = Struct_4(global0.a, global0.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-654f * _wgslsmith_f_op_f32(-910f - global0.c.x)) - -272f), _wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(func_3(global0.b.a, global0.a, Struct_1(global0.b.a.a, vec3<u32>(1u, global0.a.x, arg_0.x), global0.b.a.c, vec2<i32>(global0.d.x, 21568i)))), ~arg_0.x >= _wgslsmith_mult_u32(1u, 4294967295u))), global0.c.x), vec3<i32>(1i, -u_input.d, u_input.d));
    return !select(global0.b.a.c, select(global0.b.a.c, global0.b.a.c, global0.b.a.c.x), global0.b.a.c.x);
}

fn func_1() -> Struct_1 {
    var var_0 = all(func_2(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(global0.b.c, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, global0.a.x, u_input.a.x), global0.a)), global0.b.c)));
    var_0 = all(!(!(!(!global0.b.a.c.ywz))));
    let var_1 = Struct_3(global0.b.a, countOneBits(2147483647i), global0.b.c, max(6167i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, -23894i), select(global0.b.a.d, global0.b.a.a.yy, false), countOneBits(vec2<i32>(global0.b.d, -32893i))), vec2<i32>(~1617i, 30327i))));
    let var_2 = !(global0.b.a.d.x >= (i32(-1i) * -14397i));
    let var_3 = _wgslsmith_f_op_f32(floor(1012f));
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = arg_0;
    global0 = Struct_4(reverseBits(vec4<u32>(~0u, ~u_input.c, ~53983u, global0.b.a.b.x) | select(~vec4<u32>(var_0.a.b.x, var_0.a.b.x, 26633u, 2222u), countOneBits(global0.a), false && global0.b.a.c.x)), Struct_3(func_1(), 1i, vec4<u32>(_wgslsmith_clamp_u32(89024u, 5869u, global0.a.x), _wgslsmith_add_u32(~var_0.a.b.x, 0u), 0u, ~(~arg_0.a.b.x)), 20565i), vec3<f32>(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2965f - _wgslsmith_f_op_f32(trunc(-856f))), 1689f), 1990f), max(max(vec3<i32>(u_input.d, -9645i, -1i), global0.b.a.a.zwz) ^ vec3<i32>(~arg_0.a.a.x, max(u_input.d, global0.d.x), -global0.b.b), vec3<i32>(arg_0.a.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.x, -2147483647i, -35098i, var_0.a.d.x) & arg_0.a.a, -global0.b.a.a), select(var_0.a.a.x, u_input.d, false) & firstTrailingBit(-7670i))));
    var var_1 = ~global0.a;
    var_0 = arg_0;
    var var_2 = func_2(firstTrailingBit(vec4<u32>(arg_0.a.b.x, 99463u, ~(arg_0.a.b.x >> (arg_0.a.b.x % 32u)), 4294967295u)));
    return Struct_2(Struct_1(var_0.a.a, var_1.yzz ^ global0.a.ywz, vec4<bool>(true, arg_2.x, func_1().c.x, false), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_0.a.d.x, -11315i), _wgslsmith_mod_i32(var_0.a.a.x, arg_0.a.a.x)), ~arg_0.a.a.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~global0.a.xzw, _wgslsmith_clamp_vec3_u32(global0.a.yyw, vec3<u32>(u_input.c, 4294967295u, 0u), global0.b.c.wzy) >> (~vec3<u32>(global0.a.x, u_input.c, 4294967295u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(global0.a.yyz, vec3<u32>(~1u, global0.a.x, global0.a.x ^ global0.a.x))) << ((~global0.a.ywy << (~_wgslsmith_mod_vec3_u32(firstTrailingBit(global0.a.yzy), global0.b.a.b) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = func_4(Struct_2(func_1()), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(max(352f, 394f)), -856f, global0.c.x, 195f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c.x, -1172f, 1244f, global0.c.x)))))), select(global0.b.a.c, global0.b.a.c, all(vec2<bool>(global0.b.a.c.x || false, any(global0.b.a.c.xwx)))), global0.c.xy);
    var var_2 = false;
    var var_3 = (global0.c.x <= -943f) && global0.b.a.c.x;
    global0 = Struct_4(global0.a, Struct_3(global0.b.a, global0.d.x, select(vec4<u32>(var_0.x, global0.b.c.x, var_1.a.b.x, 0u), vec4<u32>(func_1().b.x, _wgslsmith_mod_u32(28368u, 4294967295u), global0.a.x >> (var_1.a.b.x % 32u), ~var_1.a.b.x), select(global0.b.a.c, vec4<bool>(var_1.a.c.x, false, var_1.a.c.x, global0.b.a.c.x), var_1.a.c.x || global0.b.a.c.x)), -_wgslsmith_clamp_i32(-2147483647i, -11866i, -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0.c))), global0.c)), var_1.a.a.zxx);
    var_2 = !all(!select(!var_1.a.c.yz, select(var_1.a.c.xy, global0.b.a.c.yy, true), !global0.b.a.c.yz));
    var var_4 = vec2<i32>(reverseBits(~select(-62247i ^ var_1.a.d.x, var_1.a.d.x, global0.b.a.c.x)), -90627i);
    let var_5 = global0.b;
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global0.c.x, global0.c.x) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1753f, global0.c.x, -429f)))), global0.c)), _wgslsmith_f_op_vec3_f32(-global0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(10894i, -1689f);
}

