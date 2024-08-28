struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

var<private> global1: Struct_1;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(3880u, 84442u, 44122u, 4294967295u));

var<private> global3: Struct_2;

var<private> global4: u32 = 34610u;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(69882u | arg_2.b.d.c, u_input.b.x), vec2<bool>(any(!vec3<bool>(false, global3.e.b.x, global1.b.x)), !global1.b.x), global1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1022f, 120f) * _wgslsmith_f_op_vec2_f32(-arg_3.b.e.d))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(global1.d))))));
    var var_1 = i32(-1i) * -52242i;
    var var_2 = true;
    global1 = Struct_1(firstTrailingBit(~firstLeadingBit(firstLeadingBit(14193u))), !select(vec2<bool>(arg_2.b.e.b.x || arg_3.b.e.b.x, any(arg_3.b.c)), !arg_2.b.c.yz, true), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(6992u, 48641u, 4294967295u, 10649u) >> (global2.a % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(arg_3.b.d.a, arg_2.b.d.a), 1u, ~global2.a.x, ~arg_1.a.x)), ~select(min(arg_1.a, arg_1.a), max(global2.a, arg_1.a), arg_3.b.c)), _wgslsmith_f_op_vec2_f32(select(arg_3.b.e.d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(278f, var_0.d.x, global3.e.b.x))))), vec2<bool>(global1.b.x, false))));
    let var_3 = global1.a;
    return 55553u ^ ~max(1u, ~(~arg_1.a.x));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = global3.c.zzx;
    global4 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(~u_input.b), u_input.b), vec3<u32>(func_3(global3.a, Struct_4(global2.a), Struct_3(1u, Struct_2(-85125i, global2.a.x, global3.c, Struct_1(global1.a, var_0.yx, global1.a, global3.d.d), global3.d)), Struct_3(50605u, Struct_2(1i, global3.d.c, vec4<bool>(global3.e.b.x, true, global3.e.b.x, global1.b.x), global3.e, global3.d))) ^ 57021u, _wgslsmith_mod_u32(global3.b, global1.a), max(_wgslsmith_mult_u32(8297u, 1u), global2.a.x)));
    var_0 = !global3.c.www;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2181f - global3.d.d.x) - _wgslsmith_f_op_f32(global3.d.d.x + arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.d.d.x - global3.d.d.x), _wgslsmith_f_op_f32(1471f + -680f))), -1000f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2303f, 1373f, 148f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.x, 1000f, -1856f, global3.d.d.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-216f, 486f, 624f, global1.d.x)), vec4<f32>(global3.e.d.x, global1.d.x, global3.e.d.x, -1354f), false)))));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.d.yy, vec2<i32>(global3.a, countOneBits(global3.a))), -2147483647i);
    return vec4<bool>(true, global1.b.x, -1000f > arg_0, false);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    global1 = global3.e;
    var var_0 = Struct_2(reverseBits(-global3.a), 1u, !func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(884f + 1324f), global3.d.d.x))), global3.e, global3.e);
    global3 = Struct_2(u_input.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(~(~1u), global3.e.c), 29862u), select(!vec4<bool>(true, any(global3.c.xxw), global3.e.b.x, true), vec4<bool>(func_2(-482f).x, true, true, var_0.d.b.x), !global3.d.b.x), Struct_1(_wgslsmith_clamp_u32(global1.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(26891u, 10004u, 75805u)), var_0.d.c), global3.e.c), select(!select(global3.d.b, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], false), !select(vec2<bool>(false, true), var_0.e.b, global3.e.b.x), global3.e.b.x), global2.a.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.d.x), _wgslsmith_f_op_f32(-899f - 723f)), vec2<f32>(579f, _wgslsmith_f_op_f32(var_0.e.d.x - global3.e.d.x)), !global3.c.yx))), var_0.d);
    var var_1 = vec4<u32>(~global1.c, 4294967295u, global3.d.a, ~global1.c) & firstTrailingBit(~global2.a);
    var var_2 = Struct_3(countOneBits(_wgslsmith_mod_u32(countOneBits(var_0.d.a), _wgslsmith_add_u32(49874u, 1u))), Struct_2(firstLeadingBit(firstTrailingBit(countOneBits(-35144i))), var_1.x, select(select(select(vec4<bool>(global1.b.x, false, var_0.c.x, var_0.d.b.x), global3.c, global3.d.b.x), global3.c, func_2(513f).x), vec4<bool>(true, var_0.d.b.x, any(global0[_wgslsmith_index_u32(var_0.d.a, 1u)]), -25507i >= u_input.a), var_0.d.b.x), global3.d, var_0.d));
    return firstTrailingBit(~(-(~_wgslsmith_mult_i32(var_0.a, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, abs(_wgslsmith_sub_i32(func_1(global1.d), ~0i)), 2147483647i), u_input.c, -2147483647i, global3.a);
    let var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-166f * 794f), _wgslsmith_f_op_f32(f32(-1f) * -1693f))))).x;
    var var_2 = Struct_3(u_input.b.x, Struct_2(-(_wgslsmith_dot_vec3_i32(u_input.d, var_0.wwy) << (~global3.e.a % 32u)), _wgslsmith_div_u32(global1.a, ~(~36186u)), global3.c, global3.d, Struct_1(min(abs(global3.b), 23389u), func_2(_wgslsmith_f_op_f32(abs(-1106f))).zw, _wgslsmith_mod_u32(global3.b, _wgslsmith_sub_u32(global2.a.x, global3.e.a)), global3.d.d)));
    var var_3 = ~(-2147483647i);
    global3 = var_2.b;
    let var_4 = var_2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, countOneBits(~vec3<u32>(_wgslsmith_clamp_u32(global3.b, 0u, 4294967295u), global2.a.x, firstLeadingBit(u_input.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-914f)) - _wgslsmith_div_f32(1335f, global3.d.d.x)) + var_2.b.e.d.x))));
}

