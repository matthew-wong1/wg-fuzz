struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, true, true, false, false, false, false, false, false, false, false, false, true, true, false, false, true, true, false, false, false, false, false, true);

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<i32>, 25>;

var<private> global3: array<i32, 15>;

var<private> global4: array<f32, 11> = array<f32, 11>(-1000f, -335f, -614f, 530f, -1002f, -967f, 414f, 1322f, 251f, -602f, -1342f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: u32) -> i32 {
    var var_0 = !(!global0[_wgslsmith_index_u32(u_input.b, 26u)]);
    global3 = array<i32, 15>();
    var var_1 = Struct_2(Struct_1(arg_1.zzw), Struct_1(~(~vec3<u32>(arg_1.x, global1.x, arg_1.x))));
    global4 = array<f32, 11>();
    var var_2 = vec2<bool>(all(select(select(!vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(arg_2, 26u)]), select(vec3<bool>(false, arg_0, false), vec3<bool>(false, true, true), vec3<bool>(false, arg_0, false)), true), select(vec3<bool>(global0[_wgslsmith_index_u32(11627u, 26u)], arg_0, arg_0), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 26u)], arg_0, global0[_wgslsmith_index_u32(0u, 26u)]), false), select(!vec3<bool>(true, arg_0, arg_0), !vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 26u)], true), all(vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(arg_2, 26u)]))))), !(!(arg_1.x == ~u_input.b)));
    return u_input.a;
}

fn func_2() -> vec2<u32> {
    let var_0 = func_3(false, ~(~(~vec4<u32>(u_input.b, u_input.b, 70334u, global1.x))), ~firstLeadingBit(max(u_input.b, 46733u))) == 31740i;
    let var_1 = reverseBits(~(countOneBits(u_input.b) >> (max(4294967295u, u_input.b) % 32u))) << (96139u % 32u);
    global4 = array<f32, 11>();
    let var_2 = -vec3<i32>(2147483647i, 1i << (firstLeadingBit(733u) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, u_input.a), u_input.c), vec2<i32>(-11984i, 38524i) | -vec2<i32>(global3[_wgslsmith_index_u32(51595u, 15u)], -2546i)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(~(~u_input.b), 11u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(24551u, 11u)]))))), -405f, global4[_wgslsmith_index_u32(select(4294967295u, 4294967295u, false), 11u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -185f))));
    return ~(~_wgslsmith_mod_vec2_u32(~(vec2<u32>(var_1, var_1) << (vec2<u32>(35385u, global1.x) % vec2<u32>(32u))), abs(max(vec2<u32>(14275u, var_1), vec2<u32>(73583u, global1.x)))));
}

fn func_1() -> i32 {
    global4 = array<f32, 11>();
    global1 = select(~vec2<u32>(_wgslsmith_mod_u32(global1.x, u_input.b), global1.x), max(vec2<u32>(max(4952u, global1.x), ~global1.x), _wgslsmith_mod_vec2_u32(func_2(), vec2<u32>(4294967295u, 1u))), 21032u != global1.x) | firstLeadingBit(vec2<u32>(0u, global1.x) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, global1.x), vec2<u32>(8577u, 0u)) % vec2<u32>(32u)));
    var var_0 = Struct_1(~(vec3<u32>(global1.x, global1.x, global1.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(u_input.b, global1.x, u_input.b)) % vec3<u32>(32u))) | max(~vec3<u32>(u_input.b, 56725u, 47000u), firstLeadingBit(vec3<u32>(global1.x, global1.x, 36793u) & vec3<u32>(global1.x, 0u, global1.x))));
    global0 = array<bool, 26>();
    return max(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(12385i, global3[_wgslsmith_index_u32(1u, 15u)], 0i) << ((global1.x ^ 11005u) % 32u), _wgslsmith_add_i32(~global3[_wgslsmith_index_u32(global1.x, 15u)], u_input.a), -28106i), -_wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(var_0.a.x, 15u)], u_input.c.x), vec3<i32>(2147483647i, u_input.c.x, 15855i)), vec3<i32>(u_input.c.x, 15738i, -59397i) | vec3<i32>(global3[_wgslsmith_index_u32(0u, 15u)], u_input.a, u_input.c.x))), global3[_wgslsmith_index_u32(103623u, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(u_input.b, 85648u, ~(1u | u_input.b)));
    var var_1 = ~u_input.c.x;
    global2 = array<vec4<i32>, 25>();
    global2 = array<vec4<i32>, 25>();
    let var_2 = ~_wgslsmith_mod_i32(~func_1(), ~u_input.c.x);
    let var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 1u, u_input.b), ~vec3<u32>(global1.x, 67645u, var_0.a.x))), var_0);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0.a.x, 11u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1715f)))) - global4[_wgslsmith_index_u32(max(~u_input.b, ~min(global1.x, var_3.b.a.x)), 11u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_clamp_i32((global3[_wgslsmith_index_u32(15722u, 15u)] | ~(-1i)) ^ ~_wgslsmith_div_i32(global3[_wgslsmith_index_u32(var_3.a.a.x, 15u)], 299i), -(~reverseBits(global3[_wgslsmith_index_u32(var_3.b.a.x, 15u)])), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(2618u, 15u)], -11463i, u_input.c.x), max(vec3<i32>(u_input.a, var_2, 11190i), vec3<i32>(u_input.a, u_input.c.x, 4924i))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-37962i, var_2, -30910i), vec3<i32>(-2147483647i, u_input.c.x, u_input.a)))), _wgslsmith_mult_i32(-_wgslsmith_div_i32(~var_2, abs(-2571i)), -25552i));
}

