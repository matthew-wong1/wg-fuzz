struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(2567u, 1u, 12093u, 62534u, 1u, 129553u, 39109u, 16019u, 5119u, 36872u, 38075u, 0u, 5902u, 4294967295u, 1u, 0u, 1u, 0u, 1u, 1u, 25906u, 0u, 1u, 47556u, 16871u);

var<private> global1: vec2<f32> = vec2<f32>(-743f, 665f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f * global1.x)) + 481f));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, _wgslsmith_mod_i32(2147483647i, arg_0.x), 2147483647i), (vec4<i32>(-7717i, 1i, -2147483647i, 2147483647i) ^ ~vec4<i32>(38804i, 14565i, arg_0.x, u_input.a)) ^ vec4<i32>(arg_0.x >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19299u, 25u)], 25u)], 25u)] % 32u), -1i, firstLeadingBit(u_input.a), firstTrailingBit(u_input.a))), u_input.a);
    var var_2 = Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(all(vec3<bool>(true, false, true)), (229f >= global1.x) && select(false, true, false), any(vec2<bool>(true, true)))));
    return (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + 130f), _wgslsmith_f_op_f32(f32(-1f) * -564f))) >= var_0) & (all(vec4<bool>(var_2.a.x, true, global1.x > var_0, global1.x <= -282f)) & !var_2.a.x);
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 25>();
    let var_0 = Struct_1(vec4<bool>(!(global1.x >= global1.x), all(vec4<bool>(true, true, func_3(vec2<i32>(u_input.a, u_input.a)), true)), true, true));
    var var_1 = vec4<u32>(1u, 102545u, ~0u, _wgslsmith_mod_u32(~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10388u, 25u)], 25u)], 25u)], 25u)], 25u)], 25u)], 25u)]), 1u) >> (54241u % 32u));
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, global1.x), global1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-197f, global1.x, true)))), _wgslsmith_div_f32(-1000f, -1000f)));
    global0 = array<u32, 25>();
    return Struct_1(select(select(select(vec4<bool>(var_0.a.x, true, var_0.a.x, false), var_0.a, false), select(select(vec4<bool>(var_0.a.x, var_0.a.x, true, false), vec4<bool>(var_0.a.x, false, false, var_0.a.x), var_0.a), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, true, true), vec4<bool>(var_0.a.x, false, var_0.a.x, false)), func_3(vec2<i32>(8208i, u_input.a))), var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), var_0.a));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<f32>) -> Struct_5 {
    let var_0 = func_2();
    let var_1 = Struct_2(select(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 1u, global0[_wgslsmith_index_u32(4211u, 25u)]) ^ vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59603u, 25u)], 25u)]), vec3<u32>(0u, 41123u, 114479u)), vec3<u32>(abs(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3706u, 25u)], 25u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23080u, 25u)], 25u)])), 25u)], 25u)], 31415u), select(!(!var_0.a.x), all(!var_0.a), !(!var_0.a.x))));
    let var_2 = Struct_4(_wgslsmith_div_i32(firstLeadingBit(u_input.a), ~(~_wgslsmith_sub_i32(2147483647i, u_input.a))), _wgslsmith_mult_u32(var_1.a.x, _wgslsmith_add_u32(1u, var_1.a.x)), u_input.a, firstTrailingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(-11571i, u_input.a, 23414i, -1i) & vec4<i32>(2147483647i, u_input.a, -1i, -97065i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 0i), vec4<i32>(-28571i, -1i, -2147483647i, u_input.a)))), _wgslsmith_mult_u32(1u, reverseBits(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 25u)], var_1.a.x & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)]))));
    var var_3 = Struct_5(Struct_4(1i, ~min(reverseBits(1u), var_2.e), firstLeadingBit(var_2.d.x), abs(vec4<i32>(-27011i, var_2.d.x, -2147483647i, u_input.a)) << (~(~vec4<u32>(global0[_wgslsmith_index_u32(var_2.e, 25u)], 1u, 30327u, 109310u)) % vec4<u32>(32u)), abs(1u)), select(var_2.c, _wgslsmith_mod_i32(-387i, -45197i) << (var_1.a.x % 32u), !var_0.a.x) & -22380i);
    let var_4 = select(firstTrailingBit(reverseBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a, var_3.b), u_input.a >> (var_1.a.x % 32u)))), -1i, all(vec4<bool>(true, var_0.a.x | !var_0.a.x, false, all(vec2<bool>(false, var_0.a.x)))));
    return Struct_5(var_3.a, min(_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(23477i, var_2.a), var_2.d.wz), _wgslsmith_add_i32(var_4, reverseBits(2147483647i))), var_3.b));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> vec3<bool> {
    return !(!(!vec3<bool>(all(vec4<bool>(true, false, false, true)), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true | !(!all(vec2<bool>(false, false))), any(func_4(func_1(true, global1.x, vec3<f32>(732f, global1.x, global1.x)), firstLeadingBit(2147483647i), func_1(false, 511f, vec3<f32>(global1.x, global1.x, global1.x)).a, Struct_3(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79904u, 25u)], 25u)])))) && true);
    let x = u_input.a;
    s_output = StorageBuffer(564f, reverseBits(vec2<u32>(49146u, global0[_wgslsmith_index_u32(countOneBits(0u), 25u)] ^ _wgslsmith_mult_u32(13664u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11641u, 25u)], 25u)]))), global0[_wgslsmith_index_u32(11653u, 25u)], vec3<u32>(reverseBits(_wgslsmith_mod_u32(~0u, 1u)), max(1u, global0[_wgslsmith_index_u32(4294967295u, 25u)]), 1u));
}

