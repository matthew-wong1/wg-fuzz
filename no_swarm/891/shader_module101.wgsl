struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: array<u32, 1> = array<u32, 1>(0u);

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>((u_input.c.x << (1u % 32u)) | reverseBits(global3.b), _wgslsmith_clamp_u32(global3.b, ~107019u, global3.b), _wgslsmith_add_u32(abs(0u), u_input.a.x), min(u_input.a.x >> (0u % 32u), 0u)), ~(vec4<u32>(u_input.c.x, 23270u, 29464u, 147946u) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], 4294967295u, 1u), vec4<u32>(17890u, 89356u, 20704u, 1u)))), ~76567u);
    let var_2 = Struct_1(!global3.a, select(_wgslsmith_dot_vec4_u32(vec4<u32>(~9678u, ~global3.b, 9659u ^ global2[_wgslsmith_index_u32(27110u, 1u)], ~0u), _wgslsmith_add_vec4_u32(vec4<u32>(global3.b, u_input.a.x, 44879u, global3.b), countOneBits(vec4<u32>(u_input.c.x, 91176u, global3.b, 4294967295u)))), abs(~77542u), global3.a.x));
    let var_3 = Struct_1(select(select(vec3<bool>(true, !global3.a.x, true), global3.a, select(select(var_2.a, vec3<bool>(true, var_2.a.x, var_2.a.x), true), !vec3<bool>(global3.a.x, var_2.a.x, true), select(global3.a, global3.a, var_2.a))), !(!global3.a), var_2.a.x), _wgslsmith_mult_u32(~_wgslsmith_div_u32(reverseBits(var_2.b), 0u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b, var_2.b), vec3<u32>(global2[_wgslsmith_index_u32(9060u, 1u)], 7659u, 3023u)), ~(global2[_wgslsmith_index_u32(var_2.b, 1u)] | 4294967295u))));
    var var_4 = Struct_1(global3.a, ~var_3.b);
    return vec3<bool>(false, var_2.a.x, true);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> vec3<bool> {
    global3 = Struct_1(func_3(~reverseBits(~vec3<i32>(10344i, u_input.b, u_input.b)), -1i), 10923u);
    var var_0 = true;
    let var_1 = Struct_1(vec3<bool>(all(!global3.a), true, any(vec2<bool>(true, true))), 98186u);
    global1 = _wgslsmith_add_i32(~min(~u_input.b, 5942i) & (i32(-1i) * -1i), max(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 45451i, -73853i), vec4<i32>(-2147483647i, 2147483647i, 0i, 1i)) & -2147483647i, u_input.b));
    var var_2 = !(!(!var_1.a.x) & select(!all(vec4<bool>(false, false, true, global3.a.x)), any(var_1.a) || var_1.a.x, var_1.a.x));
    return select(func_3((vec3<i32>(0i, 3848i, u_input.b) << (vec3<u32>(0u, 59214u, global2[_wgslsmith_index_u32(1u, 1u)]) % vec3<u32>(32u))) >> (abs(min(vec3<u32>(var_1.b, var_1.b, 1u), vec3<u32>(45694u, u_input.a.x, 60890u))) % vec3<u32>(32u)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(21981i, 1i, -2147483647i, u_input.b) & vec4<i32>(-1i, 23306i, -2147483647i, -2147483647i), vec4<i32>(u_input.b, 76357i, u_input.b, u_input.b)), _wgslsmith_mod_i32(firstLeadingBit(u_input.b), i32(-1i) * -24578i))), !(!var_1.a), !vec3<bool>(all(global3.a), var_1.a.x, all(!vec2<bool>(global3.a.x, global3.a.x))));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    var var_0 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)), -40365i, ~u_input.b) & vec4<i32>(-62286i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(u_input.b, 32465i, -16227i)), -1i), vec4<i32>(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 23291i))), max(u_input.b, u_input.b), abs(1i) & _wgslsmith_clamp_i32(-20679i, 37000i, u_input.b))), u_input.b);
    let var_1 = Struct_1(select(vec3<bool>(true, any(global3.a) == (true == global3.a.x), arg_1), !select(select(global3.a, global3.a, vec3<bool>(global3.a.x, true, arg_0)), func_2(vec4<f32>(1000f, 178f, 769f, 931f), 1u), func_3(vec3<i32>(21272i, u_input.b, 314i), -7627i)), global3.a), 11326u);
    let var_2 = vec3<i32>(-(~(abs(-39876i) << (0u % 32u))), 60322i, u_input.b);
    var_0 = select(_wgslsmith_mult_i32(-57168i, -select(min(2147483647i, var_2.x), 0i, !var_1.a.x)), select(~(-39267i), var_2.x, !(arg_1 | !global3.a.x)), all(var_1.a.yy));
    var_0 = countOneBits(-1i);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(u_input.a.x >= abs(40891u)), true);
    let var_1 = func_1(!global3.a.x, var_0.a.x);
    global3 = func_1(true, true);
    var var_2 = func_1(all(select(select(!vec4<bool>(true, true, global3.a.x, global3.a.x), vec4<bool>(var_0.a.x, var_1.a.x, true, global3.a.x), true), select(vec4<bool>(var_0.a.x, false, global3.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_1.a.x, false, false), vec4<bool>(true, false, true, var_0.a.x)), select(vec4<bool>(true, false, global3.a.x, var_1.a.x), select(vec4<bool>(false, false, global3.a.x, true), vec4<bool>(var_0.a.x, false, var_0.a.x, var_1.a.x), vec4<bool>(false, var_0.a.x, false, false)), false & var_0.a.x))), false);
    var_2 = var_0;
    let var_3 = ~(~vec2<u32>(abs(22465u), _wgslsmith_mod_u32(4025u, 28089u))) >> (reverseBits(u_input.c) % vec2<u32>(32u));
    var var_4 = var_0;
    var var_5 = _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, u_input.b), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, -2147483647i, 0i)), abs(vec3<i32>(u_input.b, u_input.b, u_input.b)))), max(~(~u_input.b), -45166i)) ^ _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-2979i, u_input.b), u_input.b, ~_wgslsmith_mult_i32(-1i, 13546i)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(u_input.b, reverseBits(-2147483647i)) ^ firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.b, 2147483647i)))), vec3<u32>(u_input.c.x, firstLeadingBit(u_input.a.x), 4675u) | ~(~vec3<u32>(26066u, 1u, u_input.c.x) ^ max(vec3<u32>(u_input.a.x, var_0.b, u_input.a.x), vec3<u32>(0u, global2[_wgslsmith_index_u32(var_1.b, 1u)], 4294967295u))));
}

