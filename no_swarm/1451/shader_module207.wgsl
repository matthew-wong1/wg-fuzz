struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32>;

var<private> global1: array<f32, 15>;

var<private> global2: array<vec4<f32>, 28>;

var<private> global3: u32 = 6300u;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> i32 {
    global0 = array<vec2<i32>, 32>();
    return 33334i;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    global3 = _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c.x, arg_1), u_input.c.x);
    let var_0 = _wgslsmith_f_op_f32(min(1099f, -1151f));
    global2 = array<vec4<f32>, 28>();
    let var_1 = arg_0;
    var var_2 = Struct_3(var_1.a.a);
    return select(4294967295u, ~abs(0u), all(vec3<bool>(false, arg_0.a.c, any(select(vec3<bool>(arg_0.a.c, false, arg_0.a.c), vec3<bool>(true, var_1.a.c, false), vec3<bool>(arg_0.e, false, false))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(~abs(~(~_wgslsmith_mult_u32(u_input.a, 41790u))), 28u)];
    let var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.xz) | _wgslsmith_sub_u32(33191u, 1u), ~u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yw) * _wgslsmith_div_vec2_f32(var_0.ww, vec2<f32>(930f, -531f)))), u_input.a > ~func_3(Struct_5(Struct_2(Struct_1(u_input.a, 4294967295u, vec2<f32>(2291f, arg_1)), true, true, Struct_1(27237u, 4294967295u, var_0.yx)), Struct_4(vec4<f32>(arg_1, 333f, var_0.x, arg_1), 68417u, u_input.c.xx, u_input.c.xy), 78104u, Struct_1(0u, 0u, var_0.zy), false), 4294967295u, false, u_input.c), u_input.a < (~u_input.c.x << (~u_input.a % 32u)), Struct_1(~1u, ~_wgslsmith_div_u32(u_input.c.x, 21460u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_0.zx)), _wgslsmith_f_op_vec2_f32(step(var_0.xx, var_0.yx)), select(vec2<bool>(true, false), vec2<bool>(true, true), true))))), Struct_4(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~min(1u, u_input.c.x), 28u)]), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(u_input.c.x, u_input.a))), min(_wgslsmith_div_vec2_u32(vec2<u32>(13463u, 1618u), u_input.c.yz), ~u_input.c.xy)), u_input.c.yx, select(vec2<u32>(~u_input.c.x, 1u), ~u_input.c.yy, !select(vec2<bool>(false, false), vec2<bool>(true, true), true))), firstLeadingBit(106038u), Struct_1(59950u, _wgslsmith_mult_u32(~firstLeadingBit(u_input.c.x), ~_wgslsmith_add_u32(4294967295u, 0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-703f, 1455f))), true);
    let var_2 = var_1;
    global0 = array<vec2<i32>, 32>();
    global3 = u_input.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -499f), -895f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.a.x)))), _wgslsmith_f_op_f32(max(-2242f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_1.b.d.x, 15u)], var_2.d.c.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    global1 = array<f32, 15>();
    var var_0 = Struct_5(Struct_2(Struct_1(~(~arg_3.x), 39040u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1237f, 1317f)))), !arg_2, true, arg_0), Struct_4(global2[_wgslsmith_index_u32(arg_3.x << (1u % 32u), 28u)], u_input.a, ~(vec2<u32>(u_input.a, 4294967295u) ^ arg_3), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a), firstTrailingBit(u_input.c.zx))), ~18397u, arg_0, any(!select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, arg_2)), vec2<bool>(arg_2, arg_2), -67423i <= u_input.b)));
    global2 = array<vec4<f32>, 28>();
    var var_1 = var_0.d;
    global2 = array<vec4<f32>, 28>();
    return Struct_2(arg_0, true, false, Struct_1(4294967295u, 0u ^ func_3(Struct_5(var_0.a, var_0.b, 27306u, arg_0, arg_2), ~0u, true != arg_2, ~vec3<u32>(arg_3.x, var_0.a.a.b, u_input.c.x)), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 28>();
    let var_0 = ~(~u_input.c.yy);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_0.x, 15u)]), global1[_wgslsmith_index_u32(select(12115u ^ var_0.x, 4294967295u, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~(13113u | var_0.x), 15u)], _wgslsmith_f_op_f32(-2338f + _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(select(-532f, global1[_wgslsmith_index_u32(33970u, 15u)], true)) != -598f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))) * global1[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.a, u_input.c.x, 53861u) | ~26418u), 15u)]));
    global3 = var_0.x;
    var var_2 = func_4(Struct_1(abs(1u), ~(~(~33834u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1430f, -497f))), _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.d.x, firstTrailingBit(-1i), func_1(), 1i << (1u % 32u)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, var_0.x)), var_0 & var_0), 15u)]))), _wgslsmith_dot_vec3_i32(-vec3<i32>(35003i, u_input.b, u_input.d.x), reverseBits(vec3<i32>(u_input.e, u_input.d.x, u_input.b))) == ~u_input.d.x, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x), vec4<u32>(53675u, var_0.x, 13202u, 65851u))) >> (~23546u % 32u), 30520u));
    let var_3 = 0u;
    let var_4 = Struct_3(var_2.a);
    global1 = array<f32, 15>();
    let var_5 = func_4(Struct_1(var_2.d.a, ~_wgslsmith_add_u32(~var_2.d.b, _wgslsmith_div_u32(var_0.x, var_3)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(var_1.xy))))))), -762f, !(var_2.a.c.x > var_1.x), ~u_input.c.yx);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d.x);
}

