struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, true, true, false, false, false, true, true, false, true, true, false, false, true, true);

var<private> global1: Struct_4 = Struct_4(Struct_1(false, 4294967295u, vec3<u32>(39803u, 101369u, 44147u)), vec2<i32>(13386i, 25794i), true);

var<private> global2: array<f32, 2> = array<f32, 2>(-225f, -477f);

var<private> global3: i32 = 1210i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-451f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.a.c.x, 4294967295u, 74057u) >> (vec4<u32>(48768u, 38124u, u_input.a.x, global1.a.c.x) % vec4<u32>(32u)), abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u))), 2u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(23441u, 2u)] + -520f) * -592f)) - -1000f));
    let var_1 = var_0.x;
    let var_2 = vec3<bool>(global0[_wgslsmith_index_u32(~(~27936u), 15u)], true, false);
    let var_3 = ~(-48280i);
    global1 = Struct_4(global1.a, _wgslsmith_sub_vec2_i32(-((global1.b << (u_input.a.zz % vec2<u32>(32u))) | (global1.b | vec2<i32>(9528i, 2147483647i))), vec2<i32>(min(max(global1.b.x, -25320i), _wgslsmith_dot_vec3_i32(vec3<i32>(16302i, -63187i, global1.b.x), vec3<i32>(var_3, var_3, global1.b.x))), reverseBits(var_3))), var_2.x);
    return true;
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(any(vec2<bool>(true, true)), 26999u, _wgslsmith_sub_vec3_u32((vec3<u32>(22553u, 107987u, 85054u) << (u_input.a % vec3<u32>(32u))) ^ ~global1.a.c, vec3<u32>(firstTrailingBit(109628u), global1.a.c.x, global1.a.b))), select(select(!vec2<bool>(true, global1.a.a), vec2<bool>(all(vec3<bool>(global1.c, true, false)), false), vec2<bool>(!global0[_wgslsmith_index_u32(0u, 15u)], true | global1.a.a)), select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), global1.c), !vec2<bool>(global0[_wgslsmith_index_u32(17371u, 15u)], false), -1000f != global2[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(true, true), vec2<bool>(select(global1.c, false, global1.c), any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 15u)], true)))), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(global1.a.b, 15u)], global1.c), vec2<bool>(false, global1.c), global0[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_div_i32(~min(_wgslsmith_mod_i32(-2147483647i, -11745i), 49169i), ~(~global1.b.x ^ global1.b.x)), global1.a, global1.a);
    let var_1 = Struct_1(var_0.e.a, select(global1.a.b, arg_0, false), var_0.d.c);
    let var_2 = Struct_1(any(select(vec4<bool>(false, false, global1.a.a, global1.a.a), select(vec4<bool>(global1.a.a, var_1.a, false, var_1.a), vec4<bool>(global1.c, true, var_0.d.a, false), global1.c), var_0.a.a && false)) & true, select(u_input.a.x, ~(~4294967295u), false), vec3<u32>(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c.x, 5886u, 7105u, 7792u), _wgslsmith_sub_vec4_u32(vec4<u32>(58377u, 1u, 7341u, 4294967295u), vec4<u32>(arg_0, 39903u, global1.a.b, 4294967295u))), _wgslsmith_div_u32(_wgslsmith_mod_u32(~1u, 76851u), firstLeadingBit(u_input.a.x | 4294967295u))));
    global1 = Struct_4(global1.a, vec2<i32>(-18111i, 43268i), false);
    let var_3 = _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(~(~(var_1.b >> (39962u % 32u)) | var_1.b), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1294f, -439f))), false));
    return _wgslsmith_sub_u32(4294967295u, 33212u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    global1 = Struct_4(Struct_1(all(vec3<bool>(true, all(vec3<bool>(global1.c, true, true)), false)), func_3(4294967295u), arg_1.c), ~(-(-vec2<i32>(1i, 28753i) >> ((global1.a.c.yz << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)))), true);
    let var_0 = Struct_3(Struct_1(true, ~arg_0.a.c.x, ~vec3<u32>(select(5955u, 74u, arg_0.a.a), _wgslsmith_mult_u32(0u, u_input.a.x), 1u)), ~vec3<i32>(-2147483647i, _wgslsmith_mult_i32(-global1.b.x, _wgslsmith_sub_i32(-38156i, arg_0.b.x)), countOneBits(-9071i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2[_wgslsmith_index_u32(global1.a.c.x, 2u)], -649f, -1276f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2261f, global2[_wgslsmith_index_u32(global1.a.b, 2u)], global2[_wgslsmith_index_u32(u_input.a.x, 2u)]))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(~4294967295u, 2u)], -136f, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.c.x, 1u), 2u)]))), _wgslsmith_add_i32(-7180i, ~(-global1.b.x)) & global1.b.x);
    global3 = _wgslsmith_add_i32(~(-2147483647i), abs(_wgslsmith_add_i32(var_0.d, _wgslsmith_mult_i32(30587i, _wgslsmith_add_i32(arg_0.b.x, -33456i)))));
    var var_1 = Struct_3(global1.a, -(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, arg_2, arg_2), var_0.b) << (vec3<u32>(~u_input.a.x, 4294967295u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(45755u, 2u)], var_0.c.x, 522f)) + vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.c.x)), -757f, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_1.b), 2u)])))), -min(arg_0.b.x << (920u % 32u), ~var_0.b.x));
    global3 = var_1.b.x;
    return Struct_2(global1.a, select(vec2<bool>(func_1(true), arg_0.c), !vec2<bool>(var_0.a.a, true), vec2<bool>(false, true)), -91583i, var_0.a, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_4(Struct_1(global1.a.a, u_input.a.x, vec3<u32>(u_input.a.x, global1.a.c.x, u_input.a.x) & vec3<u32>(global1.a.b, u_input.a.x, 4294967295u)), vec2<i32>(5606i, global1.b.x), any(!(!vec4<bool>(global1.c, true, false, global1.c)))), Struct_1(global1.c, max(~1u, ~1u), select(global1.a.c, ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), func_1(false) || select(global1.c, global1.c, false))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~(global1.b & vec2<i32>(1i, -2147483647i)), ~select(vec2<i32>(global1.b.x, -1i), global1.b, vec2<bool>(true, global1.c))), 30923i));
    let var_1 = -global1.b << ((vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.d.c, ~vec3<u32>(u_input.a.x, global1.a.b, 59787u)), var_0.e.b) & u_input.a.yy) % vec2<u32>(32u));
    var_0 = Struct_2(Struct_1(false, ~var_0.d.b, vec3<u32>(1u, ~(~global1.a.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.c.x, 11338u, global1.a.b), ~global1.a.c))), !vec2<bool>(global1.a.a, global0[_wgslsmith_index_u32(abs(~32052u), 15u)]), firstTrailingBit(var_1.x), var_0.d, func_2(Struct_4(func_2(Struct_4(var_0.a, global1.b, global1.a.a), func_2(Struct_4(global1.a, vec2<i32>(-11513i, 1i), true), global1.a, -14180i).e, var_1.x | 0i).a, max(var_1, global1.b) ^ ~var_1, global0[_wgslsmith_index_u32(var_0.a.c.x, 15u)]), Struct_1(global1.a.a, reverseBits(~54209u), _wgslsmith_mod_vec3_u32(u_input.a, global1.a.c) >> ((var_0.e.c << (var_0.a.c % vec3<u32>(32u))) % vec3<u32>(32u))), -2147483647i).e);
    var var_2 = _wgslsmith_f_op_f32(-1f);
    var var_3 = func_2(Struct_4(var_0.d, _wgslsmith_add_vec2_i32(global1.b, vec2<i32>(-2147483647i, 60719i)), false), func_2(Struct_4(global1.a, var_1, true), Struct_1(global1.a.a, max(20984u, var_0.a.b), global1.a.c ^ vec3<u32>(47006u, 1u, 4294967295u)), -1i).e, ~13093i).b;
    var var_4 = Struct_4(func_2(Struct_4(var_0.e, countOneBits(_wgslsmith_div_vec2_i32(var_1, global1.b)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 2u)]) < _wgslsmith_f_op_f32(max(505f, -2229f))), func_2(Struct_4(var_0.d, var_1, !var_3.x), var_0.d, -func_2(Struct_4(var_0.e, vec2<i32>(-4703i, 21280i), var_0.a.a), Struct_1(false, global1.a.c.x, u_input.a), -13900i).c).a, global1.b.x).a, ~vec2<i32>(~20119i, _wgslsmith_sub_i32(~(-1i), ~global1.b.x)), func_2(Struct_4(func_2(Struct_4(var_0.e, var_1, false), Struct_1(var_3.x, global1.a.c.x, var_0.e.c), countOneBits(0i)).a, vec2<i32>(var_0.c, 108109i), false), func_2(Struct_4(func_2(Struct_4(Struct_1(global1.a.a, 17490u, u_input.a), var_1, var_3.x), Struct_1(true, global1.a.b, vec3<u32>(global1.a.b, 0u, 1u)), var_0.c).d, select(global1.b, global1.b, vec2<bool>(false, global1.a.a)), func_2(Struct_4(var_0.d, vec2<i32>(var_1.x, 0i), global0[_wgslsmith_index_u32(2917u, 15u)]), var_0.d, 9908i).e.a), func_2(Struct_4(Struct_1(var_3.x, 50907u, u_input.a), vec2<i32>(var_0.c, 1483i), global1.a.a), func_2(Struct_4(Struct_1(false, global1.a.b, global1.a.c), global1.b, true), Struct_1(var_3.x, 79483u, vec3<u32>(13541u, 1u, var_0.e.c.x)), -2145i).d, max(var_0.c, var_0.c)).e, 1i).a, var_0.c).a.a);
    var_2 = 429f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(32506u, 2u)])), u_input.a);
}

