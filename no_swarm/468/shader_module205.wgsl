struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: vec3<u32>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: vec3<i32> = vec3<i32>(1i, 68256i, 12029i);

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(1u ^ global1.x), 24u)] - global0[_wgslsmith_index_u32(66897u, 24u)]);
    global0 = array<f32, 24>();
    global4 = vec3<f32>(global4.x, -311f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-160f * 301f))));
    global1 = abs(~vec3<u32>(u_input.c.x, min(u_input.c.x, 60343u >> (global1.x % 32u)), ~(u_input.c.x | 17251u)));
    let var_1 = !select(vec4<bool>(global2.x, false, global2.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 24u)]) != _wgslsmith_f_op_f32(sign(1013f))), select(select(!vec4<bool>(global2.x, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, true, true), global2.x)), vec4<bool>(global2.x && true, global2.x & global2.x, u_input.c.x < u_input.c.x, !global2.x), select(select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), vec4<bool>(global2.x, global2.x, false, true), global4.x <= var_0)), true | !(!global2.x));
    return 1i;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: u32) -> Struct_3 {
    global2 = vec2<bool>(0u >= arg_2, !(_wgslsmith_clamp_i32(func_3(), -global3.x, select(5698i, arg_1.x, false)) >= (global3.x | (arg_1.x >> (42067u % 32u)))));
    global3 = reverseBits(-(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, global3.x, 12134i), vec3<i32>(arg_1.x, u_input.b, arg_1.x)), ~arg_1.x, 2147483647i) << ((firstLeadingBit(vec3<u32>(u_input.c.x, 54924u, u_input.c.x)) | ~vec3<u32>(global1.x, 1u, 5098u)) % vec3<u32>(32u))));
    return Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(1i >> (arg_2 % 32u)), 0i, arg_1.x, _wgslsmith_mult_i32(-11199i, global3.x) | 1i), vec4<i32>(-2147483647i, abs(-2147483647i), countOneBits(global3.x), arg_1.x & -2147483647i)), Struct_2(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, 49600i), global3.yy, vec2<i32>(u_input.b, 1i)) & vec2<i32>(16330i, 3150i), abs(u_input.d.zz), firstLeadingBit(u_input.d.zx)), vec2<u32>(_wgslsmith_mod_u32(1u, arg_0.x), arg_0.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global2.x == any(select(select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, global2.x, global2.x), global2.x), select(vec4<bool>(true, false, global2.x, true), vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, false, global2.x, global2.x)), vec4<bool>(global2.x, true, false, global2.x)), vec4<bool>(true, all(vec4<bool>(true, false, global2.x, global2.x)), global4.x > global0[_wgslsmith_index_u32(64883u, 24u)], global2.x), global2.x && (-1321f <= global4.x)));
    let var_1 = global1.x;
    global3 = vec3<i32>(-1i) * -(~vec3<i32>(arg_0.a.x, arg_0.a.x, u_input.d.x));
    var var_2 = global1.zy;
    let var_3 = select(vec2<bool>(!any(vec4<bool>(global2.x, var_0, true, false)), 23378u <= (reverseBits(14585u) & ~var_2.x)), !(!select(vec2<bool>(var_0, false), !vec2<bool>(var_0, global2.x), vec2<bool>(var_0, global2.x))), global2.x);
    return Struct_1(-global3.xz);
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = ~firstLeadingBit(vec4<u32>(abs(34648u), ~_wgslsmith_mod_u32(u_input.c.x, 1u), u_input.c.x, ~global1.x));
    let var_1 = Struct_2(~(~vec2<i32>(-arg_0.a.x, _wgslsmith_clamp_i32(-1i, -1i, global3.x))), _wgslsmith_mult_vec2_u32(firstTrailingBit(global1.yx) ^ vec2<u32>(_wgslsmith_div_u32(0u, global1.x), ~u_input.c.x), firstTrailingBit(_wgslsmith_add_vec2_u32(max(var_0.xx, global1.yx), _wgslsmith_div_vec2_u32(vec2<u32>(58342u, var_0.x), var_0.zy)))));
    global4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-121f, -790f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-532f + -1317f))), global4.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2154f, global0[_wgslsmith_index_u32(30015u, 24u)], -450f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1387f, -523f, global0[_wgslsmith_index_u32(1u, 24u)])))))))));
    global2 = vec2<bool>(false, any(vec4<bool>(true, global2.x, any(vec4<bool>(global2.x, true, global2.x, global2.x)), true)) || global2.x);
    let var_2 = -vec3<i32>(2147483647i, -(~arg_0.a.x), global3.x);
    return Struct_3(func_2(~(abs(var_0.wy) << ((vec2<u32>(u_input.c.x, u_input.c.x) | global1.yx) % vec2<u32>(32u))), global3.zx, 1u).a, var_1);
}

fn func_1() -> vec2<bool> {
    global0 = array<f32, 24>();
    var var_0 = func_5(func_4(func_2(global1.xy, firstTrailingBit(-u_input.d.xz), abs(41717u)), Struct_1(u_input.d.zy)));
    var var_1 = 552u;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-188f, -766f, global0[_wgslsmith_index_u32(0u, 24u)], global4.x), _wgslsmith_div_vec4_f32(vec4<f32>(-211f, 1539f, global0[_wgslsmith_index_u32(global1.x, 24u)], -795f), vec4<f32>(-1316f, -1000f, 346f, global0[_wgslsmith_index_u32(4294967295u, 24u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, -1000f, -350f)))), vec4<f32>(-711f, _wgslsmith_f_op_f32(476f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(25633u, 24u)])), 1336f, _wgslsmith_f_op_f32(abs(-449f)))));
    return vec2<bool>(var_2, false);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(min(~max(vec4<i32>(u_input.d.x, global3.x, arg_0.a.x, u_input.b), vec4<i32>(-14478i, 1i, -2147483647i, arg_0.a.x)), vec4<i32>(global3.x, _wgslsmith_dot_vec2_i32(global3.xy, vec2<i32>(-49239i, 0i)), _wgslsmith_add_i32(-1i, -79400i), global3.x)) >> (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(52899u, 46078u, 8244u, global1.x), vec4<u32>(arg_2.x, 70249u, 4294967295u, arg_2.x), vec4<u32>(u_input.c.x, u_input.c.x, global1.x, arg_2.x)) >> (~vec4<u32>(1u, arg_2.x, 10040u, arg_0.b.x) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, arg_0.b.x, 32894u, arg_2.x), vec4<u32>(arg_0.b.x, 0u, arg_3, u_input.c.x)), !select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(false, arg_1, false, global2.x), true)) % vec4<u32>(32u)), func_2(firstLeadingBit(arg_2), vec2<i32>(1i, min(u_input.a, func_2(arg_2, u_input.d.yx, global1.x).a.x)), func_2(vec2<u32>(func_5(Struct_1(global3.zy)).b.b.x, countOneBits(u_input.c.x)), vec2<i32>(func_5(Struct_1(global3.zy)).a.x, -49387i), u_input.c.x).b.b.x).b);
    let var_1 = Struct_2(u_input.d.zx, ~(var_0.b.b & global1.zz));
    global2 = vec2<bool>(!global2.x, all(!select(!vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, true, true, true), arg_1 | global2.x)));
    let var_2 = Struct_1(reverseBits(-vec2<i32>(var_0.a.x, 38598i) | ~arg_0.a));
    var var_3 = func_1().x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(u_input.d.xx, ~(_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(global1.x, 1u)) & vec2<u32>(u_input.c.x, 1u))), 0i < u_input.d.x, select(u_input.c, ~(~global1.yz), func_1()) << (max(global1.zx ^ (u_input.c << (u_input.c % vec2<u32>(32u))), ~select(vec2<u32>(51982u, 2215u), vec2<u32>(1u, 0u), vec2<bool>(true, global2.x))) % vec2<u32>(32u)), 0u ^ u_input.c.x);
    let var_1 = 24867u;
    global2 = vec2<bool>(any(vec3<bool>(all(select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(false, global2.x, true, global2.x), false)), global2.x, !(!global2.x))), firstLeadingBit(var_1) >= 1u);
    var var_2 = Struct_2(select(~(vec2<i32>(13300i, u_input.d.x) >> ((u_input.c ^ global1.zz) % vec2<u32>(32u))), var_0.a, vec2<bool>(all(select(vec4<bool>(false, global2.x, true, true), vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(true, true, false, false))), false)), _wgslsmith_sub_vec2_u32(min(max(vec2<u32>(global1.x, 54571u), ~vec2<u32>(0u, global1.x)), vec2<u32>(82889u, _wgslsmith_mod_u32(global1.x, 13746u))), _wgslsmith_clamp_vec2_u32(~global1.xz, global1.yx, vec2<u32>(41396u, 4294967295u)) >> (_wgslsmith_sub_vec2_u32(select(u_input.c, global1.zy, vec2<bool>(true, global2.x)), ~global1.zx) % vec2<u32>(32u))));
    global1 = ~vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 28857u), u_input.c)), 1u, ~select(1u, global1.x, global2.x) | ~_wgslsmith_div_u32(68014u, 41360u));
    var var_3 = vec2<bool>(true, true);
    var var_4 = any(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(12630u, 24u)] < global0[_wgslsmith_index_u32(u_input.c.x, 24u)], true), vec3<bool>(var_3.x && any(vec4<bool>(false, true, global2.x, var_3.x)), false, all(!vec3<bool>(false, var_3.x, false))), select(global2.x, global2.x, all(vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, global3.x, vec3<f32>(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(trunc(global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-145f)))), select(-18130i, max(func_6(Struct_2(var_2.a, global1.zx), true, min(vec2<u32>(4294967295u, var_2.b.x), vec2<u32>(7421u, global1.x)), ~var_2.b.x).a.x, global3.x), any(vec2<bool>(global2.x, false))), vec3<u32>(~134131u, abs(_wgslsmith_dot_vec2_u32(var_2.b, ~var_2.b)), 1u));
}

