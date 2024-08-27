struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_3(vec3<i32>(-15708i, -17799i, 2147483647i), vec3<u32>(0u, 1u, 25243u)), 4294967295u), Struct_4(Struct_3(vec3<i32>(-2869i, 0i, 2147483647i), vec3<u32>(51414u, 11731u, 1u)), 583u), Struct_4(Struct_3(vec3<i32>(2008i, -13752i, 2147483647i), vec3<u32>(10468u, 32839u, 1u)), 1u), Struct_4(Struct_3(vec3<i32>(40717i, -1i, 3755i), vec3<u32>(4294967295u, 50136u, 37961u)), 15345u), Struct_4(Struct_3(vec3<i32>(0i, -41750i, 2147483647i), vec3<u32>(1u, 0u, 12842u)), 0u), Struct_4(Struct_3(vec3<i32>(0i, 0i, 0i), vec3<u32>(32986u, 20581u, 29460u)), 6284u), Struct_4(Struct_3(vec3<i32>(1i, -1i, 8928i), vec3<u32>(31967u, 8599u, 52347u)), 64511u), Struct_4(Struct_3(vec3<i32>(2147483647i, -30538i, -58431i), vec3<u32>(0u, 11766u, 52234u)), 81804u), Struct_4(Struct_3(vec3<i32>(-1i, 0i, i32(-2147483648)), vec3<u32>(0u, 0u, 1u)), 0u));

var<private> global1: Struct_3 = Struct_3(vec3<i32>(17344i, 3325i, 2147483647i), vec3<u32>(36305u, 4294967295u, 42945u));

var<private> global2: array<Struct_2, 27>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec2<i32> {
    global0 = array<Struct_4, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 211f, 1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-891f, -1159f, 586f) + vec3<f32>(867f, 565f, 333f))) * vec3<f32>(1f, 1f, 1f))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(994f, 169f, var_0.x))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2106f, 326f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, 437f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1023f) * vec3<f32>(var_0.x, -252f, 352f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(144f, var_0.x, 713f), vec3<f32>(var_0.x, var_0.x, 136f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 646f, var_0.x))), false));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1456f, -787f, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1439f, var_0.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1010f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.x, -233f) * vec3<f32>(var_1.x, 148f, -333f)))))));
    return countOneBits(select(global1.a.yx, vec2<i32>(~(-2147483647i), -42341i) << (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global1.b.zz, vec2<u32>(1u, global1.b.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.b.x), vec2<u32>(global1.b.x, 4294967295u))) % vec2<u32>(32u)), !(!all(vec4<bool>(true, false, false, false)))));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global0 = array<Struct_4, 9>();
    let var_0 = true;
    global2 = array<Struct_2, 27>();
    var var_1 = Struct_4(Struct_3(vec3<i32>(0i << (reverseBits(global1.b.x) % 32u), ~_wgslsmith_dot_vec2_i32(arg_0.zz, global1.a.yy), global1.a.x), select(~abs(vec3<u32>(12234u, global1.b.x, 0u)), global1.b, true)), abs(87779u));
    var_1 = Struct_4(var_1.a, 1u);
    return arg_0.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = false;
    let var_1 = vec4<u32>(_wgslsmith_div_u32(global1.b.x, 0u), global1.b.x, arg_1.b.c.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(~(arg_1.a.c | vec3<u32>(80415u, arg_0, 22052u)), arg_1.b.c)));
    global2 = array<Struct_2, 27>();
    let var_2 = Struct_3(vec3<i32>(-(global1.a.x | -11007i) & func_3(global1.a), ~abs(~(-36082i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.a.zx, _wgslsmith_add_vec2_i32(vec2<i32>(global1.a.x, 27874i), u_input.a.yy), u_input.a.zx), -(arg_1.d.a & vec2<i32>(1i, arg_1.d.a.x)))), vec3<u32>(var_1.x, arg_2, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(62094u, arg_2), arg_2 | 4294967295u)));
    let var_3 = -(~(-5145i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(-u_input.a.yx >> (reverseBits(global1.b.xz) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-19102i), abs(7928i)), func_1()), global1.a.zy), vec4<bool>(func_2(global1.b.x, Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), vec4<bool>(false, true, false, true), global1.b), Struct_1(global1.a.yy, vec4<bool>(true, true, false, true), vec3<u32>(674u, 67453u, global1.b.x)), global1.b.x, Struct_1(vec2<i32>(global1.a.x, 16553i), vec4<bool>(false, false, true, false), vec3<u32>(1u, 1u, global1.b.x)), 1204f), 0u), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), true, !(_wgslsmith_div_f32(698f, -1259f) != _wgslsmith_f_op_f32(floor(-194f)))), global1.b);
    var_0 = Struct_1(countOneBits(vec2<i32>(24476i, -2147483647i >> (global1.b.x % 32u))) ^ global1.a.yz, select(var_0.b, vec4<bool>(!func_2(global1.b.x, global2[_wgslsmith_index_u32(var_0.c.x, 27u)], var_0.c.x), true, !(true != var_0.b.x), var_0.b.x), !vec4<bool>(!var_0.b.x, !var_0.b.x, func_2(var_0.c.x, Struct_2(Struct_1(vec2<i32>(global1.a.x, global1.a.x), vec4<bool>(false, false, var_0.b.x, var_0.b.x), vec3<u32>(4294967295u, global1.b.x, var_0.c.x)), Struct_1(vec2<i32>(0i, 2147483647i), vec4<bool>(false, var_0.b.x, true, false), var_0.c), 20408u, Struct_1(var_0.a, vec4<bool>(false, true, true, false), vec3<u32>(0u, 4294967295u, var_0.c.x)), -670f), 4294967295u), false)), vec3<u32>(~global1.b.x, 66541u, ~(~var_0.c.x)));
    let var_1 = var_0.b.zz;
    var_0 = Struct_1(~(~_wgslsmith_add_vec2_i32(global1.a.zy, u_input.a.zz) & abs(vec2<i32>(global1.a.x, var_0.a.x) & vec2<i32>(u_input.a.x, -2147483647i))), !var_0.b, ~max(~(global1.b & var_0.c), global1.b));
    var_0 = Struct_1(func_1(), !(!select(var_0.b, select(var_0.b, var_0.b, vec4<bool>(true, true, var_1.x, var_0.b.x)), vec4<bool>(false, false, var_0.b.x, var_1.x))), var_0.c);
    let var_2 = 48949u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -663f))) - -146f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(-1051f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1234f + -294f) - _wgslsmith_f_op_f32(1395f - -1800f))))));
}

