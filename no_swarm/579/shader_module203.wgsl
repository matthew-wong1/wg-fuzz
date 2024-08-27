struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, true, false, true, true, false, true, false, false, false, false, false);

var<private> global1: array<f32, 2>;

var<private> global2: array<vec2<i32>, 10>;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(85203u, vec3<i32>(9238i, 1i, 24292i)), Struct_1(0u, vec3<i32>(-1i, -14392i, i32(-2147483648))));

var<private> global4: array<u32, 24> = array<u32, 24>(4294967295u, 0u, 17219u, 0u, 1989u, 27222u, 1u, 47497u, 1u, 5224u, 0u, 43493u, 32998u, 0u, 0u, 2430u, 44670u, 26638u, 29713u, 41091u, 1345u, 0u, 4294967295u, 21638u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<bool, 13>();
    let var_0 = Struct_2(firstLeadingBit(firstLeadingBit(_wgslsmith_add_u32(1u >> (arg_0.x % 32u), min(arg_2.a, 0u)))), any(vec4<bool>(true, true, arg_1, arg_1)), Struct_1(~1u, arg_2.b & (arg_2.b << (vec3<u32>(0u, arg_0.x, 4294967295u) % vec3<u32>(32u)))), select(!(!select(vec4<bool>(false, arg_1, global0[_wgslsmith_index_u32(u_input.b, 13u)], true), vec4<bool>(true, true, true, arg_1), arg_1)), vec4<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2.a, 24u)], 13u)])), (arg_0.x > 4294967295u) && (0i == arg_2.b.x), !global0[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 24u)], 13u)], global0[_wgslsmith_index_u32(~1u, 13u)]), arg_1));
    global4 = array<u32, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, 705f, global1[_wgslsmith_index_u32(5767u, 2u)])))))))));
    let var_2 = Struct_2(356u, all(vec2<bool>(var_0.b, !(!arg_1))), Struct_1(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(91512u, 24u)]), vec3<u32>(82617u, arg_2.a, 189u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_2.a, global4[_wgslsmith_index_u32(0u, 24u)]), u_input.a, u_input.a), vec3<u32>(64877u, 0u, arg_0.x), ~vec3<u32>(u_input.b, 1u, 4294967295u))), countOneBits(-vec3<i32>(arg_2.b.x, -2147483647i, var_0.c.b.x)) << ((reverseBits(u_input.a) | ~u_input.a) % vec3<u32>(32u))), !(!var_0.d));
    return select(vec2<bool>(true, all(vec2<bool>(var_2.d.x, any(var_0.d.xyw)))), var_2.d.ww, select(var_2.d.zx, !vec2<bool>(var_0.c.a != 28821u, var_0.d.x | false), var_2.d.xx));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    global3 = array<Struct_1, 2>();
    global0 = array<bool, 13>();
    return Struct_2(_wgslsmith_mult_u32(~u_input.a.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 53831u, global4[_wgslsmith_index_u32(50966u, 24u)], global4[_wgslsmith_index_u32(84544u, 24u)]), reverseBits(vec4<u32>(arg_3.a, arg_1, 0u, arg_1))))), select(false != global0[_wgslsmith_index_u32(~(0u >> (global4[_wgslsmith_index_u32(u_input.b, 24u)] % 32u)), 13u)], any(func_3(arg_0 | arg_0, all(arg_2.xz), Struct_1(406u, arg_3.b))), false), global3[_wgslsmith_index_u32(~0u, 2u)], !(!(!(!vec4<bool>(true, true, arg_2.x, true)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global2 = array<vec2<i32>, 10>();
    let var_0 = arg_0;
    let var_1 = select(var_0.d, !var_0.d, arg_0.d.x);
    return Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_0.c.a, 45251u, var_0.c.a), arg_0.c.a) << (u_input.a.xx % vec2<u32>(32u)), u_input.a.yz), arg_0.b, arg_0.c, select(vec4<bool>(var_1.x, global4[_wgslsmith_index_u32(func_2(u_input.a.xy, arg_0.a, vec3<bool>(arg_0.b, var_0.d.x, arg_0.b), global3[_wgslsmith_index_u32(1u, 2u)]).c.a, 24u)] == select(1u, var_0.a, true), true, true), var_1, select(!var_0.d, !(!var_1), true)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(_wgslsmith_sub_u32(~_wgslsmith_div_u32(20081u, countOneBits(u_input.a.x)), 14422u), (i32(-1i) * -(~(-1i))) != -arg_1.b.x, Struct_1(1u, -firstTrailingBit(vec3<i32>(arg_1.b.x, arg_0.c.b.x, 1i))), vec4<bool>((i32(-1i) * -59806i) != (max(arg_1.b.x, -1i) | arg_1.b.x), !all(!vec4<bool>(arg_0.b, arg_0.d.x, true, true)), false, func_4(func_2(min(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 24u)], arg_0.c.a), u_input.a.yz), 36594u, arg_0.d.yyy, func_4(arg_0).c)).b));
    var var_1 = arg_1;
    let var_2 = -1135f;
    var var_3 = vec4<u32>(var_1.a, _wgslsmith_clamp_u32(func_2(select(u_input.a.zx, vec2<u32>(arg_0.c.a, var_0.a), var_0.d.yz), ~35536u, func_2(u_input.a.xx, 1u, arg_0.d.zzy, var_0.c).d.zyx, func_2(u_input.a.yz, 4294967295u, vec3<bool>(false, true, false), arg_1).c).c.a << (~_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(4294967295u, var_1.a)) % 32u), 44284u, ~_wgslsmith_add_u32(10143u, 0u)), ~countOneBits(0u), 1u);
    let var_4 = _wgslsmith_div_vec4_i32(abs(reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c.b.x, -1i, 0i, 23398i), vec4<i32>(var_1.b.x, 25992i, var_1.b.x, -25192i)), vec4<i32>(arg_0.c.b.x, var_0.c.b.x, arg_1.b.x, 2147483647i)))), vec4<i32>(-242i, abs(var_0.c.b.x), _wgslsmith_dot_vec3_i32(arg_0.c.b, -arg_1.b), arg_0.c.b.x) ^ abs(firstLeadingBit(~vec4<i32>(-7675i, arg_0.c.b.x, var_0.c.b.x, arg_0.c.b.x))));
    return abs(_wgslsmith_add_vec4_u32(vec4<u32>(max(8342u, 4294967295u), _wgslsmith_add_u32(abs(1u), ~16185u), (u_input.b & arg_0.a) << (~32324u % 32u), ~(~34410u)), ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, arg_1.a, 1u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(19003u, 1u, 57605u, var_1.a), vec4<u32>(var_1.a, 28502u, 22593u, 1u)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(~min(u_input.a.x, 4294967295u), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(6320u, 1u, global4[_wgslsmith_index_u32(86737u, 24u)]) | vec3<u32>(1u, 0u, global4[_wgslsmith_index_u32(0u, 24u)]), vec3<u32>(0u, u_input.a.x, 1u)), 24u)], _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 4294967295u), 1u), _wgslsmith_mod_u32(62280u, 4294967295u)), func_5(func_4(func_2(vec2<u32>(45680u, global4[_wgslsmith_index_u32(5490u, 24u)]), global4[_wgslsmith_index_u32(4294967295u, 24u)], vec3<bool>(global0[_wgslsmith_index_u32(2676u, 13u)], true, global0[_wgslsmith_index_u32(48954u, 13u)]), global3[_wgslsmith_index_u32(34572u, 2u)])), func_2(vec2<u32>(4294967295u, 1u), _wgslsmith_sub_u32(4294967295u, 41215u), func_2(vec2<u32>(u_input.b, 1u), 75861u, vec3<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 24u)], 13u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 24u)], 2u)]).d.wzz, global3[_wgslsmith_index_u32(func_2(u_input.a.zz, 0u, vec3<bool>(false, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 24u)], 13u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 24u)], 24u)], 13u)]), global3[_wgslsmith_index_u32(u_input.b, 2u)]).c.a, 2u)]).c)), abs(~abs(vec4<u32>(global4[_wgslsmith_index_u32(0u, 24u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], 6796u, 4294967295u)))), 2u)];
    global2 = array<vec2<i32>, 10>();
    var var_1 = vec2<u32>(u_input.a.x, ~0u);
    global0 = array<bool, 13>();
    var var_2 = var_0.b.x;
    return vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 13u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_1());
    var var_1 = vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], u_input.b, ~(~u_input.b | global4[_wgslsmith_index_u32(57713u & global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.a.x), 24u)], 24u)]), _wgslsmith_clamp_u32(~firstLeadingBit(49204u), abs(34309u), u_input.b));
    var var_2 = var_0.yxz;
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(select(0i, _wgslsmith_sub_i32(-1i, ~(-1i)), true), -max(0i, 1i), _wgslsmith_div_i32(abs(0i), -(~(-7758i))), _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(43791i, -1i), vec2<i32>(-26557i, -27840i)), -49996i)), vec4<i32>(-62010i >> (var_1.x % 32u), -func_4(func_4(Struct_2(u_input.b, var_0.x, Struct_1(u_input.b, vec3<i32>(9650i, -68131i, -77175i)), vec4<bool>(global0[_wgslsmith_index_u32(7022u, 13u)], var_0.x, var_0.x, true)))).c.b.x, _wgslsmith_mod_i32(abs(1i), 2147483647i), 1i >> (_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 31847u, global4[_wgslsmith_index_u32(4294967295u, 24u)], 71202u), vec4<u32>(0u, 76u, 59190u, u_input.b))) % 32u)));
    global4 = array<u32, 24>();
    global0 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 2u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(var_1.x, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 24u)], 2u)], -693f) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-506f, 435f) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(415f, -822f), vec2<f32>(1431f, 588f))))))));
}

