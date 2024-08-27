struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32>;

var<private> global2: vec2<i32> = vec2<i32>(-1i, -1i);

var<private> global3: array<i32, 31> = array<i32, 31>(2147483647i, 17770i, -72381i, 2147483647i, 0i, -1i, i32(-2147483648), 35919i, 0i, -55403i, 70842i, 0i, -1i, 1i, 9332i, -1i, 26282i, -1i, 0i, 2147483647i, -10720i, -1i, -30377i, -3422i, 2147483647i, 2147483647i, 1i, 36285i, -5829i, 14584i, 2147483647i);

var<private> global4: array<f32, 15> = array<f32, 15>(555f, 296f, 2463f, -1985f, -545f, -1346f, 550f, -1329f, 1370f, 972f, -2899f, -271f, 422f, 955f, -1558f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5) -> i32 {
    global2 = vec2<i32>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_clamp_u32(global0.a.x, global0.a.x, u_input.b), global0.a.x, ~1u), vec4<u32>(15763u, ~global0.a.x, ~1u, u_input.b)), 31u)], u_input.e.x);
    var var_0 = Struct_2(true, Struct_1(_wgslsmith_clamp_i32(~0i, arg_0.a.x, arg_0.a.x)));
    global3 = array<i32, 31>();
    let var_1 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.c ^ 2147483647i, -2147483647i, _wgslsmith_mod_i32(var_0.b.a, -10260i), ~(-1i))), ~(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.a, global3[_wgslsmith_index_u32(u_input.b, 31u)], global3[_wgslsmith_index_u32(arg_0.b.a.x, 31u)], var_0.b.a), vec4<i32>(2147483647i, -16056i, u_input.e.x, -22404i), u_input.e) & ~u_input.e)), firstLeadingBit(-max(vec4<i32>(3495i, arg_0.b.b, global2.x, arg_0.b.b), u_input.e) << (vec4<u32>(_wgslsmith_sub_u32(0u, global0.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.a.x), global0.a.zz), firstLeadingBit(global0.a.x), countOneBits(u_input.b)) % vec4<u32>(32u))));
    var var_2 = select(select(select(!select(vec4<bool>(var_0.a, var_0.a, arg_0.c, true), vec4<bool>(false, arg_0.c, false, arg_0.c), true), select(select(vec4<bool>(arg_0.c, arg_0.c, true, var_0.a), vec4<bool>(true, true, var_0.a, false), vec4<bool>(true, var_0.a, var_0.a, false)), !vec4<bool>(arg_0.c, arg_0.c, true, true), all(vec3<bool>(false, var_0.a, var_0.a))), vec4<bool>(any(vec3<bool>(arg_0.c, var_0.a, true)), all(vec3<bool>(false, false, false)), all(vec2<bool>(arg_0.c, var_0.a)), true)), vec4<bool>(true, true, var_0.a, !any(vec3<bool>(false, var_0.a, var_0.a))), 64401u >= ~max(global0.a.x, global0.a.x)), vec4<bool>(true, !var_0.a, var_0.a, arg_0.c), true);
    return global1.x;
}

fn func_2() -> Struct_3 {
    let var_0 = 498f;
    global3 = array<i32, 31>();
    var var_1 = Struct_2(all(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, true)), true, true), true)), Struct_1(u_input.d));
    global2 = -(min(countOneBits(u_input.e.xz >> (vec2<u32>(19550u, u_input.b) % vec2<u32>(32u))), -u_input.e.xx) & ~u_input.e.yx);
    var var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-(_wgslsmith_dot_vec2_i32(u_input.e.zy, u_input.e.zy) << (u_input.b % 32u)), -1i, -1i, global2.x & -2147483647i), u_input.e, vec4<i32>(-1i, global1.x, global3[_wgslsmith_index_u32(global0.a.x, 31u)], func_3(Struct_5(_wgslsmith_clamp_vec2_i32(u_input.e.zz, u_input.e.wx, vec2<i32>(-10546i, var_1.b.a)), Struct_4(global0.a, -40814i), any(vec2<bool>(var_1.a, false)), vec4<f32>(global4[_wgslsmith_index_u32(0u, 15u)], var_0, var_0, 436f)))));
    return Struct_3(countOneBits(min(global0.a, ~(vec3<u32>(17974u, u_input.b, global0.a.x) << (global0.a % vec3<u32>(32u))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_3(abs(~global0.a));
    global3 = array<i32, 31>();
    global0 = func_2();
    let var_1 = vec3<bool>(true, true, true);
    return StorageBuffer(vec3<u32>(abs(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.a.x, var_0.a.x, 0u, u_input.b)), firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 1u, global0.a.x)))), 45274u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 20243u, 35253u, var_0.a.x)) & (vec4<u32>(23660u, 17955u, 1u, 39470u) << (vec4<u32>(global0.a.x, 4806u, 0u, global0.a.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 45595u, global0.a.x), ~vec4<u32>(global0.a.x, 34444u, var_0.a.x, 37052u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0.a ^ vec3<u32>(32176u, var_0.a.x, u_input.b), global0.a), 15u)] + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 15u)] * 192f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global0.a.x, 15u)]))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(u_input.b, 15u)], global4[_wgslsmith_index_u32(42825u, 15u)]))) + vec2<f32>(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(4294967295u, 15u)], 912f)), -1476f)), vec2<f32>(_wgslsmith_f_op_f32(min(1743f, _wgslsmith_div_f32(-258f, -1193f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 15u)], global4[_wgslsmith_index_u32(var_0.a.x, 15u)]) - -1196f))), var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 15>();
    var var_0 = vec2<bool>(!all(vec2<bool>(true, true)) | any(vec3<bool>(true, all(vec3<bool>(false, true, true)), true)), all(select(vec4<bool>(true, any(vec2<bool>(false, true)), all(vec3<bool>(false, false, true)), select(false, false, false)), vec4<bool>(true, false, false, true), true)));
    var var_1 = false;
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_mod_u32(1u, 68699u)), max(4738u, 13950u ^ global0.a.x)), global0.a.yy), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.a.xx, ~global0.a.yy), 0u), ~global0.a.x);
    let x = u_input.a;
    s_output = func_1();
}

