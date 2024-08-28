struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: array<u32, 26> = array<u32, 26>(0u, 0u, 9791u, 4294967295u, 4294967295u, 0u, 1776u, 42464u, 58877u, 35080u, 1u, 4294967295u, 30736u, 19511u, 4294967295u, 24862u, 4294967295u, 0u, 16872u, 55643u, 92212u, 65699u, 52718u, 1u, 1u, 13087u);

var<private> global2: array<i32, 23> = array<i32, 23>(24090i, 16771i, 0i, i32(-2147483648), 28250i, 12296i, 35196i, 15844i, 37565i, -1i, 1i, 15893i, 0i, 53023i, 0i, 31245i, 2147483647i, 11571i, -1i, 1i, -65793i, -1i, 1i);

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(true), Struct_1(false), Struct_1(false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3, arg_3: i32) -> bool {
    var var_0 = (((~arg_1.a.x & abs(1u)) != arg_1.b.a) & true) & all(select(select(!vec4<bool>(arg_1.d, arg_1.c, true, arg_1.d), vec4<bool>(arg_1.d, arg_1.c, true, false), select(vec4<bool>(arg_1.c, arg_1.d, true, true), vec4<bool>(false, arg_1.c, false, false), true)), select(vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.d), vec4<bool>(false, arg_1.c, arg_1.d, false), !vec4<bool>(true, false, arg_1.c, true)), arg_1.c));
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(142f, global0[_wgslsmith_index_u32(4294967295u, 12u)], true)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(76398u, 12u)] + _wgslsmith_f_op_f32(trunc(-588f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-951f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 12u)])))));
    let var_3 = Struct_4(global0[_wgslsmith_index_u32(~4294967295u, 12u)], ~(29763i | var_1.x), 448f);
    var var_4 = Struct_5(arg_2.a.xxy, Struct_2(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1184u, u_input.a.x, arg_2.b.a), arg_1.a) & ~u_input.a.wyw, max(~arg_2.a.xxx, _wgslsmith_div_vec3_u32(u_input.a.xwy, vec3<u32>(4074u, 1u, u_input.a.x))))), any(!select(!vec3<bool>(false, arg_1.c, var_2), vec3<bool>(false, var_2, false), true)), true);
    return true;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global3 = array<Struct_1, 3>();
    let var_0 = !func_3(Struct_2(u_input.a.x), Struct_5(~vec3<u32>(9602u, u_input.a.x, u_input.b), Struct_2(_wgslsmith_sub_u32(u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 26u)])), false, true), Struct_3(u_input.a, Struct_2(~1u)), _wgslsmith_add_i32(~(~u_input.d.x), 1i));
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    global2 = array<i32, 23>();
    return Struct_1(any(vec2<bool>(false, !(u_input.e.x != 69693u))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_5) -> vec4<f32> {
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(4294967295u, 26u)], ~0u), 23u)], ~u_input.d.x & _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1u, 23u)], -2147483647i), -1i), -1i);
    var var_1 = func_2(arg_0);
    let var_2 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(max(~vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], -2147483647i, 1i), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 23u)], u_input.d.x, -1i)), -vec3<i32>(1i, -2147483647i, global2[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_clamp_i32(-16872i, _wgslsmith_mult_i32(0i, ~var_0.x), var_0.x), -(~(-u_input.c)), countOneBits(2704i));
    let var_3 = arg_2;
    let var_4 = Struct_5(vec3<u32>(max(firstTrailingBit(u_input.e.x), ~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(36682u, 238u), u_input.e.zx) << (6898u % 32u), ~(var_3.b.a >> (var_3.a.x % 32u))) & select(~(~u_input.a.wzy), _wgslsmith_clamp_vec3_u32(arg_2.a >> (vec3<u32>(4294967295u, 41524u, 40486u) % vec3<u32>(32u)), var_3.a, vec3<u32>(var_3.b.a, 1u, var_3.b.a)), vec3<bool>(false, var_1.a, false)), var_3.b, func_3(Struct_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 52841u), 26u)], 26u)] << (4294967295u % 32u)), Struct_5(select(vec3<u32>(var_3.a.x, u_input.a.x, 4294967295u), reverseBits(vec3<u32>(38150u, 14691u, arg_2.b.a)), vec3<bool>(arg_2.d, false, var_3.d)), Struct_2(_wgslsmith_div_u32(1u, 10089u)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(51596u, 65888u)) <= 16072u), Struct_3(vec4<u32>(~global1[_wgslsmith_index_u32(var_3.a.x, 26u)], var_3.a.x, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 78152u), abs(53762u)), Struct_2(1u)), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, var_3.b.a) >> (vec3<u32>(27944u, 30543u, arg_2.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(11083u, 1u, 0u), vec3<u32>(arg_2.b.a, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 26u)]))), 23u)]), arg_2.c);
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-680f, 685f, 992f, -197f), vec4<f32>(global0[_wgslsmith_index_u32(1u, 12u)], 1726f, -733f, arg_1))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(_wgslsmith_div_f32(140f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], 12u)]), _wgslsmith_f_op_f32(f32(-1f) * -455f), -287f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_5(u_input.a.zwz & vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 26u)], 26u)], u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 26u)], 26u)]), Struct_2(u_input.b), false, true)))));
    global2 = array<i32, 23>();
    let var_1 = Struct_5(vec3<u32>(1u, ~select(~0u, 55937u, true), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(reverseBits(59540u), 26u)], global1[_wgslsmith_index_u32(1u, 26u)] | 4294967295u) & countOneBits(1u)), Struct_2(max(firstTrailingBit(1u), _wgslsmith_mult_u32(0u, 0u)) | (max(u_input.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)]) >> ((global1[_wgslsmith_index_u32(u_input.b, 26u)] | 614u) % 32u))), (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.e.x, 12u)], -268f, false)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49464u, 26u)], 26u)], 12u)], 430f)))) || (-1360f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 354f) * global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, u_input.a.x), 12u)])), var_0.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.e.x, 12u)], 1936f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.x))))));
    var var_2 = func_2(vec3<f32>(global0[_wgslsmith_index_u32(~1u, 12u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.x)))), -742f));
    let var_3 = Struct_4(-604f, global2[_wgslsmith_index_u32(max(u_input.b, 0u), 23u)], 392f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~firstTrailingBit(countOneBits(vec3<i32>(u_input.c, var_3.b, 1i))), vec3<i32>(var_3.b, u_input.c, u_input.c), countOneBits(vec3<i32>(u_input.d.x, abs(31763i), ~var_3.b))), _wgslsmith_div_u32(abs(11458u), ~(~54342u)), firstTrailingBit(firstTrailingBit(firstTrailingBit(u_input.d))) & ~min(-u_input.d, u_input.d & vec4<i32>(u_input.d.x, var_3.b, u_input.d.x, 39120i)));
}

