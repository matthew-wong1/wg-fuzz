struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: vec2<f32> = vec2<f32>(1816f, -219f);

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(49763i, 5388i), vec2<i32>(16562i, -1i), vec2<i32>(0i, -22834i), vec2<i32>(-1i, 2147483647i), vec2<i32>(13933i, 0i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-12199i, 44431i), vec2<i32>(33060i, 53553i), vec2<i32>(0i, -1i), vec2<i32>(11092i, 0i), vec2<i32>(46225i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-89853i, 5315i), vec2<i32>(-11441i, 1i), vec2<i32>(62154i, -21568i), vec2<i32>(-47287i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(69007i, 13147i), vec2<i32>(i32(-2147483648), 0i));

var<private> global3: array<u32, 15> = array<u32, 15>(4294967295u, 1u, 71301u, 59684u, 4294967295u, 23289u, 17942u, 69716u, 4294967295u, 35492u, 1u, 0u, 4294967295u, 1u, 84983u);

var<private> global4: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1401f + _wgslsmith_f_op_f32(select(global1.x, global1.x, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(118f - global1.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(801f * global1.x), _wgslsmith_f_op_f32(f32(-1f) * -701f)))), global1.x)), -168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2385f - -850f)) + global1.x) + _wgslsmith_f_op_f32(global1.x * global1.x)));
    global1 = var_0.zz;
    let var_1 = -14021i;
    var var_2 = any(select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], arg_0.x), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 32u)]), arg_0, arg_0), arg_0, select(arg_0, vec2<bool>(true | global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 15u)], 32u)], true), any(!arg_0))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1198f, var_0.x))), _wgslsmith_div_f32(-618f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -935f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.zyz)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 665f, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x * -1168f), _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(global1.x + 1000f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(var_0.zwz, _wgslsmith_f_op_vec3_f32(var_0.yzz * vec3<f32>(-503f, -759f, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1039f, 177f, var_0.x) * var_0.xyz)), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(u_input.b, 15u)], u_input.b), 32u)], arg_0.x, !global0[_wgslsmith_index_u32(0u, 32u)])))));
    return _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 15u)], 15u)], 15u)], (u_input.a ^ 28069u) & ~global3[_wgslsmith_index_u32(62053u, 15u)], global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a << (global3[_wgslsmith_index_u32(6668u, 15u)] % 32u), 1u), 15u)]), vec3<u32>(countOneBits(43200u) ^ (0u >> (global3[_wgslsmith_index_u32(4294967295u, 15u)] % 32u)), ~_wgslsmith_clamp_u32(10673u, 0u, 1644u), 0u)), ~(~(~(vec3<u32>(1u, 4294967295u, 1u) >> (vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(6366u, 15u)], 0u) % vec3<u32>(32u))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(func_3(vec2<bool>(global0[_wgslsmith_index_u32(~73724u, 32u)], false && global0[_wgslsmith_index_u32(0u, 32u)]), u_input.c << (1u % 32u)) >> ((vec3<u32>(u_input.a, ~u_input.b, max(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(26059u, 15u)])) | ~(~vec3<u32>(13444u, 0u, 1u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(42955u, 24670u, u_input.a), vec3<u32>(u_input.b, 1u, global3[_wgslsmith_index_u32(0u, 15u)])), ~vec3<u32>(1u, 0u, u_input.a)), vec3<u32>(78305u | global3[_wgslsmith_index_u32(u_input.b, 15u)], max(46578u, global3[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.a, 15u)], u_input.b)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], u_input.a, u_input.b), vec3<u32>(1u, 26280u, global3[_wgslsmith_index_u32(u_input.a, 15u)]) >> (vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(27496u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9301u, 15u)], 15u)], 1u), vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30011u, 15u)], 15u)], 27478u)))) & ~vec3<u32>(firstLeadingBit(1u), 29029u, ~41015u));
    global1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f + global1.x), _wgslsmith_f_op_f32(-global1.x)))));
    var var_1 = u_input.b;
    var_0 = vec3<u32>(4294967295u, abs(_wgslsmith_div_u32(var_0.x, var_0.x)), 4294967295u);
    let var_2 = false;
    return Struct_1(!(!(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(74075u, 32u)], false, var_2)))), ~(var_0.x ^ ~_wgslsmith_mult_u32(0u, u_input.b)));
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(4283u, 32u)], true)), vec2<bool>(all(vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 32u)], true)), true), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 15u)] > 70148u))), func_2(), Struct_2(vec2<bool>(all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(92067u, 15u)], 15u)], 15u)], 32u)], false, global0[_wgslsmith_index_u32(29055u, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25205u, 15u)], 32u)], global0[_wgslsmith_index_u32(71350u, 32u)], false))), u_input.a != u_input.a)), Struct_1(vec4<bool>(30519i < _wgslsmith_mult_i32(24327i, u_input.c), ~u_input.a > u_input.a, true, any(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30286u, 15u)], 15u)], 32u)], false), vec4<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13319u, 15u)], 15u)], 15u)], 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], true, true), vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 32u)], true)))), 31486u));
    var var_1 = !vec2<bool>(!(var_0.b.b > 15635u) && any(select(vec4<bool>(true, var_0.c.a.x, var_0.a.a.x, false), var_0.d.a, var_0.b.a)), !global0[_wgslsmith_index_u32(1u, 32u)]);
    let var_2 = Struct_1(select(vec4<bool>(!(!var_1.x), !func_2().a.x, !var_1.x, global0[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(u_input.a, 4294967295u), 4294967295u, var_0.d.a.x), 32u)]), vec4<bool>(any(select(vec3<bool>(false, var_0.d.a.x, var_0.c.a.x), var_0.b.a.yzx, var_0.d.a.xxw)), all(!vec4<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 15u)], 32u)], false, true)), true, !var_1.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], select(global0[_wgslsmith_index_u32(func_3(vec2<bool>(var_0.b.a.x, global0[_wgslsmith_index_u32(866u, 32u)]), 1i).x, 32u)], 0u <= global3[_wgslsmith_index_u32(1u, 15u)], true), true, all(vec3<bool>(var_1.x, true, true)))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), 1u), abs(var_0.b.b)));
    let var_3 = firstTrailingBit(_wgslsmith_sub_i32(abs(u_input.c), 1i));
    global3 = array<u32, 15>();
    return select(!var_0.b.a.yxy, func_2().a.zyy, !(!(1i <= _wgslsmith_clamp_i32(arg_0.x, var_3, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(6647u, (17895u | u_input.a) | 40414u) | countOneBits(~countOneBits(global3[_wgslsmith_index_u32(u_input.b, 15u)])), 15u)], 21u)];
    let var_1 = vec2<bool>(true, true);
    let var_2 = func_1(~_wgslsmith_mult_vec2_i32(-global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 15u)], 21u)], vec2<i32>(~u_input.c, -1i >> (0u % 32u))));
    global3 = array<u32, 15>();
    var_0 = ~abs(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, 15106i, 1i), vec4<i32>(1132i, var_0.x, 0i, var_0.x))), _wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, var_0.x, 0i, 1i), vec4<i32>(u_input.c, -6573i, 17705i, 1i) & vec4<i32>(27808i, -24911i, -10655i, var_0.x))), ((vec4<i32>(1i, 1i, u_input.c, u_input.c) ^ vec4<i32>(u_input.c, var_0.x, -5285i, var_0.x)) ^ ~vec4<i32>(1931i, 1i, u_input.c, u_input.c)) >> ((vec4<u32>(21266u, 0u, 1u, 1u) | vec4<u32>(u_input.b, 6178u, 43925u, global3[_wgslsmith_index_u32(31041u, 15u)])) % vec4<u32>(32u)), vec4<bool>(!any(vec4<bool>(var_1.x, true, true, var_2.x)), global0[_wgslsmith_index_u32(select(u_input.b, 8344u, var_2.x), 32u)], false, all(select(vec4<bool>(var_2.x, true, false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 32u)]), vec4<bool>(var_2.x, false, var_2.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8552u, 15u)], 32u)]), vec4<bool>(true, false, true, var_1.x))))));
}

