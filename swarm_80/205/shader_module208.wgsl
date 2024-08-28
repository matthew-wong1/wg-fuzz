struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(true, 1000f), Struct_3(true, 1625f), Struct_3(true, 1387f), Struct_3(false, 828f), Struct_3(false, -1000f), Struct_3(false, 435f), Struct_3(true, 1222f), Struct_3(true, 1475f), Struct_3(true, 2707f), Struct_3(true, 1281f), Struct_3(false, 378f), Struct_3(true, 717f), Struct_3(false, 213f), Struct_3(true, -1298f), Struct_3(false, -161f), Struct_3(true, 757f), Struct_3(true, -1473f), Struct_3(true, 351f), Struct_3(true, 805f), Struct_3(true, -423f), Struct_3(true, 860f), Struct_3(false, 451f), Struct_3(true, 838f), Struct_3(false, -1702f), Struct_3(true, 1205f), Struct_3(true, -828f), Struct_3(true, 1003f));

var<private> global2: bool;

var<private> global3: Struct_3 = Struct_3(false, 255f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    var var_0 = u_input.e;
    var var_1 = global1[_wgslsmith_index_u32(~arg_0.e.x, 27u)];
    var_0 = 28939i;
    global2 = global3.a;
    let var_2 = Struct_2(Struct_1(true), !vec2<bool>(false, arg_0.d.a), -530f, arg_0.d, select(~(~u_input.a.ywx) ^ vec3<u32>(~u_input.b, u_input.a.x, 7699u), firstTrailingBit(~arg_0.e), !vec3<bool>(any(vec3<bool>(global3.a, true, true)), arg_0.a.a, arg_0.d.a)));
    return var_2.b;
}

fn func_2() -> Struct_4 {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(true), func_3(Struct_2(Struct_1(false), !vec2<bool>(true, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-452f, global3.b, global3.a))), Struct_1(true), _wgslsmith_add_vec3_u32(max(u_input.a.wzx, vec3<u32>(u_input.a.x, 1u, u_input.a.x)), countOneBits(vec3<u32>(33416u, u_input.a.x, 4294967295u)))), 342f), _wgslsmith_f_op_f32(f32(-1f) * -3440f), Struct_1(!any(vec4<bool>(true, true, true, true))), ~((u_input.a.www << (vec3<u32>(u_input.d.x, 10028u, u_input.d.x) % vec3<u32>(32u))) & u_input.a.yyz) ^ vec3<u32>(_wgslsmith_div_u32(51982u, ~5225u), u_input.d.x, ~27160u));
    var var_2 = Struct_2(Struct_1(global3.a), !vec2<bool>(true & (1i > u_input.c), u_input.b != var_1.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(913f + global3.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1713f)), _wgslsmith_f_op_f32(var_1.c - -1551f))), _wgslsmith_div_f32(-909f, _wgslsmith_f_op_f32(f32(-1f) * -462f))), Struct_1(func_3(Struct_2(Struct_1(var_0), !var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -678f), Struct_1(false), vec3<u32>(var_1.e.x, 1u, u_input.b) & vec3<u32>(u_input.d.x, 22778u, var_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f * var_1.c))).x), u_input.a.wxz);
    global1 = array<Struct_3, 27>();
    var var_3 = global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(var_1.e.yy, vec2<u32>(11362u, u_input.a.x) & var_2.e.yy) >> (var_1.e.x % 32u)) & ~select(4294967295u, var_1.e.x, !(1559f != var_2.c)), 27u)];
    return Struct_4(Struct_2(var_1.a, !(!vec2<bool>(true, var_3.a)), 359f, var_1.d, ~firstTrailingBit(countOneBits(vec3<u32>(0u, var_2.e.x, 25745u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(var_2.c - -1234f))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = arg_2.x;
    global1 = array<Struct_3, 27>();
    var var_1 = func_2();
    global1 = array<Struct_3, 27>();
    let var_2 = vec3<f32>(_wgslsmith_div_f32(arg_0.b, arg_0.b), var_1.a.c, 1000f);
    return abs(~reverseBits(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-21385i, u_input.e), u_input.e, max(u_input.c, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_div_vec3_u32(min(u_input.a.xwz, ~u_input.a.yzy), ~vec3<u32>(55290u, 3757u, u_input.b)) >> (~(u_input.a.yzw >> (_wgslsmith_sub_vec3_u32(u_input.a.wzw, u_input.a.wyx) % vec3<u32>(32u))) % vec3<u32>(32u))) | u_input.a.zww;
    global2 = global3.a;
    var var_1 = Struct_1(u_input.e <= firstLeadingBit(func_1(Struct_3(global3.a, -903f), vec4<u32>(u_input.d.x, 36343u, var_0.x, 27888u), _wgslsmith_f_op_vec2_f32(vec2<f32>(686f, global3.b) - vec2<f32>(681f, global3.b)))));
    var var_2 = Struct_1(true);
    global1 = array<Struct_3, 27>();
    global1 = array<Struct_3, 27>();
    var var_3 = vec2<i32>(2147483647i, abs(0i) << (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -867f), max(u_input.b, var_0.x), ~_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c, 16358i, 0i), vec3<i32>(-19001i, 0i, 2147483647i)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, ~u_input.e, -15489i), vec3<i32>(var_3.x, -1i, ~var_3.x)), firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(44691i, 1i)), vec2<i32>(13185i, 1i)))), ~(~(~var_0)));
}

