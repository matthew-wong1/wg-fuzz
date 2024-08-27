struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-667f, vec2<u32>(1u, 1u), Struct_1(vec2<i32>(1i, -54574i), false, 1000f, vec2<f32>(-840f, -796f), vec4<u32>(0u, 4294967295u, 0u, 0u)), vec2<bool>(false, true), vec2<f32>(-1911f, 2259f));

var<private> global1: vec3<f32> = vec3<f32>(1143f, 148f, 123f);

var<private> global2: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(6005u, 0u, 10351u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 121560u), vec3<u32>(4294967295u, 0u, 16965u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 65946u, 59213u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(51314u, 4294967295u, 0u), vec3<u32>(42436u, 0u, 0u), vec3<u32>(4294967295u, 0u, 15162u), vec3<u32>(44751u, 4294967295u, 39331u), vec3<u32>(58662u, 110u, 41472u), vec3<u32>(2023u, 0u, 1u), vec3<u32>(44425u, 4294967295u, 1u), vec3<u32>(0u, 102734u, 4294967295u), vec3<u32>(2522u, 1u, 0u), vec3<u32>(43358u, 18178u, 4294967295u), vec3<u32>(1u, 22729u, 15075u), vec3<u32>(1u, 1u, 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    var var_0 = arg_1.b.a.x;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a * 822f), 162f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + _wgslsmith_f_op_f32(-global1.x)))))));
    return abs(32647u);
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(abs(_wgslsmith_sub_u32(u_input.c & u_input.c, func_3(vec4<f32>(-846f, -271f, global0.e.x, 1000f), Struct_2(global0.c.c, global0.c, global0.c.e.zyy), global0.c.e.yz))), abs(~(global0.b.x & u_input.c)), u_input.a), ~global0.b.x | abs(~max(global0.c.e.x, u_input.c)));
    global2 = array<vec3<u32>, 20>();
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, _wgslsmith_f_op_f32(max(-875f, global0.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, 341f, global0.c.d.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global0.a, global0.e.x), vec3<f32>(global0.a, 606f, global0.c.c), false))))))), select(!(!(!vec3<bool>(true, global0.c.b, true))), vec3<bool>(global0.d.x, !any(vec4<bool>(global0.c.b, true, false, false)), any(select(vec3<bool>(global0.c.b, global0.d.x, global0.c.b), vec3<bool>(false, true, global0.d.x), vec3<bool>(false, global0.c.b, global0.d.x)))), select(vec3<bool>(all(vec3<bool>(global0.c.b, true, true)), global0.d.x, false), select(select(vec3<bool>(global0.d.x, global0.d.x, false), vec3<bool>(global0.c.b, global0.c.b, false), vec3<bool>(false, true, global0.d.x)), select(vec3<bool>(true, true, true), vec3<bool>(global0.c.b, false, global0.c.b), global0.c.b), true), false))));
    var var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.zyw, ~(u_input.b.ywz | vec3<i32>(7914i, u_input.b.x, global0.c.a.x))), select(vec3<i32>(global0.c.a.x, 1552i, 0i), u_input.b.wyz, vec3<bool>(!global0.c.b, global0.c.b && false, global0.d.x))) & firstTrailingBit(~(-vec3<i32>(u_input.b.x, global0.c.a.x, global0.c.a.x)));
    global0 = Struct_3(357f, reverseBits(vec2<u32>(min(abs(u_input.c), ~u_input.a), u_input.c)), global0.c, global0.d, vec2<f32>(617f, global0.a));
    return firstLeadingBit(global0.c.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.d.x, arg_1.c, global1.x, arg_1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.d.x, global1.x, arg_1.d.x, arg_0.c)))), (u_input.c & u_input.d) == ~103309u))));
    let var_1 = arg_1;
    var var_2 = true;
    let var_3 = u_input.b.x >> (arg_0.e.x % 32u);
    let var_4 = Struct_2(_wgslsmith_f_op_f32(floor(var_0.x)), Struct_1(-min(u_input.b.zy, abs(var_1.a)), any(select(global0.d, vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, arg_1.d.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * global1.x)), vec2<f32>(_wgslsmith_f_op_f32(min(580f, _wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c)))), _wgslsmith_clamp_vec4_u32(global0.c.e, vec4<u32>(func_3(vec4<f32>(-1000f, arg_1.c, -1041f, 1004f), Struct_2(global0.e.x, var_1, vec3<u32>(1u, 4294967295u, arg_1.e.x)), var_1.e.zy), _wgslsmith_add_u32(var_1.e.x, 4294967295u), func_3(var_0, Struct_2(global0.e.x, global0.c, vec3<u32>(70882u, 0u, arg_1.e.x)), arg_0.e.xz), 4294967295u & u_input.c), firstTrailingBit(vec4<u32>(1u, 1u, arg_1.e.x, arg_0.e.x)))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(var_1.e.x, var_1.e.x, arg_1.e.x), vec3<u32>(11540u, arg_0.e.x, 25565u)) | var_1.e.zxz) << (global0.c.e.xzz % vec3<u32>(32u)));
    return Struct_1(vec2<i32>(max(var_3, abs(-var_4.b.a.x)), var_3), ~global0.c.e.x >= ~(~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f + arg_0.d.x) - var_1.c), arg_0.d, vec4<u32>(min(var_1.e.x, ~max(94979u, 40146u)), 18700u, var_1.e.x | (u_input.c ^ min(arg_0.e.x, 4294967295u)), 4758u));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    global1 = vec3<f32>(global1.x, global0.e.x, -1996f);
    var var_0 = abs(-2147483647i);
    var_0 = u_input.b.x;
    var var_1 = Struct_2(global0.c.c, func_4(Struct_1(firstTrailingBit(~u_input.b.yx), global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), global0.c.d, vec4<u32>(_wgslsmith_add_u32(arg_0, 4294967295u), arg_1, arg_0, u_input.a)), Struct_1(func_2(), !(global1.x >= global0.c.c), _wgslsmith_f_op_f32(floor(-1296f)), vec2<f32>(global0.c.c, _wgslsmith_f_op_f32(-global1.x)), vec4<u32>(~0u, arg_1, ~arg_1, min(4294967295u, arg_0)))), min(~(~(global2[_wgslsmith_index_u32(u_input.d, 20u)] & vec3<u32>(arg_0, 4294967295u, 4294967295u))), reverseBits(~(vec3<u32>(20580u, arg_0, u_input.c) << (vec3<u32>(44787u, 4294967295u, 4294967295u) % vec3<u32>(32u))))));
    let var_2 = Struct_1(var_1.b.a, false, 167f, global1.yx, ~var_1.b.e);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_u32(~global0.b.x, min(u_input.d << (u_input.c % 32u), ~global0.c.e.x) | _wgslsmith_mod_u32(1u, 64069u)), global0.b.x);
    let var_1 = func_4(var_0, func_1(1u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, u_input.a), var_0.e.yz))));
    global0 = Struct_3(1015f, var_1.e.yz, func_4(func_1(~0u, _wgslsmith_mult_u32(~var_1.e.x, 1u)), func_1(func_1(~var_1.e.x, _wgslsmith_div_u32(global0.c.e.x, var_0.e.x)).e.x, _wgslsmith_mult_u32(u_input.c, 46826u))), !vec2<bool>(global0.d.x, !func_4(Struct_1(global0.c.a, var_1.b, -1000f, vec2<f32>(-620f, 1000f), vec4<u32>(26709u, 13848u, var_0.e.x, 1u)), Struct_1(vec2<i32>(31358i, 0i), true, -237f, vec2<f32>(-1000f, var_1.d.x), var_0.e)).b), func_4(global0.c, var_0).d);
    global2 = array<vec3<u32>, 20>();
    var var_2 = global1.zz;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -497f, var_1.d.x), vec3<f32>(-1000f, 2509f, global0.a))), vec3<f32>(474f, -904f, -477f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, global0.e.x))))));
    var var_3 = Struct_3(global1.x, min(reverseBits(var_1.e.wz), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, global0.c.e.x), ~vec2<u32>(1u, 0u), var_1.e.xw), select(var_1.e.xx, select(var_0.e.xx, var_1.e.yw, false), vec2<bool>(true, global0.c.b)))), func_1(min(58023u, ~48340u), 0u), vec2<bool>(global0.c.d.x == global1.x, func_1(max(abs(4294967295u), abs(var_0.e.x)), 83735u).b), global1.xz);
    var_3 = Struct_3(func_4(func_4(func_1(4294967295u, ~var_3.c.e.x), func_1(~var_0.e.x, u_input.a)), global0.c).c, vec2<u32>(~1u, 14641u), func_1(var_1.e.x, ~var_3.b.x), global0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-902f, global0.c.d.x) + vec2<f32>(-1607f, 237f)) + global1.xy)) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.d + _wgslsmith_f_op_vec2_f32(-global1.yz))))));
    let var_4 = select(true, var_3.c.a.x >= var_3.c.a.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-1i, abs(-29910i)), ~(global0.c.e << (abs(~vec4<u32>(var_1.e.x, global0.c.e.x, global0.b.x, 4294967295u)) % vec4<u32>(32u))));
}

