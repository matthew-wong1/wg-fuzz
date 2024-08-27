struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<i32, 15> = array<i32, 15>(2147483647i, 337i, 8025i, i32(-2147483648), 0i, -46788i, 0i, 37750i, 8904i, i32(-2147483648), -34050i, -1i, -21585i, -1i, -75105i);

var<private> global2: array<u32, 14>;

var<private> global3: array<Struct_4, 9>;

var<private> global4: u32 = 105085u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> vec2<f32> {
    global0 = array<f32, 2>();
    var var_0 = Struct_3(Struct_2(vec4<f32>(-302f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(50142u, 2u)], -1669f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(42801u, 2u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 2u)] + -400f)))), 4294967295u, Struct_1(false, min(vec4<u32>(9319u, arg_0.x, global2[_wgslsmith_index_u32(arg_0.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), vec4<u32>(70178u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7249u, 14u)], 14u)], arg_0.x, global2[_wgslsmith_index_u32(arg_0.x, 14u)])), !all(vec4<bool>(true, true, true, false)), ~(~vec3<u32>(24880u, arg_0.x, 0u))), Struct_1(all(vec4<bool>(false, false, false, false)), vec4<u32>(firstLeadingBit(0u), arg_0.x ^ global2[_wgslsmith_index_u32(51517u, 14u)], _wgslsmith_clamp_u32(32041u, 86704u, global2[_wgslsmith_index_u32(arg_0.x, 14u)]), ~4294967295u), true, arg_0)), vec4<u32>(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 16231u, arg_0.x, global2[_wgslsmith_index_u32(1u, 14u)]), vec4<u32>(arg_0.x, 4294967295u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8052u, 14u)], 14u)], 14u)])), ~vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(5612u, 14u)], 35227u)), firstTrailingBit(select(arg_0.x, arg_0.x, false)), _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(arg_0.x, 14u)], _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0.x), arg_0.zy), vec2<u32>(0u, arg_0.x))), max(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(0u), 14u)], 14u)], 56089u)), false);
    global3 = array<Struct_4, 9>();
    var var_1 = countOneBits(global2[_wgslsmith_index_u32(arg_0.x, 14u)]);
    global1 = array<i32, 15>();
    return vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-663f, -585f) - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(76111u, 2u)]))) * global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 14u)], 2u)]));
}

fn func_2() -> vec2<f32> {
    let var_0 = -238f;
    global2 = array<u32, 14>();
    var var_1 = Struct_1(true, firstLeadingBit(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(global2[_wgslsmith_index_u32(80061u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2485u, 14u)], 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)])), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3775u, 14u)], 14u)], 1u, global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)]) ^ vec4<u32>(1u, 47u, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 14u)])))), true, countOneBits(~select(vec3<u32>(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], 0u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 4526u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 14u)]), false)) | firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)] >> (1u % 32u), ~7471u, abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29045u, 14u)], 14u)]))));
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(1u), 14u)];
    let var_3 = vec3<bool>(!(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.d.x, 14u)], 2u)])) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * 164f)), any(vec4<bool>(true, var_1.c, false, all(vec3<bool>(false, var_1.c, var_1.c)))), false);
    return _wgslsmith_f_op_vec2_f32(func_3(reverseBits(var_1.b.zyw)));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    global2 = array<u32, 14>();
    global1 = array<i32, 15>();
    var var_0 = arg_0.c.b;
    var var_1 = abs(select(abs(_wgslsmith_clamp_i32(-109i, firstTrailingBit(global1[_wgslsmith_index_u32(var_0.d.x, 15u)]), -2318i)), firstLeadingBit(~(i32(-1i) * -23809i)), all(select(vec4<bool>(false, arg_0.c.b.c, true, var_0.a), !vec4<bool>(true, var_0.a, var_0.c, var_0.a), !arg_0.c.d.a.d.a))));
    var var_2 = false;
    return arg_0.c.d.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = func_4(Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a.a.xxx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1393f, global0[_wgslsmith_index_u32(arg_2.a.c.b.x, 2u)], arg_2.a.a.x) * vec3<f32>(global0[_wgslsmith_index_u32(109597u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], arg_2.a.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(arg_1))))), global3[_wgslsmith_index_u32(35126u, 9u)]));
    var var_1 = abs(11670u ^ arg_2.a.d.d.x);
    global0 = array<f32, 2>();
    var var_2 = Struct_4(-3519i, func_4(Struct_5(var_0.a.wxz, arg_2.a.a.zy, global3[_wgslsmith_index_u32(select(29647u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.d.d.x, 14u)], 14u)], all(vec4<bool>(var_0.c.a, false, true, var_0.c.c))), 9u)])).d, firstLeadingBit(0i), arg_2);
    let var_3 = global3[_wgslsmith_index_u32(39283u, 9u)];
    return _wgslsmith_f_op_f32(714f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(var_0.c.b.x, arg_2.a.d.d.x, arg_2.a.c.b.x) & var_2.b.d)).x) - _wgslsmith_f_op_f32(462f * var_2.d.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 2u)], -336f, 740f))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec3<f32>(126f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10082u, 14u)], 2u)], -364f), true))), vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(98641u, 14u)], 2u)], _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35608u, 14u)], 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 14u)], 2u)]), Struct_3(Struct_2(vec4<f32>(-1432f, 368f, global0[_wgslsmith_index_u32(0u, 2u)], 151f), 1u, Struct_1(false, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1358u, 14u)], 14u)], 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18846u, 14u)], 14u)]), true, vec3<u32>(70079u, global2[_wgslsmith_index_u32(0u, 14u)], 6707u)), Struct_1(false, vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(44290u, 14u)]), false, vec3<u32>(4294967295u, 5688u, 4294967295u))), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 28266u, 14067u, 0u), true))), _wgslsmith_f_op_f32(f32(-1f) * -539f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(854f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 2u)], 216f) + vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26902u, 14u)], 2u)])))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 2u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13582u, 14u)], 2u)])))))));
    let var_1 = 1u;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, ~global2[_wgslsmith_index_u32(1u, 14u)]) & 30262u, 2u)];
    global0 = array<f32, 2>();
    let var_3 = var_0.xx;
    let var_4 = Struct_1(!(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(66266u, 14u)], 15u)] <= -48480i), ~(~select(~vec4<u32>(3634u, var_1, global2[_wgslsmith_index_u32(1u, 14u)], var_1), _wgslsmith_sub_vec4_u32(vec4<u32>(36765u, var_1, 48923u, global2[_wgslsmith_index_u32(0u, 14u)]), vec4<u32>(global2[_wgslsmith_index_u32(var_1, 14u)], 0u, 0u, 5386u)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), true, vec3<u32>(~0u, global2[_wgslsmith_index_u32(~1u, 14u)], 19417u));
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.zwx, -1i, var_5.x, min(firstTrailingBit(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.d, vec4<i32>(u_input.e, global1[_wgslsmith_index_u32(18304u, 15u)], -2147483647i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 15u)])), u_input.c)), abs(u_input.c)));
}

