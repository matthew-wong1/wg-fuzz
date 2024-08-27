struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
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

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: Struct_3;

var<private> global3: Struct_4;

var<private> global4: array<vec4<i32>, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> i32 {
    let var_0 = Struct_4(global3.b, -u_input.d, min(global4[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(arg_0, ~arg_1)), 18u)], global4[_wgslsmith_index_u32(0u, 18u)]));
    var var_1 = 0u;
    global3 = Struct_4(0i, ~(-1i), reverseBits(_wgslsmith_mult_vec4_i32(~global3.c, vec4<i32>(-1i, u_input.d, 26311i, global3.c.x))) ^ vec4<i32>(~37137i | _wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.x, 1i, global0.x, 2147483647i), var_0.c), var_0.c.x, _wgslsmith_sub_i32(-32003i, global0.x << (u_input.b % 32u)), global3.a));
    global2 = Struct_3(global2.c, 0i, Struct_2(-808f, -u_input.d, Struct_1(global2.d.x, true, global3.c.yx, (1u < arg_1) || true)), global2.d, Struct_2(arg_2.x, ~abs(global3.b), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1662f)))), global2.e.c.d, _wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.a, 0i), -global3.c.xy), global2.e.c.d)));
    let var_2 = true;
    return global0.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> vec2<u32> {
    var var_0 = Struct_4(69108i, max(global0.x >> (reverseBits(u_input.b) % 32u), u_input.d), vec4<i32>(1i, 11126i, _wgslsmith_mod_i32(global0.x, func_3(~1u, u_input.a, vec4<f32>(-860f, -558f, 422f, 446f))), select(firstTrailingBit(min(u_input.d, global3.c.x)), reverseBits(-u_input.d), !(4294967295u == u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1, 1295f)), _wgslsmith_f_op_f32(sign(1850f))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_div_f32(arg_1, 1367f)))))))));
    global0 = countOneBits(global2.a.c.c) & firstTrailingBit(min(_wgslsmith_div_vec2_i32(global2.e.c.c, vec2<i32>(global2.a.c.c.x, u_input.d) >> (u_input.c.xz % vec2<u32>(32u))), var_0.c.wy));
    var_0 = Struct_4(-(~reverseBits(global2.c.b) >> ((u_input.b ^ ~0u) % 32u)), 2147483647i, abs(abs(var_0.c)));
    global4 = array<vec4<i32>, 18>();
    return reverseBits(firstTrailingBit(~(~(~vec2<u32>(23151u, 43845u)))));
}

fn func_1() -> Struct_2 {
    global4 = array<vec4<i32>, 18>();
    global0 = ~vec2<i32>(countOneBits(u_input.d), -29750i);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1705f))))), all(!select(vec3<bool>(false, global2.e.c.b, global2.e.c.d), !vec3<bool>(global2.e.c.d, true, global2.c.c.d), true)), global2.c.c.c, true == (global2.e.c.d | (_wgslsmith_f_op_f32(ceil(1009f)) != _wgslsmith_f_op_f32(-global2.e.c.a))));
    let var_1 = Struct_4(~(i32(-1i) * -47028i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global3.c, ~global4[_wgslsmith_index_u32(u_input.b, 18u)]), _wgslsmith_clamp_i32(~countOneBits(global0.x), -29732i, 1i), global3.b >> (u_input.c.x % 32u)), -abs(_wgslsmith_mod_vec4_i32(select(global4[_wgslsmith_index_u32(u_input.a, 18u)], vec4<i32>(36147i, -2147483647i, 37612i, -25900i), true), global3.c)));
    let var_2 = func_2(vec2<bool>(max(4294967295u, u_input.c.x) > 4294967295u, false), _wgslsmith_f_op_f32(var_0.a * var_0.a));
    return Struct_2(_wgslsmith_f_op_f32(max(-199f, _wgslsmith_f_op_f32(816f - 491f))), global0.x, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a - global2.c.c.a))), !(!(!var_0.b)), vec2<i32>(~global2.c.b, var_1.c.x), false));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    global2 = Struct_3(arg_1, abs(global2.b), func_1(), vec3<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-1230f + _wgslsmith_f_op_f32(1253f + global2.e.c.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global2.d.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f)))), global2.e);
    let var_0 = arg_1.c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f), arg_0)))), var_0.b | all(!(!vec3<bool>(false, global2.c.c.b, true))), ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(-global2.e.c.c, -arg_3.xy, arg_3.zx)), global2.c.c.d);
    return global2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 18>();
    let var_0 = func_4(-906f, func_1(), _wgslsmith_f_op_f32(-func_1().c.a), select(~countOneBits(vec3<i32>(global3.c.x, 4440i, u_input.d)), firstLeadingBit(global3.c.xyz), global2.c.c.b) | vec3<i32>(abs(global2.e.c.c.x), -22189i >> (~u_input.a % 32u), -56645i));
    global0 = select(_wgslsmith_div_vec2_i32(var_0.c.c, abs(~global2.e.c.c)), -vec2<i32>(2147483647i, var_0.b) & ((vec2<i32>(1i, global2.b) & global2.c.c.c) & -vec2<i32>(11472i, var_0.c.c.x)), vec2<bool>(var_0.c.d, var_0.c.d)) & firstLeadingBit(firstTrailingBit(vec2<i32>(func_4(-1061f, Struct_2(1000f, 25191i, Struct_1(751f, false, vec2<i32>(13272i, -13134i), true)), global2.d.x, vec3<i32>(var_0.c.c.x, global0.x, u_input.d)).c.c.x, _wgslsmith_mod_i32(global2.a.b, 16272i))));
    let var_1 = min(reverseBits(~max(vec4<u32>(4294967295u, 3016u, 6685u, 18925u), vec4<u32>(u_input.a, 1u, 10415u, 0u)) << (~vec4<u32>(0u, u_input.c.x, u_input.a, 0u) % vec4<u32>(32u))), ~(vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 16385u), 58559u, abs(u_input.b), 0u) & vec4<u32>(countOneBits(u_input.c.x), u_input.b, 14173u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 87598u, 4294967295u), u_input.c))));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-953f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(313f, var_2.c.a)));
    var var_4 = Struct_4(var_2.c.c.x, firstLeadingBit(func_4(-906f, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~global0.x, func_4(global2.a.a, var_0, -100f, global1[_wgslsmith_index_u32(var_1.x, 23u)]).c), -714f, vec3<i32>(-global2.b, var_0.b << (var_1.x % 32u), 1i)).b), ~(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.c.c, vec2<i32>(var_0.b, u_input.d)), min(0i, 34312i), -1i, -32963i >> (u_input.b % 32u)) & global4[_wgslsmith_index_u32(4294967295u, 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

