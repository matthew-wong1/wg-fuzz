struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

var<private> global1: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(91128u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(18666u, 12851u), vec2<u32>(4294967295u, 0u), vec2<u32>(90334u, 0u), vec2<u32>(22470u, 4294967295u), vec2<u32>(4294967295u, 36771u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 20763u), vec2<u32>(32091u, 1u), vec2<u32>(1u, 1u), vec2<u32>(7420u, 15583u), vec2<u32>(37584u, 38109u));

var<private> global2: Struct_3 = Struct_3(2147483647i, vec4<i32>(0i, 14537i, -41253i, 32858i));

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false), -453f, vec4<bool>(false, true, false, false), vec3<i32>(-17997i, 7153i, -48101i));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-925f * global3.b) * _wgslsmith_div_f32(1000f, -1000f))))) + _wgslsmith_f_op_f32(-1342f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f * -1177f))))));
    global3 = Struct_1(select(!select(select(global3.c.zz, global3.c.zy, vec2<bool>(global3.c.x, true)), global3.c.xx, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(all(vec2<bool>(arg_0, true)), false), select(vec2<bool>(all(global3.c), false), global3.a, (arg_0 | false) || all(vec2<bool>(global3.c.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b)))), select(global3.c, vec4<bool>(true, arg_0, (-10330i ^ u_input.a) >= _wgslsmith_clamp_i32(33070i, -22299i, -60532i), _wgslsmith_f_op_f32(-global3.b) >= global3.b), any(vec3<bool>(true && arg_0, true, !arg_0))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(global3.d, vec3<i32>(global3.d.x, global2.a, 6053i)), global3.d.x, ~(-2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(global2.b.zzw, global2.b.wyy), global3.d.x, _wgslsmith_div_i32(17534i, global3.d.x))), vec3<i32>(_wgslsmith_dot_vec4_i32(select(global2.b, global2.b, false), vec4<i32>(-1i, u_input.a, global2.b.x, global2.b.x)), -(~31248i), ~u_input.d.x >> (firstLeadingBit(u_input.c) % 32u))));
    let var_1 = u_input.b;
    global0 = array<vec2<i32>, 10>();
    let var_2 = Struct_2(12059u, var_1, Struct_1(select(global3.c.zx, select(global3.c.zy, vec2<bool>(false, true), !global3.c.zx), any(!vec2<bool>(arg_0, true))), 202f, global3.c, vec3<i32>(0i, -global2.b.x, global3.d.x << (1u % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, global3.b, 491f, -821f) * vec4<f32>(-586f, 401f, 1000f, global3.b)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1157f, -283f, global3.b, 515f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-global3.b), global3.b, -607f, global3.b)), !global3.c.xw);
    return vec4<f32>(-983f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), var_2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-519f))) - _wgslsmith_f_op_f32(round(global3.b)))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = -countOneBits(firstTrailingBit(global2.b.yzx | vec3<i32>(global3.d.x, 9591i, 23227i)));
    let var_1 = ~global3.d.x;
    return arg_2 >> (~_wgslsmith_dot_vec3_u32(~vec3<u32>(69174u, u_input.b, 0u) << (~vec3<u32>(31908u, 24659u, arg_3) % vec3<u32>(32u)), vec3<u32>(4294967295u, 1u, 0u) | (vec3<u32>(arg_2, 1u, arg_2) | vec3<u32>(arg_2, 1u, u_input.c))) % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = false;
    var var_1 = Struct_3(-(~(global3.d.x ^ global3.d.x)) << (func_4(abs(2147483647i), _wgslsmith_f_op_vec4_f32(func_3(false)), ~(~u_input.c), ~1u) % 32u), -global2.b);
    let var_2 = Struct_3(0i, abs(select(global2.b, ~_wgslsmith_mult_vec4_i32(var_1.b, vec4<i32>(5522i, 1i, -36472i, 0i)), !global3.c)));
    let var_3 = _wgslsmith_dot_vec3_i32(global3.d >> (vec3<u32>(abs(~15104u), 5475u, ~(~u_input.b)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(global0[_wgslsmith_index_u32(~69296u, 10u)]), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), global0[_wgslsmith_index_u32(u_input.b, 10u)]) ^ ~vec2<i32>(-35153i, u_input.d.x)), -(~(global2.b.x ^ 0i)), -3119i));
    let var_4 = Struct_1(select(global3.c.zy, select(global3.c.yw, vec2<bool>(!var_0, true), select(var_0, false, global3.c.x) && var_0), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.b))), global3.c, global3.d);
    return Struct_2(u_input.c, abs(1u), Struct_1(global3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1048f * _wgslsmith_f_op_f32(var_4.b + -710f))), vec4<bool>(true, any(global3.c.zz), global3.c.x, all(vec3<bool>(global3.c.x, global3.c.x, true))), var_2.b.zyz >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.b, 47552u), vec3<u32>(u_input.c, 44957u, u_input.c)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1677f, 291f, var_4.b, global3.b))) * vec4<f32>(global3.b, _wgslsmith_f_op_f32(exp2(global3.b)), global3.b, _wgslsmith_f_op_f32(1000f * 933f)))), global3.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: f32) -> StorageBuffer {
    let var_0 = func_2();
    var var_1 = Struct_3(_wgslsmith_dot_vec3_i32(global3.d, _wgslsmith_clamp_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.a, 41831i, -26183i)), vec3<i32>(var_0.c.d.x, global3.d.x, global2.b.x), ~(~global2.b.xxx))), _wgslsmith_add_vec4_i32(~(~(~vec4<i32>(-10163i, 2147483647i, 2147483647i, u_input.a))), _wgslsmith_add_vec4_i32(global2.b, arg_1.b)));
    let var_2 = false;
    var_1 = Struct_3(u_input.a, ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.d.x, var_1.a, -72428i, 25765i), vec4<i32>(7049i, global3.d.x, 58894i, 74229i), arg_1.b)) << (firstLeadingBit(vec4<u32>(arg_0.x, u_input.c, u_input.b, 661u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1624u, 1u, 2951u, 4294967295u), vec4<u32>(var_0.a, 42418u, 9888u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = func_2();
    return StorageBuffer(_wgslsmith_f_op_f32(-global3.b), ~firstLeadingBit(vec4<i32>(1i, -2147483647i, 1i >> (var_0.b % 32u), 22933i)), var_3.c.d.x, 1u, _wgslsmith_f_op_f32(abs(-1094f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 13>();
    global1 = array<vec2<u32>, 13>();
    let x = u_input.a;
    s_output = func_1(vec2<u32>(~47728u, ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, 20258u, u_input.b), select(u_input.b, u_input.b, global3.a.x))), Struct_3(~abs(~0i), global2.b), global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1934f)) + 1000f));
}

