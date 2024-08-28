struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(any(!select(vec2<bool>(global0[_wgslsmith_index_u32(1846u, 2u)], true), vec2<bool>(true, true), vec2<bool>(false, true))));
    global0 = array<bool, 2>();
    var_0 = Struct_1(true);
    let var_1 = abs(-16076i);
    let var_2 = Struct_1(var_0.a);
    return 0u;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_1(true);
    let var_1 = u_input.b;
    var var_2 = vec3<u32>(~arg_1.b.x, ~((_wgslsmith_mult_u32(1u, arg_1.b.x) >> (381u % 32u)) << (firstLeadingBit(u_input.d.x) % 32u)), (_wgslsmith_mod_u32(u_input.b, 1u) & (_wgslsmith_mult_u32(arg_1.b.x, 4294967295u) << (var_1 % 32u))) >> (func_3() % 32u));
    var var_3 = vec4<bool>(any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1, 2u)], true, arg_1.c), !vec3<bool>(true, global0[_wgslsmith_index_u32(15283u, 2u)], arg_1.c), select(vec3<bool>(false, false, var_0.a), vec3<bool>(arg_1.c, arg_1.a.a, var_0.a), vec3<bool>(arg_1.c, var_0.a, global0[_wgslsmith_index_u32(var_2.x, 2u)]))), vec3<bool>(true | arg_1.a.a, any(vec4<bool>(var_0.a, true, false, true)), true), true)), arg_3.x < -(max(arg_3.x, -1i) & 7040i), var_0.a, all(vec2<bool>(!(arg_2 & false), true)));
    let var_4 = _wgslsmith_f_op_f32(-arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))) >= arg_0;
}

fn func_1() -> u32 {
    global0 = array<bool, 2>();
    var var_0 = global0[_wgslsmith_index_u32(~u_input.d.x, 2u)];
    var var_1 = Struct_2(Struct_1(func_2(-183f, Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 2u)]), vec3<u32>(0u, 0u, 34876u), global0[_wgslsmith_index_u32(u_input.d.x, 2u)]), u_input.b <= u_input.b, select(vec2<i32>(u_input.e, u_input.c), vec2<i32>(u_input.a, u_input.c), vec2<bool>(true, false))) && any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], false))), vec3<u32>(max(abs(u_input.b), select(abs(1u), ~4906u, true)), _wgslsmith_mod_u32(~(~u_input.d.x), u_input.d.x), _wgslsmith_dot_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(u_input.b, 0u, u_input.b)), max(vec3<u32>(0u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.b, u_input.b))), vec3<u32>(u_input.b, 18356u, u_input.b) ^ ~vec3<u32>(40880u, 26585u, 124458u))), false);
    var var_2 = Struct_2(Struct_1(false), var_1.b, !var_1.c);
    var_2 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_f32(min(1106f, 961f)), Struct_2(var_2.a, var_1.b, var_2.a.a), true, vec2<i32>(u_input.a, u_input.c) >> (vec2<u32>(var_2.b.x, 4294967295u) % vec2<u32>(32u))) & var_1.a.a), select(var_1.b, vec3<u32>(49719u & func_3(), var_1.b.x, u_input.b), any(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], false), vec3<bool>(false, var_2.a.a, false), vec3<bool>(global0[_wgslsmith_index_u32(99596u, 2u)], false, var_2.c)))), var_1.c && (func_2(_wgslsmith_f_op_f32(min(610f, -347f)), Struct_2(Struct_1(true), var_2.b, false), global0[_wgslsmith_index_u32(4294967295u, 2u)] & var_2.a.a, -vec2<i32>(u_input.c, 17503i)) & var_2.c));
    return min(u_input.d.x, ~var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    var var_0 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(reverseBits(func_1()), 2u)]), ~firstLeadingBit(~select(vec3<u32>(u_input.d.x, 80771u, 71011u), vec3<u32>(u_input.b, u_input.d.x, u_input.d.x), global0[_wgslsmith_index_u32(u_input.b, 2u)])), false);
    let var_1 = _wgslsmith_sub_vec3_i32(~vec3<i32>(~u_input.e, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -21100i), vec2<i32>(0i, 0i)), i32(-1i) * -18775i, u_input.e), -2147483647i), countOneBits(abs(vec3<i32>(-2147483647i, _wgslsmith_mult_i32(-11117i, 1i), _wgslsmith_div_i32(u_input.c, u_input.c)))));
    var var_2 = !select(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], var_0.a.a, false, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 2u)], false, var_0.a.a), true), global0[_wgslsmith_index_u32(1u, 2u)] && all(vec2<bool>(var_0.c, true))), vec4<bool>(true, any(!vec2<bool>(false, var_0.a.a)), any(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<bool>(true, var_0.a.a), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b.x, 2u)]))), global0[_wgslsmith_index_u32(abs(u_input.b), 2u)]), true);
    var_2 = !(!select(!select(vec4<bool>(var_0.a.a, false, var_0.a.a, var_0.c), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.d.x, 2u)], false), vec4<bool>(global0[_wgslsmith_index_u32(29343u, 2u)], true, global0[_wgslsmith_index_u32(var_0.b.x, 2u)], var_0.c)), !(!vec4<bool>(var_0.c, var_2.x, global0[_wgslsmith_index_u32(var_0.b.x, 2u)], var_2.x)), vec4<bool>(any(var_2.yyx), func_2(324f, Struct_2(var_0.a, vec3<u32>(73859u, u_input.d.x, var_0.b.x), var_0.c), var_0.a.a, var_1.yx), true, global0[_wgslsmith_index_u32(abs(0u), 2u)])));
    var_0 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(308f - 351f)), Struct_2(Struct_1(var_2.x), vec3<u32>(1u, u_input.b, var_0.b.x), false), true, var_1.zy)), ~abs(_wgslsmith_clamp_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, u_input.b, u_input.d.x), var_0.b)) | var_0.b, var_0.c);
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-365f, _wgslsmith_f_op_f32(max(-1246f, _wgslsmith_f_op_f32(step(1000f, -176f)))))), u_input.d.x);
}

