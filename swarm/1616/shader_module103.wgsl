struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false));

var<private> global1: array<i32, 4> = array<i32, 4>(12997i, -10442i, 0i, -49217i);

var<private> global2: array<bool, 23> = array<bool, 23>(false, false, true, false, true, false, true, true, false, true, true, false, false, false, true, false, false, true, false, true, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = u_input.c;
    let var_1 = 37626i;
    var var_2 = select(vec2<bool>(true, true), !vec2<bool>(!any(vec3<bool>(global2[_wgslsmith_index_u32(33777u, 23u)], arg_0, true)), true), !(!(!(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 23u)], global2[_wgslsmith_index_u32(u_input.c.x, 23u)])))));
    let var_3 = ~(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_1, 0i, global1[_wgslsmith_index_u32(22841u, 4u)]), vec4<i32>(var_1, 20657i, var_1, global1[_wgslsmith_index_u32(40330u, 4u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(0u, 4u)], 1i, 8387i)) << (vec4<u32>(_wgslsmith_sub_u32(6661u, var_0.x), firstTrailingBit(u_input.c.x), 1u, select(var_0.x, var_0.x, var_2.x)) % vec4<u32>(32u))));
    global0 = array<vec4<bool>, 18>();
    return ~(~u_input.c.x) & var_0.x;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(0u);
    let var_1 = u_input.a;
    let var_2 = u_input.c;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(819f + -692f) - -259f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))), -u_input.b.x);
    var var_4 = global2[_wgslsmith_index_u32((_wgslsmith_mult_u32(u_input.c.x, 4294967295u) ^ func_3(_wgslsmith_f_op_f32(floor(var_3.a)) >= 268f)) & (42314u | (firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 0u, u_input.c.x), vec4<u32>(1u, 4294967295u, 37664u, 0u))) << ((4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 61431u, var_2.x, var_0.a), vec4<u32>(0u, 4294967295u, 71491u, u_input.c.x))) % 32u))), 23u)];
    return var_2.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(245f))));
    let var_1 = vec3<bool>((false & global2[_wgslsmith_index_u32(~func_2(true), 23u)]) | ((true | (arg_1 && arg_1)) || global2[_wgslsmith_index_u32(~4294967295u, 23u)]), !arg_1, !global2[_wgslsmith_index_u32(~48214u, 23u)]);
    global2 = array<bool, 23>();
    global2 = array<bool, 23>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) * -414f);
    return Struct_4(Struct_3(435f, firstTrailingBit(global1[_wgslsmith_index_u32(abs(u_input.c.x), 4u)]) | global1[_wgslsmith_index_u32(1u, 4u)]), Struct_2(!vec2<bool>(arg_1 | arg_1, false), -global1[_wgslsmith_index_u32(u_input.c.x & func_3(var_1.x), 4u)], Struct_1(0u), var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1506f), _wgslsmith_f_op_f32(ceil(1057f))))), !(!(true & arg_1)))), arg_0, abs(select(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 4u)], 1i, -2196i, 17010i) >> ((vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 41628u) << (vec4<u32>(0u, arg_0.x, 1u, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-1i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.c.x), 4u)], _wgslsmith_div_i32(-17655i, 1i), -27561i), _wgslsmith_f_op_f32(round(-423f)) == _wgslsmith_f_op_f32(f32(-1f) * -153f))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: i32) -> i32 {
    var var_0 = Struct_4(func_1(vec2<u32>(_wgslsmith_sub_u32(1u, 0u), 46641u), false & (~93438u != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 6291u), vec2<u32>(u_input.c.x, u_input.c.x)))).a, Struct_2(arg_0.b.a, ~(-24240i), func_1(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(12607u, 1u)), ~vec2<u32>(u_input.c.x, 4294967295u)), all(!vec3<bool>(false, true, arg_0.b.d))).b.c, all(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_0.b.c.a, 23u)]))), _wgslsmith_f_op_f32(sign(arg_0.c)), u_input.c.xz, ~arg_0.e);
    let var_1 = func_1(~(~u_input.c.zy), global2[_wgslsmith_index_u32(arg_0.b.c.a, 23u)]);
    return arg_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(reverseBits(-(~global1[_wgslsmith_index_u32(22071u, 4u)])) > u_input.a.x);
    var var_1 = func_4(func_1(u_input.c.zy, true), ~_wgslsmith_div_vec2_i32(firstLeadingBit(abs(vec2<i32>(u_input.b.x, -54175i))), select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.b.x, 30726i)), vec2<i32>(-9884i, 15987i) & vec2<i32>(u_input.a.x, -3761i), select(false, true, true))), -2147483647i);
    var_0 = any(func_1(~vec2<u32>(u_input.c.x, u_input.c.x) << (u_input.c.xy % vec2<u32>(32u)), !(reverseBits(u_input.c.x) > ~3513u)).b.a);
    let var_2 = !func_1(u_input.c.zz, true).b.a;
    var var_3 = u_input.c.x;
    let var_4 = true;
    var var_5 = func_1(~select(_wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(28592u, 30842u)), u_input.c.zz, vec2<bool>(func_1(vec2<u32>(4294967295u, 35602u), global2[_wgslsmith_index_u32(u_input.c.x, 23u)]).b.d, !var_4)), var_4).b;
    var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 4u)];
    let var_6 = Struct_3(-1000f, var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 19778u, u_input.c.x, ~vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, -vec3<i32>(var_6.b, -39985i, 1i)), 2147483647i, -1i));
}

