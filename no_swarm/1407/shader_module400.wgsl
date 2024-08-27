struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, true), 31953i, -587f, -17807i);

var<private> global1: array<f32, 25>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> Struct_1 {
    return Struct_1(firstTrailingBit(~1u) >> (abs(_wgslsmith_sub_u32(u_input.c, ~global2.a.a)) % 32u), true);
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = true;
    return 12065u;
}

fn func_4(arg_0: u32, arg_1: i32) -> vec2<i32> {
    global0 = Struct_2(!select(!global0.a, vec2<bool>(true, true), all(vec3<bool>(false, global2.a.b, global2.a.b)) & global2.a.b), (i32(-1i) * -firstTrailingBit(arg_1)) ^ (i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.b.yzz, vec3<i32>(arg_1, -1i, 33715i))), global1[_wgslsmith_index_u32(abs(0u), 25u)], _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(global0.d, -1i, -2147483647i) & u_input.b.wyw, vec3<i32>(2147483647i, 43892i, 1680i)), u_input.b.wyx), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-44119i, 4256i, arg_1, -6632i), u_input.b), vec4<i32>(arg_1, global0.b, u_input.b.x, 16497i) << (vec4<u32>(global2.a.a, global2.a.a, 1u, 7890u) % vec4<u32>(32u))), firstLeadingBit(-2147483647i))));
    global1 = array<f32, 25>();
    let var_0 = !all(select(!(!vec3<bool>(global0.a.x, global0.a.x, global2.a.b)), !select(vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(true, false, false), global2.a.b), all(vec2<bool>(global2.a.b, true))));
    var var_1 = Struct_3(func_2());
    var var_2 = Struct_2(global0.a, _wgslsmith_mod_i32(u_input.d, max(reverseBits(_wgslsmith_div_i32(u_input.a.x, 52193i)), -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global2.a.a, 25u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.c - global1[_wgslsmith_index_u32(u_input.c, 25u)])))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-2279f, -368f, global0.a.x)), _wgslsmith_f_op_f32(step(-1343f, global1[_wgslsmith_index_u32(u_input.c, 25u)]))))))), ~global0.b);
    return firstTrailingBit(countOneBits(u_input.a) | vec2<i32>(-abs(var_2.b), var_2.b));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    let var_0 = func_4(~(~13085u | arg_0.a), _wgslsmith_add_i32(global0.d, 39420i) >> (func_3(Struct_3(func_2())) % 32u));
    var var_1 = Struct_3(Struct_1((_wgslsmith_mod_u32(0u, u_input.c) ^ 4294967295u) & arg_0.a, func_2().b));
    global1 = array<f32, 25>();
    global0 = Struct_2(global0.a, _wgslsmith_add_i32(~1i, -1i) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(~global2.a.a, 44372u), ~24661u) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -496f), arg_1 ^ -1i);
    let var_2 = select(select(vec2<bool>(true, true), select(global0.a, arg_0.c, arg_2.a.b), !(min(var_1.a.a, 13226u) == ~arg_2.a.a)), !global0.a, all(vec3<bool>(true, true, arg_3.b)) & true);
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(~4294967295u, u_input.c, ~u_input.c, _wgslsmith_mod_u32(83746u, 1u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 63183u), vec4<u32>(13650u, 1u, 13324u, global2.a.a))));
    let var_1 = (false | ((countOneBits(global0.d) ^ 5316i) == -2147483647i)) | global2.a.b;
    var var_2 = Struct_2(select(!(!vec2<bool>(true, global0.a.x)), vec2<bool>(!all(vec4<bool>(false, global2.a.b, global2.a.b, global0.a.x)), true), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(global0.a.x, true, false, var_1), !var_1))), ~countOneBits(~func_1(Struct_4(global2.a.a, global2.a.a, vec2<bool>(var_1, global0.a.x), Struct_1(4294967295u, global0.a.x)), global0.d, Struct_3(Struct_1(0u, true)), global2.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)))), u_input.b.x);
    global0 = Struct_2(select(global0.a, select(!(!var_2.a), var_2.a, !global2.a.b), global0.a), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d, 8187i, var_2.b, var_2.d), u_input.b)), _wgslsmith_add_vec4_i32(-u_input.b, u_input.b) & countOneBits(u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-104f + global1[_wgslsmith_index_u32(4030u, 25u)])))))), -u_input.a.x | func_1(Struct_4(var_0.x, 1u, vec2<bool>(true, global2.a.b), Struct_1(16090u, var_2.a.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, u_input.b), ~vec4<i32>(-8999i, 2147483647i, -26100i, 2147483647i)), Struct_3(func_2()), Struct_1(~u_input.c, global2.a.b)));
    var var_3 = ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, _wgslsmith_mod_u32(var_0.x, u_input.c)), vec2<u32>(var_0.x, _wgslsmith_add_u32(global2.a.a, global2.a.a))), vec2<u32>(~global2.a.a, var_0.x));
    var_2 = Struct_2(global0.a, i32(-1i) * -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -692f))) * 1f)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~(~u_input.b.zx), vec2<i32>(-1i) * -u_input.a), select(-2147483647i, 27307i, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, ~global2.a.a));
}

