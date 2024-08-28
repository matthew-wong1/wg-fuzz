struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 0u, 1180u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<Struct_1, 30>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    let var_0 = global2[_wgslsmith_index_u32((select(u_input.d, 4294967295u, !any(vec2<bool>(false, false))) ^ (1u | global0.x)) ^ _wgslsmith_clamp_u32(max(~4294967295u, firstLeadingBit(_wgslsmith_clamp_u32(34882u, 60892u, 18890u))), ~_wgslsmith_mult_u32(0u, 42524u), _wgslsmith_dot_vec3_u32(global0.wxz, global0.yyx)), 29u)];
    let var_1 = _wgslsmith_f_op_f32(select(855f, -163f, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))))));
    let var_2 = global0.x;
    let var_3 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(var_0.a.x | var_0.b, var_0.a.x), 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.c))));
    global0 = ~vec4<u32>(u_input.b.x, ~(~4294967295u), abs(global0.x), global0.x) ^ reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 3898u, u_input.b.x, 43203u), vec4<u32>(10728u, u_input.d, 29921u, global0.x)), vec4<u32>(4294967295u, global0.x, 0u, u_input.b.x) | vec4<u32>(1u, u_input.b.x, 46362u, global0.x), vec4<u32>(global0.x, 0u, 50724u, u_input.b.x)), countOneBits(vec4<u32>(global0.x, 43022u, 57158u, global0.x)), abs(vec4<u32>(4294967295u, global0.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(1u, global0.x, 10650u, 8608u))));
    return any(vec3<bool>(false, select(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), true, false), true));
}

fn func_2() -> vec4<f32> {
    global3 = array<Struct_1, 30>();
    var var_0 = select(global1.a.x, firstLeadingBit(global1.b), !(!all(vec2<bool>(true, true))) | any(vec2<bool>(true, true)));
    var var_1 = func_3();
    var var_2 = false;
    var var_3 = _wgslsmith_add_u32(~(0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(26645u, global0.x), _wgslsmith_sub_vec2_u32(u_input.b.yx, vec2<u32>(56120u, 2943u))) % 32u)), global0.x);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(global1.c * global1.c))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) * vec4<f32>(global1.c.x, -1318f, global1.c.x, 541f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.c), vec4<f32>(-718f, global1.c.x, global1.c.x, global1.c.x))), vec4<bool>(true, false, true, u_input.d >= u_input.d)))), global1.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(abs(reverseBits(u_input.e)), firstTrailingBit(0i), vec4<f32>(_wgslsmith_f_op_f32(step(global1.c.x, -952f)), _wgslsmith_f_op_f32(global1.c.x + -496f), _wgslsmith_f_op_f32(f32(-1f) * -1918f), _wgslsmith_f_op_f32(floor(arg_1.c.x))));
    let var_1 = 1000f;
    global0 = vec4<u32>(~(abs(0u) >> (global0.x % 32u)), select(u_input.d, u_input.d << (~abs(4294967295u) % 32u), false), 43256u, ~u_input.b.x);
    global1 = global3[_wgslsmith_index_u32(select(~u_input.b.x, ~35657u, true), 30u)];
    let var_2 = select(vec2<bool>(true, !select(true, any(vec4<bool>(true, true, true, false)), true)), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), all(vec2<bool>(false, false))), select(true, true, true)), !vec2<bool>(true, !func_3()));
    return arg_0;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global1 = func_4(global2[_wgslsmith_index_u32(countOneBits(~(~arg_0.x)), 29u)], Struct_1(_wgslsmith_clamp_vec2_i32(-(vec2<i32>(global1.b, -5278i) ^ u_input.c), -(vec2<i32>(u_input.e.x, 0i) >> (arg_0.zy % vec2<u32>(32u))), -global1.a), 4145i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-746f * global1.c.x), _wgslsmith_f_op_f32(715f * global1.c.x), _wgslsmith_f_op_f32(step(global1.c.x, global1.c.x)), global1.c.x))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.e.x, -1i), global1.a), ~abs(select(u_input.c, vec2<i32>(u_input.a, u_input.e.x), true)), global1.a), _wgslsmith_f_op_vec4_f32(func_2()));
    var var_0 = 41530u;
    global3 = array<Struct_1, 30>();
    let var_1 = u_input.c;
    var_0 = 66090u;
    return global2[_wgslsmith_index_u32(reverseBits(~21466u), 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(abs(global0.zzz));
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(1u), 30u)];
    global0 = countOneBits(vec4<u32>(~firstTrailingBit(27060u), global0.x, 1u, 1u) << ((vec4<u32>(firstLeadingBit(u_input.d), ~u_input.d, ~4294967295u, min(4294967295u, 4559u)) | ~(~vec4<u32>(global0.x, 0u, 17322u, global0.x))) % vec4<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -1070i, -45389i), vec2<i32>(-1i) * -global1.a), u_input.e.x, func_4(func_4(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, ~25047u), 29u)], func_1(~global0.wzw), _wgslsmith_clamp_vec2_i32(firstLeadingBit(var_0.a), vec2<i32>(42330i, u_input.e.x), select(global1.a, var_0.a, vec2<bool>(false, true))), var_0.c), func_1(~(~vec3<u32>(u_input.b.x, 0u, u_input.d))), ~select(firstLeadingBit(vec2<i32>(75032i, -44249i)), ~u_input.e, any(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.c - global1.c), var_0.c))))).c);
    let var_2 = func_1(global0.zxw << (vec3<u32>(u_input.b.x, u_input.d & ~u_input.b.x, global0.x) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, (var_2.b ^ ~_wgslsmith_div_i32(var_2.b, 1i)) | global1.b, _wgslsmith_clamp_i32(var_1.b, global1.b, u_input.a), var_2.c.zy, func_1(_wgslsmith_div_vec3_u32(~vec3<u32>(global0.x, 7551u, u_input.b.x) << (u_input.b % vec3<u32>(32u)), vec3<u32>(31521u, 0u, _wgslsmith_mod_u32(global0.x, 0u)))).a);
}

